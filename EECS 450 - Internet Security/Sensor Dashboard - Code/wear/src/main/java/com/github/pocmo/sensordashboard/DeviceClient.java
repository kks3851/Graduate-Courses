package com.github.pocmo.sensordashboard;

import android.content.Context;
import android.util.Log;
import android.util.SparseBooleanArray;
import android.util.SparseLongArray;

import com.github.pocmo.sensordashboard.shared.DataMapKeys;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.wearable.DataApi;
import com.google.android.gms.wearable.PutDataMapRequest;
import com.google.android.gms.wearable.PutDataRequest;
import com.google.android.gms.wearable.Wearable;

import java.util.Arrays;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

public class DeviceClient {
    private static final String TAG = "SensorDashboard/DeviceClient";
    private static final int CLIENT_CONNECTION_TIMEOUT = 15000;

    public static int maxNum = 150;//每次检测到屏幕被唤醒搜集数据的数量
    public static int leftNum = maxNum;//实际剩余需要搜集的数量

    public static DeviceClient instance;

    public static DeviceClient getInstance(Context context) {
        if (instance == null) {
            instance = new DeviceClient(context.getApplicationContext());
        }

        return instance;
    }

    private Context context;
    private GoogleApiClient googleApiClient;
    private ExecutorService executorService;
    private int filterId;

    private SparseLongArray lastSensorData;

    private DeviceClient(Context context) {
        this.context = context;

        googleApiClient = new GoogleApiClient.Builder(context).addApi(Wearable.API).build();

        executorService = Executors.newCachedThreadPool();
        lastSensorData = new SparseLongArray();
    }

    public void setSensorFilter(int filterId) {
        Log.d(TAG, "Now filtering by sensor: " + filterId);

        this.filterId = filterId;
    }

    public void sendSensorData(final int sensorType, final int accuracy, final long timestamp, final float[] values) {
        long t = System.currentTimeMillis();//得到自1970年1月1日至今的毫秒数

        long lastTimestamp = lastSensorData.get(sensorType);//没有值返回0
        long timeAgo = t - lastTimestamp;

//        Log.e("SensorType","" + sensorType);
//        Log.e("accuracy","" + accuracy);
//        Log.e("timestamp","" + timestamp);
        if (lastTimestamp != 0) {
//            if (filterId == sensorType && timeAgo < 100) {
//                return;
//            }
//
//            if (filterId != sensorType && timeAgo < 3000) {
//                return;
//            }
            if(timeAgo < 20){
                return;
            }
        }

        lastSensorData.put(sensorType, t);

        if(leftNum > 0){
            executorService.submit(new Runnable() {
                @Override
                public void run() {
                    sendSensorDataInBackground(sensorType, accuracy, timestamp, values);
                }
            });
            leftNum --;
            Log.e("leftNum",""+leftNum);
        }


    }

    private void sendSensorDataInBackground(int sensorType, int accuracy, long timestamp, float[] values) {
        if (sensorType == filterId) {
            Log.i(TAG, "Sensor " + sensorType + " = " + Arrays.toString(values));
        } else {
            Log.d(TAG, "Sensor " + sensorType + " = " + Arrays.toString(values));
        }

        PutDataMapRequest dataMap = PutDataMapRequest.create("/sensors/" + sensorType);

        dataMap.getDataMap().putInt(DataMapKeys.ACCURACY, accuracy);
        dataMap.getDataMap().putLong(DataMapKeys.TIMESTAMP, timestamp);
        dataMap.getDataMap().putFloatArray(DataMapKeys.VALUES, values);

        PutDataRequest putDataRequest = dataMap.asPutDataRequest();
        send(putDataRequest);
    }

    private boolean validateConnection() {
        if (googleApiClient.isConnected()) {
            return true;
        }

        ConnectionResult result = googleApiClient.blockingConnect(CLIENT_CONNECTION_TIMEOUT, TimeUnit.MILLISECONDS);

        return result.isSuccess();
    }

    //利用DataItem同步手表与手机的数据，
    private void send(PutDataRequest putDataRequest) {
        if (validateConnection()) {
            Wearable.DataApi.putDataItem(googleApiClient, putDataRequest).setResultCallback(new ResultCallback<DataApi.DataItemResult>() {
                @Override
                public void onResult(DataApi.DataItemResult dataItemResult) {
                    Log.v(TAG, "Sending sensor data: " + dataItemResult.getStatus().isSuccess());
                }
            });
        }
    }
}

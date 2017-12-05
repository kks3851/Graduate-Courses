package com.github.pocmo.sensordashboard;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.PowerManager;
import android.util.Log;
import android.view.ContextThemeWrapper;




import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Set;

/**
 * Created by zyqu on 7/20/16.
 */
public class LongService extends Service {

    private static String debugLabel = "LongService";
    public class LocalBinder extends Binder {
        LongService getService() {
            return LongService.this;
        }
    }

    private final IBinder mBinder = new LocalBinder();
    private final long loopCycle = 1000;
    private Set<String> oldForeApps = new HashSet<String>();

    private PowerManager pm;
    public static boolean screen;


    private Handler mHandler = new Handler();
    private Runnable mRunningAppChecker = new Runnable() {
        @Override
        public void run() {
            try{


                screen = pm.isScreenOn();
                Log.e("screen",""+screen);


            }catch(Exception e){
                Log.d(debugLabel, e.toString());
            }finally{
                mHandler.postDelayed(mRunningAppChecker, loopCycle);
            }

        }
    };

    private boolean isRunning = false;

    private void startRunning(){
        if (!isRunning){
            mRunningAppChecker.run();
            isRunning = true;
        }
    }
    private void stopRunning(){
        try{
            mHandler.removeCallbacks(mRunningAppChecker);
        }catch(Exception e){
            Log.d(debugLabel, e.toString());
        }finally{
            isRunning = false;
        }
    }





    @Override
    public IBinder onBind(Intent intent){
        return mBinder;
    }

    @Override
    public void onDestroy(){
        Log.d(debugLabel, "Long service destoryed");
        stopRunning();
        super.onDestroy();
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        Log.d(debugLabel, "Long service started");
        stopRunning();
        startRunning();

        pm = (PowerManager) this.getSystemService(Context.POWER_SERVICE);


        return START_STICKY;
    }



}

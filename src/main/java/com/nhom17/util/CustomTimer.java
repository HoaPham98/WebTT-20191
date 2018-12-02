package com.nhom17.util;

import java.util.Timer;
import java.util.TimerTask;

public class CustomTimer {

    private int delay;
    private TimerTask timerTask;
    private Timer timer;
    private long initTime;
    private long expiredTime;
    long remainingTime;

    public CustomTimer(String name, int delay, TimerTask timerTask) {
        this.delay = delay;
        this.timerTask = timerTask;
        timer = new Timer(name);
        timer.schedule(timerTask, delay);
        initTime = System.currentTimeMillis();
        expiredTime = initTime + delay;
    }


    public long getTimeRemaining() {
        remainingTime = expiredTime - System.currentTimeMillis();
        return  remainingTime;
    }
}

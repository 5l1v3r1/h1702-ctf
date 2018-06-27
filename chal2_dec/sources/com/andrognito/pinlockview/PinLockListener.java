package com.andrognito.pinlockview;

public interface PinLockListener {
    void onComplete(String str);

    void onEmpty();

    void onPinChange(int i, String str);
}

package com.hackerone.mobile.challenge2;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import com.andrognito.pinlockview.IndicatorDots;
import com.andrognito.pinlockview.PinLockListener;
import com.andrognito.pinlockview.PinLockView;
import java.nio.charset.StandardCharsets;
import org.libsodium.jni.crypto.SecretBox;
import org.libsodium.jni.encoders.Hex;

public class MainActivity extends AppCompatActivity {
    private static final char[] hexArray = "0123456789ABCDEF".toCharArray();
    String TAG = "PinLock";
    private byte[] cipherText;
    IndicatorDots mIndicatorDots;
    private PinLockListener mPinLockListener = new PinLockListener() {
        public void onComplete(String str) {
            String str2 = MainActivity.this.TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Pin complete: ");
            stringBuilder.append(str);
            Log.d(str2, stringBuilder.toString());
            str = MainActivity.this.getKey(str);
            Log.d("TEST", MainActivity.bytesToHex(str));
            try {
                Log.d("DECRYPTED", new String(new SecretBox(str).decrypt("aabbccddeeffgghhaabbccdd".getBytes(), MainActivity.this.cipherText), StandardCharsets.UTF_8));
            } catch (RuntimeException e) {
                Log.d("PROBLEM", "Unable to decrypt text");
                e.printStackTrace();
            }
        }

        public void onEmpty() {
            Log.d(MainActivity.this.TAG, "Pin empty");
        }

        public void onPinChange(int i, String str) {
            String str2 = MainActivity.this.TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Pin changed, new length ");
            stringBuilder.append(i);
            stringBuilder.append(" with intermediate pin ");
            stringBuilder.append(str);
            Log.d(str2, stringBuilder.toString());
        }
    };
    PinLockView mPinLockView;

    public native byte[] getKey(String str);

    public native void resetCoolDown();

    static {
        System.loadLibrary("native-lib");
    }

    public static String bytesToHex(byte[] bArr) {
        char[] cArr = new char[(bArr.length * 2)];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            cArr[i3] = hexArray[i2 >>> 4];
            cArr[i3 + 1] = hexArray[i2 & 15];
        }
        return new String(cArr);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_main);
        this.cipherText = new Hex().decode("9646D13EC8F8617D1CEA1CF4334940824C700ADF6A7A3236163CA2C9604B9BE4BDE770AD698C02070F571A0B612BBD3572D81F99");
        this.mPinLockView = (PinLockView) findViewById(R.id.pin_lock_view);
        this.mPinLockView.setPinLockListener(this.mPinLockListener);
        this.mIndicatorDots = (IndicatorDots) findViewById(R.id.indicator_dots);
        this.mPinLockView.attachIndicatorDots(this.mIndicatorDots);
    }
}

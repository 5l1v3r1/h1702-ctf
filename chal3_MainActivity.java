package com.hackerone.mobile.challenge3;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;

public class MainActivity extends AppCompatActivity {
    private static char[] key = new char[]{'t', 'h', 'i', 's', '_', 'i', 's', '_', 'a', '_', 'k', '3', 'y'};
    private EditText editText;

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) C0225R.layout.activity_main);
        final EditText editText = (EditText) findViewById(C0225R.id.editText);
        editText.addTextChangedListener(new TextWatcher() {
            public void afterTextChanged(Editable editable) {
            }

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                MainActivity.checkFlag(editText.getText().toString());
            }
        });
    }

    public static byte[] hexStringToByteArray(String str) {
        int length = str.length();
        byte[] bArr = new byte[(length / 2)];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return bArr;
    }

    public static boolean checkFlag(String str) {
        if (str.length() == 0) {
            return false;
        }
        String str2 = "flag{";
        if ((str.length() > str2.length() && !str.substring(0, str2.length()).equals(str2)) || str.charAt(str.length() - 1) != '}') {
            return false;
        }
        String encryptDecrypt = encryptDecrypt(key, hexStringToByteArray(new StringBuilder("kO13t41Oc1b2z4F5F1b2BO33c2d1c61OzOdOtO").reverse().toString().replace("O", "0").replace("t", "7").replace("B", "8").replace("z", "a").replace("F", "f").replace("k", "e")));
        if (str.length() <= str.length() || str.substring(str2.length(), str.length() - 1).equals(encryptDecrypt) != null) {
            return true;
        }
        return false;
    }

    private static String encryptDecrypt(char[] cArr, byte[] bArr) {
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < bArr.length; i++) {
            stringBuilder.append((char) (bArr[i] ^ cArr[i % cArr.length]));
        }
        return stringBuilder.toString();
    }
}
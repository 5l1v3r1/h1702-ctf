package org.libsodium.jni.crypto;

import java.util.Arrays;

public class Util {
    private static final int DEFAULT_SIZE = 32;

    public static byte[] prependZeros(int i, byte[] bArr) {
        Object obj = new byte[(bArr.length + i)];
        Arrays.fill(obj, (byte) 0);
        System.arraycopy(bArr, 0, obj, i, bArr.length);
        return obj;
    }

    public static byte[] removeZeros(int i, byte[] bArr) {
        return Arrays.copyOfRange(bArr, i, bArr.length);
    }

    public static void checkLength(byte[] bArr, int i) {
        if (bArr != null) {
            if (bArr.length == i) {
                return;
            }
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Invalid size: ");
        stringBuilder.append(bArr.length);
        throw new RuntimeException(stringBuilder.toString());
    }

    public static byte[] zeros(int i) {
        return new byte[i];
    }

    public static boolean isValid(int i, String str) {
        if (i == 0) {
            return true;
        }
        throw new RuntimeException(str);
    }

    public static byte[] slice(byte[] bArr, int i, int i2) {
        return Arrays.copyOfRange(bArr, i, i2);
    }

    public static byte[] merge(byte[] bArr, byte[] bArr2) {
        Object obj = new byte[(bArr.length + bArr2.length)];
        System.arraycopy(bArr, 0, obj, 0, bArr.length);
        System.arraycopy(bArr2, 0, obj, bArr.length, bArr2.length);
        return obj;
    }
}

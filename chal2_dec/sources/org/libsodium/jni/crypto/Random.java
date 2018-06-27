package org.libsodium.jni.crypto;

import org.libsodium.jni.NaCl;
import org.libsodium.jni.Sodium;

public class Random {
    private static final int DEFAULT_SIZE = 32;

    public byte[] randomBytes(int i) {
        byte[] bArr = new byte[i];
        NaCl.sodium();
        Sodium.randombytes(bArr, i);
        return bArr;
    }

    public byte[] randomBytes() {
        byte[] bArr = new byte[32];
        NaCl.sodium();
        Sodium.randombytes(bArr, 32);
        return bArr;
    }
}

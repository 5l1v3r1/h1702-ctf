package org.libsodium.jni.keys;

import org.libsodium.jni.NaCl;
import org.libsodium.jni.Sodium;
import org.libsodium.jni.crypto.Util;
import org.libsodium.jni.encoders.Encoder;

public class VerifyKey {
    private byte[] key;

    public VerifyKey(byte[] bArr) {
        Util.checkLength(bArr, 32);
        this.key = bArr;
    }

    public VerifyKey(String str, Encoder encoder) {
        this(encoder.decode(str));
    }

    public boolean verify(byte[] bArr, byte[] bArr2) {
        Util.checkLength(bArr2, 64);
        bArr = Util.merge(bArr2, bArr);
        bArr2 = Util.zeros(bArr.length);
        int[] iArr = new int[1];
        NaCl.sodium();
        return Util.isValid(Sodium.crypto_sign_ed25519_open(bArr2, iArr, bArr, bArr.length, this.key), "signature was forged or corrupted");
    }

    public boolean verify(String str, String str2, Encoder encoder) {
        return verify(encoder.decode(str), encoder.decode(str2));
    }

    public byte[] toBytes() {
        return this.key;
    }

    public String toString() {
        return Encoder.HEX.encode(this.key);
    }
}

package org.libsodium.jni.encoders;

public class Raw implements Encoder {
    public byte[] decode(String str) {
        return str != null ? str.getBytes(CHARSET) : null;
    }

    public String encode(byte[] bArr) {
        return bArr != null ? new String(bArr, CHARSET) : null;
    }
}

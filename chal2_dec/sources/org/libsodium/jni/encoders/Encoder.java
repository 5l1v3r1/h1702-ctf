package org.libsodium.jni.encoders;

import java.nio.charset.Charset;

public interface Encoder {
    public static final Charset CHARSET = Charset.forName("US-ASCII");
    public static final Hex HEX = new Hex();
    public static final Raw RAW = new Raw();

    byte[] decode(String str);

    String encode(byte[] bArr);
}

package org.libsodium.jni.encoders;

public class Hex implements Encoder {
    private static final char[] DIGITS_LOWER = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static final char[] DIGITS_UPPER = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    private static byte[] decodeHex(char[] cArr) {
        int i = 0;
        int length = cArr == null ? 0 : cArr.length;
        if ((length & 1) != 0) {
            throw new RuntimeException("Odd number of characters.");
        }
        byte[] bArr = new byte[(length >> 1)];
        int i2 = 0;
        while (i < length) {
            i++;
            i++;
            bArr[i2] = (byte) (((toDigit(cArr[i], i) << 4) | toDigit(cArr[i], i)) & 255);
            i2++;
        }
        return bArr;
    }

    public byte[] decode(String str) {
        return decodeHex(str != null ? str.toCharArray() : new char[0]);
    }

    private static char[] encodeHex(byte[] bArr) {
        return encodeHex(bArr, true);
    }

    private static char[] encodeHex(byte[] bArr, boolean z) {
        return encodeHex(bArr, z ? DIGITS_LOWER : DIGITS_UPPER);
    }

    private static char[] encodeHex(byte[] bArr, char[] cArr) {
        int length = bArr.length;
        char[] cArr2 = new char[(length << 1)];
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = i2 + 1;
            cArr2[i2] = cArr[(240 & bArr[i]) >>> 4];
            i2 = i3 + 1;
            cArr2[i3] = cArr[15 & bArr[i]];
            i++;
        }
        return cArr2;
    }

    public String encode(byte[] bArr) {
        return new String(encodeHex(bArr));
    }

    private static int toDigit(char c, int i) {
        int digit = Character.digit(c, 16);
        if (digit != -1) {
            return digit;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Illegal hexadecimal character ");
        stringBuilder.append(c);
        stringBuilder.append(" at index ");
        stringBuilder.append(i);
        throw new RuntimeException(stringBuilder.toString());
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(super.toString());
        stringBuilder.append("[charsetName=");
        stringBuilder.append(CHARSET);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }
}

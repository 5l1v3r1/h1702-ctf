.class public Lorg/libsodium/jni/crypto/Point;
.super Ljava/lang/Object;
.source "Point.java"


# static fields
.field private static final STANDARD_GROUP_ELEMENT:Ljava/lang/String; = "0900000000000000000000000000000000000000000000000000000000000000"


# instance fields
.field private final point:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lorg/libsodium/jni/encoders/Encoder;->HEX:Lorg/libsodium/jni/encoders/Hex;

    const-string v1, "0900000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v0, v1}, Lorg/libsodium/jni/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/libsodium/jni/crypto/Point;->point:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/libsodium/jni/encoders/Encoder;)V
    .locals 0

    .line 41
    invoke-interface {p2, p1}, Lorg/libsodium/jni/encoders/Encoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/libsodium/jni/crypto/Point;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/libsodium/jni/crypto/Point;->point:[B

    return-void
.end method


# virtual methods
.method public mult(Ljava/lang/String;Lorg/libsodium/jni/encoders/Encoder;)Lorg/libsodium/jni/crypto/Point;
    .locals 0

    .line 51
    invoke-interface {p2, p1}, Lorg/libsodium/jni/encoders/Encoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/libsodium/jni/crypto/Point;->mult([B)Lorg/libsodium/jni/crypto/Point;

    move-result-object p0

    return-object p0
.end method

.method public mult([B)Lorg/libsodium/jni/crypto/Point;
    .locals 1

    const/16 v0, 0x20

    .line 45
    invoke-static {v0}, Lorg/libsodium/jni/crypto/Util;->zeros(I)[B

    move-result-object v0

    .line 46
    invoke-static {}, Lorg/libsodium/jni/NaCl;->sodium()Lorg/libsodium/jni/Sodium;

    iget-object p0, p0, Lorg/libsodium/jni/crypto/Point;->point:[B

    invoke-static {v0, p1, p0}, Lorg/libsodium/jni/Sodium;->crypto_scalarmult_curve25519([B[B[B)I

    .line 47
    new-instance p0, Lorg/libsodium/jni/crypto/Point;

    invoke-direct {p0, v0}, Lorg/libsodium/jni/crypto/Point;-><init>([B)V

    return-object p0
.end method

.method public toBytes()[B
    .locals 0

    .line 60
    iget-object p0, p0, Lorg/libsodium/jni/crypto/Point;->point:[B

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lorg/libsodium/jni/encoders/Encoder;->HEX:Lorg/libsodium/jni/encoders/Hex;

    iget-object p0, p0, Lorg/libsodium/jni/crypto/Point;->point:[B

    invoke-virtual {v0, p0}, Lorg/libsodium/jni/encoders/Hex;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

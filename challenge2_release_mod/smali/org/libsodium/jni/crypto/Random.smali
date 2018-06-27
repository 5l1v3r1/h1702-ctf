.class public Lorg/libsodium/jni/crypto/Random;
.super Ljava/lang/Object;
.source "Random.java"


# static fields
.field private static final DEFAULT_SIZE:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public randomBytes()[B
    .locals 1

    const/16 p0, 0x20

    .line 38
    new-array v0, p0, [B

    .line 39
    invoke-static {}, Lorg/libsodium/jni/NaCl;->sodium()Lorg/libsodium/jni/Sodium;

    invoke-static {v0, p0}, Lorg/libsodium/jni/Sodium;->randombytes([BI)V

    return-object v0
.end method

.method public randomBytes(I)[B
    .locals 0

    .line 32
    new-array p0, p1, [B

    .line 33
    invoke-static {}, Lorg/libsodium/jni/NaCl;->sodium()Lorg/libsodium/jni/Sodium;

    invoke-static {p0, p1}, Lorg/libsodium/jni/Sodium;->randombytes([BI)V

    return-object p0
.end method

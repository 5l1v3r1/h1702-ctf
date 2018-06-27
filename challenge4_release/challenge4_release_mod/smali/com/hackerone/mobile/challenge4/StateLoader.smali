.class public Lcom/hackerone/mobile/challenge4/StateLoader;
.super Lcom/hackerone/mobile/challenge4/StateController;
.source "StateLoader.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/hackerone/mobile/challenge4/StateController;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public load(Landroid/content/Context;)Ljava/lang/Object;
    .locals 3

    const/16 v0, 0x400

    .line 45
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/hackerone/mobile/challenge4/StateLoader;->getLocation()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    .line 48
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p0, 0x0

    .line 49
    array-length v2, v0

    invoke-virtual {p1, v0, p0, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 50
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 62
    :try_start_1
    new-instance p0, Ljava/io/ObjectInputStream;

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 64
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    .line 65
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V

    .line 67
    move-object p0, p1

    check-cast p0, Lcom/hackerone/mobile/challenge4/GameState;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 71
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 69
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    move-object p0, v1

    :goto_1
    return-object p0

    :catch_2
    move-exception p0

    .line 56
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1

    :catch_3
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-object v1
.end method

.method public save(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2

    .line 25
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 27
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 28
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 29
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 31
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 36
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/hackerone/mobile/challenge4/StateLoader;->getLocation()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0

    .line 37
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 38
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

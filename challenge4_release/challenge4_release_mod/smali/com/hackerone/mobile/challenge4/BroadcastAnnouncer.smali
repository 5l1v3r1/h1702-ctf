.class public Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;
.super Lcom/hackerone/mobile/challenge4/StateController;
.source "BroadcastAnnouncer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private destUrl:Ljava/lang/String;

.field private stringRef:Ljava/lang/String;

.field private stringVal:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/hackerone/mobile/challenge4/StateController;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/hackerone/mobile/challenge4/StateController;-><init>(Ljava/lang/String;)V

    .line 30
    iput-object p2, p0, Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;->stringRef:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;->destUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;->destUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;->stringVal:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getStringRef()Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;->stringRef:Ljava/lang/String;

    return-object p0
.end method

.method public load(Landroid/content/Context;)Ljava/lang/Object;
    .locals 3

    const-string p1, ""

    .line 56
    iput-object p1, p0, Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;->stringVal:Ljava/lang/String;

    .line 57
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;->stringRef:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 63
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;->stringVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;->stringVal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 69
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_0
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public save(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .line 35
    new-instance p1, Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer$1;

    invoke-direct {p1, p0}, Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer$1;-><init>(Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;)V

    .line 52
    invoke-virtual {p1}, Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer$1;->start()V

    return-void
.end method

.method public setStringRef(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/hackerone/mobile/challenge4/BroadcastAnnouncer;->stringRef:Ljava/lang/String;

    return-void
.end method

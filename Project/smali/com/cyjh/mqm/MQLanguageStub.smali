.class public Lcom/cyjh/mqm/MQLanguageStub;
.super Ljava/lang/Object;
.source "MQLanguageStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;
    }
.end annotation


# static fields
.field public static final SCRIPT_COMPILECODE_SUCCEED:I = 0x0

.field public static final SCRIPT_RUNCODE_SUCCEED:I = 0x0

.field public static final TYPE:I = 0x2


# instance fields
.field private volatile a:J

.field private volatile b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "mqm"

    .line 91
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lcom/cyjh/mqm/MQLanguageStub;->a:J

    .line 48
    iput-wide v0, p0, Lcom/cyjh/mqm/MQLanguageStub;->b:J

    return-void
.end method

.method public static native InitElf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native InitHost(Ljava/lang/String;)V
.end method

.method public static native SetHeartBeatTime(II)V
.end method

.method public static native SetRegCode(Ljava/lang/String;)V
.end method


# virtual methods
.method public native Compile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public native Debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public DebugMessage([B)[B
    .locals 0

    .line 59
    invoke-static {}, Lcom/cyjh/event/a;->a()[B

    move-result-object p1

    return-object p1
.end method

.method public native InitRunner(Landroid/app/Application;Ljava/lang/String;)V
.end method

.method public native Pause()I
.end method

.method public native Request(Ljava/lang/String;)V
.end method

.method public native Resume()I
.end method

.method public native Run(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)I
.end method

.method public native Run(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)I
.end method

.method public native Run([BLjava/lang/String;Ljava/lang/String;)I
.end method

.method public native Run([BLjava/lang/String;Ljava/lang/String;IIJ)I
.end method

.method public native SetDeviceSessionId(Ljava/lang/String;)V
.end method

.method public native SetLocalDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native SetSid(J)V
.end method

.method public native SetWriteLog2File(Z)V
.end method

.method public native Stop()I
.end method

.method public declared-synchronized getGundamRunner()J
    .locals 2

    monitor-enter p0

    .line 51
    :try_start_0
    iget-wide v0, p0, Lcom/cyjh/mqm/MQLanguageStub;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRunner()J
    .locals 2

    monitor-enter p0

    .line 41
    :try_start_0
    iget-wide v0, p0, Lcom/cyjh/mqm/MQLanguageStub;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGundamRunner(J)V
    .locals 0

    monitor-enter p0

    .line 55
    :try_start_0
    iput-wide p1, p0, Lcom/cyjh/mqm/MQLanguageStub;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 54
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRunner(J)V
    .locals 0

    monitor-enter p0

    .line 45
    :try_start_0
    iput-wide p1, p0, Lcom/cyjh/mqm/MQLanguageStub;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 44
    monitor-exit p0

    throw p1
.end method

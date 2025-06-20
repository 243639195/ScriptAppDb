.class public final Lcom/cyjh/mq/c/d;
.super Ljava/lang/Object;
.source "MqmHandler.java"


# static fields
.field private static final h:I = 0x1

.field private static final i:I = 0x2

.field private static final j:I = 0x3

.field private static final k:I = 0x4

.field private static final l:I = 0x5

.field private static final m:I = 0xa

.field private static final n:I = 0x6

.field private static final o:I = 0x7

.field private static final p:I = 0x8

.field private static final q:I = 0x9

.field private static final r:I = 0x10

.field private static final s:I = 0x11

.field private static final t:I = 0x12

.field private static final u:I = 0x13

.field private static final v:I = 0x14

.field private static final w:I = 0x15

.field private static final x:I = 0x16

.field private static final y:I = 0x17


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/cyjh/mobileanjian/ipc/a;

.field c:Lcom/cyjh/mq/c/b;

.field d:Lcom/cyjh/mobileanjian/ipc/ui/h;

.field e:Landroid/os/Handler;

.field private f:Lcom/googlecode/tesseract/android/TessBaseAPI;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cyjh/mq/c/b;)V
    .locals 9

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 86
    iput-object v0, p0, Lcom/cyjh/mq/c/d;->f:Lcom/googlecode/tesseract/android/TessBaseAPI;

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/cyjh/mq/c/d;->g:Z

    .line 109
    new-instance v0, Lcom/cyjh/mq/c/d$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mq/c/d$1;-><init>(Lcom/cyjh/mq/c/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    .line 292
    iput-object p1, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    .line 293
    new-instance p1, Lcom/cyjh/mobileanjian/ipc/ui/h;

    iget-object v0, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/cyjh/mq/c/d;->d:Lcom/cyjh/mobileanjian/ipc/ui/h;

    .line 294
    new-instance p1, Lcom/cyjh/mobileanjian/ipc/a;

    iget-object v0, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/cyjh/mobileanjian/ipc/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    .line 295
    iput-object p2, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 1699
    iget-object p1, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 1700
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1701
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1702
    iget p1, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1703
    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1704
    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1716
    iget-object v1, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/a;->d()Ljava/lang/String;

    move-result-object v1

    .line 1717
    iget-object v2, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/a;->c()Ljava/lang/String;

    move-result-object v2

    .line 1718
    iget-object v3, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/a;->b()Ljava/lang/String;

    move-result-object v3

    .line 1719
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v5, Lcom/ime/input/InputKb;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1720
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 1721
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v1, :cond_0

    const-string v1, "UNKNOW"

    :cond_0
    if-nez v2, :cond_1

    const-string v2, "UNKNOW"

    .line 1726
    :cond_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1729
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    .line 1731
    invoke-static {v7}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 1736
    :cond_2
    :goto_0
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v7

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v7

    .line 1738
    invoke-virtual {v7, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg1(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    .line 1739
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg1(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    .line 1740
    invoke-virtual {p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg1(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    .line 1742
    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    .line 1743
    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    .line 1744
    invoke-virtual {p1, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    .line 1745
    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    .line 1746
    invoke-virtual {p1, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    .line 1747
    invoke-virtual {p1, v5}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    .line 1748
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    .line 1751
    iget-object p1, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    invoke-virtual {v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    .line 297
    invoke-direct {p0}, Lcom/cyjh/mq/c/d;->a()Z

    move-result p1

    iput-boolean p1, p0, Lcom/cyjh/mq/c/d;->g:Z

    return-void
.end method

.method private static synthetic a(Lcom/cyjh/mq/c/d;)Landroid/content/Context;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    return-object p0
.end method

.method private a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 2296
    iget-object v0, v0, Lcom/cyjh/mq/c/b;->h:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;

    .line 306
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getCmd()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    const/16 v5, 0x10

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_5

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_5

    .line 309
    :sswitch_0
    iget-object p1, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 2374
    iget-object p1, p1, Lcom/cyjh/mq/c/b;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;

    .line 2376
    invoke-interface {v0}, Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;->onExit()V

    goto :goto_0

    :cond_1
    return-void

    .line 12651
    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 13316
    iget-object v0, v0, Lcom/cyjh/mq/c/b;->j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;

    if-eqz v0, :cond_2

    .line 12653
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getFileData()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;->onDebugMessage(Lcom/google/protobuf/ByteString;)V

    :cond_2
    return-void

    .line 368
    :sswitch_2
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result p1

    invoke-virtual {v0, v1, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 499
    :sswitch_3
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 505
    :sswitch_4
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 390
    :sswitch_5
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getMethodName()Ljava/lang/String;

    move-result-object v9

    .line 391
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getTypesList()Ljava/util/List;

    move-result-object v10

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getParamsList()Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    .line 390
    invoke-static/range {v7 .. v12}, Lcom/cyjh/mobileanjian/ipc/rpc/Invocator;->invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "retObj = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getIsSyncCall()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 398
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getRetValue()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    move-result-object v1

    .line 399
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v2

    .line 400
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getCmd()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setIsSyncCall(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v3

    .line 401
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getWaitId()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setWaitId(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    .line 405
    :try_start_0
    sget-object v3, Lcom/cyjh/mq/c/d$2;->a:[I

    invoke-virtual {v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_6

    goto :goto_2

    :pswitch_0
    if-nez v0, :cond_3

    const-string v0, ""

    goto :goto_1

    .line 423
    :cond_3
    check-cast v0, Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValString(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    goto :goto_2

    .line 420
    :pswitch_1
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValDouble(D)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    goto :goto_2

    .line 417
    :pswitch_2
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValFloat(F)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    goto :goto_2

    .line 414
    :pswitch_3
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValLong(J)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    goto :goto_2

    .line 411
    :pswitch_4
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValInt(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    goto :goto_2

    .line 408
    :pswitch_5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->setValBoolean(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 429
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 431
    :goto_2
    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->VOID:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    if-eq v1, v0, :cond_4

    .line 432
    invoke-virtual {v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setRetValue(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    .line 436
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1
    :try_end_1
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 439
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object p1, v6

    :goto_3
    if-eqz p1, :cond_5

    .line 443
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    :cond_5
    return-void

    .line 6658
    :sswitch_6
    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v0

    .line 6659
    invoke-virtual {p1, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    .line 6660
    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    shl-int/2addr v0, v5

    or-int/2addr v0, v1

    .line 6661
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 6662
    iget-object v1, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 7306
    iget-object v1, v1, Lcom/cyjh/mq/c/b;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

    if-nez v2, :cond_6

    .line 6664
    iget-object v2, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 8238
    iput-boolean v4, v2, Lcom/cyjh/mq/c/b;->d:Z

    :cond_6
    if-eqz v1, :cond_7

    .line 6666
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getFileData()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;->onScreenShotDone(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V

    :cond_7
    return-void

    .line 380
    :sswitch_7
    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_9

    .line 382
    invoke-interface {v0, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;->onFinishRecord(Ljava/lang/String;)V

    return-void

    .line 375
    :sswitch_8
    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result p1

    if-eqz v0, :cond_9

    .line 377
    invoke-interface {v0, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;->onStartRecord(I)V

    return-void

    :sswitch_9
    if-eqz v0, :cond_9

    .line 372
    invoke-interface {v0}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRecordScriptCallback;->onOpenRecord()V

    return-void

    .line 2589
    :sswitch_a
    new-instance v0, Lcom/cyjh/mq/b/a$a;

    invoke-direct {v0}, Lcom/cyjh/mq/b/a$a;-><init>()V

    .line 2590
    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    .line 3032
    iput v1, v0, Lcom/cyjh/mq/b/a$a;->a:I

    .line 2591
    invoke-virtual {p1, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    .line 3037
    iput v1, v0, Lcom/cyjh/mq/b/a$a;->b:I

    .line 2592
    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    .line 3042
    :goto_4
    iput-boolean v3, v0, Lcom/cyjh/mq/b/a$a;->c:Z

    .line 3047
    new-instance p1, Lcom/cyjh/mq/b/a;

    invoke-direct {p1, v0, v4}, Lcom/cyjh/mq/b/a;-><init>(Lcom/cyjh/mq/b/a$a;B)V

    .line 2594
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 3223
    iput-object p1, v0, Lcom/cyjh/mq/c/b;->f:Lcom/cyjh/mq/b/a;

    .line 313
    iget-object p1, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 3356
    new-instance v0, Lcom/cyjh/mq/c/b$2;

    invoke-direct {v0, p1}, Lcom/cyjh/mq/c/b$2;-><init>(Lcom/cyjh/mq/c/b;)V

    .line 3369
    invoke-virtual {v0}, Lcom/cyjh/mq/c/b$2;->start()V

    return-void

    .line 575
    :pswitch_6
    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/cyjh/mq/c/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_9
    :goto_5
    return-void

    .line 571
    :pswitch_7
    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    .line 572
    iget-object p1, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/a;->k()V

    return-void

    .line 568
    :pswitch_8
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 557
    :pswitch_9
    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2Bytes(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    invoke-virtual {p1, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v3

    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result p1

    invoke-virtual {p0, v0, v1, v3, p1}, Lcom/cyjh/mq/c/d;->a(Lcom/google/protobuf/ByteString;III)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET_OCR_TEXT"

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "strOrcText:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    const/16 v1, 0x6d

    .line 561
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    .line 562
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    .line 563
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    .line 564
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void

    .line 548
    :pswitch_a
    iget-object p1, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/a;->j()Ljava/lang/String;

    move-result-object p1

    .line 549
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    const/16 v1, 0x6c

    .line 550
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    .line 551
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    .line 552
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    .line 553
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void

    .line 540
    :pswitch_b
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 541
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    const/16 v1, 0x6b

    .line 542
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    .line 543
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    .line 544
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    .line 545
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void

    .line 532
    :pswitch_c
    iget-object p1, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/a;->i()Ljava/lang/String;

    move-result-object p1

    .line 533
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    const/16 v1, 0x6a

    .line 534
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    .line 535
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    .line 536
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    .line 537
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void

    .line 520
    :pswitch_d
    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result p1

    if-ne p1, v3, :cond_a

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    .line 521
    :goto_6
    iget-object p1, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    .line 15385
    iget-object v0, p1, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 15386
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    .line 15387
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 15388
    iget-object p1, p1, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 528
    :pswitch_e
    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result p1

    if-ne p1, v3, :cond_b

    const/4 v4, 0x1

    .line 529
    :cond_b
    iget-object p1, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    xor-int/lit8 v0, v4, 0x1

    .line 16394
    iget-object p1, p1, Lcom/cyjh/mobileanjian/ipc/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "accelerometer_rotation"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    .line 524
    :pswitch_f
    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result p1

    if-ne p1, v3, :cond_c

    goto :goto_7

    :cond_c
    const/4 v3, 0x0

    .line 15850
    :goto_7
    iget-object p1, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 15851
    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void

    .line 517
    :pswitch_10
    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object p1

    .line 14844
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_data like \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14845
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 14846
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    .line 514
    :pswitch_11
    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    .line 14827
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14829
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 14830
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "title"

    .line 14831
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_display_name"

    .line 14832
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mime_type"

    const-string v3, "video/3gp"

    .line 14833
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "datetaken"

    .line 14834
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "date_modified"

    .line 14835
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "date_added"

    .line 14836
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "_data"

    .line 14837
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_size"

    .line 14838
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 14839
    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 14840
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 511
    :pswitch_12
    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/cyjh/mq/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 508
    :pswitch_13
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 502
    :pswitch_14
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 496
    :pswitch_15
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 493
    :pswitch_16
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_17
    return-void

    .line 460
    :pswitch_18
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getFileData()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 490
    :pswitch_19
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/a;->e(I)V

    return-void

    .line 487
    :pswitch_1a
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/a;->d(I)V

    return-void

    .line 484
    :pswitch_1b
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/a;->c(I)V

    return-void

    .line 481
    :pswitch_1c
    iget-object p1, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/a;->h()V

    return-void

    .line 478
    :pswitch_1d
    iget-object p1, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/a;->g()V

    return-void

    .line 474
    :pswitch_1e
    iget-object p1, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/d;->a(Landroid/content/Context;)V

    return-void

    .line 471
    :pswitch_1f
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cyjh/mobileanjian/ipc/utils/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 468
    :pswitch_20
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v3, p1}, Lcom/cyjh/mobileanjian/ipc/utils/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .line 352
    :pswitch_21
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/a;->f()V

    return-void

    .line 451
    :pswitch_22
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 14186
    iget-object v0, v0, Lcom/cyjh/mq/c/b;->s:Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;

    .line 451
    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnRpcCallback;->onRpcReturn(Ljava/lang/Object;)V

    return-void

    .line 4613
    :pswitch_23
    iget-object p1, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 4609
    :pswitch_24
    iget-object p1, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 455
    :pswitch_25
    iget-object p1, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/a;->e()V

    return-void

    .line 385
    :pswitch_26
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg3(I)F

    move-result v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    invoke-virtual {p1, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v5, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 361
    :pswitch_27
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/a;->b(Ljava/lang/String;)Z

    return-void

    .line 364
    :pswitch_28
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object p1

    .line 11211
    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/a;->b:Lcom/ime/input/a;

    .line 12036
    iget-object v1, v0, Lcom/ime/input/a;->a:Landroid/inputmethodservice/InputMethodService;

    if-eqz v1, :cond_d

    .line 12038
    iget-object v0, v0, Lcom/ime/input/a;->a:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 12040
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 365
    :cond_d
    iget-object p1, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    const/16 v0, 0x26

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/b;->a(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void

    .line 355
    :pswitch_29
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/a;->b(I)V

    return-void

    .line 358
    :pswitch_2a
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/a;->a(Ljava/lang/String;)Z

    return-void

    .line 349
    :pswitch_2b
    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/a;->c(Ljava/lang/String;)V

    return-void

    .line 346
    :pswitch_2c
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/a;->a(I)V

    return-void

    .line 331
    :pswitch_2d
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 5644
    :pswitch_2e
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 6316
    iget-object v0, v0, Lcom/cyjh/mq/c/b;->j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;

    if-eqz v0, :cond_e

    .line 5646
    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;->onTracePrint(Ljava/lang/String;)V

    :cond_e
    return-void

    .line 8671
    :pswitch_2f
    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v0

    .line 8672
    invoke-virtual {p1, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    shl-int/2addr v0, v5

    or-int/2addr v0, v1

    .line 8673
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 8674
    iget-object v1, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 9347
    iget-object v1, v1, Lcom/cyjh/mq/c/b;->p:Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;

    if-eqz v1, :cond_f

    .line 8676
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getFileData()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;->onScreenShotDone(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V

    :cond_f
    return-void

    .line 9680
    :pswitch_30
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 10347
    iget-object v0, v0, Lcom/cyjh/mq/c/b;->p:Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;

    if-eqz v0, :cond_10

    .line 9682
    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;->onUiElementback(Ljava/lang/String;)V

    :cond_10
    return-void

    .line 4621
    :pswitch_31
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/a;->a()V

    .line 4622
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/a;->f()V

    .line 4624
    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v0

    .line 4625
    iget-object v1, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 5228
    iput-boolean v4, v1, Lcom/cyjh/mq/c/b;->e:Z

    const/16 v1, 0x69

    if-eq v0, v1, :cond_11

    if-nez v0, :cond_12

    .line 4628
    :cond_11
    sget v1, Lcom/cyjh/mqsdk/R$string;->toast_on_stop_script:I

    invoke-virtual {p0, v1}, Lcom/cyjh/mq/c/d;->a(I)V

    .line 4639
    :cond_12
    iget-object v1, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, v0, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 328
    :pswitch_32
    iget-object p1, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 3603
    :pswitch_33
    iget-object p1, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 4228
    iput-boolean v3, p1, Lcom/cyjh/mq/c/b;->e:Z

    .line 3604
    sget p1, Lcom/cyjh/mqsdk/R$string;->toast_on_start_script:I

    invoke-virtual {p0, p1}, Lcom/cyjh/mq/c/d;->a(I)V

    .line 3605
    iget-object p1, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_33
        :pswitch_32
        :pswitch_31
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1b
        :pswitch_30
        :pswitch_2f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x20
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x32
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x40
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x62
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_a
        0x13 -> :sswitch_9
        0x15 -> :sswitch_8
        0x17 -> :sswitch_7
        0x19 -> :sswitch_6
        0x30 -> :sswitch_5
        0x51 -> :sswitch_4
        0x60 -> :sswitch_3
        0x81 -> :sswitch_2
        0x101 -> :sswitch_1
        0xffff -> :sswitch_0
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 763
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .line 905
    new-instance v0, Lcom/google/a/i/b;

    invoke-direct {v0}, Lcom/google/a/i/b;-><init>()V

    .line 906
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 907
    sget-object v1, Lcom/google/a/g;->b:Lcom/google/a/g;

    const-string v2, "utf-8"

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    sget-object v1, Lcom/google/a/g;->a:Lcom/google/a/g;

    sget-object v2, Lcom/google/a/i/a/f;->b:Lcom/google/a/i/a/f;

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    sget-object v1, Lcom/google/a/g;->f:Lcom/google/a/g;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    :try_start_0
    sget-object v2, Lcom/google/a/a;->l:Lcom/google/a/a;

    move-object v1, p1

    move v3, p2

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/a/i/b;->a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/a/w; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 916
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    mul-int v0, p2, p2

    .line 918
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, p2, :cond_1

    .line 922
    invoke-virtual {p1, v2, v3}, Lcom/google/a/c/b;->a(II)Z

    move-result v4

    if-eqz v4, :cond_0

    mul-int v4, v2, p2

    add-int/2addr v4, v3

    const/high16 v5, -0x1000000

    .line 923
    aput v5, v0, v4

    goto :goto_3

    :cond_0
    mul-int v4, v2, p2

    add-int/2addr v4, v3

    const/4 v5, -0x1

    .line 925
    aput v5, v0, v4

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 930
    :cond_2
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 937
    :cond_3
    :try_start_1
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 939
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 940
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 941
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 943
    :cond_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string p2, ".png"

    .line 944
    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    const/16 p2, 0x64

    if-eqz p0, :cond_5

    .line 945
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p0, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_4

    .line 947
    :cond_5
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p0, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 948
    :goto_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 949
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    const-string p1, "RootIpcDex"

    .line 951
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ImageQREnCode IOException"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 850
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 851
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method

.method private a()Z
    .locals 4

    .line 274
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/tessdata/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eng.traineddata"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/tessdata/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "chi_sim.traineddata"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "chi_sim+eng"

    .line 283
    new-instance v1, Lcom/googlecode/tesseract/android/TessBaseAPI;

    invoke-direct {v1}, Lcom/googlecode/tesseract/android/TessBaseAPI;-><init>()V

    iput-object v1, p0, Lcom/cyjh/mq/c/d;->f:Lcom/googlecode/tesseract/android/TessBaseAPI;

    .line 284
    iget-object v1, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 285
    iget-object v2, p0, Lcom/cyjh/mq/c/d;->f:Lcom/googlecode/tesseract/android/TessBaseAPI;

    invoke-virtual {v2, v1, v0}, Lcom/googlecode/tesseract/android/TessBaseAPI;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "MqmHandler"

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initTessBass: init ret="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic b(Lcom/cyjh/mq/c/d;)Lcom/cyjh/mq/c/b;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    const/4 v1, 0x1

    .line 17228
    iput-boolean v1, v0, Lcom/cyjh/mq/c/b;->e:Z

    .line 604
    sget v0, Lcom/cyjh/mqsdk/R$string;->toast_on_start_script:I

    invoke-virtual {p0, v0}, Lcom/cyjh/mq/c/d;->a(I)V

    .line 605
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private b(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V
    .locals 4

    .line 589
    new-instance v0, Lcom/cyjh/mq/b/a$a;

    invoke-direct {v0}, Lcom/cyjh/mq/b/a$a;-><init>()V

    const/4 v1, 0x0

    .line 590
    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    .line 17032
    iput v2, v0, Lcom/cyjh/mq/b/a$a;->a:I

    const/4 v2, 0x1

    .line 591
    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v3

    .line 17037
    iput v3, v0, Lcom/cyjh/mq/b/a$a;->b:I

    const/4 v3, 0x2

    .line 592
    invoke-virtual {p1, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 17042
    :goto_0
    iput-boolean v2, v0, Lcom/cyjh/mq/b/a$a;->c:Z

    .line 17047
    new-instance p1, Lcom/cyjh/mq/b/a;

    invoke-direct {p1, v0, v1}, Lcom/cyjh/mq/b/a;-><init>(Lcom/cyjh/mq/b/a$a;B)V

    .line 594
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 17223
    iput-object p1, v0, Lcom/cyjh/mq/c/b;->f:Lcom/cyjh/mq/b/a;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    .line 827
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 829
    iget-object p1, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 830
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "title"

    .line 831
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_display_name"

    .line 832
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mime_type"

    const-string v3, "video/3gp"

    .line 833
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "datetaken"

    .line 834
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "date_modified"

    .line 835
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "date_added"

    .line 836
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "_data"

    .line 837
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_size"

    .line 838
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 839
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 840
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic c(Lcom/cyjh/mq/c/d;)Lcom/cyjh/mobileanjian/ipc/ui/h;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/cyjh/mq/c/d;->d:Lcom/cyjh/mobileanjian/ipc/ui/h;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private c(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V
    .locals 4

    .line 621
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/a;->a()V

    .line 622
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/a;->f()V

    const/4 v0, 0x0

    .line 624
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    .line 625
    iget-object v2, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 18228
    iput-boolean v0, v2, Lcom/cyjh/mq/c/b;->e:Z

    const/16 v2, 0x69

    if-eq v1, v2, :cond_0

    if-nez v1, :cond_1

    .line 628
    :cond_0
    sget v2, Lcom/cyjh/mqsdk/R$string;->toast_on_stop_script:I

    invoke-virtual {p0, v2}, Lcom/cyjh/mq/c/d;->a(I)V

    .line 639
    :cond_1
    iget-object v2, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, v1, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_data like \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 845
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 846
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private d()V
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private d(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V
    .locals 2

    .line 644
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 18316
    iget-object v0, v0, Lcom/cyjh/mq/c/b;->j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 646
    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;->onTracePrint(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 11

    .line 699
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 700
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 701
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 702
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 703
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 704
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 716
    iget-object v3, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/a;->d()Ljava/lang/String;

    move-result-object v3

    .line 717
    iget-object v4, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v4}, Lcom/cyjh/mobileanjian/ipc/a;->c()Ljava/lang/String;

    move-result-object v4

    .line 718
    iget-object v5, p0, Lcom/cyjh/mq/c/d;->b:Lcom/cyjh/mobileanjian/ipc/a;

    invoke-virtual {v5}, Lcom/cyjh/mobileanjian/ipc/a;->b()Ljava/lang/String;

    move-result-object v5

    .line 719
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v7, Lcom/ime/input/InputKb;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 720
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 721
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-nez v3, :cond_0

    const-string v3, "UNKNOW"

    :cond_0
    if-nez v4, :cond_1

    const-string v4, "UNKNOW"

    .line 726
    :cond_1
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    .line 729
    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    .line 731
    invoke-static {v9}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 736
    :cond_2
    :goto_0
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v9

    const/16 v10, 0xe

    invoke-virtual {v9, v10}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v9

    .line 738
    invoke-virtual {v9, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg1(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    .line 739
    invoke-virtual {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg1(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    .line 740
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg1(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    .line 742
    invoke-virtual {v0, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    .line 743
    invoke-virtual {v0, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    .line 744
    invoke-virtual {v0, v5}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    .line 745
    invoke-virtual {v0, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    .line 746
    invoke-virtual {v0, v8}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    .line 747
    invoke-virtual {v0, v7}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    .line 748
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    .line 751
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    invoke-virtual {v9}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method private e(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 19316
    iget-object v0, v0, Lcom/cyjh/mq/c/b;->j:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;

    if-eqz v0, :cond_0

    .line 653
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getFileData()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptMessageCallback;->onDebugMessage(Lcom/google/protobuf/ByteString;)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    .line 767
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private f(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V
    .locals 4

    const/4 v0, 0x0

    .line 658
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    const/4 v2, 0x1

    .line 659
    invoke-virtual {p1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v2

    const/4 v3, 0x2

    .line 660
    invoke-virtual {p1, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v3

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v2

    .line 661
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 662
    iget-object v2, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 20306
    iget-object v2, v2, Lcom/cyjh/mq/c/b;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

    if-nez v3, :cond_0

    .line 664
    iget-object v3, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 21238
    iput-boolean v0, v3, Lcom/cyjh/mq/c/b;->d:Z

    :cond_0
    if-eqz v2, :cond_1

    .line 666
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getFileData()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-interface {v2, v1, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;->onScreenShotDone(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V

    :cond_1
    return-void
.end method

.method private g(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V
    .locals 2

    const/4 v0, 0x0

    .line 671
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v0

    const/4 v1, 0x1

    .line 672
    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1(I)I

    move-result v1

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    .line 673
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 674
    iget-object v1, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 21347
    iget-object v1, v1, Lcom/cyjh/mq/c/b;->p:Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;

    if-eqz v1, :cond_0

    .line 676
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getFileData()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;->onScreenShotDone(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V

    :cond_0
    return-void
.end method

.method private h(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V
    .locals 2

    .line 680
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->c:Lcom/cyjh/mq/c/b;

    .line 22347
    iget-object v0, v0, Lcom/cyjh/mq/c/b;->p:Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 682
    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/cyjh/mobileanjian/ipc/interfaces/OnUiElementCallback;->onUiElementback(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/ByteString;III)Ljava/lang/String;
    .locals 8

    const-string v0, "TAG"

    .line 856
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetOrcText: width="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x4

    .line 860
    div-int/2addr p4, v0

    new-array v1, p4, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p4, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_0

    rsub-int/lit8 v5, v4, 0x3

    mul-int/lit8 v5, v5, 0x8

    .line 865
    aget v6, v1, v3

    mul-int/lit8 v7, v3, 0x4

    add-int/2addr v7, v4

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int v5, v7, v5

    add-int/2addr v6, v5

    aput v6, v1, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 869
    :cond_1
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p2, p3, p1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 871
    iget-boolean p2, p0, Lcom/cyjh/mq/c/d;->g:Z

    if-nez p2, :cond_2

    .line 872
    invoke-direct {p0}, Lcom/cyjh/mq/c/d;->a()Z

    move-result p2

    iput-boolean p2, p0, Lcom/cyjh/mq/c/d;->g:Z

    .line 873
    :cond_2
    iget-boolean p2, p0, Lcom/cyjh/mq/c/d;->g:Z

    if-nez p2, :cond_3

    const-string p1, ""

    return-object p1

    .line 876
    :cond_3
    iget-object p2, p0, Lcom/cyjh/mq/c/d;->f:Lcom/googlecode/tesseract/android/TessBaseAPI;

    invoke-virtual {p2, p1}, Lcom/googlecode/tesseract/android/TessBaseAPI;->a(Landroid/graphics/Bitmap;)V

    .line 877
    iget-object p2, p0, Lcom/cyjh/mq/c/d;->f:Lcom/googlecode/tesseract/android/TessBaseAPI;

    invoke-virtual {p2}, Lcom/googlecode/tesseract/android/TessBaseAPI;->a()Ljava/lang/String;

    move-result-object p2

    .line 878
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p2
.end method

.method final a(I)V
    .locals 2

    .line 756
    iget-object v0, p0, Lcom/cyjh/mq/c/d;->e:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 757
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 758
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "InsertImageToGallery"

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InsertImageToGallery:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 773
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x1d

    if-ge p1, v3, :cond_0

    .line 775
    :try_start_0
    iget-object p1, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p2, v3, v2}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 777
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 780
    :cond_0
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "description"

    const-string v4, "This is an qr image"

    .line 781
    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_display_name"

    .line 782
    invoke-virtual {p1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "mime_type"

    const-string v3, "image/jpeg"

    .line 783
    invoke-virtual {p1, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "title"

    const-string v3, "Image.jpg"

    .line 784
    invoke-virtual {p1, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "relative_path"

    .line 785
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {p1, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 788
    iget-object v3, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 789
    invoke-virtual {v3, p2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 793
    :try_start_1
    new-instance p2, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    if-eqz p1, :cond_1

    .line 795
    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_3

    const/16 v3, 0x1000

    .line 798
    new-array v3, v3, [B

    .line 800
    :goto_1
    invoke-virtual {p2, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 801
    invoke-virtual {p1, v3, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 803
    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 806
    :try_start_2
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 813
    :cond_3
    :goto_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_4

    const/4 p1, 0x1

    .line 814
    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    .line 815
    iget-object p2, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-static {p2, p1, v2, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void

    .line 819
    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 820
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 822
    iget-object p2, p0, Lcom/cyjh/mq/c/d;->a:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 809
    :goto_3
    throw p1
.end method

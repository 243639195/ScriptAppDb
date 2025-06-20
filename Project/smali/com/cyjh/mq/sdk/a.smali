.class public abstract Lcom/cyjh/mq/sdk/a;
.super Ljava/lang/Object;
.source "GeneralMqRunner.java"

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/interfaces/EngineStateObserver;
.implements Lcom/cyjh/mobileanjian/ipc/interfaces/OnRootApplyCallback;
.implements Lcom/cyjh/mq/sdk/inf/IRunner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mq/sdk/a$a;
    }
.end annotation


# static fields
.field protected static final a:I = 0x100


# instance fields
.field protected b:Lcom/cyjh/mq/c/b;

.field protected c:Lcom/cyjh/mq/sdk/entity/Script4Run;

.field protected d:Landroid/os/Handler;

.field protected e:Z

.field protected f:Z

.field private g:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/cyjh/mq/sdk/a;->b:Lcom/cyjh/mq/c/b;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/cyjh/mq/sdk/a;->e:Z

    .line 43
    iput-boolean v0, p0, Lcom/cyjh/mq/sdk/a;->h:Z

    .line 44
    iput-boolean v0, p0, Lcom/cyjh/mq/sdk/a;->f:Z

    .line 69
    new-instance v0, Lcom/cyjh/mq/sdk/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mq/sdk/a$1;-><init>(Lcom/cyjh/mq/sdk/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cyjh/mq/sdk/a;->d:Landroid/os/Handler;

    return-void
.end method

.method private a(Lcom/cyjh/mq/sdk/entity/Script4Run;)V
    .locals 3

    .line 98
    new-instance v0, Lcom/cyjh/mq/sdk/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mq/sdk/a$a;-><init>(Lcom/cyjh/mq/sdk/a;B)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/cyjh/mq/sdk/entity/Script4Run;

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Lcom/cyjh/mq/sdk/a$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .line 211
    iget-boolean v0, p0, Lcom/cyjh/mq/sdk/a;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lcom/cyjh/mq/sdk/a;->h:Z

    .line 215
    invoke-static {}, Lcom/cyjh/mq/a/a;->a()Ljava/io/File;

    move-result-object v0

    .line 217
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/d;->a()Lcom/cyjh/mobileanjian/ipc/d;

    move-result-object v1

    const-string v2, "setenforce 0"

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/d;->a(Ljava/lang/String;)Z

    .line 218
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/d;->a()Lcom/cyjh/mobileanjian/ipc/d;

    move-result-object v1

    const-string v2, "chmod 777 /dev/input/*"

    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/d;->a(Ljava/lang/String;)Z

    .line 219
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/d;->a()Lcom/cyjh/mobileanjian/ipc/d;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/d;->a(Ljava/lang/String;)Z

    .line 220
    iget-object v0, p0, Lcom/cyjh/mq/sdk/a;->d:Landroid/os/Handler;

    const/16 v1, 0x100

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected final a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/cyjh/mq/sdk/a;->e:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/cyjh/mq/sdk/a;->b:Lcom/cyjh/mq/c/b;

    invoke-virtual {v0, p1}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/protobuf/ByteString;)V
    .locals 2

    .line 172
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    const/16 v1, 0x40

    .line 173
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setFileData(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    .line 176
    invoke-virtual {p0, p1}, Lcom/cyjh/mq/sdk/a;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 200
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    const/16 v1, 0x105

    .line 201
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    .line 202
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    .line 203
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    .line 204
    invoke-virtual {p0, p1}, Lcom/cyjh/mq/sdk/a;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method public final b(Lcom/google/protobuf/ByteString;)V
    .locals 2

    .line 182
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    const/16 v1, 0x41

    .line 183
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setFileData(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    .line 186
    invoke-virtual {p0, p1}, Lcom/cyjh/mq/sdk/a;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method public final c(Lcom/google/protobuf/ByteString;)V
    .locals 2

    .line 191
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    const/16 v1, 0x104

    .line 192
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    .line 193
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setFileData(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    .line 194
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    .line 195
    invoke-virtual {p0, p1}, Lcom/cyjh/mq/sdk/a;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method public isScriptStarted()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/cyjh/mq/sdk/a;->b:Lcom/cyjh/mq/c/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mq/sdk/a;->b:Lcom/cyjh/mq/c/b;

    .line 2233
    iget-boolean v0, v0, Lcom/cyjh/mq/c/b;->e:Z

    return v0
.end method

.method public notifyRotationStatus()V
    .locals 3

    .line 3056
    sget-object v0, Lcom/cyjh/mq/a/a;->g:Landroid/app/Application;

    const-string v1, "window"

    .line 151
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 153
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v1

    const/16 v2, 0xf

    .line 154
    invoke-virtual {v1, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v1

    .line 155
    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg1(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    .line 157
    invoke-virtual {p0, v0}, Lcom/cyjh/mq/sdk/a;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method public onConnected(Lcom/cyjh/mq/c/b;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/cyjh/mq/sdk/a;->d:Landroid/os/Handler;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lcom/cyjh/mq/sdk/a;->e:Z

    .line 164
    iput-object p1, p0, Lcom/cyjh/mq/sdk/a;->b:Lcom/cyjh/mq/c/b;

    const/4 p1, 0x0

    .line 165
    iput-boolean p1, p0, Lcom/cyjh/mq/sdk/a;->h:Z

    .line 166
    iget-object p1, p0, Lcom/cyjh/mq/sdk/a;->g:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    invoke-virtual {p0, p1}, Lcom/cyjh/mq/sdk/a;->setOnScriptListener(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;)Lcom/cyjh/mq/sdk/inf/IRunner;

    return-void
.end method

.method public onObtained()V
    .locals 1

    .line 226
    invoke-virtual {p0}, Lcom/cyjh/mq/sdk/a;->a()V

    const/4 v0, 0x0

    .line 227
    iput-boolean v0, p0, Lcom/cyjh/mq/sdk/a;->f:Z

    return-void
.end method

.method public onRefused()V
    .locals 3

    .line 233
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RootUtil;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/cyjh/mq/sdk/a;->d:Landroid/os/Handler;

    const/4 v1, 0x4

    const-string v2, "User refused root."

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/cyjh/mq/sdk/a;->f:Z

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x2

    .line 127
    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/b;->a(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mq/sdk/a;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method public resume()V
    .locals 1

    const/16 v0, 0x9

    .line 132
    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/b;->a(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mq/sdk/a;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method public setOnScriptListener(Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;)Lcom/cyjh/mq/sdk/inf/IRunner;
    .locals 1

    .line 118
    iput-object p1, p0, Lcom/cyjh/mq/sdk/a;->g:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    .line 119
    iget-object p1, p0, Lcom/cyjh/mq/sdk/a;->b:Lcom/cyjh/mq/c/b;

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/cyjh/mq/sdk/a;->b:Lcom/cyjh/mq/c/b;

    iget-object v0, p0, Lcom/cyjh/mq/sdk/a;->g:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    .line 1270
    iput-object v0, p1, Lcom/cyjh/mq/c/b;->l:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;

    :cond_0
    return-object p0
.end method

.method public setScript(Lcom/cyjh/mq/sdk/entity/Script4Run;)Lcom/cyjh/mq/sdk/inf/IRunner;
    .locals 1

    .line 111
    iput-object p1, p0, Lcom/cyjh/mq/sdk/a;->c:Lcom/cyjh/mq/sdk/entity/Script4Run;

    const/4 v0, 0x7

    .line 112
    invoke-virtual {p1, v0}, Lcom/cyjh/mq/sdk/entity/Script4Run;->toMessage(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cyjh/mq/sdk/a;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-object p0
.end method

.method public stop()V
    .locals 2

    const-string v0, "JAVA_RUNNER"

    const-string v1, "GeneralMqRunner stop"

    .line 137
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 138
    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/b;->a(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mq/sdk/a;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

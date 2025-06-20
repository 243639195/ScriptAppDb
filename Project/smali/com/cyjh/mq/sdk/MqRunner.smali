.class public Lcom/cyjh/mq/sdk/MqRunner;
.super Lcom/cyjh/mq/sdk/a;
.source "MqRunner.java"

# interfaces
.implements Lcom/cyjh/mq/sdk/inf/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mq/sdk/MqRunner$a;
    }
.end annotation


# instance fields
.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/cyjh/mq/sdk/a;-><init>()V

    const-string v0, ""

    .line 28
    iput-object v0, p0, Lcom/cyjh/mq/sdk/MqRunner;->g:Ljava/lang/String;

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lcom/cyjh/mq/sdk/MqRunner;->h:Ljava/lang/String;

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lcom/cyjh/mq/sdk/MqRunner;->i:Ljava/lang/String;

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcom/cyjh/mq/sdk/MqRunner;->j:Ljava/lang/String;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/cyjh/mq/sdk/MqRunner;->l:Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/cyjh/mq/sdk/MqRunner;
    .locals 2

    const-class v0, Lcom/cyjh/mq/sdk/MqRunner;

    monitor-enter v0

    .line 43
    :try_start_0
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner$a;->a()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final b()Lcom/cyjh/mobileanjian/ipc/interfaces/OnRequestCallback;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Lcom/cyjh/mq/sdk/inf/OnElfCallback;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initElf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/mq/sdk/inf/OnElfCallback;)V
    .locals 1

    .line 63
    iput-object p1, p0, Lcom/cyjh/mq/sdk/MqRunner;->h:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/cyjh/mq/sdk/MqRunner;->i:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/cyjh/mq/sdk/MqRunner;->j:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/cyjh/mq/sdk/MqRunner;->k:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    .line 67
    invoke-static {p1, p2, p3}, Lcom/cyjh/mqm/MQLanguageStub;->InitElf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-boolean v0, p0, Lcom/cyjh/mq/sdk/MqRunner;->e:Z

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/cyjh/mq/sdk/MqRunner;->b:Lcom/cyjh/mq/c/b;

    .line 1342
    iput-object p4, v0, Lcom/cyjh/mq/c/b;->o:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    .line 70
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p4

    const/16 v0, 0x50

    .line 71
    invoke-virtual {p4, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p4

    .line 72
    invoke-virtual {p4, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    .line 73
    invoke-virtual {p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    .line 74
    invoke-virtual {p1, p3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    .line 76
    invoke-virtual {p0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    :cond_0
    return-void
.end method

.method public initHost(Ljava/lang/String;)V
    .locals 2

    .line 48
    invoke-static {p1}, Lcom/cyjh/mqm/MQLanguageStub;->InitHost(Ljava/lang/String;)V

    .line 49
    iget-boolean v0, p0, Lcom/cyjh/mq/sdk/MqRunner;->e:Z

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    const/16 v1, 0x53

    .line 51
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/cyjh/mq/sdk/MqRunner;->g:Ljava/lang/String;

    return-void
.end method

.method public onConnected(Lcom/cyjh/mq/c/b;)V
    .locals 1

    .line 112
    invoke-super {p0, p1}, Lcom/cyjh/mq/sdk/a;->onConnected(Lcom/cyjh/mq/c/b;)V

    .line 114
    iget-object v0, p0, Lcom/cyjh/mq/sdk/MqRunner;->k:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    .line 2342
    iput-object v0, p1, Lcom/cyjh/mq/c/b;->o:Lcom/cyjh/mq/sdk/inf/OnElfCallback;

    .line 115
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    const/16 v0, 0x50

    .line 116
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/mq/sdk/MqRunner;->h:Ljava/lang/String;

    .line 117
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/mq/sdk/MqRunner;->i:Ljava/lang/String;

    .line 118
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/mq/sdk/MqRunner;->j:Ljava/lang/String;

    .line 119
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    .line 121
    invoke-virtual {p0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    .line 123
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    const/16 v0, 0x53

    .line 124
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/mq/sdk/MqRunner;->g:Ljava/lang/String;

    .line 125
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    .line 126
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    .line 127
    invoke-virtual {p0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    .line 129
    iget p1, p0, Lcom/cyjh/mq/sdk/MqRunner;->m:I

    iget v0, p0, Lcom/cyjh/mq/sdk/MqRunner;->n:I

    invoke-virtual {p0, p1, v0}, Lcom/cyjh/mq/sdk/MqRunner;->setHeartBeat(II)V

    return-void
.end method

.method public onCrash(Lcom/cyjh/mobileanjian/ipc/b;)V
    .locals 0

    const/4 p1, 0x0

    .line 139
    iput-boolean p1, p0, Lcom/cyjh/mq/sdk/MqRunner;->e:Z

    .line 140
    invoke-virtual {p0}, Lcom/cyjh/mq/sdk/MqRunner;->a()V

    return-void
.end method

.method public onExit()V
    .locals 0

    return-void
.end method

.method public setHeartBeat(II)V
    .locals 2

    .line 82
    iput p1, p0, Lcom/cyjh/mq/sdk/MqRunner;->m:I

    .line 83
    iput p2, p0, Lcom/cyjh/mq/sdk/MqRunner;->n:I

    .line 84
    iget-boolean v0, p0, Lcom/cyjh/mq/sdk/MqRunner;->e:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    const/16 v1, 0x54

    .line 86
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg1(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    .line 88
    invoke-virtual {p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg1(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    :cond_0
    return-void
.end method

.method public setOnSpecialMqCmdCallback(Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;)V
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/cyjh/mq/sdk/MqRunner;->e:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/cyjh/mq/sdk/MqRunner;->b:Lcom/cyjh/mq/c/b;

    .line 1427
    iput-object p1, v0, Lcom/cyjh/mq/c/b;->q:Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;

    :cond_0
    return-void
.end method

.method public setRegCode(Ljava/lang/String;)V
    .locals 2

    .line 103
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    const/16 v1, 0x52

    .line 104
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg2(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    .line 107
    invoke-virtual {p0, p1}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 145
    invoke-virtual {p0}, Lcom/cyjh/mq/sdk/MqRunner;->notifyRotationStatus()V

    const/4 v0, 0x1

    .line 146
    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/b;->a(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyjh/mq/sdk/MqRunner;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

.method public takeShot(IILcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/cyjh/mq/sdk/MqRunner;->b:Lcom/cyjh/mq/c/b;

    if-nez v0, :cond_0

    .line 166
    iput p1, p0, Lcom/cyjh/mq/sdk/MqRunner;->o:I

    .line 167
    iput p2, p0, Lcom/cyjh/mq/sdk/MqRunner;->p:I

    .line 168
    iput-object p3, p0, Lcom/cyjh/mq/sdk/MqRunner;->q:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

    return-void

    .line 171
    :cond_0
    iget-object p2, p0, Lcom/cyjh/mq/sdk/MqRunner;->b:Lcom/cyjh/mq/c/b;

    const/4 v0, 0x1

    .line 3238
    iput-boolean v0, p2, Lcom/cyjh/mq/c/b;->d:Z

    .line 172
    iget-object p2, p0, Lcom/cyjh/mq/sdk/MqRunner;->b:Lcom/cyjh/mq/c/b;

    .line 3301
    iput-object p3, p2, Lcom/cyjh/mq/c/b;->i:Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;

    .line 173
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p2

    const/16 p3, 0x18

    .line 174
    invoke-virtual {p2, p3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->setCmd(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p2

    .line 175
    invoke-virtual {p2, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->addArg1(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    .line 176
    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    .line 177
    iget-object p2, p0, Lcom/cyjh/mq/sdk/MqRunner;->b:Lcom/cyjh/mq/c/b;

    invoke-virtual {p2, p1}, Lcom/cyjh/mq/c/b;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    return-void
.end method

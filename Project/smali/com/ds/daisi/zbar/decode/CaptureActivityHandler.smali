.class public final Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;
    }
.end annotation


# instance fields
.field activity:Lcom/ds/daisi/activity/SweepCodeActivity;

.field decodeThread:Lcom/ds/daisi/zbar/decode/DecodeThread;

.field private state:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;


# direct methods
.method public constructor <init>(Lcom/ds/daisi/activity/SweepCodeActivity;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;->decodeThread:Lcom/ds/daisi/zbar/decode/DecodeThread;

    .line 14
    iput-object v0, p0, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;->activity:Lcom/ds/daisi/activity/SweepCodeActivity;

    .line 22
    iput-object p1, p0, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;->activity:Lcom/ds/daisi/activity/SweepCodeActivity;

    .line 23
    new-instance v0, Lcom/ds/daisi/zbar/decode/DecodeThread;

    invoke-direct {v0, p1}, Lcom/ds/daisi/zbar/decode/DecodeThread;-><init>(Lcom/ds/daisi/activity/SweepCodeActivity;)V

    iput-object v0, p0, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;->decodeThread:Lcom/ds/daisi/zbar/decode/DecodeThread;

    .line 24
    iget-object p1, p0, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;->decodeThread:Lcom/ds/daisi/zbar/decode/DecodeThread;

    invoke-virtual {p1}, Lcom/ds/daisi/zbar/decode/DecodeThread;->start()V

    .line 25
    sget-object p1, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;->SUCCESS:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

    iput-object p1, p0, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;->state:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

    .line 26
    invoke-static {}, Lcom/ds/daisi/zbar/camera/CameraManager;->get()Lcom/ds/daisi/zbar/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ds/daisi/zbar/camera/CameraManager;->startPreview()V

    .line 27
    invoke-direct {p0}, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;->restartPreviewAndDecode()V

    return-void
.end method

.method private restartPreviewAndDecode()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;->state:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

    sget-object v1, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;->SUCCESS:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    .line 67
    sget-object v0, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;->PREVIEW:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;->state:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

    .line 68
    invoke-static {}, Lcom/ds/daisi/zbar/camera/CameraManager;->get()Lcom/ds/daisi/zbar/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;->decodeThread:Lcom/ds/daisi/zbar/decode/DecodeThread;

    invoke-virtual {v1}, Lcom/ds/daisi/zbar/decode/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f100005

    invoke-virtual {v0, v1, v2}, Lcom/ds/daisi/zbar/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 70
    invoke-static {}, Lcom/ds/daisi/zbar/camera/CameraManager;->get()Lcom/ds/daisi/zbar/camera/CameraManager;

    move-result-object v0

    const v1, 0x7f100004

    invoke-virtual {v0, p0, v1}, Lcom/ds/daisi/zbar/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 33
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 41
    :sswitch_0
    invoke-direct {p0}, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto :goto_0

    .line 44
    :sswitch_1
    sget-object v0, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;->SUCCESS:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;->state:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

    .line 45
    iget-object v0, p0, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;->activity:Lcom/ds/daisi/activity/SweepCodeActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ds/daisi/activity/SweepCodeActivity;->handleDecode(Ljava/lang/String;)V

    .line 48
    :sswitch_2
    sget-object p1, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;->PREVIEW:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

    iput-object p1, p0, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;->state:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

    .line 49
    invoke-static {}, Lcom/ds/daisi/zbar/camera/CameraManager;->get()Lcom/ds/daisi/zbar/camera/CameraManager;

    move-result-object p1

    iget-object v0, p0, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;->decodeThread:Lcom/ds/daisi/zbar/decode/DecodeThread;

    invoke-virtual {v0}, Lcom/ds/daisi/zbar/decode/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const v1, 0x7f100005

    invoke-virtual {p1, v0, v1}, Lcom/ds/daisi/zbar/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    goto :goto_0

    .line 35
    :sswitch_3
    iget-object p1, p0, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;->state:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

    sget-object v0, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;->PREVIEW:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

    if-ne p1, v0, :cond_0

    .line 36
    invoke-static {}, Lcom/ds/daisi/zbar/camera/CameraManager;->get()Lcom/ds/daisi/zbar/camera/CameraManager;

    move-result-object p1

    const v0, 0x7f100004

    invoke-virtual {p1, p0, v0}, Lcom/ds/daisi/zbar/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100004 -> :sswitch_3
        0x7f100006 -> :sswitch_2
        0x7f100007 -> :sswitch_1
        0x7f100015 -> :sswitch_0
    .end sparse-switch
.end method

.method public quitSynchronously()V
    .locals 1

    .line 57
    sget-object v0, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;->DONE:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;->state:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

    .line 58
    invoke-static {}, Lcom/ds/daisi/zbar/camera/CameraManager;->get()Lcom/ds/daisi/zbar/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ds/daisi/zbar/camera/CameraManager;->stopPreview()V

    const v0, 0x7f100007

    .line 59
    invoke-virtual {p0, v0}, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;->removeMessages(I)V

    const v0, 0x7f100006

    .line 60
    invoke-virtual {p0, v0}, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;->removeMessages(I)V

    const v0, 0x7f100005

    .line 61
    invoke-virtual {p0, v0}, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;->removeMessages(I)V

    const v0, 0x7f100004

    .line 62
    invoke-virtual {p0, v0}, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;->removeMessages(I)V

    return-void
.end method

.class final Lcom/ds/daisi/zbar/camera/PreviewCallback;
.super Ljava/lang/Object;
.source "PreviewCallback.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "PreviewCallback"


# instance fields
.field private final configManager:Lcom/ds/daisi/zbar/camera/CameraConfigurationManager;

.field private previewHandler:Landroid/os/Handler;

.field private previewMessage:I

.field private final useOneShotPreviewCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/ds/daisi/zbar/camera/CameraConfigurationManager;Z)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/ds/daisi/zbar/camera/PreviewCallback;->configManager:Lcom/ds/daisi/zbar/camera/CameraConfigurationManager;

    .line 23
    iput-boolean p2, p0, Lcom/ds/daisi/zbar/camera/PreviewCallback;->useOneShotPreviewCallback:Z

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4

    .line 32
    iget-object v0, p0, Lcom/ds/daisi/zbar/camera/PreviewCallback;->configManager:Lcom/ds/daisi/zbar/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/ds/daisi/zbar/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    .line 33
    iget-boolean v1, p0, Lcom/ds/daisi/zbar/camera/PreviewCallback;->useOneShotPreviewCallback:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 34
    invoke-virtual {p2, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 36
    :cond_0
    iget-object p2, p0, Lcom/ds/daisi/zbar/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    if-eqz p2, :cond_1

    .line 37
    iget-object p2, p0, Lcom/ds/daisi/zbar/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/ds/daisi/zbar/camera/PreviewCallback;->previewMessage:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v1, v3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 40
    iput-object v2, p0, Lcom/ds/daisi/zbar/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    goto :goto_0

    .line 42
    :cond_1
    sget-object p1, Lcom/ds/daisi/zbar/camera/PreviewCallback;->TAG:Ljava/lang/String;

    const-string p2, "Got preview callback, but no handler for it"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method setHandler(Landroid/os/Handler;I)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/ds/daisi/zbar/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    .line 28
    iput p2, p0, Lcom/ds/daisi/zbar/camera/PreviewCallback;->previewMessage:I

    return-void
.end method

.class public final Lcom/ds/daisi/zbar/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field static final SDK_INT:I

.field private static cameraManager:Lcom/ds/daisi/zbar/camera/CameraManager;


# instance fields
.field private final autoFocusCallback:Lcom/ds/daisi/zbar/camera/AutoFocusCallback;

.field private camera:Landroid/hardware/Camera;

.field private final configManager:Lcom/ds/daisi/zbar/camera/CameraConfigurationManager;

.field private initialized:Z

.field private parameter:Landroid/hardware/Camera$Parameters;

.field private final previewCallback:Lcom/ds/daisi/zbar/camera/PreviewCallback;

.field private previewing:Z

.field private final useOneShotPreviewCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0x2710

    .line 28
    :goto_0
    sput v0, Lcom/ds/daisi/zbar/camera/CameraManager;->SDK_INT:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/ds/daisi/zbar/camera/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lcom/ds/daisi/zbar/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->configManager:Lcom/ds/daisi/zbar/camera/CameraConfigurationManager;

    .line 53
    sget p1, Lcom/ds/daisi/zbar/camera/CameraManager;->SDK_INT:I

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->useOneShotPreviewCallback:Z

    .line 54
    new-instance p1, Lcom/ds/daisi/zbar/camera/PreviewCallback;

    iget-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->configManager:Lcom/ds/daisi/zbar/camera/CameraConfigurationManager;

    iget-boolean v1, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->useOneShotPreviewCallback:Z

    invoke-direct {p1, v0, v1}, Lcom/ds/daisi/zbar/camera/PreviewCallback;-><init>(Lcom/ds/daisi/zbar/camera/CameraConfigurationManager;Z)V

    iput-object p1, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->previewCallback:Lcom/ds/daisi/zbar/camera/PreviewCallback;

    .line 55
    new-instance p1, Lcom/ds/daisi/zbar/camera/AutoFocusCallback;

    invoke-direct {p1}, Lcom/ds/daisi/zbar/camera/AutoFocusCallback;-><init>()V

    iput-object p1, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->autoFocusCallback:Lcom/ds/daisi/zbar/camera/AutoFocusCallback;

    return-void
.end method

.method public static get()Lcom/ds/daisi/zbar/camera/CameraManager;
    .locals 1

    .line 47
    sget-object v0, Lcom/ds/daisi/zbar/camera/CameraManager;->cameraManager:Lcom/ds/daisi/zbar/camera/CameraManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 41
    sget-object v0, Lcom/ds/daisi/zbar/camera/CameraManager;->cameraManager:Lcom/ds/daisi/zbar/camera/CameraManager;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/ds/daisi/zbar/camera/CameraManager;

    invoke-direct {v0, p0}, Lcom/ds/daisi/zbar/camera/CameraManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ds/daisi/zbar/camera/CameraManager;->cameraManager:Lcom/ds/daisi/zbar/camera/CameraManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public closeDriver()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lcom/ds/daisi/zbar/camera/FlashlightManager;->disableFlashlight()V

    .line 82
    iget-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->camera:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method public getCameraResolution()Landroid/graphics/Point;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->configManager:Lcom/ds/daisi/zbar/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/ds/daisi/zbar/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public offLight()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->parameter:Landroid/hardware/Camera$Parameters;

    .line 137
    iget-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->parameter:Landroid/hardware/Camera$Parameters;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->parameter:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method public openDriver(Landroid/view/SurfaceHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 60
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 61
    iget-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 62
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 66
    iget-boolean p1, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->initialized:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->initialized:Z

    .line 68
    iget-object p1, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->configManager:Lcom/ds/daisi/zbar/camera/CameraConfigurationManager;

    iget-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Lcom/ds/daisi/zbar/camera/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->configManager:Lcom/ds/daisi/zbar/camera/CameraConfigurationManager;

    iget-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Lcom/ds/daisi/zbar/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;)V

    .line 71
    invoke-static {}, Lcom/ds/daisi/zbar/camera/FlashlightManager;->enableFlashlight()V

    :cond_2
    return-void
.end method

.method public openLight()V
    .locals 2

    const-string v0, "zzz"

    const-string v1, "openLight1"

    .line 125
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const-string v0, "zzz"

    const-string v1, "openLight2"

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->parameter:Landroid/hardware/Camera$Parameters;

    .line 129
    iget-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->parameter:Landroid/hardware/Camera$Parameters;

    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->parameter:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method public requestAutoFocus(Landroid/os/Handler;I)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->autoFocusCallback:Lcom/ds/daisi/zbar/camera/AutoFocusCallback;

    invoke-virtual {v0, p1, p2}, Lcom/ds/daisi/zbar/camera/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 120
    iget-object p1, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->autoFocusCallback:Lcom/ds/daisi/zbar/camera/AutoFocusCallback;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_0
    return-void
.end method

.method public requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->previewCallback:Lcom/ds/daisi/zbar/camera/PreviewCallback;

    invoke-virtual {v0, p1, p2}, Lcom/ds/daisi/zbar/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 109
    iget-boolean p1, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->useOneShotPreviewCallback:Z

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->previewCallback:Lcom/ds/daisi/zbar/camera/PreviewCallback;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->previewCallback:Lcom/ds/daisi/zbar/camera/PreviewCallback;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startPreview()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->previewing:Z

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->previewing:Z

    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    .line 96
    iget-boolean v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->useOneShotPreviewCallback:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 100
    iget-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->previewCallback:Lcom/ds/daisi/zbar/camera/PreviewCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ds/daisi/zbar/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 101
    iget-object v0, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->autoFocusCallback:Lcom/ds/daisi/zbar/camera/AutoFocusCallback;

    invoke-virtual {v0, v1, v2}, Lcom/ds/daisi/zbar/camera/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 102
    iput-boolean v2, p0, Lcom/ds/daisi/zbar/camera/CameraManager;->previewing:Z

    :cond_1
    return-void
.end method

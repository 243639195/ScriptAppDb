.class public Lcom/ds/daisi/activity/SweepCodeActivity;
.super Lcom/ds/daisi/activity/BaseActivity;
.source "SweepCodeActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/activity/SweepCodeActivity$OnLeftImageViewOnClicker;
    }
.end annotation


# static fields
.field private static final BEEP_VOLUME:F = 0.5f

.field public static final SWEEP_RESULT_BACK:Ljava/lang/String; = "SWEEP_RESULT_BACK"

.field private static final VIBRATE_DURATION:J = 0xc8L


# instance fields
.field private final beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private cropHeight:I

.field private cropWidth:I

.field flag:Z

.field private handler:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;

.field private hasSurface:Z

.field private inactivityTimer:Lcom/ds/daisi/zbar/decode/InactivityTimer;

.field private isNeedCapture:Z

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mCropLayout:Landroid/widget/RelativeLayout;

.field private mQrLineView:Landroid/widget/ImageView;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private playBeep:Z

.field private vibrate:Z

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/ds/daisi/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->mContainer:Landroid/widget/RelativeLayout;

    .line 50
    iput-object v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->mCropLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->isNeedCapture:Z

    .line 60
    iput v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->x:I

    .line 61
    iput v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->y:I

    .line 62
    iput v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->cropWidth:I

    .line 63
    iput v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->cropHeight:I

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->flag:Z

    .line 284
    new-instance v0, Lcom/ds/daisi/activity/SweepCodeActivity$2;

    invoke-direct {v0, p0}, Lcom/ds/daisi/activity/SweepCodeActivity$2;-><init>(Lcom/ds/daisi/activity/SweepCodeActivity;)V

    iput-object v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method private initBeepSound()V
    .locals 7

    .line 264
    iget-boolean v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->playBeep:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 265
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/SweepCodeActivity;->setVolumeControlStream(I)V

    .line 266
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 267
    iget-object v1, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 268
    iget-object v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->beepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 270
    invoke-virtual {p0}, Lcom/ds/daisi/activity/SweepCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 274
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    .line 273
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 275
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 276
    iget-object v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 277
    iget-object v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 279
    iput-object v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    :goto_0
    return-void
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 293
    :try_start_0
    invoke-static {}, Lcom/ds/daisi/zbar/camera/CameraManager;->get()Lcom/ds/daisi/zbar/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ds/daisi/zbar/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V

    .line 295
    invoke-static {}, Lcom/ds/daisi/zbar/camera/CameraManager;->get()Lcom/ds/daisi/zbar/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ds/daisi/zbar/camera/CameraManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object p1

    .line 296
    iget v0, p1, Landroid/graphics/Point;->y:I

    .line 297
    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 299
    iget-object v1, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->mCropLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v1

    mul-int v1, v1, v0

    iget-object v2, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    .line 300
    iget-object v2, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->mCropLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v2

    mul-int v2, v2, p1

    iget-object v3, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    div-int/2addr v2, v3

    .line 302
    iget-object v3, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->mCropLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    mul-int v3, v3, v0

    iget-object v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->mContainer:Landroid/widget/RelativeLayout;

    .line 303
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    div-int/2addr v3, v0

    .line 304
    iget-object v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->mCropLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    mul-int v0, v0, p1

    iget-object p1, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->mContainer:Landroid/widget/RelativeLayout;

    .line 305
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    div-int/2addr v0, p1

    .line 307
    invoke-virtual {p0, v1}, Lcom/ds/daisi/activity/SweepCodeActivity;->setX(I)V

    .line 308
    invoke-virtual {p0, v2}, Lcom/ds/daisi/activity/SweepCodeActivity;->setY(I)V

    .line 309
    invoke-virtual {p0, v3}, Lcom/ds/daisi/activity/SweepCodeActivity;->setCropWidth(I)V

    .line 310
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/SweepCodeActivity;->setCropHeight(I)V

    const/4 p1, 0x1

    .line 311
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/SweepCodeActivity;->setNeedCapture(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    iget-object p1, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->handler:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;

    if-nez p1, :cond_0

    .line 319
    new-instance p1, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;

    invoke-direct {p1, p0}, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;-><init>(Lcom/ds/daisi/activity/SweepCodeActivity;)V

    iput-object p1, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->handler:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;

    :cond_0
    return-void

    :catch_0
    return-void

    :catch_1
    return-void
.end method

.method private initView()V
    .locals 12

    .line 139
    invoke-static {p0}, Lcom/ds/daisi/zbar/camera/CameraManager;->init(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->hasSurface:Z

    .line 141
    new-instance v0, Lcom/ds/daisi/zbar/decode/InactivityTimer;

    invoke-direct {v0, p0}, Lcom/ds/daisi/zbar/decode/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->inactivityTimer:Lcom/ds/daisi/zbar/decode/InactivityTimer;

    const v0, 0x7f1000ce

    .line 142
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/SweepCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->mContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f1000d1

    .line 143
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/SweepCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->mCropLayout:Landroid/widget/RelativeLayout;

    .line 144
    invoke-virtual {p0}, Lcom/ds/daisi/activity/SweepCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 145
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 146
    iget-object v1, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->mCropLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 147
    div-int/lit8 v0, v0, 0x3

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 148
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 149
    iget-object v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->mCropLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f1000d2

    .line 150
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/SweepCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->mQrLineView:Landroid/widget/ImageView;

    .line 151
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x2

    const v11, 0x3f666666    # 0.9f

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v3, 0x5dc

    .line 155
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v1, -0x1

    .line 156
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 157
    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 158
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 159
    iget-object v1, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->mQrLineView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    const v0, 0x7f1000d7

    .line 160
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/SweepCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 161
    new-instance v1, Lcom/ds/daisi/activity/SweepCodeActivity$1;

    invoke-direct {v1, p0}, Lcom/ds/daisi/activity/SweepCodeActivity$1;-><init>(Lcom/ds/daisi/activity/SweepCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initViewTitle()V
    .locals 3

    const v0, 0x7f1000a5

    .line 123
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/SweepCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ds/daisi/customview/TitleView;

    const v1, 0x7f090180

    .line 124
    invoke-virtual {p0, v1}, Lcom/ds/daisi/activity/SweepCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setTitleText(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 125
    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setVisibilityRightImage(I)V

    const v1, 0x7f0200c2

    .line 126
    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setleftImage(I)V

    .line 127
    new-instance v1, Lcom/ds/daisi/activity/SweepCodeActivity$OnLeftImageViewOnClicker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ds/daisi/activity/SweepCodeActivity$OnLeftImageViewOnClicker;-><init>(Lcom/ds/daisi/activity/SweepCodeActivity;Lcom/ds/daisi/activity/SweepCodeActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/ds/daisi/customview/TitleView;->setOnLeftImageViewListener(Lcom/ds/daisi/customview/TitleView$OnLeftImageViewListener;)V

    return-void
.end method

.method private onResultHandler(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 358
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Scan failed!"

    const/4 p2, 0x0

    .line 359
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    return-void
.end method

.method private playBeepSoundAndVibrate()V
    .locals 3

    .line 253
    iget-boolean v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->playBeep:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 256
    :cond_0
    iget-boolean v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->vibrate:Z

    if-eqz v0, :cond_1

    const-string v0, "vibrator"

    .line 257
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/SweepCodeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0xc8

    .line 258
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_1
    return-void
.end method

.method private sweepCodeDestroy()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->handler:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->handler:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;

    invoke-virtual {v0}, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;->quitSynchronously()V

    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->handler:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;

    .line 218
    :cond_0
    invoke-static {}, Lcom/ds/daisi/zbar/camera/CameraManager;->get()Lcom/ds/daisi/zbar/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ds/daisi/zbar/camera/CameraManager;->closeDriver()V

    return-void
.end method


# virtual methods
.method public getCropHeight()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->cropHeight:I

    return v0
.end method

.method public getCropWidth()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->cropWidth:I

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->handler:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;

    return-object v0
.end method

.method public getX()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->y:I

    return v0
.end method

.method public handleDecode(Ljava/lang/String;)V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->inactivityTimer:Lcom/ds/daisi/zbar/decode/InactivityTimer;

    invoke-virtual {v0}, Lcom/ds/daisi/zbar/decode/InactivityTimer;->onActivity()V

    .line 233
    invoke-direct {p0}, Lcom/ds/daisi/activity/SweepCodeActivity;->playBeepSoundAndVibrate()V

    .line 235
    invoke-direct {p0}, Lcom/ds/daisi/activity/SweepCodeActivity;->sweepCodeDestroy()V

    .line 236
    iget-object v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->mQrLineView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    if-eqz p1, :cond_0

    .line 239
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "SWEEP_RESULT_BACK"

    .line 240
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 241
    invoke-virtual {p0, p1, v0}, Lcom/ds/daisi/activity/SweepCodeActivity;->setResult(ILandroid/content/Intent;)V

    .line 242
    invoke-virtual {p0}, Lcom/ds/daisi/activity/SweepCodeActivity;->finish()V

    goto :goto_0

    :cond_0
    const p1, 0x7f090182

    .line 247
    invoke-static {p0, p1}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public isNeedCapture()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->isNeedCapture:Z

    return v0
.end method

.method protected light()V
    .locals 2

    .line 172
    iget-boolean v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->flag:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->flag:Z

    .line 175
    invoke-static {}, Lcom/ds/daisi/zbar/camera/CameraManager;->get()Lcom/ds/daisi/zbar/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ds/daisi/zbar/camera/CameraManager;->openLight()V

    goto :goto_0

    .line 177
    :cond_0
    iput-boolean v1, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->flag:Z

    .line 179
    invoke-static {}, Lcom/ds/daisi/zbar/camera/CameraManager;->get()Lcom/ds/daisi/zbar/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ds/daisi/zbar/camera/CameraManager;->offLight()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 108
    invoke-super {p0, p1}, Lcom/ds/daisi/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040031

    .line 109
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/SweepCodeActivity;->setContentView(I)V

    const-string p1, "android.permission.CAMERA"

    .line 111
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 113
    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "android.permission.CAMERA"

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p0, p1, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/ds/daisi/activity/SweepCodeActivity;->initViewTitle()V

    .line 119
    invoke-direct {p0}, Lcom/ds/daisi/activity/SweepCodeActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->inactivityTimer:Lcom/ds/daisi/zbar/decode/InactivityTimer;

    invoke-virtual {v0}, Lcom/ds/daisi/zbar/decode/InactivityTimer;->shutdown()V

    .line 224
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 208
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onPause()V

    .line 209
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 210
    invoke-direct {p0}, Lcom/ds/daisi/activity/SweepCodeActivity;->sweepCodeDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 187
    invoke-super {p0}, Lcom/ds/daisi/activity/BaseActivity;->onResume()V

    .line 188
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    const v0, 0x7f1000cf

    .line 189
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/SweepCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 190
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 191
    iget-boolean v1, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->hasSurface:Z

    if-eqz v1, :cond_0

    .line 192
    invoke-direct {p0, v0}, Lcom/ds/daisi/activity/SweepCodeActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 194
    :cond_0
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v1, 0x3

    .line 195
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    :goto_0
    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->playBeep:Z

    const-string v1, "audio"

    .line 198
    invoke-virtual {p0, v1}, Lcom/ds/daisi/activity/SweepCodeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 199
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    .line 200
    iput-boolean v1, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->playBeep:Z

    .line 202
    :cond_1
    invoke-direct {p0}, Lcom/ds/daisi/activity/SweepCodeActivity;->initBeepSound()V

    .line 203
    iput-boolean v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->vibrate:Z

    return-void
.end method

.method public setCropHeight(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->cropHeight:I

    return-void
.end method

.method public setCropWidth(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->cropWidth:I

    return-void
.end method

.method public setNeedCapture(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->isNeedCapture:Z

    return-void
.end method

.method public setX(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->x:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->y:I

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 331
    iget-boolean v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->hasSurface:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 332
    iput-boolean v0, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->hasSurface:Z

    .line 333
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/SweepCodeActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 339
    iput-boolean p1, p0, Lcom/ds/daisi/activity/SweepCodeActivity;->hasSurface:Z

    return-void
.end method

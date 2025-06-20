.class final Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$1;
.super Ljava/lang/Object;
.source "ScreenShoterV3.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$1;->a:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 2

    .line 346
    iget-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$1;->a:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->a(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 347
    iget-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$1;->a:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->b(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;)Landroid/media/ImageReader;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 349
    iget-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$1;->a:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$1;->a:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    invoke-static {v1, p1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->a(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;Landroid/media/Image;)Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->a(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;)Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;

    .line 350
    iget-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$1;->a:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->a(Landroid/media/Image;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->a(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 351
    iget-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$1;->a:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->a(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;Z)Z

    .line 352
    iget-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$1;->a:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->c(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;)Z

    .line 353
    iget-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$1;->a:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->b(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;)Landroid/media/ImageReader;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 354
    iget-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$1;->a:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->b(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;)Landroid/media/ImageReader;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void

    .line 357
    :cond_0
    iget-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$1;->a:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->a(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;Z)Z

    :cond_1
    return-void
.end method

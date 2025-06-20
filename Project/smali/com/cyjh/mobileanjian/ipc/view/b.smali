.class public final Lcom/cyjh/mobileanjian/ipc/view/b;
.super Ljava/lang/Object;
.source "ShowTapPic.java"


# instance fields
.field a:Landroid/view/WindowManager;

.field b:Landroid/view/View;

.field private c:Landroid/os/Handler;

.field private d:Landroid/content/Context;

.field private e:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/view/b$1;

    invoke-direct {v0, p0}, Lcom/cyjh/mobileanjian/ipc/view/b$1;-><init>(Lcom/cyjh/mobileanjian/ipc/view/b;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/b;->e:Landroid/os/Handler$Callback;

    .line 30
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/b;->d:Landroid/content/Context;

    const-string v0, "window"

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/b;->a:Landroid/view/WindowManager;

    return-void
.end method

.method private static synthetic a(Lcom/cyjh/mobileanjian/ipc/view/b;)Landroid/view/View;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/view/b;->b:Landroid/view/View;

    return-object p0
.end method

.method private static synthetic b(Lcom/cyjh/mobileanjian/ipc/view/b;)Landroid/view/WindowManager;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/view/b;->a:Landroid/view/WindowManager;

    return-object p0
.end method


# virtual methods
.method public final a(IILjava/lang/String;)V
    .locals 5

    .line 36
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-nez p3, :cond_1

    return-void

    .line 45
    :cond_1
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 46
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 47
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 48
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_2

    const/16 v3, 0x7f6

    .line 49
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    :cond_2
    const/16 v3, 0x7d2

    .line 51
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    :goto_0
    const/4 v3, 0x1

    .line 53
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v3, 0x33

    .line 54
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v3, 0x318

    .line 55
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 60
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 61
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 62
    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 63
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    iput p2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 64
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/view/b;->d:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/b;->e:Landroid/os/Handler$Callback;

    invoke-direct {p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/b;->c:Landroid/os/Handler;

    .line 66
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/b;->d:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 67
    sget p2, Lcom/cyjh/mqsdk/R$layout;->ui_show_image:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/b;->b:Landroid/view/View;

    .line 68
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/b;->b:Landroid/view/View;

    sget p2, Lcom/cyjh/mqsdk/R$id;->tap_imageview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 69
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 71
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/b;->a:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/view/b;->b:Landroid/view/View;

    invoke-interface {p1, p2, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/b;->c:Landroid/os/Handler;

    const/4 p2, 0x0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 76
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method

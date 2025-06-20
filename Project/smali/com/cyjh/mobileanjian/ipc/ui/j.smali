.class public final Lcom/cyjh/mobileanjian/ipc/ui/j;
.super Landroid/widget/RelativeLayout;
.source "UiShowFloat.java"


# instance fields
.field a:Landroid/view/WindowManager;

.field b:Landroid/view/WindowManager$LayoutParams;

.field c:Landroid/widget/RelativeLayout;

.field d:Z

.field e:Z

.field f:I

.field g:F

.field h:I

.field i:Ljava/lang/String;

.field private j:Landroid/content/Context;

.field private k:Lcom/cyjh/mobileanjian/ipc/ui/g;

.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIII)V
    .locals 1

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    .line 39
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->e:Z

    const-string v0, "#FFFFFF"

    .line 40
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->f:I

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/16 v0, 0x64

    .line 42
    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->h:I

    const-string v0, ""

    .line 43
    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->i:Ljava/lang/String;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->l:Landroid/os/Handler;

    .line 48
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->j:Landroid/content/Context;

    .line 49
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/g;->a(Landroid/content/Context;)Lcom/cyjh/mobileanjian/ipc/ui/g;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->k:Lcom/cyjh/mobileanjian/ipc/ui/g;

    .line 1057
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->j:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    .line 1058
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    .line 1060
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 1061
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x7f6

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 1062
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    .line 1063
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x7d5

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 1065
    :cond_1
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x7d2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1068
    :goto_0
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1069
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x528

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1074
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 1075
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x33

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1077
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1078
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    iput p4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1079
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1084
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->j:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 1086
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->j:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 1087
    sget p3, Lcom/cyjh/mqsdk/R$layout;->ui_show_float:I

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    .line 1089
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1090
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    iput p6, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 52
    invoke-virtual {p0, p2}, Lcom/cyjh/mobileanjian/ipc/ui/j;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method private a(II)V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->j:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    .line 58
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 62
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 63
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 69
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x528

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 74
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 75
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 77
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 78
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 79
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V
    .locals 1

    .line 3358
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    .line 3359
    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p0

    .line 3360
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p0

    .line 3361
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p0

    .line 3363
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 3364
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    .line 3365
    invoke-virtual {p1, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 3366
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    .line 3367
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p0

    .line 3368
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/cyjh/mq/sdk/MqRunner;->c(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    .line 215
    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->e:Z

    return-void
.end method

.method static synthetic b(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->l:Landroid/os/Handler;

    return-object p0
.end method

.method private b(II)V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 86
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->j:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 87
    sget v1, Lcom/cyjh/mqsdk/R$layout;->ui_show_float:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    .line 89
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 90
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 261
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->i:Ljava/lang/String;

    .line 262
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 263
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 266
    :cond_0
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->h:I

    mul-int/lit16 v0, v0, 0xff

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method private static b(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V
    .locals 1

    .line 358
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    .line 359
    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p0

    .line 360
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p0

    .line 361
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p0

    .line 363
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;

    .line 364
    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p1

    .line 365
    invoke-virtual {p1, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 366
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;

    move-result-object p0

    .line 367
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;

    move-result-object p0

    .line 368
    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UiToCommand;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/cyjh/mq/sdk/MqRunner;->c(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private c(I)I
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p1, p1

    .line 96
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method static synthetic c(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic d(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/view/WindowManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    return-object p0
.end method

.method private f()Z
    .locals 1

    .line 354
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->e:Z

    return v0
.end method

.method private g()V
    .locals 3

    .line 382
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 3211
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 384
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/view/View;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 7

    .line 101
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->i:Ljava/lang/String;

    const/4 v2, 0x1

    const/16 v3, 0x10

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 105
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v3, :cond_1

    .line 106
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 109
    :cond_0
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v4, 0x8

    .line 110
    new-array v4, v4, [F

    const/4 v5, 0x0

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v6, v4, v5

    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v5, v4, v2

    const/4 v5, 0x2

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v6, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v6, v4, v5

    const/4 v5, 0x4

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v6, v4, v5

    const/4 v5, 0x5

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v6, v4, v5

    const/4 v5, 0x6

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v6, v4, v5

    const/4 v5, 0x7

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    aput v6, v4, v5

    .line 111
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 113
    :try_start_0
    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->f:I

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :catch_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v3, :cond_1

    .line 118
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 121
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    .line 123
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/cyjh/mobileanjian/ipc/ui/j$1;

    invoke-direct {v2, p0, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j$1;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/j;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 191
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->h:I

    mul-int/lit16 v1, v1, 0xff

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public final a(I)V
    .locals 3

    int-to-float p1, p1

    .line 229
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    .line 230
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v0, 0x8

    .line 231
    new-array v0, v0, [F

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x5

    aput v1, v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x6

    aput v1, v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 232
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 234
    :try_start_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->f:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :catch_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 241
    :cond_0
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->h:I

    mul-int/lit16 v0, v0, 0xff

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 271
    instance-of v1, p1, Landroid/widget/Button;

    if-nez v1, :cond_0

    .line 274
    new-instance v1, Lcom/cyjh/mobileanjian/ipc/ui/j$2;

    invoke-direct {v1, p0, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j$2;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/j;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    return-void
.end method

.method public final b(I)V
    .locals 3

    .line 245
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->f:I

    .line 246
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v0, 0x8

    .line 247
    new-array v0, v0, [F

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x5

    aput v1, v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x6

    aput v1, v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->g:F

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 248
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 250
    :try_start_0
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->f:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :catch_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 257
    :cond_0
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->h:I

    mul-int/lit16 v0, v0, 0xff

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 1211
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->b()V

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    return v0
.end method

.method public final e()V
    .locals 3

    .line 376
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 2211
    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    .line 225
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->h:I

    return v0
.end method

.method public final getParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public final setFloatHeight(I)V
    .locals 3

    .line 423
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setFloatHeight wLayoutParams[ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 426
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 427
    iget-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    if-eqz p1, :cond_0

    .line 428
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final setFloatLeft(I)V
    .locals 3

    .line 390
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setFloatLeft wLayoutParams[ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 394
    iget-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    if-eqz p1, :cond_0

    .line 395
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-interface {p1, v1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final setFloatTop(I)V
    .locals 3

    .line 401
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setFloatTop wLayoutParams[ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 405
    iget-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    if-eqz p1, :cond_0

    .line 406
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-interface {p1, v1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final setFloatWidth(I)V
    .locals 3

    .line 412
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setFloatWidth wLayoutParams[ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 415
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 416
    iget-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->d:Z

    if-eqz p1, :cond_0

    .line 417
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->a:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final setOpacity(I)V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    mul-int/lit16 v1, p1, 0xff

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 221
    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j;->h:I

    return-void
.end method

.class public Lcom/ds/daisi/dialog/TipsDialog;
.super Landroid/app/AlertDialog;
.source "TipsDialog.java"


# static fields
.field public static sIsFloat:Z = true

.field public static sIsShow:Z


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mTvMessage:Landroid/widget/TextView;

.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 1

    const v0, 0x7f0b0131

    .line 39
    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    if-eqz p2, :cond_2

    .line 41
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/TipsDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7f6

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 43
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/TipsDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d5

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/TipsDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d2

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 49
    :cond_2
    :goto_0
    iput-object p3, p0, Lcom/ds/daisi/dialog/TipsDialog;->message:Ljava/lang/String;

    .line 50
    sput-boolean p2, Lcom/ds/daisi/dialog/TipsDialog;->sIsFloat:Z

    return-void
.end method

.method private setBackgroundShadow(Landroid/app/AlertDialog;)V
    .locals 2

    .line 73
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    .line 76
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x2

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 88
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 89
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 90
    sput-boolean v0, Lcom/ds/daisi/dialog/TipsDialog;->sIsShow:Z

    const/4 v0, 0x1

    .line 91
    sput-boolean v0, Lcom/ds/daisi/dialog/TipsDialog;->sIsFloat:Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040059

    .line 58
    invoke-virtual {p0, p1}, Lcom/ds/daisi/dialog/TipsDialog;->setContentView(I)V

    .line 59
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 60
    invoke-direct {p0, p0}, Lcom/ds/daisi/dialog/TipsDialog;->setBackgroundShadow(Landroid/app/AlertDialog;)V

    const p1, 0x7f10012e

    .line 61
    invoke-virtual {p0, p1}, Lcom/ds/daisi/dialog/TipsDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ds/daisi/dialog/TipsDialog;->mTvMessage:Landroid/widget/TextView;

    .line 62
    iget-object p1, p0, Lcom/ds/daisi/dialog/TipsDialog;->mTvMessage:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ds/daisi/dialog/TipsDialog;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f10013f

    .line 63
    invoke-virtual {p0, p1}, Lcom/ds/daisi/dialog/TipsDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/ds/daisi/dialog/TipsDialog;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 65
    invoke-virtual {p0, p1}, Lcom/ds/daisi/dialog/TipsDialog;->setCancelable(Z)V

    return-void
.end method

.method public onMessageMainThread(Lcom/ds/daisi/entity/MsgItem$UpdateMessageToDialog;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 102
    invoke-virtual {p1}, Lcom/ds/daisi/entity/MsgItem$UpdateMessageToDialog;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/ds/daisi/dialog/TipsDialog;->mTvMessage:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/ds/daisi/entity/MsgItem$UpdateMessageToDialog;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onMessageMainThread(Lcom/ds/daisi/entity/MsgItem;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 109
    invoke-virtual {p1}, Lcom/ds/daisi/entity/MsgItem;->getMsgType()I

    move-result p1

    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/ds/daisi/dialog/TipsDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/ds/daisi/dialog/TipsDialog;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/ds/daisi/dialog/TipsDialog;->mTvMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 96
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    const/4 v0, 0x1

    .line 97
    sput-boolean v0, Lcom/ds/daisi/dialog/TipsDialog;->sIsShow:Z

    return-void
.end method

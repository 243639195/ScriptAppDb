.class public Lcom/ds/daisi/activity/guide/RecognitionGuideActivity;
.super Lcom/ds/daisi/activity/BaseActivity;
.source "RecognitionGuideActivity.java"


# static fields
.field public static final PHONE_CONFIG:Ljava/lang/String; = "PhoneConfig"

.field private static final TAG:Ljava/lang/String; = "RecognitionGuideActivity"


# instance fields
.field private mIvBg:Landroid/widget/ImageView;

.field private mLinkUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/ds/daisi/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/activity/guide/RecognitionGuideActivity;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/ds/daisi/activity/guide/RecognitionGuideActivity;->jumpOperate()V

    return-void
.end method

.method public static actionStart(Landroid/content/Context;Lcom/cyjh/share/bean/response/PhoneConfig;)V
    .locals 2

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ds/daisi/activity/guide/RecognitionGuideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "PhoneConfig"

    .line 74
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initData()V
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/ds/daisi/activity/guide/RecognitionGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PhoneConfig"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cyjh/share/bean/response/PhoneConfig;

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0}, Lcom/cyjh/share/bean/response/PhoneConfig;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {v0}, Lcom/cyjh/share/bean/response/PhoneConfig;->getLinkUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/activity/guide/RecognitionGuideActivity;->mLinkUrl:Ljava/lang/String;

    .line 49
    invoke-static {v1}, Lcom/cyjh/share/util/FileUtil;->getLocalBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v1, p0, Lcom/ds/daisi/activity/guide/RecognitionGuideActivity;->mIvBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/activity/guide/RecognitionGuideActivity;->mIvBg:Landroid/widget/ImageView;

    new-instance v1, Lcom/ds/daisi/activity/guide/RecognitionGuideActivity$1;

    invoke-direct {v1, p0}, Lcom/ds/daisi/activity/guide/RecognitionGuideActivity$1;-><init>(Lcom/ds/daisi/activity/guide/RecognitionGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f1000be

    .line 41
    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/guide/RecognitionGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ds/daisi/activity/guide/RecognitionGuideActivity;->mIvBg:Landroid/widget/ImageView;

    return-void
.end method

.method private jumpOperate()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/ds/daisi/activity/guide/RecognitionGuideActivity;->mLinkUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8df3\u8f6c\u94fe\u63a5\u4e3a\u7a7a\uff01"

    .line 63
    invoke-static {p0, v0}, Lcom/cyjh/share/util/ToastUtils;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getBaseRequestParams(Landroid/content/Context;)Lcom/cyjh/share/bean/request/BaseRequestValueInfo;

    move-result-object v0

    .line 66
    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ds/daisi/activity/guide/RecognitionGuideActivity;->mLinkUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->toRecognitionGuideWebViewPrams(Ljava/lang/String;Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {p0, v0}, Lcom/ds/daisi/util/IntentUtils;->toCallNoTitleBarWebViewActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/ds/daisi/activity/guide/RecognitionGuideActivity;->finish()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/ds/daisi/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f04002a

    .line 35
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/guide/RecognitionGuideActivity;->setContentView(I)V

    .line 36
    invoke-direct {p0}, Lcom/ds/daisi/activity/guide/RecognitionGuideActivity;->initView()V

    .line 37
    invoke-direct {p0}, Lcom/ds/daisi/activity/guide/RecognitionGuideActivity;->initData()V

    return-void
.end method

.class public Lcom/ds/daisi/fragment/SplashFragment;
.super Lcom/ds/daisi/fragment/BaseFragement;
.source "SplashFragment.java"

# interfaces
.implements Lcom/ds/daisi/mvp/views/TemplateView;
.implements Lcom/ds/daisi/mvp/views/BlackListView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/fragment/SplashFragment$VersionKnownListener;,
        Lcom/ds/daisi/fragment/SplashFragment$ResetNetworkListener;,
        Lcom/ds/daisi/fragment/SplashFragment$SettingNetworkListener;,
        Lcom/ds/daisi/fragment/SplashFragment$RunnableTask;
    }
.end annotation


# static fields
.field public static final AN_HOUR:I = 0x3c

.field private static final APP_CLOSED:I = 0x1

.field private static final APP_START:I = 0x3

.field private static final APP_USE_TIPS:I = 0x2

.field private static final CIRCLE_SIZE_VALUE:F = 8.0f

.field private static final CIRCLE_TOTAL_COUNT:I = 0x6

.field public static final CODES_FAIL_MESSAGE:I = 0xc

.field private static final CYCLE_TIME_DOT:I = 0x64

.field private static final DEFAULT_VALUE:I = 0x0

.field public static final DELAY_500_MILLIS:I = 0x1f4

.field public static final HALF_AN_HOUR:I = 0x1e

.field private static final PERMISSIONS_REQUEST_CODE:I = 0x1

.field public static final SINGLE_APK_MESSAGE:I = 0xb

.field public static final TEMPLATE_APK_MESSAGE:I = 0xa


# instance fields
.field private checkedCallMain:Z

.field private countReq:I

.field private currentDotCounts:I

.field private imageViewLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private initDataPresenter:Lcom/ds/daisi/mvp/presenters/BlackListPresenter;

.field private isBlackListAcquireComplete:Z

.field private isBootRun:Z

.field private isCheckApk:Z

.field private isRepeat:Z

.field private isSecondRequestFalg:Z

.field private isSendMsg:Z

.field private mBlueGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mGrayGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mHandler:Landroid/os/Handler;

.field private mLinearCircleDot:Landroid/widget/LinearLayout;

.field private mRunnableTask:Lcom/ds/daisi/fragment/SplashFragment$RunnableTask;

.field private permissions:[Ljava/lang/String;

.field private remarkText:Ljava/lang/String;

.field private templatePresenter:Lcom/ds/daisi/mvp/presenters/TemplatePresenter;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 54
    invoke-direct {p0}, Lcom/ds/daisi/fragment/BaseFragement;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->isSecondRequestFalg:Z

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ds/daisi/fragment/SplashFragment;->imageViewLists:Ljava/util/List;

    .line 81
    iput v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->countReq:I

    .line 82
    iput-boolean v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->checkedCallMain:Z

    .line 83
    iput-boolean v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->isRepeat:Z

    const/4 v1, 0x1

    .line 84
    iput-boolean v1, p0, Lcom/ds/daisi/fragment/SplashFragment;->isCheckApk:Z

    .line 85
    iput-boolean v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->isSendMsg:Z

    .line 89
    iput-boolean v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->isBlackListAcquireComplete:Z

    .line 90
    new-instance v2, Lcom/ds/daisi/fragment/SplashFragment$1;

    invoke-direct {v2, p0}, Lcom/ds/daisi/fragment/SplashFragment$1;-><init>(Lcom/ds/daisi/fragment/SplashFragment;)V

    iput-object v2, p0, Lcom/ds/daisi/fragment/SplashFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    .line 525
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "android.permission.READ_PHONE_STATE"

    aput-object v3, v2, v0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v0, v2, v1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v1, 0x2

    aput-object v0, v2, v1

    const-string v0, "android.permission.CALL_PHONE"

    const/4 v1, 0x3

    aput-object v0, v2, v1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    const/4 v1, 0x4

    aput-object v0, v2, v1

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    const/4 v1, 0x5

    aput-object v0, v2, v1

    iput-object v2, p0, Lcom/ds/daisi/fragment/SplashFragment;->permissions:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/fragment/SplashFragment;)Lcom/ds/daisi/mvp/presenters/TemplatePresenter;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/ds/daisi/fragment/SplashFragment;->templatePresenter:Lcom/ds/daisi/mvp/presenters/TemplatePresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ds/daisi/fragment/SplashFragment;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/ds/daisi/fragment/SplashFragment;->isSendMsg:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/ds/daisi/fragment/SplashFragment;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/ds/daisi/fragment/SplashFragment;->imageViewLists:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ds/daisi/fragment/SplashFragment;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/ds/daisi/fragment/SplashFragment;->mBlueGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ds/daisi/fragment/SplashFragment;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/ds/daisi/fragment/SplashFragment;->mGrayGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ds/daisi/fragment/SplashFragment;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/SplashFragment;->isHasNetwork(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/ds/daisi/fragment/SplashFragment;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/ds/daisi/fragment/SplashFragment;->isCheckApk:Z

    return p0
.end method

.method static synthetic access$300(Lcom/ds/daisi/fragment/SplashFragment;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/ds/daisi/fragment/SplashFragment;->toMainActivity()V

    return-void
.end method

.method static synthetic access$400(Lcom/ds/daisi/fragment/SplashFragment;)Landroid/os/Handler;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/ds/daisi/fragment/SplashFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$502(Lcom/ds/daisi/fragment/SplashFragment;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/ds/daisi/fragment/SplashFragment;->isRepeat:Z

    return p1
.end method

.method static synthetic access$600(Lcom/ds/daisi/fragment/SplashFragment;)Lcom/ds/daisi/mvp/presenters/BlackListPresenter;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/ds/daisi/fragment/SplashFragment;->initDataPresenter:Lcom/ds/daisi/mvp/presenters/BlackListPresenter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ds/daisi/fragment/SplashFragment;)I
    .locals 0

    .line 54
    iget p0, p0, Lcom/ds/daisi/fragment/SplashFragment;->currentDotCounts:I

    return p0
.end method

.method static synthetic access$908(Lcom/ds/daisi/fragment/SplashFragment;)I
    .locals 2

    .line 54
    iget v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->currentDotCounts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ds/daisi/fragment/SplashFragment;->currentDotCounts:I

    return v0
.end method

.method private getDialogMessageByServer(ILjava/lang/String;)V
    .locals 5

    .line 200
    invoke-static {}, Lcom/ds/daisi/manager/DialogManager;->getInstance()Lcom/ds/daisi/manager/DialogManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f040059

    const v3, 0x7f0b0131

    invoke-virtual {v0, v1, v2, v3}, Lcom/ds/daisi/manager/DialogManager;->showMessageDialog(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 202
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 203
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const v2, 0x7f10012e

    .line 204
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "\r\n"

    const-string v4, ""

    .line 205
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6587\u672c\u63d0\u793a\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 207
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const p2, 0x7f0901b5

    .line 208
    invoke-virtual {p0, p2}, Lcom/ds/daisi/fragment/SplashFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const p2, 0x7f10013f

    .line 212
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 213
    new-instance v1, Lcom/ds/daisi/fragment/SplashFragment$VersionKnownListener;

    invoke-direct {v1, p0, v0, p1}, Lcom/ds/daisi/fragment/SplashFragment$VersionKnownListener;-><init>(Lcom/ds/daisi/fragment/SplashFragment;Landroid/app/AlertDialog;I)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initCircleDot()V
    .locals 7

    .line 257
    iget-object v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->mLinearCircleDot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 258
    iget-object v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->imageViewLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    .line 260
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 261
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v4, 0x1

    .line 262
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 263
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v4, v5}, Lcom/ds/daisi/util/AppDeviceUtils;->getDipToPx(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 264
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/ds/daisi/util/AppDeviceUtils;->getDipToPx(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/ds/daisi/util/AppDeviceUtils;->getDipToPx(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v3, v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    if-nez v1, :cond_0

    const-string v4, "#3c7ac5"

    .line 266
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 267
    iput-object v3, p0, Lcom/ds/daisi/fragment/SplashFragment;->mBlueGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_1

    :cond_0
    const-string v4, "#bababa"

    .line 269
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v4, 0x5

    if-ne v1, v4, :cond_1

    .line 271
    iput-object v3, p0, Lcom/ds/daisi/fragment/SplashFragment;->mGrayGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 274
    :cond_1
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 277
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/ds/daisi/util/AppDeviceUtils;->getDipToPx(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v0, v0, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 278
    iget-object v4, p0, Lcom/ds/daisi/fragment/SplashFragment;->mLinearCircleDot:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    iget-object v3, p0, Lcom/ds/daisi/fragment/SplashFragment;->imageViewLists:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private initRequest()V
    .locals 2

    .line 164
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ds/daisi/AppContext;->initEngine()V

    .line 165
    iget-object v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->initDataPresenter:Lcom/ds/daisi/mvp/presenters/BlackListPresenter;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/mvp/presenters/BlackListPresenter;->isSetBlackList(Landroid/content/Context;)V

    .line 166
    iget-object v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->initDataPresenter:Lcom/ds/daisi/mvp/presenters/BlackListPresenter;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/mvp/presenters/BlackListPresenter;->getCodes(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f1000cd

    .line 223
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment;->mLinearCircleDot:Landroid/widget/LinearLayout;

    .line 224
    invoke-direct {p0}, Lcom/ds/daisi/fragment/SplashFragment;->initCircleDot()V

    .line 225
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment;->mRunnableTask:Lcom/ds/daisi/fragment/SplashFragment$RunnableTask;

    if-nez p1, :cond_0

    .line 226
    new-instance p1, Lcom/ds/daisi/fragment/SplashFragment$RunnableTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/ds/daisi/fragment/SplashFragment$RunnableTask;-><init>(Lcom/ds/daisi/fragment/SplashFragment;Lcom/ds/daisi/fragment/SplashFragment$1;)V

    iput-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment;->mRunnableTask:Lcom/ds/daisi/fragment/SplashFragment$RunnableTask;

    .line 227
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment;->mRunnableTask:Lcom/ds/daisi/fragment/SplashFragment$RunnableTask;

    invoke-virtual {p1}, Lcom/ds/daisi/fragment/SplashFragment$RunnableTask;->start()V

    :cond_0
    return-void
.end method

.method private isHasNetwork(Z)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 175
    invoke-static {}, Lcom/ds/daisi/manager/DialogManager;->getInstance()Lcom/ds/daisi/manager/DialogManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f040053

    const v3, 0x7f0b0131

    invoke-virtual {p1, v1, v2, v3}, Lcom/ds/daisi/manager/DialogManager;->showMessageDialog(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move-result-object p1

    .line 177
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 178
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const v0, 0x7f10012f

    .line 179
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f100130

    .line 180
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 181
    new-instance v2, Lcom/ds/daisi/fragment/SplashFragment$ResetNetworkListener;

    invoke-direct {v2, p0, p1}, Lcom/ds/daisi/fragment/SplashFragment$ResetNetworkListener;-><init>(Lcom/ds/daisi/fragment/SplashFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    new-instance p1, Lcom/ds/daisi/fragment/SplashFragment$SettingNetworkListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/ds/daisi/fragment/SplashFragment$SettingNetworkListener;-><init>(Lcom/ds/daisi/fragment/SplashFragment;Lcom/ds/daisi/fragment/SplashFragment$1;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 184
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 185
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object p1, p1, Lcom/ds/daisi/AppContext;->mSharedUsed:Landroid/content/SharedPreferences;

    const-string v3, "template_apk_req"

    const-wide/16 v4, 0x0

    invoke-interface {p1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentTime="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ",saveTime="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p1, v5}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    cmp-long p1, v1, v3

    if-ltz p1, :cond_1

    .line 188
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment;->templatePresenter:Lcom/ds/daisi/mvp/presenters/TemplatePresenter;

    const-class v0, Lcom/ds/daisi/fragment/SplashFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/ds/daisi/net/URL/URLConstant;->TEMPLATE_MANAGER:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/ds/daisi/mvp/presenters/TemplatePresenter;->singleApkOrTemplateChecked(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_1
    iput-boolean v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->isCheckApk:Z

    .line 192
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 194
    :goto_0
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment;->initDataPresenter:Lcom/ds/daisi/mvp/presenters/BlackListPresenter;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ds/daisi/mvp/presenters/BlackListPresenter;->isSetBlackList(Landroid/content/Context;)V

    .line 195
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment;->initDataPresenter:Lcom/ds/daisi/mvp/presenters/BlackListPresenter;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ds/daisi/mvp/presenters/BlackListPresenter;->getCodes(Landroid/content/Context;)V

    :goto_1
    return-void
.end method

.method public static newInstance(Z)Lcom/ds/daisi/fragment/SplashFragment;
    .locals 3

    .line 133
    new-instance v0, Lcom/ds/daisi/fragment/SplashFragment;

    invoke-direct {v0}, Lcom/ds/daisi/fragment/SplashFragment;-><init>()V

    .line 134
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 135
    const-class v2, Lcom/ds/daisi/fragment/SplashFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    invoke-virtual {v0, v1}, Lcom/ds/daisi/fragment/SplashFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private openAppDetails()V
    .locals 3

    .line 595
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6ca1\u6709\u6388\u6743\u7684\u6743\u9650\uff0c\u8bf7\u5230 \u201c\u5e94\u7528\u4fe1\u606f -> \u6743\u9650\u201d \u4e2d\u6388\u4e88\uff01"

    .line 596
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u53bb\u624b\u52a8\u6388\u6743"

    .line 597
    new-instance v2, Lcom/ds/daisi/fragment/SplashFragment$3;

    invoke-direct {v2, p0}, Lcom/ds/daisi/fragment/SplashFragment$3;-><init>(Lcom/ds/daisi/fragment/SplashFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    .line 610
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 611
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private requestPermissions()V
    .locals 9

    .line 543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 544
    iget-object v1, p0, Lcom/ds/daisi/fragment/SplashFragment;->permissions:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 546
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "zzz"

    .line 548
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "permission=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 552
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "zzz"

    const-string v1, "SplashFrment--permissionList.isEmpty()"

    .line 553
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-direct {p0}, Lcom/ds/daisi/fragment/SplashFragment;->initRequest()V

    goto :goto_1

    :cond_2
    const-string v1, "zzz"

    const-string v2, "SplashFrment--permissionList.\u8bf7\u6c42"

    .line 556
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    new-array v1, v3, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ds/daisi/fragment/SplashFragment;->requestPermissions([Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method private toMainActivity()V
    .locals 3

    .line 338
    iget-boolean v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->checkedCallMain:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 339
    iput-boolean v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->checkedCallMain:Z

    .line 340
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 341
    const-class v1, Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ds/daisi/fragment/SplashFragment;->isBootRun:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 342
    invoke-virtual {p0, v0}, Lcom/ds/daisi/fragment/SplashFragment;->startActivity(Landroid/content/Intent;)V

    .line 343
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method

.method private verifyNetRequest()V
    .locals 4

    .line 432
    iget-boolean v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->isBlackListAcquireComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->isSendMsg:Z

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ds/daisi/fragment/SplashFragment$2;

    invoke-direct {v1, p0}, Lcom/ds/daisi/fragment/SplashFragment$2;-><init>(Lcom/ds/daisi/fragment/SplashFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public apkCheckedResult(Lcom/ds/daisi/entity/TemplateStatus;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x6ddd00

    add-long v4, v0, v2

    .line 292
    iget-boolean v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->isSecondRequestFalg:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 293
    iput-boolean v1, p0, Lcom/ds/daisi/fragment/SplashFragment;->isSecondRequestFalg:Z

    .line 294
    iget-object v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->mSharedUsed:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "template_apk_req"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 295
    iget-object v0, p1, Lcom/ds/daisi/entity/TemplateStatus;->status:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 300
    :pswitch_0
    iget-object p1, p1, Lcom/ds/daisi/entity/TemplateStatus;->remark:Ljava/lang/String;

    iput-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment;->remarkText:Ljava/lang/String;

    .line 302
    :pswitch_1
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 297
    :pswitch_2
    iget-object p1, p1, Lcom/ds/daisi/entity/TemplateStatus;->remark:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/ds/daisi/fragment/SplashFragment;->getDialogMessageByServer(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 306
    iput-boolean v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->isSecondRequestFalg:Z

    .line 307
    iget-object v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object v0, v0, Lcom/ds/daisi/AppContext;->mSharedUsed:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "single_apk_req"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 308
    iget-object v0, p1, Lcom/ds/daisi/entity/TemplateStatus;->status:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 323
    :pswitch_3
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment;->remarkText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 324
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment;->remarkText:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/ds/daisi/fragment/SplashFragment;->getDialogMessageByServer(ILjava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_1
    invoke-direct {p0}, Lcom/ds/daisi/fragment/SplashFragment;->toMainActivity()V

    goto :goto_0

    .line 313
    :pswitch_4
    iget-object p1, p1, Lcom/ds/daisi/entity/TemplateStatus;->remark:Ljava/lang/String;

    .line 314
    iget-object v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->remarkText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 315
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment;->remarkText:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/ds/daisi/fragment/SplashFragment;->getDialogMessageByServer(ILjava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 318
    invoke-direct {p0, v2, p1}, Lcom/ds/daisi/fragment/SplashFragment;->getDialogMessageByServer(ILjava/lang/String;)V

    goto :goto_0

    .line 310
    :pswitch_5
    iget-object p1, p1, Lcom/ds/daisi/entity/TemplateStatus;->remark:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/ds/daisi/fragment/SplashFragment;->getDialogMessageByServer(ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public errorMsg(Ljava/lang/String;)V
    .locals 7

    .line 353
    iget v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->countReq:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->countReq:I

    const/16 v0, 0xb

    .line 354
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x2

    const v4, 0x7f09014b

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/ds/daisi/fragment/SplashFragment;->countReq:I

    if-gt v2, v5, :cond_0

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/ds/daisi/fragment/SplashFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/ds/daisi/fragment/SplashFragment;->countReq:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v6

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 356
    iget-object v1, p0, Lcom/ds/daisi/fragment/SplashFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 357
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/ds/daisi/fragment/SplashFragment;->countReq:I

    if-gt v2, v5, :cond_1

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/ds/daisi/fragment/SplashFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/ds/daisi/fragment/SplashFragment;->countReq:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v6

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 359
    iget-object v1, p0, Lcom/ds/daisi/fragment/SplashFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 361
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",countReq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ds/daisi/fragment/SplashFragment;->countReq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public getBlackError()V
    .locals 1

    const/4 v0, 0x1

    .line 379
    iput-boolean v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->isBlackListAcquireComplete:Z

    .line 380
    invoke-direct {p0}, Lcom/ds/daisi/fragment/SplashFragment;->verifyNetRequest()V

    return-void
.end method

.method public getFragmentLayoutId()I
    .locals 1

    const v0, 0x7f040070

    return v0
.end method

.method public getLotteryArray(Ljava/lang/String;)V
    .locals 2

    .line 412
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    invoke-static {p1}, Lcom/ds/daisi/util/ScriptVerifyUtils;->saveCodes(Ljava/lang/String;)V

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7968\u636e\u7684\u83b7\u53d6\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 416
    iput-boolean p1, p0, Lcom/ds/daisi/fragment/SplashFragment;->isSendMsg:Z

    .line 417
    invoke-direct {p0}, Lcom/ds/daisi/fragment/SplashFragment;->verifyNetRequest()V

    :cond_0
    return-void
.end method

.method public getLotteryByFail(Ljava/lang/String;)V
    .locals 1

    .line 423
    iget-boolean p1, p0, Lcom/ds/daisi/fragment/SplashFragment;->isRepeat:Z

    if-nez p1, :cond_0

    .line 424
    iget-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 426
    iput-boolean p1, p0, Lcom/ds/daisi/fragment/SplashFragment;->isSendMsg:Z

    .line 427
    invoke-direct {p0}, Lcom/ds/daisi/fragment/SplashFragment;->verifyNetRequest()V

    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 148
    invoke-super {p0, p1}, Lcom/ds/daisi/fragment/BaseFragement;->onActivityCreated(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/ds/daisi/util/NetworkUtils;->isAvailable(Landroid/content/Context;)Z

    .line 150
    new-instance p1, Lcom/ds/daisi/mvp/presenters/TemplatePresenter;

    invoke-direct {p1, p0}, Lcom/ds/daisi/mvp/presenters/TemplatePresenter;-><init>(Lcom/ds/daisi/mvp/views/TemplateView;)V

    iput-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment;->templatePresenter:Lcom/ds/daisi/mvp/presenters/TemplatePresenter;

    .line 151
    new-instance p1, Lcom/ds/daisi/mvp/presenters/BlackListPresenter;

    invoke-direct {p1, p0}, Lcom/ds/daisi/mvp/presenters/BlackListPresenter;-><init>(Lcom/ds/daisi/mvp/views/TokenBillView;)V

    iput-object p1, p0, Lcom/ds/daisi/fragment/SplashFragment;->initDataPresenter:Lcom/ds/daisi/mvp/presenters/BlackListPresenter;

    .line 155
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/ds/daisi/fragment/SplashFragment;->requestPermissions()V

    goto :goto_0

    :cond_0
    const-string p1, "zzz"

    const-string v0, "SplashFragment--\u4f4e\u4e8e22"

    .line 158
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0}, Lcom/ds/daisi/fragment/SplashFragment;->initRequest()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 142
    invoke-super {p0, p1}, Lcom/ds/daisi/fragment/BaseFragement;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/SplashFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Lcom/ds/daisi/fragment/SplashFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ds/daisi/fragment/SplashFragment;->isBootRun:Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 233
    invoke-super {p0}, Lcom/ds/daisi/fragment/BaseFragement;->onDestroy()V

    .line 234
    iget-object v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->mRunnableTask:Lcom/ds/daisi/fragment/SplashFragment$RunnableTask;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ds/daisi/fragment/SplashFragment;->mRunnableTask:Lcom/ds/daisi/fragment/SplashFragment$RunnableTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->mRunnableTask:Lcom/ds/daisi/fragment/SplashFragment$RunnableTask;

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->initDataPresenter:Lcom/ds/daisi/mvp/presenters/BlackListPresenter;

    invoke-virtual {v0}, Lcom/ds/daisi/mvp/presenters/BlackListPresenter;->cancelReq()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 249
    invoke-super {p0}, Lcom/ds/daisi/fragment/BaseFragement;->onPause()V

    .line 250
    const-class v0, Lcom/ds/daisi/fragment/SplashFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 569
    invoke-super {p0, p1, p2, p3}, Lcom/ds/daisi/fragment/BaseFragement;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 573
    array-length p1, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    aget v2, p3, v1

    const-string v3, "zzz"

    .line 574
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "grant--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    const-string p1, "zzz"

    const-string p2, "SplashFragment--isAllGranted"

    .line 581
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-direct {p0}, Lcom/ds/daisi/fragment/SplashFragment;->initRequest()V

    goto :goto_2

    .line 586
    :cond_2
    invoke-direct {p0}, Lcom/ds/daisi/fragment/SplashFragment;->openAppDetails()V

    :cond_3
    :goto_2
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 243
    invoke-super {p0}, Lcom/ds/daisi/fragment/BaseFragement;->onResume()V

    .line 244
    const-class v0, Lcom/ds/daisi/fragment/SplashFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 218
    invoke-super {p0, p1, p2}, Lcom/ds/daisi/fragment/BaseFragement;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 219
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/SplashFragment;->initView(Landroid/view/View;)V

    return-void
.end method

.method public setBlackListResult(Ljava/lang/String;)V
    .locals 6

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 368
    iput-boolean v0, p0, Lcom/ds/daisi/fragment/SplashFragment;->isBlackListAcquireComplete:Z

    .line 369
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 370
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    mul-double v2, v2, v4

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    add-double/2addr v2, v4

    double-to-int p1, v2

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u968f\u673a\u65f6\u95f4\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    :cond_0
    invoke-direct {p0}, Lcom/ds/daisi/fragment/SplashFragment;->verifyNetRequest()V

    return-void
.end method

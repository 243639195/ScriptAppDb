.class public Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;
.super Lcom/cyjh/feedback/lib/base/BaseFragment;
.source "FeedBackInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CORE_NUMBER_CPU1:I = 0x1

.field private static final CORE_NUMBER_CPU16:I = 0x10

.field private static final CORE_NUMBER_CPU2:I = 0x2

.field private static final CORE_NUMBER_CPU3:I = 0x3

.field private static final CORE_NUMBER_CPU4:I = 0x4

.field private static final CORE_NUMBER_CPU8:I = 0x8

.field public static final FEEDBACK_TIPS_MESSAGE:Ljava/lang/String; = "feedbackTips"

.field public static final IS_PHONE_ROOT:Ljava/lang/String; = "isPhoneRoot"

.field public static final NO_ROOT:I = 0x0

.field private static final PIC_COUNT_MAX:I = 0x4

.field public static final REQUEST_CODE:I = 0x100

.field public static final VALUE_EMPTY:I = 0x0

.field public static final YES_ROOT:I = 0x1


# instance fields
.field private isRoot:Z

.field private mAdapter:Lcom/cyjh/feedback/lib/adapter/ImageShowAdapter;

.field private mAddList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFeedBackInfo:Landroid/widget/EditText;

.field private mFeedbackTips:Ljava/lang/String;

.field private mGetTokenAliCloudPresenter:Lcom/cyjh/share/mvp/presenter/GetTokenAliCloudPresenter;

.field private mGridView:Landroid/widget/GridView;

.field private mLoadingDialog:Lcom/cyjh/feedback/lib/dialog/LoadingDialog;

.field private mQQOrPhone:Landroid/widget/EditText;

.field private mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

.field private mTvComplaintsQQ:Landroid/widget/TextView;

.field private mTvImageCount:Landroid/widget/TextView;

.field private mTvRecordFontNumber:Landroid/widget/TextView;

.field private viewLine:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/cyjh/feedback/lib/base/BaseFragment;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mAddList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mAddList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mTvRecordFontNumber:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mTvImageCount:Landroid/widget/TextView;

    return-object p0
.end method

.method private getCPUCoreNum(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 315
    :pswitch_0
    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->cpu_core_four:I

    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 312
    :pswitch_1
    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->cpu_core_three:I

    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 309
    :pswitch_2
    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->cpu_core_two:I

    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 306
    :pswitch_3
    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->cpu_core_one:I

    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 321
    :cond_0
    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->cpu_core_sixteen:I

    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 318
    :cond_1
    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->cpu_core_eight:I

    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFeedbackData()V
    .locals 6

    .line 252
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mQQOrPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mFeedBackInfo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->no_fill_info:I

    invoke-virtual {p0, v1}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 258
    :cond_0
    iget-object v2, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    if-nez v2, :cond_1

    .line 259
    new-instance v2, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getBaseRequestParams(Landroid/content/Context;)Lcom/cyjh/share/bean/request/BaseRequestValueInfo;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;-><init>(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)V

    iput-object v2, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    .line 261
    :cond_1
    iget-object v2, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    iput-object v0, v2, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->Contact:Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    iput-object v1, v0, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->Content:Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->AndoridVersion:Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->DeviceModel:Ljava/lang/String;

    .line 265
    iget-boolean v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->isRoot:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    iput v3, v0, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->RootStatus:I

    goto :goto_0

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    iput v1, v0, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->RootStatus:I

    .line 271
    :goto_0
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/share/util/AppUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 272
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/cyjh/share/util/AppUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 273
    iget-object v3, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "*"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->Resolution:Ljava/lang/String;

    .line 274
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/share/util/AppUtils;->getTotalMemorySize(Landroid/content/Context;)J

    move-result-wide v2

    .line 275
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->RAM:Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/cyjh/share/util/AppUtils;->getScreenDPI(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->DPI:I

    .line 277
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    invoke-static {}, Lcom/cyjh/share/util/AppUtils;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->SerialNumber:Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    invoke-static {}, Lcom/cyjh/share/util/AppUtils;->getKernelVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->CoreVersion:Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    invoke-static {}, Lcom/cyjh/share/util/AppUtils;->getPhoneSystemVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->SystemVersion:Ljava/lang/String;

    .line 281
    invoke-static {}, Lcom/cyjh/feedback/lib/utils/AppDevicesUtils;->getNumCores()I

    move-result v0

    .line 282
    invoke-direct {p0, v0}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getCPUCoreNum(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-static {}, Lcom/cyjh/feedback/lib/utils/AppDevicesUtils;->getCpuInfo()Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\uff0cCPU\u578b\u53f7\uff1a"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 288
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 290
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CPU\u578b\u53f7\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    .line 293
    :goto_1
    iget-object v1, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    iput-object v0, v1, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->Processor:Ljava/lang/String;

    return-void
.end method

.method private initData()V
    .locals 3

    .line 148
    new-instance v0, Lcom/cyjh/feedback/lib/dialog/LoadingDialog;

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cyjh/feedback/lib/dialog/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mLoadingDialog:Lcom/cyjh/feedback/lib/dialog/LoadingDialog;

    .line 149
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mFeedbackTips:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->viewLine:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mTvComplaintsQQ:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mFeedbackTips:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mTvComplaintsQQ:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mTvComplaintsQQ:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->viewLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initEvent()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mFeedBackInfo:Landroid/widget/EditText;

    new-instance v1, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment$2;

    invoke-direct {v1, p0}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment$2;-><init>(Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 198
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment$3;

    invoke-direct {v1, p0}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment$3;-><init>(Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mAdapter:Lcom/cyjh/feedback/lib/adapter/ImageShowAdapter;

    new-instance v1, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment$4;

    invoke-direct {v1, p0}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment$4;-><init>(Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/feedback/lib/adapter/ImageShowAdapter;->setmDeleteSelectImg(Lcom/cyjh/feedback/lib/adapter/ImageShowAdapter$OnDeleteSelectImg;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 6

    .line 160
    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->grid_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mGridView:Landroid/widget/GridView;

    .line 161
    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_et_qq_phone:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mQQOrPhone:Landroid/widget/EditText;

    .line 162
    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_et_feedback:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mFeedBackInfo:Landroid/widget/EditText;

    .line 163
    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_tv_image_num:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mTvImageCount:Landroid/widget/TextView;

    .line 164
    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_btn_commit_feedback:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 165
    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_tv_feedback_input_font_num:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mTvRecordFontNumber:Landroid/widget/TextView;

    .line 166
    new-instance v1, Lcom/cyjh/feedback/lib/adapter/ImageShowAdapter;

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/cyjh/feedback/lib/adapter/ImageShowAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mAdapter:Lcom/cyjh/feedback/lib/adapter/ImageShowAdapter;

    .line 167
    iget-object v1, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mAdapter:Lcom/cyjh/feedback/lib/adapter/ImageShowAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mTvImageCount:Landroid/widget/TextView;

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->image_add:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mAddList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v3}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mTvRecordFontNumber:Landroid/widget/TextView;

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->feedback_num_hint:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_complaints_qq:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mTvComplaintsQQ:Landroid/widget/TextView;

    .line 175
    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->viewLine:Landroid/view/View;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Z)Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;
    .locals 3

    .line 110
    new-instance v0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;

    invoke-direct {v0}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;-><init>()V

    .line 111
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "feedbackTips"

    .line 112
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "isPhoneRoot"

    .line 113
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 114
    invoke-virtual {v0, v1}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private showFeedbackDialog()V
    .locals 4

    .line 89
    new-instance v0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    iget-object v3, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mAddList:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;-><init>(Landroid/content/Context;Lcom/cyjh/share/bean/request/FeedbackRequestInfo;Ljava/util/List;)V

    .line 90
    invoke-virtual {v0}, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->show()V

    .line 91
    new-instance v1, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment$1;

    invoke-direct {v1, p0}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment$1;-><init>(Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->setOnResultCode(Lcom/cyjh/feedback/lib/dialog/FeedBackDialog$OnResultCode;)V

    return-void
.end method

.method private submitFeedbackInfo()V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mLoadingDialog:Lcom/cyjh/feedback/lib/dialog/LoadingDialog;

    invoke-virtual {v0}, Lcom/cyjh/feedback/lib/dialog/LoadingDialog;->dismiss()V

    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    iget-object v0, v0, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->Contact:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->Contact:Ljava/lang/String;

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    iget-object v0, v0, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->Content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->Content:Ljava/lang/String;

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    iget-object v0, v0, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->AndoridVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->AndoridVersion:Ljava/lang/String;

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    iget-object v0, v0, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->CoreVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 242
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->CoreVersion:Ljava/lang/String;

    .line 244
    :cond_4
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    iget-object v0, v0, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->SerialNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 245
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->SerialNumber:Ljava/lang/String;

    .line 247
    :cond_5
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mLoadingDialog:Lcom/cyjh/feedback/lib/dialog/LoadingDialog;

    invoke-virtual {v0}, Lcom/cyjh/feedback/lib/dialog/LoadingDialog;->dismiss()V

    .line 248
    invoke-direct {p0}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->showFeedbackDialog()V

    return-void
.end method


# virtual methods
.method public getFragmentLayoutId()I
    .locals 1

    .line 129
    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$layout;->fragment_feedback_info:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 142
    invoke-super {p0, p1}, Lcom/cyjh/feedback/lib/base/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 143
    new-instance p1, Lcom/cyjh/share/mvp/presenter/GetTokenAliCloudPresenter;

    invoke-direct {p1}, Lcom/cyjh/share/mvp/presenter/GetTokenAliCloudPresenter;-><init>()V

    iput-object p1, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mGetTokenAliCloudPresenter:Lcom/cyjh/share/mvp/presenter/GetTokenAliCloudPresenter;

    .line 144
    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mGetTokenAliCloudPresenter:Lcom/cyjh/share/mvp/presenter/GetTokenAliCloudPresenter;

    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cyjh/share/mvp/presenter/GetTokenAliCloudPresenter;->load(Landroid/content/Context;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 331
    invoke-super {p0, p1, p2, p3}, Lcom/cyjh/feedback/lib/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x100

    if-ne p1, v0, :cond_4

    const/4 p1, -0x1

    if-ne p2, p1, :cond_4

    if-eqz p3, :cond_4

    const-string p1, "bundle"

    .line 335
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "image"

    .line 336
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 340
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mDataList:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    iget-object p2, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mAddList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAddListSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mAddList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, p3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, p2

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-le v0, v1, :cond_1

    .line 344
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v3, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->img_num_limit:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, p3

    sub-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 345
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 348
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 349
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mAddList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mAddList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 353
    :cond_3
    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mTvImageCount:Landroid/widget/TextView;

    sget p2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->image_add:I

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mAddList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p3

    invoke-virtual {p0, p2, v0}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mAdapter:Lcom/cyjh/feedback/lib/adapter/ImageShowAdapter;

    iget-object p2, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mAddList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/cyjh/feedback/lib/adapter/ImageShowAdapter;->setmData(Ljava/util/List;)V

    .line 356
    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mGridView:Landroid/widget/GridView;

    iget-object p2, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mAdapter:Lcom/cyjh/feedback/lib/adapter/ImageShowAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 357
    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mAdapter:Lcom/cyjh/feedback/lib/adapter/ImageShowAdapter;

    invoke-virtual {p1}, Lcom/cyjh/feedback/lib/adapter/ImageShowAdapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 220
    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_btn_commit_feedback:I

    if-ne p1, v0, :cond_0

    .line 221
    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mLoadingDialog:Lcom/cyjh/feedback/lib/dialog/LoadingDialog;

    invoke-virtual {p1}, Lcom/cyjh/feedback/lib/dialog/LoadingDialog;->show()V

    .line 222
    invoke-direct {p0}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getFeedbackData()V

    .line 223
    invoke-direct {p0}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->submitFeedbackInfo()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 120
    invoke-super {p0, p1}, Lcom/cyjh/feedback/lib/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "feedbackTips"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mFeedbackTips:Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "isPhoneRoot"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->isRoot:Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 376
    invoke-super {p0}, Lcom/cyjh/feedback/lib/base/BaseFragment;->onDestroy()V

    .line 377
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mGetTokenAliCloudPresenter:Lcom/cyjh/share/mvp/presenter/GetTokenAliCloudPresenter;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->mGetTokenAliCloudPresenter:Lcom/cyjh/share/mvp/presenter/GetTokenAliCloudPresenter;

    invoke-virtual {v0}, Lcom/cyjh/share/mvp/presenter/GetTokenAliCloudPresenter;->onCancel()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 370
    invoke-super {p0}, Lcom/cyjh/feedback/lib/base/BaseFragment;->onPause()V

    .line 371
    const-class v0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 364
    invoke-super {p0}, Lcom/cyjh/feedback/lib/base/BaseFragment;->onResume()V

    .line 365
    const-class v0, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 134
    invoke-super {p0, p1, p2}, Lcom/cyjh/feedback/lib/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->initView(Landroid/view/View;)V

    .line 136
    invoke-direct {p0}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->initData()V

    .line 137
    invoke-direct {p0}, Lcom/cyjh/feedback/lib/fragment/FeedBackInfoFragment;->initEvent()V

    return-void
.end method

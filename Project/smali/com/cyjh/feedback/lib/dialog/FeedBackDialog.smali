.class public Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;
.super Lcom/cyjh/feedback/lib/base/BaseDialog;
.source "FeedBackDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/cyjh/share/mvp/view/FeedbackView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/feedback/lib/dialog/FeedBackDialog$OnResultCode;
    }
.end annotation


# static fields
.field private static final COMMIT_DATA_FAILURE:I = 0x0

.field private static final COMMIT_DATA_SUCCESS:I = 0x1

.field private static final DEFAULT:Ljava/lang/String;

.field private static final NO_ROOT:I = 0x2

.field private static final YES_ROOT:I = 0x1


# instance fields
.field private volatile count:I

.field private imgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBtnBack:Landroid/widget/Button;

.field private mBtnCommit:Landroid/widget/Button;

.field private mCommitDataPresenter:Lcom/cyjh/share/mvp/presenter/FeedbackCommitDataPresenter;

.field private mContext:Landroid/content/Context;

.field private mLoadingDialog:Lcom/cyjh/feedback/lib/dialog/LoadingDialog;

.field private mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

.field private mTvDeicesName:Landroid/widget/TextView;

.field private mTvDevicesRoot:Landroid/widget/TextView;

.field private mTvDevicesSystem:Landroid/widget/TextView;

.field private mTvFeedBackContent:Landroid/widget/TextView;

.field private onResultCode:Lcom/cyjh/feedback/lib/dialog/FeedBackDialog$OnResultCode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cyjh/share/bean/request/FeedbackRequestInfo;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cyjh/share/bean/request/FeedbackRequestInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$style;->Theme_Dialog:I

    invoke-direct {p0, p1, v0}, Lcom/cyjh/feedback/lib/base/BaseDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->count:I

    .line 62
    iput-object p2, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    .line 63
    iput-object p1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mContext:Landroid/content/Context;

    .line 64
    iput-object p3, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->imgList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;Ljava/util/List;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->uploadImgSucNextOpera(Ljava/util/List;)V

    return-void
.end method

.method private getTextPartColor(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 3

    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 123
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v0

    .line 124
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 125
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#3c7ac5"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x22

    invoke-virtual {v1, p1, v0, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method private initData()V
    .locals 6

    .line 88
    iget-object v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_name:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    iget-object v4, v4, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->DeviceModel:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mTvDeicesName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    iget-object v3, v3, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->DeviceModel:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->getTextPartColor(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_use_system:I

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    iget-object v4, v4, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->AndoridVersion:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mTvDevicesSystem:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    iget-object v3, v3, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->AndoridVersion:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->getTextPartColor(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    iget v0, v0, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->RootStatus:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 98
    :pswitch_0
    iget-object v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_is_root:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mContext:Landroid/content/Context;

    sget v4, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_no_root:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mTvDevicesRoot:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_no_root:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->getTextPartColor(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 94
    :pswitch_1
    iget-object v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_is_root:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mContext:Landroid/content/Context;

    sget v4, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_yes_root:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mTvDevicesRoot:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->devices_yes_root:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->getTextPartColor(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    iget-object v0, v0, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->Content:Ljava/lang/String;

    sget-object v1, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->DEFAULT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mTvFeedBackContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    iget-object v1, v1, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->Content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initEvent()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mBtnCommit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mBtnBack:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 79
    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_tv_device_name:I

    invoke-virtual {p0, v0}, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mTvDeicesName:Landroid/widget/TextView;

    .line 80
    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_tv_device_system:I

    invoke-virtual {p0, v0}, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mTvDevicesSystem:Landroid/widget/TextView;

    .line 81
    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_tv_device_root:I

    invoke-virtual {p0, v0}, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mTvDevicesRoot:Landroid/widget/TextView;

    .line 82
    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_tv_feedback_content:I

    invoke-virtual {p0, v0}, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mTvFeedBackContent:Landroid/widget/TextView;

    .line 83
    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_btn_back:I

    invoke-virtual {p0, v0}, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mBtnBack:Landroid/widget/Button;

    .line 84
    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_btn_commit_feedback_info:I

    invoke-virtual {p0, v0}, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mBtnCommit:Landroid/widget/Button;

    return-void
.end method

.method private uploadImgSucNextOpera(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 192
    iget v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->count:I

    .line 194
    iget v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->count:I

    iget-object v1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->imgList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 195
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, v0, Lcom/cyjh/share/bean/request/FeedbackRequestInfo;->FreebackImages:[Ljava/lang/String;

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mCommitDataPresenter:Lcom/cyjh/share/mvp/presenter/FeedbackCommitDataPresenter;

    iget-object v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    invoke-virtual {p1, v0, v1}, Lcom/cyjh/share/mvp/presenter/FeedbackCommitDataPresenter;->commitFeedback(Landroid/content/Context;Lcom/cyjh/share/bean/request/FeedbackRequestInfo;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 241
    invoke-super {p0}, Lcom/cyjh/feedback/lib/base/BaseDialog;->dismiss()V

    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    const/4 v0, 0x0

    .line 244
    iput v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->count:I

    .line 245
    iget-object v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mCommitDataPresenter:Lcom/cyjh/share/mvp/presenter/FeedbackCommitDataPresenter;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mCommitDataPresenter:Lcom/cyjh/share/mvp/presenter/FeedbackCommitDataPresenter;

    invoke-virtual {v0}, Lcom/cyjh/share/mvp/presenter/FeedbackCommitDataPresenter;->onCancel()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 132
    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_btn_back:I

    if-ne p1, v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->dismiss()V

    goto/16 :goto_1

    .line 134
    :cond_0
    sget v0, Lcom/cyjh/feedback/libraryfeedbackinfo/R$id;->id_btn_commit_feedback_info:I

    if-ne p1, v0, :cond_5

    .line 137
    :try_start_0
    iget-object p1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/cyjh/feedback/lib/utils/NetUtils;->is3rd(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/cyjh/feedback/lib/utils/NetUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 138
    iget-object p1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mContext:Landroid/content/Context;

    sget v2, Lcom/cyjh/feedback/libraryfeedbackinfo/R$string;->is_net_open:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 142
    :cond_1
    new-instance p1, Lcom/cyjh/share/oss/MyOSSUtils$Builder;

    iget-object v1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v2

    iget-object v2, v2, Lcom/cyjh/share/manager/VariableAndConstantsManager;->mAliCloudServerResponse:Lcom/cyjh/share/bean/response/AliCloudServerResponse;

    invoke-direct {p1, v1, v2}, Lcom/cyjh/share/oss/MyOSSUtils$Builder;-><init>(Landroid/content/Context;Lcom/cyjh/share/bean/response/AliCloudServerResponse;)V

    invoke-virtual {p1}, Lcom/cyjh/share/oss/MyOSSUtils$Builder;->build()Lcom/cyjh/share/oss/MyOSSUtils;

    move-result-object p1

    .line 143
    invoke-virtual {p1}, Lcom/cyjh/share/oss/MyOSSUtils;->isTokenExpireTime()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    iget-object p1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mContext:Landroid/content/Context;

    const-string v1, "\u963f\u91cc\u4e91Token\u8fc7\u671f\uff0c\u7a0d\u540e\u518d\u8bd5\uff01"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 145
    new-instance p1, Lcom/cyjh/share/mvp/presenter/GetTokenAliCloudPresenter;

    invoke-direct {p1}, Lcom/cyjh/share/mvp/presenter/GetTokenAliCloudPresenter;-><init>()V

    iget-object v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/cyjh/share/mvp/presenter/GetTokenAliCloudPresenter;->load(Landroid/content/Context;)V

    return-void

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mLoadingDialog:Lcom/cyjh/feedback/lib/dialog/LoadingDialog;

    if-nez v0, :cond_3

    .line 150
    new-instance v0, Lcom/cyjh/feedback/lib/dialog/LoadingDialog;

    iget-object v1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cyjh/feedback/lib/dialog/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mLoadingDialog:Lcom/cyjh/feedback/lib/dialog/LoadingDialog;

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mLoadingDialog:Lcom/cyjh/feedback/lib/dialog/LoadingDialog;

    invoke-virtual {v0}, Lcom/cyjh/feedback/lib/dialog/LoadingDialog;->show()V

    .line 153
    new-instance v0, Lcom/cyjh/share/mvp/presenter/FeedbackCommitDataPresenter;

    invoke-direct {v0, p0}, Lcom/cyjh/share/mvp/presenter/FeedbackCommitDataPresenter;-><init>(Lcom/cyjh/share/mvp/view/FeedbackView;)V

    iput-object v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mCommitDataPresenter:Lcom/cyjh/share/mvp/presenter/FeedbackCommitDataPresenter;

    .line 154
    iget-object v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->imgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v0

    iget-object v0, v0, Lcom/cyjh/share/manager/VariableAndConstantsManager;->mAliCloudServerResponse:Lcom/cyjh/share/bean/response/AliCloudServerResponse;

    if-eqz v0, :cond_4

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    iget-object v1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->imgList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 157
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cyjh/share/manager/VariableAndConstantsManager;->getInstance()Lcom/cyjh/share/manager/VariableAndConstantsManager;

    move-result-object v5

    iget-object v5, v5, Lcom/cyjh/share/manager/VariableAndConstantsManager;->mAliCloudServerResponse:Lcom/cyjh/share/bean/response/AliCloudServerResponse;

    iget-object v5, v5, Lcom/cyjh/share/bean/response/AliCloudServerResponse;->OssStoragePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 161
    new-instance v4, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog$1;

    invoke-direct {v4, p0, v0}, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog$1;-><init>(Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;Ljava/util/List;)V

    invoke-virtual {p1, v2, v3, v4}, Lcom/cyjh/share/oss/MyOSSUtils;->uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/cyjh/share/oss/MyOSSUtils$UploadFileCallBack;)V

    goto :goto_0

    .line 182
    :cond_4
    iget-object p1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mCommitDataPresenter:Lcom/cyjh/share/mvp/presenter/FeedbackCommitDataPresenter;

    iget-object v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mRequestInfo:Lcom/cyjh/share/bean/request/FeedbackRequestInfo;

    invoke-virtual {p1, v0, v1}, Lcom/cyjh/share/mvp/presenter/FeedbackCommitDataPresenter;->commitFeedback(Landroid/content/Context;Lcom/cyjh/share/bean/request/FeedbackRequestInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 185
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const-string v0, "zzz"

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeedBackDialog--\u63d0\u4ea4\u6570\u636e\u7ed9\u540e\u53f0\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Lcom/cyjh/feedback/lib/base/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget p1, Lcom/cyjh/feedback/libraryfeedbackinfo/R$layout;->dialog_feedback_info:I

    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->setContentView(I)V

    const p1, 0x3e99999a    # 0.3f

    .line 71
    invoke-virtual {p0, p1}, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->setBlurEffect(F)V

    const p1, 0x3f4ccccd    # 0.8f

    const v0, 0x3f19999a    # 0.6f

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->setDialogSize(FF)V

    .line 73
    invoke-direct {p0}, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->initView()V

    .line 74
    invoke-direct {p0}, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->initData()V

    .line 75
    invoke-direct {p0}, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->initEvent()V

    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 1

    .line 214
    iget-object p1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mLoadingDialog:Lcom/cyjh/feedback/lib/dialog/LoadingDialog;

    invoke-virtual {p1}, Lcom/cyjh/feedback/lib/dialog/LoadingDialog;->dismiss()V

    .line 215
    iget-object p1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->onResultCode:Lcom/cyjh/feedback/lib/dialog/FeedBackDialog$OnResultCode;

    if-eqz p1, :cond_0

    .line 216
    iget-object p1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->onResultCode:Lcom/cyjh/feedback/lib/dialog/FeedBackDialog$OnResultCode;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog$OnResultCode;->getResultCode(I)V

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->dismiss()V

    return-void
.end method

.method public onSuc(Ljava/lang/String;)V
    .locals 1

    .line 205
    iget-object p1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->mLoadingDialog:Lcom/cyjh/feedback/lib/dialog/LoadingDialog;

    invoke-virtual {p1}, Lcom/cyjh/feedback/lib/dialog/LoadingDialog;->dismiss()V

    .line 206
    iget-object p1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->onResultCode:Lcom/cyjh/feedback/lib/dialog/FeedBackDialog$OnResultCode;

    if-eqz p1, :cond_0

    .line 207
    iget-object p1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->onResultCode:Lcom/cyjh/feedback/lib/dialog/FeedBackDialog$OnResultCode;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog$OnResultCode;->getResultCode(I)V

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->dismiss()V

    return-void
.end method

.method public setOnResultCode(Lcom/cyjh/feedback/lib/dialog/FeedBackDialog$OnResultCode;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->onResultCode:Lcom/cyjh/feedback/lib/dialog/FeedBackDialog$OnResultCode;

    return-void
.end method

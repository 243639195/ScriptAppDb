.class public Lcom/ds/daisi/fragment/MsgDetailFragment;
.super Lcom/ds/daisi/fragment/BaseFragement;
.source "MsgDetailFragment.java"

# interfaces
.implements Lcom/cyjh/share/mvp/view/NoticeDetailsView;


# instance fields
.field private mLLContainer:Landroid/widget/LinearLayout;

.field private mNoticeDetailsPresenter:Lcom/cyjh/share/mvp/presenter/NoticeDetailsPresenter;

.field private mTvMsgTime:Landroid/widget/TextView;

.field private mTvMsgTitle:Landroid/widget/TextView;

.field private mWebViewMsgContent:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/ds/daisi/fragment/BaseFragement;-><init>()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f1000d9

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ds/daisi/fragment/MsgDetailFragment;->mTvMsgTitle:Landroid/widget/TextView;

    const v0, 0x7f1000da

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ds/daisi/fragment/MsgDetailFragment;->mTvMsgTime:Landroid/widget/TextView;

    const v0, 0x7f100184

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ds/daisi/fragment/MsgDetailFragment;->mLLContainer:Landroid/widget/LinearLayout;

    .line 72
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/MsgDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ds/daisi/fragment/MsgDetailFragment;->mWebViewMsgContent:Landroid/webkit/WebView;

    .line 73
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p1, v1}, Lcom/ds/daisi/util/AppDeviceUtils;->getDipToPx(Landroid/content/Context;F)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 75
    iget-object p1, p0, Lcom/ds/daisi/fragment/MsgDetailFragment;->mLLContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ds/daisi/fragment/MsgDetailFragment;->mWebViewMsgContent:Landroid/webkit/WebView;

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static newInstance(J)Lcom/ds/daisi/fragment/MsgDetailFragment;
    .locals 3

    .line 40
    new-instance v0, Lcom/ds/daisi/fragment/MsgDetailFragment;

    invoke-direct {v0}, Lcom/ds/daisi/fragment/MsgDetailFragment;-><init>()V

    .line 41
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 42
    const-class v2, Lcom/ds/daisi/fragment/MsgDetailFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 43
    invoke-virtual {v0, v1}, Lcom/ds/daisi/fragment/MsgDetailFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getFragmentLayoutId()I
    .locals 1

    const v0, 0x7f040066

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 56
    invoke-super {p0, p1}, Lcom/ds/daisi/fragment/BaseFragement;->onActivityCreated(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/MsgDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/ds/daisi/fragment/MsgDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 59
    const-class v0, Lcom/ds/daisi/fragment/MsgDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 61
    new-instance p1, Lcom/cyjh/share/mvp/presenter/NoticeDetailsPresenter;

    invoke-direct {p1, p0}, Lcom/cyjh/share/mvp/presenter/NoticeDetailsPresenter;-><init>(Lcom/cyjh/share/mvp/view/NoticeDetailsView;)V

    iput-object p1, p0, Lcom/ds/daisi/fragment/MsgDetailFragment;->mNoticeDetailsPresenter:Lcom/cyjh/share/mvp/presenter/NoticeDetailsPresenter;

    .line 62
    iget-object p1, p0, Lcom/ds/daisi/fragment/MsgDetailFragment;->mNoticeDetailsPresenter:Lcom/cyjh/share/mvp/presenter/NoticeDetailsPresenter;

    invoke-virtual {p0}, Lcom/ds/daisi/fragment/MsgDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Lcom/cyjh/share/mvp/presenter/NoticeDetailsPresenter;->loadAd(Landroid/content/Context;J)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 106
    invoke-super {p0}, Lcom/ds/daisi/fragment/BaseFragement;->onDestroy()V

    .line 107
    iget-object v0, p0, Lcom/ds/daisi/fragment/MsgDetailFragment;->mNoticeDetailsPresenter:Lcom/cyjh/share/mvp/presenter/NoticeDetailsPresenter;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/ds/daisi/fragment/MsgDetailFragment;->mNoticeDetailsPresenter:Lcom/cyjh/share/mvp/presenter/NoticeDetailsPresenter;

    invoke-virtual {v0}, Lcom/cyjh/share/mvp/presenter/NoticeDetailsPresenter;->onCancel()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/fragment/MsgDetailFragment;->mWebViewMsgContent:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/ds/daisi/fragment/MsgDetailFragment;->mLLContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ds/daisi/fragment/MsgDetailFragment;->mWebViewMsgContent:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 113
    iget-object v0, p0, Lcom/ds/daisi/fragment/MsgDetailFragment;->mWebViewMsgContent:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 114
    iget-object v0, p0, Lcom/ds/daisi/fragment/MsgDetailFragment;->mWebViewMsgContent:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/ds/daisi/fragment/MsgDetailFragment;->mWebViewMsgContent:Landroid/webkit/WebView;

    :cond_1
    return-void
.end method

.method public onFail()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 86
    invoke-super {p0}, Lcom/ds/daisi/fragment/BaseFragement;->onPause()V

    .line 87
    const-class v0, Lcom/ds/daisi/fragment/MsgDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 80
    invoke-super {p0}, Lcom/ds/daisi/fragment/BaseFragement;->onResume()V

    .line 81
    const-class v0, Lcom/ds/daisi/fragment/MsgDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public onSuc(Lcom/cyjh/share/bean/response/NoticeBean;)V
    .locals 8

    .line 92
    iget-object v0, p0, Lcom/ds/daisi/fragment/MsgDetailFragment;->mTvMsgTitle:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/cyjh/share/bean/response/NoticeBean;->NoticeTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/ds/daisi/fragment/MsgDetailFragment;->mTvMsgTime:Landroid/widget/TextView;

    iget-wide v1, p1, Lcom/cyjh/share/bean/response/NoticeBean;->NoticeTime:J

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v1, v2, v3}, Lcom/cyjh/share/util/AppUtils;->timeStamp2Date(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v2, p0, Lcom/ds/daisi/fragment/MsgDetailFragment;->mWebViewMsgContent:Landroid/webkit/WebView;

    iget-object v4, p1, Lcom/cyjh/share/bean/response/NoticeBean;->NoticeContent:Ljava/lang/String;

    const-string v5, "text/html"

    const-string v6, "utf-8"

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/ds/daisi/fragment/MsgDetailFragment;->mWebViewMsgContent:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 96
    iget-object p1, p0, Lcom/ds/daisi/fragment/MsgDetailFragment;->mWebViewMsgContent:Landroid/webkit/WebView;

    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    invoke-super {p0, p1, p2}, Lcom/ds/daisi/fragment/BaseFragement;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/MsgDetailFragment;->initView(Landroid/view/View;)V

    return-void
.end method

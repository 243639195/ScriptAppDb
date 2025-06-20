.class public Lcom/ds/daisi/activity/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/ds/daisi/constant/APPConstant;
.implements Lcom/ds/daisi/mvp/views/BaseView;


# instance fields
.field protected appContext:Lcom/ds/daisi/AppContext;

.field protected commonLog:Lcom/ds/daisi/log/CommonLog;

.field private mNetworkReceiver:Lcom/ds/daisi/net/network/NetworkStatusReceiver;

.field private networkStatusListener:Lcom/ds/daisi/net/network/NetworkStatusReceiverListener;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 41
    new-instance v0, Lcom/ds/daisi/log/CommonLog;

    invoke-direct {v0}, Lcom/ds/daisi/log/CommonLog;-><init>()V

    iput-object v0, p0, Lcom/ds/daisi/activity/BaseActivity;->commonLog:Lcom/ds/daisi/log/CommonLog;

    return-void
.end method


# virtual methods
.method protected dismissProgressDialog()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/ds/daisi/activity/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public hideProgress()V
    .locals 0

    return-void
.end method

.method public hideProgressDialog()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/ds/daisi/activity/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/ds/daisi/AppContext;

    iput-object p1, p0, Lcom/ds/daisi/activity/BaseActivity;->appContext:Lcom/ds/daisi/AppContext;

    const/4 p1, 0x1

    .line 50
    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/BaseActivity;->requestWindowFeature(I)Z

    .line 51
    invoke-static {}, Lcom/cyjh/share/manager/ActivitysManager;->getActivitysManager()Lcom/cyjh/share/manager/ActivitysManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/cyjh/share/manager/ActivitysManager;->addActivity(Landroid/app/Activity;)V

    .line 52
    new-instance p1, Lcom/ds/daisi/activity/BaseActivity$1;

    invoke-direct {p1, p0}, Lcom/ds/daisi/activity/BaseActivity$1;-><init>(Lcom/ds/daisi/activity/BaseActivity;)V

    iput-object p1, p0, Lcom/ds/daisi/activity/BaseActivity;->networkStatusListener:Lcom/ds/daisi/net/network/NetworkStatusReceiverListener;

    .line 60
    new-instance p1, Lcom/ds/daisi/net/network/NetworkStatusReceiver;

    invoke-direct {p1}, Lcom/ds/daisi/net/network/NetworkStatusReceiver;-><init>()V

    iput-object p1, p0, Lcom/ds/daisi/activity/BaseActivity;->mNetworkReceiver:Lcom/ds/daisi/net/network/NetworkStatusReceiver;

    .line 61
    iget-object p1, p0, Lcom/ds/daisi/activity/BaseActivity;->mNetworkReceiver:Lcom/ds/daisi/net/network/NetworkStatusReceiver;

    iget-object v0, p0, Lcom/ds/daisi/activity/BaseActivity;->networkStatusListener:Lcom/ds/daisi/net/network/NetworkStatusReceiverListener;

    invoke-virtual {p1, v0}, Lcom/ds/daisi/net/network/NetworkStatusReceiver;->setNetworkrListener(Lcom/ds/daisi/net/network/NetworkStatusReceiverListener;)V

    .line 62
    iget-object p1, p0, Lcom/ds/daisi/activity/BaseActivity;->mNetworkReceiver:Lcom/ds/daisi/net/network/NetworkStatusReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/ds/daisi/activity/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 79
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 80
    iget-object v0, p0, Lcom/ds/daisi/activity/BaseActivity;->mNetworkReceiver:Lcom/ds/daisi/net/network/NetworkStatusReceiver;

    invoke-virtual {p0, v0}, Lcom/ds/daisi/activity/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 81
    invoke-static {}, Lcom/cyjh/share/manager/ActivitysManager;->getActivitysManager()Lcom/cyjh/share/manager/ActivitysManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/share/manager/ActivitysManager;->finishActivity(Landroid/app/Activity;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 73
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 67
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    return-void
.end method

.method public showProgress()V
    .locals 0

    return-void
.end method

.method public showProgressDialog(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method protected showProgressDialog(Landroid/content/Context;II)V
    .locals 1

    .line 85
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ds/daisi/activity/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 86
    iget-object v0, p0, Lcom/ds/daisi/activity/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p2, p0, Lcom/ds/daisi/activity/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 88
    iget-object p2, p0, Lcom/ds/daisi/activity/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 89
    iget-object p1, p0, Lcom/ds/daisi/activity/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 90
    iget-object p1, p0, Lcom/ds/daisi/activity/BaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

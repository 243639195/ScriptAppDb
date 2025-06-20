.class Lcom/ds/daisi/fragment/OptionFragment$1;
.super Lcom/lidroid/xutils/http/callback/RequestCallBack;
.source "OptionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/fragment/OptionFragment;->downloadOnClick(Lcom/cyjh/share/view/SubmitProcessButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lidroid/xutils/http/callback/RequestCallBack<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/fragment/OptionFragment;

.field final synthetic val$buttonDownload:Lcom/cyjh/share/view/SubmitProcessButton;

.field final synthetic val$honeycombFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/ds/daisi/fragment/OptionFragment;Ljava/io/File;Lcom/cyjh/share/view/SubmitProcessButton;)V
    .locals 0

    .line 837
    iput-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$1;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    iput-object p2, p0, Lcom/ds/daisi/fragment/OptionFragment$1;->val$honeycombFile:Ljava/io/File;

    iput-object p3, p0, Lcom/ds/daisi/fragment/OptionFragment$1;->val$buttonDownload:Lcom/cyjh/share/view/SubmitProcessButton;

    invoke-direct {p0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLoading(JJZ)V
    .locals 2

    .line 862
    invoke-super/range {p0 .. p5}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->onLoading(JJZ)V

    const-wide/16 v0, 0x64

    mul-long p3, p3, v0

    .line 863
    div-long/2addr p3, p1

    long-to-int p1, p3

    .line 864
    iget-object p2, p0, Lcom/ds/daisi/fragment/OptionFragment$1;->val$buttonDownload:Lcom/cyjh/share/view/SubmitProcessButton;

    invoke-virtual {p2, p1}, Lcom/cyjh/share/view/SubmitProcessButton;->setProgress(I)V

    .line 865
    iget-object p2, p0, Lcom/ds/daisi/fragment/OptionFragment$1;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-static {p2}, Lcom/ds/daisi/fragment/OptionFragment;->access$200(Lcom/ds/daisi/fragment/OptionFragment;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    const/16 p3, 0x64

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p1, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 866
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$1;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-static {p1}, Lcom/ds/daisi/fragment/OptionFragment;->access$300(Lcom/ds/daisi/fragment/OptionFragment;)Landroid/app/NotificationManager;

    move-result-object p1

    iget-object p2, p0, Lcom/ds/daisi/fragment/OptionFragment$1;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-static {p2}, Lcom/ds/daisi/fragment/OptionFragment;->access$200(Lcom/ds/daisi/fragment/OptionFragment;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    const p3, 0x1337959

    invoke-virtual {p1, p3, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 854
    invoke-super {p0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->onStart()V

    .line 855
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment$1;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    iget-object v0, v0, Lcom/ds/daisi/fragment/OptionFragment;->commonLog:Lcom/ds/daisi/log/CommonLog;

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d>>>"

    invoke-virtual {v0, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 856
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment$1;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-static {v0}, Lcom/ds/daisi/fragment/OptionFragment;->access$200(Lcom/ds/daisi/fragment/OptionFragment;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 857
    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment$1;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-static {v0}, Lcom/ds/daisi/fragment/OptionFragment;->access$300(Lcom/ds/daisi/fragment/OptionFragment;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment$1;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-static {v1}, Lcom/ds/daisi/fragment/OptionFragment;->access$200(Lcom/ds/daisi/fragment/OptionFragment;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const v2, 0x1337959

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public onSuccess(Lcom/lidroid/xutils/http/ResponseInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/http/ResponseInfo<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const-string p1, "NLog"

    const-string v0, "onSuccess"

    .line 840
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$1;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-static {p1}, Lcom/ds/daisi/fragment/OptionFragment;->access$200(Lcom/ds/daisi/fragment/OptionFragment;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 842
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$1;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-static {p1}, Lcom/ds/daisi/fragment/OptionFragment;->access$300(Lcom/ds/daisi/fragment/OptionFragment;)Landroid/app/NotificationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment$1;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-static {v0}, Lcom/ds/daisi/fragment/OptionFragment;->access$200(Lcom/ds/daisi/fragment/OptionFragment;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const v1, 0x1337959

    invoke-virtual {p1, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 843
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$1;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-virtual {p1}, Lcom/ds/daisi/fragment/OptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/ds/daisi/fragment/OptionFragment$1;->val$honeycombFile:Ljava/io/File;

    invoke-static {p1, v0}, Lcom/ds/daisi/util/AppDeviceUtils;->installAPK(Landroid/content/Context;Ljava/io/File;)V

    .line 844
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$1;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-static {p1}, Lcom/ds/daisi/fragment/OptionFragment;->access$400(Lcom/ds/daisi/fragment/OptionFragment;)Lcom/ds/daisi/dialog/DownloadDialogFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ds/daisi/dialog/DownloadDialogFragment;->dismiss()V

    return-void
.end method

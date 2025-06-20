.class Lcom/ds/daisi/activity/news/SplashActivity$4;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/activity/news/SplashActivity;->ddyGuideImagePreLoad(Lcom/cyjh/share/bean/response/PhoneConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/news/SplashActivity;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$phoneConfig:Lcom/cyjh/share/bean/response/PhoneConfig;


# direct methods
.method constructor <init>(Lcom/ds/daisi/activity/news/SplashActivity;Lcom/cyjh/share/bean/response/PhoneConfig;Ljava/lang/String;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity$4;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    iput-object p2, p0, Lcom/ds/daisi/activity/news/SplashActivity$4;->val$phoneConfig:Lcom/cyjh/share/bean/response/PhoneConfig;

    iput-object p3, p0, Lcom/ds/daisi/activity/news/SplashActivity$4;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailed(Ljava/lang/Exception;)V
    .locals 3

    .line 523
    invoke-static {}, Lcom/ds/daisi/activity/news/SplashActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ddyGuideImagePreLoad --> onDownloadFailed --> ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadSuccess(Ljava/io/File;)V
    .locals 3

    .line 511
    invoke-static {}, Lcom/ds/daisi/activity/news/SplashActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ddyGuideImagePreLoad --> onDownloadSuccess --> file="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity$4;->val$phoneConfig:Lcom/cyjh/share/bean/response/PhoneConfig;

    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity$4;->val$path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/cyjh/share/bean/response/PhoneConfig;->setImageUrl(Ljava/lang/String;)V

    .line 513
    iget-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity$4;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity$4;->val$phoneConfig:Lcom/cyjh/share/bean/response/PhoneConfig;

    invoke-static {p1, v0}, Lcom/ds/daisi/activity/guide/RecognitionGuideActivity;->actionStart(Landroid/content/Context;Lcom/cyjh/share/bean/response/PhoneConfig;)V

    .line 514
    iget-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity$4;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-virtual {p1}, Lcom/ds/daisi/activity/news/SplashActivity;->finish()V

    return-void
.end method

.method public onDownloading(JJI)V
    .locals 0

    return-void
.end method

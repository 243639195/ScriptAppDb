.class Lcom/ds/daisi/activity/news/SplashActivity$3;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter$OnResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/activity/news/SplashActivity;->getDomainNameSecond()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/news/SplashActivity;


# direct methods
.method constructor <init>(Lcom/ds/daisi/activity/news/SplashActivity;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity$3;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 3

    .line 486
    invoke-static {}, Lcom/ds/daisi/activity/news/SplashActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDomainNameSecond --> code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",message="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ds/daisi/AppContext;->initElf()V

    .line 496
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->getInstance()Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->setCallback(Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter$OnResultCallback;)Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;

    .line 497
    iget-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity$3;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-static {p1}, Lcom/ds/daisi/activity/news/SplashActivity;->access$400(Lcom/ds/daisi/activity/news/SplashActivity;)Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;

    move-result-object p1

    const/16 p2, 0x1a

    invoke-virtual {p1, p2}, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onSuccess(Lcom/cyjh/share/bean/response/DomainResult;)V
    .locals 3

    .line 464
    invoke-static {}, Lcom/ds/daisi/activity/news/SplashActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDomainNameSecond --> onSuccess domainName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cyjh/share/bean/response/DomainResult;->getAppDomainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",domain2Name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cyjh/share/bean/response/DomainResult;->getApp2DomainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-virtual {p1}, Lcom/cyjh/share/bean/response/DomainResult;->getAppDomainName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ds/daisi/net/URL/MyBuildConfig;->AUTHORITY:Ljava/lang/String;

    .line 467
    invoke-virtual {p1}, Lcom/cyjh/share/bean/response/DomainResult;->getAppDomainName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ds/daisi/net/URL/MyBuildConfig;->AUTHORITY_VERIFY:Ljava/lang/String;

    .line 468
    invoke-virtual {p1}, Lcom/cyjh/share/bean/response/DomainResult;->getAppDomainName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ds/daisi/net/URL/MyBuildConfig;->AUTHORITY_PAY:Ljava/lang/String;

    .line 470
    invoke-virtual {p1}, Lcom/cyjh/share/bean/response/DomainResult;->getAppDomainName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/share/config/MyConfig;->setAuthority(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p1}, Lcom/cyjh/share/bean/response/DomainResult;->getApp2DomainName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/share/config/MyConfig;->setApp2DomainName(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p1}, Lcom/cyjh/share/bean/response/DomainResult;->getApp3DomainName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/share/config/MyConfig;->setApp3DomainName(Ljava/lang/String;)V

    .line 474
    invoke-static {}, Lcom/cyjh/share/helper/PhoneConfigHelper;->get()Lcom/cyjh/share/helper/PhoneConfigHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/activity/news/SplashActivity$3;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-virtual {p1}, Lcom/cyjh/share/bean/response/DomainResult;->getPhoneConfig()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/cyjh/share/helper/PhoneConfigHelper;->init(Landroid/content/Context;Ljava/util/List;)Lcom/cyjh/share/bean/response/PhoneConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 476
    iget-object v0, p0, Lcom/ds/daisi/activity/news/SplashActivity$3;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-static {v0, p1}, Lcom/ds/daisi/activity/news/SplashActivity;->access$300(Lcom/ds/daisi/activity/news/SplashActivity;Lcom/cyjh/share/bean/response/PhoneConfig;)V

    goto :goto_0

    .line 478
    :cond_0
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ds/daisi/AppContext;->initElf()V

    .line 479
    invoke-static {}, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->getInstance()Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;->setCallback(Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter$OnResultCallback;)Lcom/cyjh/share/mvp/presenter/AppDomainRequestPresenter;

    .line 480
    iget-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity$3;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-static {p1}, Lcom/ds/daisi/activity/news/SplashActivity;->access$400(Lcom/ds/daisi/activity/news/SplashActivity;)Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;

    move-result-object p1

    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Lcom/ds/daisi/activity/news/SplashActivity$MyHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

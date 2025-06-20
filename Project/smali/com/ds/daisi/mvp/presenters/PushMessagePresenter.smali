.class public Lcom/ds/daisi/mvp/presenters/PushMessagePresenter;
.super Ljava/lang/Object;
.source "PushMessagePresenter.java"

# interfaces
.implements Lcom/ds/daisi/mvp/presenters/BasePresenter;


# static fields
.field private static final IS_FREE:Ljava/lang/String; = "0"

.field private static final REQUEST_TAG:Ljava/lang/String; = "PushMessagePresenter.class.getCanonicalName()"


# instance fields
.field private context:Landroid/content/Context;

.field private pushMessageView:Lcom/cyjh/share/mvp/view/PushMessageView;


# direct methods
.method public constructor <init>(Lcom/cyjh/share/mvp/view/PushMessageView;Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/ds/daisi/mvp/presenters/PushMessagePresenter;->pushMessageView:Lcom/cyjh/share/mvp/view/PushMessageView;

    .line 40
    iput-object p2, p0, Lcom/ds/daisi/mvp/presenters/PushMessagePresenter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/mvp/presenters/PushMessagePresenter;)Lcom/cyjh/share/mvp/view/PushMessageView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/ds/daisi/mvp/presenters/PushMessagePresenter;->pushMessageView:Lcom/cyjh/share/mvp/view/PushMessageView;

    return-object p0
.end method


# virtual methods
.method public acquireMessagePush(Ljava/lang/String;)V
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/ds/daisi/mvp/presenters/PushMessagePresenter;->context:Landroid/content/Context;

    const v1, 0x7f090122

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    sget-object v1, Lcom/ds/daisi/net/URL/MyBuildConfig;->AUTHORITY:Ljava/lang/String;

    const-string v2, "GetMessage"

    invoke-static {v1, v2}, Lcom/ds/daisi/net/URL/MyBuildConfig;->getBuilder(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "platforms"

    const-string v3, "android"

    .line 45
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "imie"

    .line 46
    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "isfree"

    const-string v2, "0"

    .line 47
    invoke-virtual {p1, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "guid"

    .line 48
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6536\u8d39\u6d88\u606f\u901a\u77e5url\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "PushMessagePresenter.class.getCanonicalName()"

    .line 51
    new-instance v1, Lcom/ds/daisi/mvp/presenters/PushMessagePresenter$1;

    iget-object v2, p0, Lcom/ds/daisi/mvp/presenters/PushMessagePresenter;->context:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/ds/daisi/mvp/presenters/PushMessagePresenter$1;-><init>(Lcom/ds/daisi/mvp/presenters/PushMessagePresenter;Landroid/content/Context;)V

    invoke-static {p1, v0, v1}, Lcom/ds/daisi/net/volley/VolleyManager;->requestStringGet(Ljava/lang/String;Ljava/lang/String;Lcom/ds/daisi/net/volley/VolleyStrRequestManager;)V

    return-void
.end method

.method public onStopRequest()V
    .locals 2

    .line 84
    invoke-static {}, Lcom/ds/daisi/net/volley/VolleyRequestQueue;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    const-string v1, "PushMessagePresenter.class.getCanonicalName()"

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    return-void
.end method

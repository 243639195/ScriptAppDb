.class Lcom/ds/daisi/mvp/managers/FengLingAdManager$4;
.super Ljava/lang/Object;
.source "FengLingAdManager.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/mvp/managers/FengLingAdManager;->getFengLingAdInfoOperate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/mvp/managers/FengLingAdManager;


# direct methods
.method constructor <init>(Lcom/ds/daisi/mvp/managers/FengLingAdManager;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/ds/daisi/mvp/managers/FengLingAdManager$4;->this$0:Lcom/ds/daisi/mvp/managers/FengLingAdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 396
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/mvp/managers/FengLingAdManager$4;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 5

    .line 399
    invoke-static {}, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "code"

    .line 401
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ads"

    .line 403
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 404
    new-instance v0, Lcom/cyjh/share/bean/response/FengLingAdInfo;

    invoke-direct {v0}, Lcom/cyjh/share/bean/response/FengLingAdInfo;-><init>()V

    .line 405
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    .line 406
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const-string v2, "creativeType"

    .line 407
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/cyjh/share/bean/response/FengLingAdInfo;->setCreativeType(I)V

    const-string v2, "drawType"

    .line 408
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/cyjh/share/bean/response/FengLingAdInfo;->setDrawType(I)V

    const-string v2, "actionName"

    .line 409
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/cyjh/share/bean/response/FengLingAdInfo;->setActionName(I)V

    const-string v2, "width"

    .line 410
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/cyjh/share/bean/response/FengLingAdInfo;->setWidth(I)V

    const-string v2, "height"

    .line 411
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/cyjh/share/bean/response/FengLingAdInfo;->setHeight(I)V

    const-string v2, "title"

    .line 413
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cyjh/share/bean/response/FengLingAdInfo;->setTitle(Ljava/lang/String;)V

    const-string v2, "rating"

    .line 414
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/cyjh/share/bean/response/FengLingAdInfo;->setRating(I)V

    const-string v2, "imgs"

    .line 416
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 417
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 418
    new-instance v2, Lcom/cyjh/share/bean/response/FengLingAdInfo$Imgs;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v0}, Lcom/cyjh/share/bean/response/FengLingAdInfo$Imgs;-><init>(Lcom/cyjh/share/bean/response/FengLingAdInfo;)V

    const-string v3, "height"

    .line 419
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/cyjh/share/bean/response/FengLingAdInfo$Imgs;->setHeight(I)V

    const-string v3, "width"

    .line 420
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/cyjh/share/bean/response/FengLingAdInfo$Imgs;->setWidth(I)V

    const-string v3, "src"

    .line 421
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/cyjh/share/bean/response/FengLingAdInfo$Imgs;->setSrc(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v0, v2}, Lcom/cyjh/share/bean/response/FengLingAdInfo;->setImgs(Lcom/cyjh/share/bean/response/FengLingAdInfo$Imgs;)V

    const-string v1, "adPlatformIcon"

    .line 424
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/share/bean/response/FengLingAdInfo;->setAdPlatformIcon(Ljava/lang/String;)V

    const-string v1, "adId"

    .line 425
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cyjh/share/bean/response/FengLingAdInfo;->setAdId(I)V

    const-string v1, "clickUrl"

    .line 426
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/share/bean/response/FengLingAdInfo;->setClickUrl(Ljava/lang/String;)V

    const-string v1, "webTracks"

    .line 428
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 429
    new-instance v2, Lcom/cyjh/share/bean/response/FengLingAdInfo$WebTracks;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v0}, Lcom/cyjh/share/bean/response/FengLingAdInfo$WebTracks;-><init>(Lcom/cyjh/share/bean/response/FengLingAdInfo;)V

    const-string v3, "type"

    .line 430
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/cyjh/share/bean/response/FengLingAdInfo$WebTracks;->setType(I)V

    const-string v3, "imptrackUrls"

    .line 431
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 432
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 433
    invoke-static {v3}, Lcom/cyjh/share/util/CommonUtil;->parseJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cyjh/share/bean/response/FengLingAdInfo$WebTracks;->setImptrackUrls(Ljava/util/List;)V

    :cond_0
    const-string v3, "ctrackUrls"

    .line 436
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 437
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 438
    invoke-static {v3}, Lcom/cyjh/share/util/CommonUtil;->parseJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cyjh/share/bean/response/FengLingAdInfo$WebTracks;->setCtrackUrls(Ljava/util/List;)V

    :cond_1
    const-string v3, "dstrackUrls"

    .line 441
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 442
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 443
    invoke-static {v3}, Lcom/cyjh/share/util/CommonUtil;->parseJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cyjh/share/bean/response/FengLingAdInfo$WebTracks;->setDstrackUrls(Ljava/util/List;)V

    :cond_2
    const-string v3, "istrackUrls"

    .line 446
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 447
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 448
    invoke-static {v1}, Lcom/cyjh/share/util/CommonUtil;->parseJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/cyjh/share/bean/response/FengLingAdInfo$WebTracks;->setIstrackUrls(Ljava/util/List;)V

    .line 451
    :cond_3
    invoke-virtual {v0, v2}, Lcom/cyjh/share/bean/response/FengLingAdInfo;->setWebTracks(Lcom/cyjh/share/bean/response/FengLingAdInfo$WebTracks;)V

    const-string v1, "adPlatformId"

    .line 453
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/cyjh/share/bean/response/FengLingAdInfo;->setAdPlatformId(I)V

    .line 454
    iget-object p1, p0, Lcom/ds/daisi/mvp/managers/FengLingAdManager$4;->this$0:Lcom/ds/daisi/mvp/managers/FengLingAdManager;

    invoke-static {p1}, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->access$200(Lcom/ds/daisi/mvp/managers/FengLingAdManager;)Lcom/ds/daisi/mvp/managers/Callback;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/ds/daisi/mvp/managers/Callback;->finish(Ljava/lang/Object;)V

    goto :goto_0

    .line 456
    :cond_4
    iget-object p1, p0, Lcom/ds/daisi/mvp/managers/FengLingAdManager$4;->this$0:Lcom/ds/daisi/mvp/managers/FengLingAdManager;

    invoke-static {p1}, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->access$200(Lcom/ds/daisi/mvp/managers/FengLingAdManager;)Lcom/ds/daisi/mvp/managers/Callback;

    move-result-object p1

    const-string v0, "\u65e0\u6709\u6548\u5e7f\u544a\u6570\u636e\uff01"

    invoke-interface {p1, v0}, Lcom/ds/daisi/mvp/managers/Callback;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 458
    :cond_5
    iget-object p1, p0, Lcom/ds/daisi/mvp/managers/FengLingAdManager$4;->this$0:Lcom/ds/daisi/mvp/managers/FengLingAdManager;

    invoke-static {p1}, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->access$200(Lcom/ds/daisi/mvp/managers/FengLingAdManager;)Lcom/ds/daisi/mvp/managers/Callback;

    move-result-object p1

    const-string v0, "\u8bf7\u6c42\u6570\u636e\u5931\u8d25\uff01"

    invoke-interface {p1, v0}, Lcom/ds/daisi/mvp/managers/Callback;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 460
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 461
    iget-object p1, p0, Lcom/ds/daisi/mvp/managers/FengLingAdManager$4;->this$0:Lcom/ds/daisi/mvp/managers/FengLingAdManager;

    invoke-static {p1}, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->access$200(Lcom/ds/daisi/mvp/managers/FengLingAdManager;)Lcom/ds/daisi/mvp/managers/Callback;

    move-result-object p1

    const-string v0, "\u89e3\u6790\u6570\u636e\u5931\u8d25\uff01"

    invoke-interface {p1, v0}, Lcom/ds/daisi/mvp/managers/Callback;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.class public Lcom/ds/daisi/mvp/managers/FengLingAdManager;
.super Ljava/lang/Object;
.source "FengLingAdManager.java"

# interfaces
.implements Lcom/ds/daisi/mvp/managers/BaseManager;


# static fields
.field public static final BANNER_AD:I = 0x1

.field public static final CLICK_DOWN_X:Ljava/lang/String; = "__CLICK_DOWN_X__"

.field public static final CLICK_DOWN_Y:Ljava/lang/String; = "_CLICK_DOWN_Y__"

.field public static final CLICK_UP_X:Ljava/lang/String; = "__CLICK_UP_X__"

.field public static final CLICK_UP_Y:Ljava/lang/String; = "__CLICK_UP_Y__"

.field public static final EVENT_TIME:Ljava/lang/String; = "__EVENT_TIME__"

.field public static PUBLIC_INTERNET_IP:Ljava/lang/String; = "0.0.0.0"

.field public static final SPLASH_AD:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FengLingAdManager"


# instance fields
.field private callback:Lcom/ds/daisi/mvp/managers/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ds/daisi/mvp/managers/Callback<",
            "Lcom/cyjh/share/bean/response/FengLingAdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private type:I

.field private url:Ljava/lang/String;

.field private webViewUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ds/daisi/mvp/managers/FengLingAdManager;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->webViewUserAgent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ds/daisi/mvp/managers/FengLingAdManager;)Lcom/ds/daisi/mvp/managers/Callback;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->callback:Lcom/ds/daisi/mvp/managers/Callback;

    return-object p0
.end method

.method private getBrand()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 369
    :try_start_0
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 371
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private getDM()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 379
    :try_start_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 381
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private getDeviceDisplalyParam(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/ds/daisi/util/AppDeviceUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ds/daisi/util/AppDeviceUtils;->getResolution(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getFengLingAdInfoOperate(Ljava/lang/String;)V
    .locals 8

    .line 391
    iget-object v0, p0, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->context:Landroid/content/Context;

    iget v2, p0, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->type:I

    invoke-virtual {p0, v1, v2, p1}, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->getFengLingMapParams(Landroid/content/Context;ILjava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 393
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 394
    sget-object p1, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFengLingAdInfo params -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    new-instance p1, Lcom/ds/daisi/mvp/managers/FengLingAdManager$6;

    iget-object v4, p0, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->url:Ljava/lang/String;

    new-instance v6, Lcom/ds/daisi/mvp/managers/FengLingAdManager$4;

    invoke-direct {v6, p0}, Lcom/ds/daisi/mvp/managers/FengLingAdManager$4;-><init>(Lcom/ds/daisi/mvp/managers/FengLingAdManager;)V

    new-instance v7, Lcom/ds/daisi/mvp/managers/FengLingAdManager$5;

    invoke-direct {v7, p0}, Lcom/ds/daisi/mvp/managers/FengLingAdManager$5;-><init>(Lcom/ds/daisi/mvp/managers/FengLingAdManager;)V

    const/4 v3, 0x1

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/ds/daisi/mvp/managers/FengLingAdManager$6;-><init>(Lcom/ds/daisi/mvp/managers/FengLingAdManager;ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 480
    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method private getImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const-string v1, "phone"

    .line 359
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 360
    invoke-static {p1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    .line 363
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getOrientation()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method

.method public static getSystemLanguage()Ljava/lang/String;
    .locals 1

    .line 387
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWebViewUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 344
    :try_start_0
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 345
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    .line 346
    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 348
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private isSupportDeeplink()Ljava/lang/String;
    .locals 1

    const-string v0, "false"

    return-object v0
.end method

.method private isUseHttps()Ljava/lang/String;
    .locals 1

    const-string v0, "true"

    return-object v0
.end method


# virtual methods
.method public getFengLingAdInfo(Ljava/lang/String;ILcom/ds/daisi/mvp/managers/Callback;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/ds/daisi/mvp/managers/Callback<",
            "Lcom/cyjh/share/bean/response/FengLingAdInfo;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 63
    iput p2, p0, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->type:I

    .line 64
    iput-object p3, p0, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->callback:Lcom/ds/daisi/mvp/managers/Callback;

    .line 65
    iput-object p4, p0, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->context:Landroid/content/Context;

    .line 66
    iput-object p5, p0, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->url:Ljava/lang/String;

    .line 67
    invoke-static {p4}, Lcom/cyjh/share/util/CommonUtils;->getWebViewUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->webViewUserAgent:Ljava/lang/String;

    .line 68
    sget-object p1, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->PUBLIC_INTERNET_IP:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->getFengLingAdInfoOperate(Ljava/lang/String;)V

    return-void
.end method

.method public getFengLingMapParams(Landroid/content/Context;ILjava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const-string p2, "101478"

    const/16 v0, 0x280

    const/16 v1, 0x3c0

    goto :goto_0

    :cond_0
    const-string p2, "101477"

    const/16 v0, 0x258

    const/16 v1, 0x12c

    .line 132
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 134
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "id"

    const-string v5, "5e1f6df6cc024c80b7e8b86dc670c100"

    .line 139
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "adPid"

    .line 147
    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v5, "width"

    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "height"

    .line 160
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "banner"

    .line 165
    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "usingHttps"

    .line 170
    invoke-direct {p0}, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->isUseHttps()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "isSupportDeeplink"

    .line 175
    invoke-direct {p0}, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->isSupportDeeplink()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "imei"

    .line 183
    invoke-static {p1}, Lcom/ds/daisi/util/AppDeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "androidId"

    .line 189
    invoke-static {p1}, Lcom/ds/daisi/util/AppDeviceUtils;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ip"

    .line 196
    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "nt"

    .line 209
    invoke-static {p1}, Lcom/ds/daisi/util/NetworkUtils;->getNetWorkTypeIntValue(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "platform"

    const-string v0, "4"

    .line 215
    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "lan"

    const-string v0, "zh_CN"

    .line 221
    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "rslt"

    .line 227
    invoke-direct {p0, p1}, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->getDeviceDisplalyParam(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "osv"

    .line 234
    invoke-static {p1}, Lcom/ds/daisi/util/AppDeviceUtils;->getDeviceVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "carrier"

    .line 240
    invoke-static {p1}, Lcom/ds/daisi/util/AppDeviceUtils;->getOperateValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "sendtime"

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "timezone"

    const-string v0, "480"

    .line 252
    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "mac"

    .line 258
    invoke-static {p1}, Lcom/ds/daisi/util/AppDeviceUtils;->getDeviceMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "appVer"

    .line 264
    invoke-static {p1}, Lcom/ds/daisi/util/AppDeviceUtils;->getAppNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "cc"

    const-string v0, "CN"

    .line 269
    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "orientation"

    .line 276
    invoke-direct {p0}, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->getOrientation()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "imsi"

    .line 281
    invoke-direct {p0, p1}, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "brand"

    .line 286
    invoke-direct {p0}, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->getBrand()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "dm"

    .line 291
    invoke-direct {p0}, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->getDM()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "ua"

    .line 299
    iget-object v0, p0, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->webViewUserAgent:Ljava/lang/String;

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 302
    invoke-static {p1}, Lcom/ds/daisi/util/GPSUtils;->getInstance(Landroid/content/Context;)Lcom/ds/daisi/util/GPSUtils;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ds/daisi/util/GPSUtils;->getLngAndLatJudgeOperate(Lcom/ds/daisi/util/GPSUtils$OnLocationResultListener;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "lon"

    const/4 v1, 0x0

    .line 307
    aget-object v1, p1, v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lat"

    const/4 v1, 0x1

    .line 312
    aget-object p1, p1, v1

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "geo"

    .line 315
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "site"

    .line 317
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "imp"

    .line 318
    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "device"

    .line 324
    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public reportLogInfo(Landroid/content/Context;Ljava/lang/String;Lcom/ds/daisi/mvp/managers/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/ds/daisi/mvp/managers/Callback<",
            "Lcom/cyjh/share/bean/response/FengLingAdInfo;",
            ">;)V"
        }
    .end annotation

    .line 79
    iput-object p3, p0, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->callback:Lcom/ds/daisi/mvp/managers/Callback;

    .line 80
    sget-object v0, Lcom/ds/daisi/mvp/managers/FengLingAdManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportLogInfo params -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {p1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object p1

    .line 82
    new-instance v6, Lcom/ds/daisi/mvp/managers/FengLingAdManager$3;

    new-instance v4, Lcom/ds/daisi/mvp/managers/FengLingAdManager$1;

    invoke-direct {v4, p0, p3}, Lcom/ds/daisi/mvp/managers/FengLingAdManager$1;-><init>(Lcom/ds/daisi/mvp/managers/FengLingAdManager;Lcom/ds/daisi/mvp/managers/Callback;)V

    new-instance v5, Lcom/ds/daisi/mvp/managers/FengLingAdManager$2;

    invoke-direct {v5, p0, p3}, Lcom/ds/daisi/mvp/managers/FengLingAdManager$2;-><init>(Lcom/ds/daisi/mvp/managers/FengLingAdManager;Lcom/ds/daisi/mvp/managers/Callback;)V

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/ds/daisi/mvp/managers/FengLingAdManager$3;-><init>(Lcom/ds/daisi/mvp/managers/FengLingAdManager;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 115
    invoke-virtual {p1, v6}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

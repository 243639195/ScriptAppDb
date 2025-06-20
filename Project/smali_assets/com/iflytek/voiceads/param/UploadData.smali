.class public Lcom/iflytek/voiceads/param/UploadData;
.super Ljava/lang/Object;


# static fields
.field public static final API_VERSION:Ljava/lang/String; = "3.0.2"

.field public static final SDK_VERSION:Ljava/lang/String; = "4.0.1"

.field public static mAdParam:Lcom/iflytek/voiceads/param/a;

.field public static mContext:Landroid/content/Context;

.field private static mCurDeviceInfo:Lorg/json/JSONObject;

.field private static mCurExtraInfo:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdStatis()Ljava/lang/String;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/iflytek/voiceads/param/UploadData;->mContext:Landroid/content/Context;

    const-string v1, "dataToggle"

    invoke-static {v0, v1}, Lcom/iflytek/voiceads/utils/c;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/iflytek/voiceads/param/UploadData;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "last_session_id"

    sget-object v2, Lcom/iflytek/voiceads/param/UploadData;->mContext:Landroid/content/Context;

    const-string v3, "sessionID"

    invoke-static {v2, v3}, Lcom/iflytek/voiceads/utils/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "last_adunit_id"

    sget-object v2, Lcom/iflytek/voiceads/param/UploadData;->mContext:Landroid/content/Context;

    const-string v3, "adUnitID"

    invoke-static {v2, v3}, Lcom/iflytek/voiceads/utils/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "last_req_duration"

    sget-object v2, Lcom/iflytek/voiceads/param/UploadData;->mContext:Landroid/content/Context;

    const-string v3, "reqDuration"

    invoke-static {v2, v3}, Lcom/iflytek/voiceads/utils/c;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "last_imp_duration"

    sget-object v2, Lcom/iflytek/voiceads/param/UploadData;->mContext:Landroid/content/Context;

    const-string v3, "impFailCnt"

    invoke-static {v2, v3}, Lcom/iflytek/voiceads/utils/c;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "last_clk_duration"

    sget-object v2, Lcom/iflytek/voiceads/param/UploadData;->mContext:Landroid/content/Context;

    const-string v3, "clkFailCnt"

    invoke-static {v2, v3}, Lcom/iflytek/voiceads/utils/c;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "req_fail_cnt"

    sget-object v2, Lcom/iflytek/voiceads/param/UploadData;->mContext:Landroid/content/Context;

    const-string v3, "reqFailCnt"

    invoke-static {v2, v3}, Lcom/iflytek/voiceads/utils/c;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "imp_fail_cnt"

    sget-object v2, Lcom/iflytek/voiceads/param/UploadData;->mContext:Landroid/content/Context;

    const-string v3, "impFailCnt"

    invoke-static {v2, v3}, Lcom/iflytek/voiceads/utils/c;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "clk_fail_cnt"

    sget-object v2, Lcom/iflytek/voiceads/param/UploadData;->mContext:Landroid/content/Context;

    const-string v3, "clkFailCnt"

    invoke-static {v2, v3}, Lcom/iflytek/voiceads/utils/c;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdStatis error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_0
.end method

.method public static getApiVer()Ljava/lang/String;
    .locals 1

    const-string v0, "3.0.2"

    return-object v0
.end method

.method public static getAppInfo()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/iflytek/voiceads/param/UploadData;->mAdParam:Lcom/iflytek/voiceads/param/a;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/iflytek/voiceads/param/UploadData;->mAdParam:Lcom/iflytek/voiceads/param/a;

    const-string v1, "app_ver"

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/param/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/iflytek/voiceads/param/UploadData;->mAdParam:Lcom/iflytek/voiceads/param/a;

    invoke-static {v0}, Lcom/iflytek/voiceads/param/b;->a(Lcom/iflytek/voiceads/param/a;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCurrency()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/iflytek/voiceads/param/UploadData;->mAdParam:Lcom/iflytek/voiceads/param/a;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/iflytek/voiceads/param/UploadData;->mAdParam:Lcom/iflytek/voiceads/param/a;

    const-string v1, "currency"

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/param/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    sget-object v0, Lcom/iflytek/voiceads/param/UploadData;->mAdParam:Lcom/iflytek/voiceads/param/a;

    const-string v2, "currency"

    invoke-virtual {v0, v2}, Lcom/iflytek/voiceads/param/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrency error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CNY"

    goto :goto_0
.end method

.method public static getDevice()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/iflytek/voiceads/param/UploadData;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/iflytek/voiceads/param/UploadData;->mCurDeviceInfo:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    sget-object v0, Lcom/iflytek/voiceads/param/UploadData;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/voiceads/param/d;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    sput-object v0, Lcom/iflytek/voiceads/param/UploadData;->mCurDeviceInfo:Lorg/json/JSONObject;

    :cond_1
    sget-object v0, Lcom/iflytek/voiceads/param/UploadData;->mCurDeviceInfo:Lorg/json/JSONObject;

    const-string v1, "ts"

    invoke-static {}, Lcom/iflytek/voiceads/param/d;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v0, Lcom/iflytek/voiceads/param/UploadData;->mCurDeviceInfo:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDevice error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_0
.end method

.method public static getExt()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/iflytek/voiceads/param/UploadData;->mAdParam:Lcom/iflytek/voiceads/param/a;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/iflytek/voiceads/param/UploadData;->mAdParam:Lcom/iflytek/voiceads/param/a;

    const-string v1, "ext"

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/param/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/iflytek/voiceads/param/UploadData;->mAdParam:Lcom/iflytek/voiceads/param/a;

    const-string v1, "ext"

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/param/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExtraInfo()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/iflytek/voiceads/param/UploadData;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/iflytek/voiceads/param/UploadData;->mCurExtraInfo:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    sget-object v0, Lcom/iflytek/voiceads/param/UploadData;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/voiceads/param/e;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    sput-object v0, Lcom/iflytek/voiceads/param/UploadData;->mCurExtraInfo:Lorg/json/JSONObject;

    :cond_1
    sget-object v0, Lcom/iflytek/voiceads/param/UploadData;->mCurExtraInfo:Lorg/json/JSONObject;

    const-string v1, "battery"

    sget-object v2, Lcom/iflytek/voiceads/param/UploadData;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/iflytek/voiceads/param/e;->b(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/iflytek/voiceads/param/UploadData;->mCurExtraInfo:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IFLY_AD_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDevice error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/voiceads/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_0
.end method

.method public static getImps()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/iflytek/voiceads/param/UploadData;->mAdParam:Lcom/iflytek/voiceads/param/a;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/iflytek/voiceads/param/UploadData;->mAdParam:Lcom/iflytek/voiceads/param/a;

    invoke-static {v0}, Lcom/iflytek/voiceads/param/g;->a(Lcom/iflytek/voiceads/param/a;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getRequestID()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/iflytek/voiceads/param/UploadData;->mAdParam:Lcom/iflytek/voiceads/param/a;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/iflytek/voiceads/param/UploadData;->mAdParam:Lcom/iflytek/voiceads/param/a;

    const-string v1, "request_id"

    invoke-virtual {v0, v1}, Lcom/iflytek/voiceads/param/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSdkVer()Ljava/lang/String;
    .locals 1

    const-string v0, "4.0.1"

    return-object v0
.end method

.method public static initParam(Landroid/content/Context;Lcom/iflytek/voiceads/param/a;)V
    .locals 0

    sput-object p0, Lcom/iflytek/voiceads/param/UploadData;->mContext:Landroid/content/Context;

    sput-object p1, Lcom/iflytek/voiceads/param/UploadData;->mAdParam:Lcom/iflytek/voiceads/param/a;

    return-void
.end method

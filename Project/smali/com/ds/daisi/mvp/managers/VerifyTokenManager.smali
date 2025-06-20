.class public Lcom/ds/daisi/mvp/managers/VerifyTokenManager;
.super Ljava/lang/Object;
.source "VerifyTokenManager.java"

# interfaces
.implements Lcom/ds/daisi/mvp/managers/BaseManager;


# static fields
.field private static final CHECKED_TOKEN_TYPE:Ljava/lang/String; = "2"

.field private static final GENERATOR_TOKEN_TYPE:Ljava/lang/String; = "1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/mvp/managers/VerifyTokenManager;Lorg/json/JSONObject;Ljava/lang/String;Lcom/ds/daisi/mvp/managers/Callback;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/ds/daisi/mvp/managers/VerifyTokenManager;->parseJson(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ds/daisi/mvp/managers/Callback;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private checkSign(Ljava/lang/String;Lcom/ds/daisi/entity/TokenBean;)Lcom/ds/daisi/entity/TokenBean;
    .locals 5

    .line 219
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 220
    const-class v1, Lcom/ds/daisi/entity/LotteryDataEntry;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ds/daisi/entity/LotteryDataEntry;

    .line 221
    iget-object v0, p2, Lcom/ds/daisi/entity/TokenBean;->RCode:Ljava/lang/String;

    .line 222
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/ds/daisi/entity/LotteryDataEntry;->getStrFromArray(I)Ljava/lang/String;

    move-result-object p1

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"Result\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/ds/daisi/entity/TokenBean;->CheckInfo:Lcom/ds/daisi/entity/TokenBean$TokenInfo;

    iget-object v2, v2, Lcom/ds/daisi/entity/TokenBean$TokenInfo;->Result:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",\"Info\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/ds/daisi/entity/TokenBean;->CheckInfo:Lcom/ds/daisi/entity/TokenBean$TokenInfo;

    iget-object v2, v2, Lcom/ds/daisi/entity/TokenBean$TokenInfo;->Info:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"ExpireDate\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/ds/daisi/entity/TokenBean;->CheckInfo:Lcom/ds/daisi/entity/TokenBean$TokenInfo;

    iget-object v2, v2, Lcom/ds/daisi/entity/TokenBean$TokenInfo;->ExpireDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jsonCheckInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check="

    .line 228
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&RCode="

    .line 229
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&Codes="

    .line 230
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sb.toString:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ds/daisi/util/MD5Util;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "md5Sign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iget-object v0, p2, Lcom/ds/daisi/entity/TokenBean;->Sign:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/ds/daisi/entity/TokenBean;->setCheckSign(Z)V

    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "equals="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ds/daisi/entity/TokenBean;->getCheckSign()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2
.end method

.method private generateData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x7

    .line 52
    :try_start_0
    invoke-static {v0}, Lcom/ds/daisi/util/AppDeviceUtils;->getRandom(I)I

    move-result v0

    .line 53
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 54
    const-class v2, Lcom/ds/daisi/entity/LotteryDataEntry;

    invoke-virtual {v1, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ds/daisi/entity/LotteryDataEntry;

    .line 55
    invoke-virtual {p2, v0}, Lcom/ds/daisi/entity/LotteryDataEntry;->getStrFromArray(I)Ljava/lang/String;

    move-result-object p2

    .line 56
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type="

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&Token="

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&AppId="

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f090122

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&UserName="

    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ds/daisi/entity/AccountPhone;->phone:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&RCode="

    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&Codes="

    .line 64
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 65
    invoke-static {p2}, Lcom/ds/daisi/util/MD5Util;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 66
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "Type"

    .line 67
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "AppId"

    .line 68
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "Token"

    .line 69
    invoke-virtual {v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "UserName"

    .line 70
    sget-object p4, Lcom/ds/daisi/entity/AccountPhone;->phone:Ljava/lang/String;

    invoke-virtual {v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "RCode"

    .line 71
    invoke-virtual {v1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "Sign"

    .line 72
    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "data to jsonString"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/ds/daisi/constant/Constants;->DESkey:[B

    sget-object p4, Lcom/ds/daisi/constant/Constants;->DESIV:[B

    invoke-static {p2, p3, p4}, Lcom/ds/daisi/util/DesUtil;->encode(Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object p2

    .line 75
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const-string p4, "data"

    .line 76
    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p2

    .line 82
    invoke-static {p2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const p2, 0x7f090117

    .line 83
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p2

    .line 79
    invoke-static {p2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const p2, 0x7f0900da

    .line 80
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 94
    sget-object v0, Lcom/ds/daisi/net/URL/MyBuildConfig;->AUTHORITY_VERIFY:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ds/daisi/net/URL/MyBuildConfig;->getBuilder(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private parseJson(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ds/daisi/mvp/managers/Callback;Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/ds/daisi/mvp/managers/Callback<",
            "Lcom/ds/daisi/entity/TokenBean;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    const-string v0, "Code"

    .line 172
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Msg"

    .line 173
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "0"

    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Data"

    .line 176
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 177
    sget-object v0, Lcom/ds/daisi/constant/Constants;->DESkey:[B

    sget-object v1, Lcom/ds/daisi/constant/Constants;->DESIV:[B

    invoke-static {p1, v0, v1}, Lcom/ds/daisi/util/DesUtil;->decode(Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object p1

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "CheckInfo"

    .line 180
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 183
    const-class v1, Lcom/ds/daisi/entity/TokenBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ds/daisi/entity/TokenBean;

    const-string v0, "1"

    .line 184
    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p1, Lcom/ds/daisi/entity/TokenBean;->CheckInfo:Lcom/ds/daisi/entity/TokenBean$TokenInfo;

    iget-object v0, v0, Lcom/ds/daisi/entity/TokenBean$TokenInfo;->Result:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0, p2, p1}, Lcom/ds/daisi/mvp/managers/VerifyTokenManager;->checkSign(Ljava/lang/String;Lcom/ds/daisi/entity/TokenBean;)Lcom/ds/daisi/entity/TokenBean;

    move-result-object p1

    goto :goto_1

    .line 188
    :cond_0
    invoke-virtual {p1, v3}, Lcom/ds/daisi/entity/TokenBean;->setCheckSign(Z)V

    goto :goto_1

    .line 191
    :cond_1
    iget-object v0, p1, Lcom/ds/daisi/entity/TokenBean;->CheckInfo:Lcom/ds/daisi/entity/TokenBean$TokenInfo;

    iget-object v0, v0, Lcom/ds/daisi/entity/TokenBean$TokenInfo;->Result:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/ds/daisi/entity/TokenBean;->CheckInfo:Lcom/ds/daisi/entity/TokenBean$TokenInfo;

    iget-object v0, v0, Lcom/ds/daisi/entity/TokenBean$TokenInfo;->Result:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {p1, v3}, Lcom/ds/daisi/entity/TokenBean;->setCheckSign(Z)V

    goto :goto_1

    .line 192
    :cond_3
    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/ds/daisi/mvp/managers/VerifyTokenManager;->checkSign(Ljava/lang/String;Lcom/ds/daisi/entity/TokenBean;)Lcom/ds/daisi/entity/TokenBean;

    move-result-object p1

    .line 197
    :goto_1
    invoke-interface {p3, p1}, Lcom/ds/daisi/mvp/managers/Callback;->finish(Ljava/lang/Object;)V

    goto :goto_2

    .line 199
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f09014f

    .line 200
    invoke-virtual {p4, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    :cond_5
    invoke-static {p4, v1}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 207
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const p2, 0x7f090091

    invoke-virtual {p4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "--"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/ds/daisi/util/ToastUtils;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 205
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public cancelTag()V
    .locals 2

    .line 101
    invoke-static {}, Lcom/ds/daisi/net/volley/VolleyRequestQueue;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    const-class v1, Lcom/ds/daisi/mvp/managers/VerifyTokenManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 102
    invoke-static {}, Lcom/ds/daisi/net/volley/VolleyRequestQueue;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    const-class v1, Lcom/ds/daisi/mvp/managers/VerifyTokenManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    return-void
.end method

.method public checkToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ds/daisi/mvp/managers/Callback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ds/daisi/mvp/managers/Callback<",
            "Lcom/ds/daisi/entity/TokenBean;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "Token"

    .line 145
    invoke-direct {p0, v0}, Lcom/ds/daisi/mvp/managers/VerifyTokenManager;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    .line 146
    invoke-direct {p0, p1, p3, v1, p2}, Lcom/ds/daisi/mvp/managers/VerifyTokenManager;->generateData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/ds/daisi/mvp/managers/VerifyTokenManager;->cancelTag()V

    .line 151
    const-class v1, Lcom/ds/daisi/mvp/managers/VerifyTokenManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lcom/ds/daisi/mvp/managers/VerifyTokenManager$2;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/ds/daisi/mvp/managers/VerifyTokenManager$2;-><init>(Lcom/ds/daisi/mvp/managers/VerifyTokenManager;Landroid/content/Context;Ljava/lang/String;Lcom/ds/daisi/mvp/managers/Callback;Landroid/content/Context;)V

    invoke-static {v0, v1, p2, v8}, Lcom/ds/daisi/net/volley/VolleyManager;->requestJsonObjectPost(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ds/daisi/net/volley/VolleyJsonRequestManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 165
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public generateToken(Landroid/content/Context;Ljava/lang/String;Lcom/ds/daisi/mvp/managers/Callback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/ds/daisi/mvp/managers/Callback<",
            "Lcom/ds/daisi/entity/TokenBean;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "Token"

    .line 113
    invoke-direct {p0, v0}, Lcom/ds/daisi/mvp/managers/VerifyTokenManager;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "zzz"

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "1"

    const-string v2, ""

    .line 115
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/ds/daisi/mvp/managers/VerifyTokenManager;->generateData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/ds/daisi/mvp/managers/VerifyTokenManager;->cancelTag()V

    .line 120
    const-class v2, Lcom/ds/daisi/mvp/managers/VerifyTokenManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Lcom/ds/daisi/mvp/managers/VerifyTokenManager$1;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/ds/daisi/mvp/managers/VerifyTokenManager$1;-><init>(Lcom/ds/daisi/mvp/managers/VerifyTokenManager;Landroid/content/Context;Ljava/lang/String;Lcom/ds/daisi/mvp/managers/Callback;Landroid/content/Context;)V

    invoke-static {v0, v2, v1, v9}, Lcom/ds/daisi/net/volley/VolleyManager;->requestJsonObjectPost(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ds/daisi/net/volley/VolleyJsonRequestManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 132
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

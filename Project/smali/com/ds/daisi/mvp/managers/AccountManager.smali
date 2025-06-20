.class public Lcom/ds/daisi/mvp/managers/AccountManager;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Lcom/ds/daisi/mvp/managers/BaseManager;


# static fields
.field public static final ACCOUNT_TAG:Ljava/lang/String; = "AccountManager"

.field public static final CODE_TYPE_FORGET_PASSWORD:Ljava/lang/String; = "2"

.field public static final CODE_TYPE_REGISTER:Ljava/lang/String; = "1"

.field public static final CODE_TYPE_RESET_PASSWORD:Ljava/lang/String; = "3"

.field public static final TYPE_ALTER_PASSWORD:Ljava/lang/String; = "5"

.field public static final TYPE_CHECKED_ACCOUNT_DUPLICATED:Ljava/lang/String; = "7"

.field public static final TYPE_FIND_PASSWORD:Ljava/lang/String; = "2"

.field public static final TYPE_FIND_PASSWORD_CODE:Ljava/lang/String; = "6"

.field public static final TYPE_GET_PHONE:Ljava/lang/String; = "4"

.field public static final TYPE_LICENSE:Ljava/lang/String; = "3"

.field public static final TYPE_LOGIN:Ljava/lang/String; = "0"

.field public static final TYPE_REGISTER:Ljava/lang/String; = "1"


# instance fields
.field private jsonObjectRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

.field private mCallback:Lcom/ds/daisi/mvp/managers/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ds/daisi/mvp/managers/Callback<",
            "Lcom/ds/daisi/entity/AccountResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/mvp/managers/AccountManager;)Lcom/ds/daisi/mvp/managers/Callback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ds/daisi/mvp/managers/AccountManager;->mCallback:Lcom/ds/daisi/mvp/managers/Callback;

    return-object p0
.end method

.method private requestPostWithAccount(Lcom/ds/daisi/entity/AccountUser;Lcom/ds/daisi/mvp/managers/Callback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ds/daisi/entity/AccountUser;",
            "Lcom/ds/daisi/mvp/managers/Callback<",
            "Lcom/ds/daisi/entity/AccountResult;",
            ">;)V"
        }
    .end annotation

    .line 105
    iput-object p2, p0, Lcom/ds/daisi/mvp/managers/AccountManager;->mCallback:Lcom/ds/daisi/mvp/managers/Callback;

    .line 106
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 107
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 108
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8f6c\u5316\u4e3ajson\u540e\u7684\u6570\u636e\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p2, v1}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 111
    :try_start_0
    sget-object v1, Lcom/ds/daisi/constant/Constants;->DESkey:[B

    sget-object v2, Lcom/ds/daisi/constant/Constants;->DESIV:[B

    invoke-static {p1, v1, v2}, Lcom/ds/daisi/util/DesUtil;->encode(Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object p1

    .line 112
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"data\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Des\u52a0\u5bc6\u540e\u53c8JsonObject\u8f6c\u5316\u4e3a\u5b57\u7b26\u4e32\u540e\u7684\u6570\u636e\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, p2

    .line 115
    :goto_0
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    move-object v5, v1

    .line 117
    invoke-static {}, Lcom/ds/daisi/net/volley/VolleyRequestQueue;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object p1

    const-string p2, "AccountManager"

    invoke-virtual {p1, p2}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 118
    new-instance p1, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v3, 0x1

    sget-object v4, Lcom/ds/daisi/net/URL/URLConstant;->ACCOUNT_URL:Ljava/lang/String;

    new-instance v6, Lcom/ds/daisi/mvp/managers/AccountManager$1;

    invoke-direct {v6, p0}, Lcom/ds/daisi/mvp/managers/AccountManager$1;-><init>(Lcom/ds/daisi/mvp/managers/AccountManager;)V

    new-instance v7, Lcom/ds/daisi/mvp/managers/AccountManager$2;

    invoke-direct {v7, p0}, Lcom/ds/daisi/mvp/managers/AccountManager$2;-><init>(Lcom/ds/daisi/mvp/managers/AccountManager;)V

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    iput-object p1, p0, Lcom/ds/daisi/mvp/managers/AccountManager;->jsonObjectRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    .line 132
    iget-object p1, p0, Lcom/ds/daisi/mvp/managers/AccountManager;->jsonObjectRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    const-string p2, "AccountManager"

    invoke-virtual {p1, p2}, Lcom/android/volley/toolbox/JsonObjectRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 133
    iget-object p1, p0, Lcom/ds/daisi/mvp/managers/AccountManager;->jsonObjectRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    invoke-virtual {p1, v0}, Lcom/android/volley/toolbox/JsonObjectRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    .line 134
    invoke-static {}, Lcom/ds/daisi/net/volley/VolleyRequestQueue;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object p1

    iget-object p2, p0, Lcom/ds/daisi/mvp/managers/AccountManager;->jsonObjectRequest:Lcom/android/volley/toolbox/JsonObjectRequest;

    invoke-virtual {p1, p2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method


# virtual methods
.method public alterPassword(Lcom/ds/daisi/entity/AccountUser;Lcom/ds/daisi/mvp/managers/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ds/daisi/entity/AccountUser;",
            "Lcom/ds/daisi/mvp/managers/Callback<",
            "Lcom/ds/daisi/entity/AccountResult;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/ds/daisi/mvp/managers/AccountManager;->requestPostWithAccount(Lcom/ds/daisi/entity/AccountUser;Lcom/ds/daisi/mvp/managers/Callback;)V

    return-void
.end method

.method public checkedAccountDuplicated(Lcom/ds/daisi/entity/AccountUser;Lcom/ds/daisi/mvp/managers/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ds/daisi/entity/AccountUser;",
            "Lcom/ds/daisi/mvp/managers/Callback<",
            "Lcom/ds/daisi/entity/AccountResult;",
            ">;)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/ds/daisi/mvp/managers/AccountManager;->requestPostWithAccount(Lcom/ds/daisi/entity/AccountUser;Lcom/ds/daisi/mvp/managers/Callback;)V

    return-void
.end method

.method public fillDataToAccount(Lorg/json/JSONObject;)Lcom/ds/daisi/entity/AccountResult;
    .locals 2

    .line 143
    new-instance v0, Lcom/ds/daisi/entity/AccountResult;

    invoke-direct {v0}, Lcom/ds/daisi/entity/AccountResult;-><init>()V

    :try_start_0
    const-string v1, "Code"

    .line 145
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ds/daisi/entity/AccountResult;->Code:Ljava/lang/String;

    const-string v1, "Msg"

    .line 146
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ds/daisi/entity/AccountResult;->Msg:Ljava/lang/String;

    const-string v1, "VerificationCode"

    .line 147
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ds/daisi/entity/AccountResult;->VerificationCode:Ljava/lang/String;

    const-string v1, "ExpireDate"

    .line 148
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ds/daisi/entity/AccountResult;->ExpireDate:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 150
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public findPassword(Lcom/ds/daisi/entity/AccountUser;Lcom/ds/daisi/mvp/managers/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ds/daisi/entity/AccountUser;",
            "Lcom/ds/daisi/mvp/managers/Callback<",
            "Lcom/ds/daisi/entity/AccountResult;",
            ">;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/ds/daisi/mvp/managers/AccountManager;->requestPostWithAccount(Lcom/ds/daisi/entity/AccountUser;Lcom/ds/daisi/mvp/managers/Callback;)V

    return-void
.end method

.method public getPhoneByAccount(Lcom/ds/daisi/entity/AccountUser;Lcom/ds/daisi/mvp/managers/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ds/daisi/entity/AccountUser;",
            "Lcom/ds/daisi/mvp/managers/Callback<",
            "Lcom/ds/daisi/entity/AccountResult;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/ds/daisi/mvp/managers/AccountManager;->requestPostWithAccount(Lcom/ds/daisi/entity/AccountUser;Lcom/ds/daisi/mvp/managers/Callback;)V

    return-void
.end method

.method public login(Lcom/ds/daisi/entity/AccountUser;Lcom/ds/daisi/mvp/managers/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ds/daisi/entity/AccountUser;",
            "Lcom/ds/daisi/mvp/managers/Callback<",
            "Lcom/ds/daisi/entity/AccountResult;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/ds/daisi/mvp/managers/AccountManager;->requestPostWithAccount(Lcom/ds/daisi/entity/AccountUser;Lcom/ds/daisi/mvp/managers/Callback;)V

    return-void
.end method

.method public phoneCodes(Lcom/ds/daisi/entity/AccountUser;Lcom/ds/daisi/mvp/managers/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ds/daisi/entity/AccountUser;",
            "Lcom/ds/daisi/mvp/managers/Callback<",
            "Lcom/ds/daisi/entity/AccountResult;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/ds/daisi/mvp/managers/AccountManager;->requestPostWithAccount(Lcom/ds/daisi/entity/AccountUser;Lcom/ds/daisi/mvp/managers/Callback;)V

    return-void
.end method

.method public register(Lcom/ds/daisi/entity/AccountUser;Lcom/ds/daisi/mvp/managers/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ds/daisi/entity/AccountUser;",
            "Lcom/ds/daisi/mvp/managers/Callback<",
            "Lcom/ds/daisi/entity/AccountResult;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/ds/daisi/mvp/managers/AccountManager;->requestPostWithAccount(Lcom/ds/daisi/entity/AccountUser;Lcom/ds/daisi/mvp/managers/Callback;)V

    return-void
.end method

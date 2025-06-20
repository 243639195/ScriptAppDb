.class public Lcom/ds/daisi/net/xutils/XUtilsHttpClient;
.super Ljava/lang/Object;
.source "XUtilsHttpClient.java"


# static fields
.field private static final DEFAULT_CONNECTION_TIMEOUT:I = 0x2710

.field private static final DEFAULT_SOCKET_TIMEOUT:I = 0x2710

.field public static final PROTOCOL_HTTP:Ljava/lang/String; = "http"

.field private static httpUtils:Lcom/lidroid/xutils/HttpUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstence(Landroid/content/Context;)Lcom/lidroid/xutils/HttpUtils;
    .locals 3

    const-class v0, Lcom/ds/daisi/net/xutils/XUtilsHttpClient;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/ds/daisi/net/xutils/XUtilsHttpClient;->httpUtils:Lcom/lidroid/xutils/HttpUtils;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lcom/lidroid/xutils/HttpUtils;

    const/16 v2, 0x2710

    invoke-direct {v1, v2}, Lcom/lidroid/xutils/HttpUtils;-><init>(I)V

    sput-object v1, Lcom/ds/daisi/net/xutils/XUtilsHttpClient;->httpUtils:Lcom/lidroid/xutils/HttpUtils;

    .line 30
    sget-object v1, Lcom/ds/daisi/net/xutils/XUtilsHttpClient;->httpUtils:Lcom/lidroid/xutils/HttpUtils;

    invoke-virtual {v1, v2}, Lcom/lidroid/xutils/HttpUtils;->configSoTimeout(I)Lcom/lidroid/xutils/HttpUtils;

    .line 31
    sget-object v1, Lcom/ds/daisi/net/xutils/XUtilsHttpClient;->httpUtils:Lcom/lidroid/xutils/HttpUtils;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lcom/lidroid/xutils/HttpUtils;->configResponseTextCharset(Ljava/lang/String;)Lcom/lidroid/xutils/HttpUtils;

    .line 33
    new-instance v1, Lcom/lidroid/xutils/util/PreferencesCookieStore;

    invoke-direct {v1, p0}, Lcom/lidroid/xutils/util/PreferencesCookieStore;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {v1}, Lcom/lidroid/xutils/util/PreferencesCookieStore;->clear()V

    .line 35
    sget-object p0, Lcom/ds/daisi/net/xutils/XUtilsHttpClient;->httpUtils:Lcom/lidroid/xutils/HttpUtils;

    invoke-virtual {p0, v1}, Lcom/lidroid/xutils/HttpUtils;->configCookieStore(Lorg/apache/http/client/CookieStore;)Lcom/lidroid/xutils/HttpUtils;

    .line 37
    :cond_0
    sget-object p0, Lcom/ds/daisi/net/xutils/XUtilsHttpClient;->httpUtils:Lcom/lidroid/xutils/HttpUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0

    throw p0
.end method

.method public static getURL(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 43
    :try_start_0
    invoke-static/range {v0 .. v5}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 47
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 45
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

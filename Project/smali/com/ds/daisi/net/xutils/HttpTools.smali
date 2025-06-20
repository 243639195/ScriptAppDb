.class public Lcom/ds/daisi/net/xutils/HttpTools;
.super Ljava/lang/Object;
.source "HttpTools.java"


# static fields
.field public static final ACTION_ADDUSER:Ljava/lang/String; = "adduser"

.field public static final ACTION_CHECKEMAIL:Ljava/lang/String; = "checkemail"

.field public static final ACTION_CHECKNAME:Ljava/lang/String; = "checkname"

.field public static final ACTION_CHECKUSERLOGIN:Ljava/lang/String; = "checkuserlogin"

.field public static final APID:Ljava/lang/String; = "MQ1CHS"

.field public static final APKEY:Ljava/lang/String; = "516cf79ca36f66e28a9caa8ad8a4c7bc"

.field public static final DATEKEY:Ljava/lang/String; = "YuFjNTBhMn"

.field public static final ERRCODE_EMAILEXIST:I = -0x6

.field public static final ERRCODE_EMAILFORMAT:I = -0x4

.field public static final ERRCODE_EMAILILLEGAL:I = -0x5

.field public static final ERRCODE_USERNAMEEXIST:I = -0x3

.field public static final ERRCODE_USERNAMEFORMAT:I = -0x1

.field public static final ERRCODE_USERNAMEORPASSWORD:I = -0x2

.field public static final HTTP_END:Ljava/lang/String; = "&id=MQ1CHS"

.field public static final HTTP_HEAD:Ljava/lang/String; = "http://bbs.anjian.com/api.php?mod=u&egg="

.field public static final HTTP_TIME:Ljava/lang/String; = "http://bbs.anjian.com/api.php?mod=u&gt"

.field public static final JSON_HTTPRESULT_BOOM:Ljava/lang/String; = "boom"

.field public static final JSON_HTTPRESULT_ERRCODE:Ljava/lang/String; = "errcode"

.field public static final JSON_HTTPRESULT_RET:Ljava/lang/String; = "ret"

.field public static final JSON_USER_UID:Ljava/lang/String; = "uid"

.field public static final JSON_USER_USERNAME:Ljava/lang/String; = "username"

.field public static final REQUEST_SUCCEED:I = 0x3e8

.field public static final RET_ERROR:I = 0x2

.field public static final RET_REFUSE:I = 0x1

.field public static final RET_SUCCEED:I = 0x0

.field public static final SC_UNKNOW:I = -0x63


# instance fields
.field private final HTTPSTATUS_INTERNAL_SERVER_ERROR:Ljava/lang/String;

.field private final HTTPSTATUS_REQUEST_TIMEOUT:Ljava/lang/String;

.field private final REQUESTEXCEPTION_CLIENTPROTOCOL:Ljava/lang/String;

.field private final REQUESTEXCEPTION_CONNECTTIMEOUT:Ljava/lang/String;

.field private final REQUESTEXCEPTION_IO:Ljava/lang/String;

.field private final REQUESTEXCEPTION_UNKNOW:Ljava/lang/String;

.field private final REQUESTEXCEPTION_UNKNOWNHOST:Ljava/lang/String;

.field private androidHttpClient:Landroid/net/http/AndroidHttpClient;

.field private commonLog:Lcom/ds/daisi/log/CommonLog;

.field private context:Landroid/content/Context;

.field public httpstatus:I

.field private strResult:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/ds/daisi/log/CommonLog;

    invoke-direct {v0}, Lcom/ds/daisi/log/CommonLog;-><init>()V

    iput-object v0, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    const-string v0, "\u672a\u77e5\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u540e\u8bbf\u95ee\uff01"

    .line 46
    iput-object v0, p0, Lcom/ds/daisi/net/xutils/HttpTools;->REQUESTEXCEPTION_UNKNOW:Ljava/lang/String;

    const-string v0, "\u8fde\u63a5\u8d85\u65f6\uff01"

    .line 47
    iput-object v0, p0, Lcom/ds/daisi/net/xutils/HttpTools;->REQUESTEXCEPTION_CONNECTTIMEOUT:Ljava/lang/String;

    const-string v0, "\u534f\u8bae\u9519\u8bef\uff01"

    .line 48
    iput-object v0, p0, Lcom/ds/daisi/net/xutils/HttpTools;->REQUESTEXCEPTION_CLIENTPROTOCOL:Ljava/lang/String;

    const-string v0, "\u8bbf\u95ee\u4e0d\u5230\u670d\u52a1\u5668\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\uff01"

    .line 49
    iput-object v0, p0, Lcom/ds/daisi/net/xutils/HttpTools;->REQUESTEXCEPTION_UNKNOWNHOST:Ljava/lang/String;

    const-string v0, "IO\u5f02\u5e38\uff01"

    .line 50
    iput-object v0, p0, Lcom/ds/daisi/net/xutils/HttpTools;->REQUESTEXCEPTION_IO:Ljava/lang/String;

    const-string v0, "\u8bf7\u6c42\u8d85\u65f6\uff01"

    .line 52
    iput-object v0, p0, Lcom/ds/daisi/net/xutils/HttpTools;->HTTPSTATUS_REQUEST_TIMEOUT:Ljava/lang/String;

    const-string v0, "\u670d\u52a1\u5668\u5185\u90e8\u9519\u8bef\uff01"

    .line 53
    iput-object v0, p0, Lcom/ds/daisi/net/xutils/HttpTools;->HTTPSTATUS_INTERNAL_SERVER_ERROR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/ds/daisi/net/xutils/HttpTools;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->context:Landroid/content/Context;

    return-void
.end method

.method public static generateUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    if-nez p1, :cond_0

    .line 299
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 301
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 303
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :catch_1
    move-exception v1

    .line 305
    :goto_1
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 308
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "&"

    const-string v1, "?"

    .line 309
    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method


# virtual methods
.method public doGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/ds/daisi/net/xutils/HttpTools;->androidHttpClient:Landroid/net/http/AndroidHttpClient;

    if-nez v0, :cond_0

    const-string v0, "Android"

    .line 135
    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/net/xutils/HttpTools;->androidHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 138
    :cond_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 141
    :try_start_0
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->androidHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {p1, v0}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 143
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 145
    iput v2, p0, Lcom/ds/daisi/net/xutils/HttpTools;->httpstatus:I

    .line 146
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    .line 147
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8fd4\u56de\u7ed3\u679cOK>>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 149
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1f4

    if-ne v1, v2, :cond_2

    .line 150
    iput v2, p0, Lcom/ds/daisi/net/xutils/HttpTools;->httpstatus:I

    const-string p1, "\u670d\u52a1\u5668\u5185\u90e8\u9519\u8bef\uff01"

    .line 151
    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    .line 152
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u670d\u52a1\u5668\u5185\u90e8\u9519\u8bef>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 154
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x198

    if-ne v1, v2, :cond_3

    .line 155
    iput v2, p0, Lcom/ds/daisi/net/xutils/HttpTools;->httpstatus:I

    const-string p1, "\u8bf7\u6c42\u8d85\u65f6\uff01"

    .line 156
    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    .line 157
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \u8bf7\u6c42\u8d85\u65f6>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 159
    :cond_3
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x12e

    if-ne v1, v2, :cond_4

    .line 162
    iput v2, p0, Lcom/ds/daisi/net/xutils/HttpTools;->httpstatus:I

    const-string v1, "Location"

    .line 163
    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    .line 165
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "strResult>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const/16 v1, -0x63

    .line 167
    iput v1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->httpstatus:I

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bf7\u6c42\u9519\u8bef>>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    const-string p1, "\u672a\u77e5\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u540e\u8bbf\u95ee\uff01"

    .line 170
    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :goto_0
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 200
    invoke-virtual {p0}, Lcom/ds/daisi/net/xutils/HttpTools;->shutdownHttpClient()V

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 194
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    .line 195
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    const-string p1, "\u672a\u77e5\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u540e\u8bbf\u95ee\uff01"

    .line 196
    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    .line 197
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 189
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    .line 190
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    const-string p1, "IO\u5f02\u5e38\uff01"

    .line 191
    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    .line 192
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_2
    move-exception p1

    .line 184
    invoke-virtual {p1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    .line 185
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnknownHostException>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    const-string p1, "\u8bbf\u95ee\u4e0d\u5230\u670d\u52a1\u5668\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\uff01"

    .line 186
    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    .line 187
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnknownHostException>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_3
    move-exception p1

    .line 179
    invoke-virtual {p1}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    .line 180
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientProtocolException>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    const-string p1, "\u534f\u8bae\u9519\u8bef\uff01"

    .line 181
    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    .line 182
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientProtocolException>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_4
    move-exception p1

    .line 174
    invoke-virtual {p1}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    .line 175
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectTimeoutException>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    const-string p1, "\u8fde\u63a5\u8d85\u65f6\uff01"

    .line 176
    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    .line 177
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectTimeoutException>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 202
    :goto_1
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8fd4\u56de\u7ed3\u679c>>>>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 203
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    return-object p1

    .line 199
    :goto_2
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 200
    invoke-virtual {p0}, Lcom/ds/daisi/net/xutils/HttpTools;->shutdownHttpClient()V

    .line 201
    throw p1
.end method

.method public doGet(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 120
    invoke-static {p1, p2}, Lcom/ds/daisi/net/xutils/HttpTools;->generateUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ds/daisi/net/xutils/HttpTools;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public doPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/ds/daisi/net/xutils/HttpTools;->androidHttpClient:Landroid/net/http/AndroidHttpClient;

    if-nez v0, :cond_0

    const-string v0, "Android"

    .line 218
    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/net/xutils/HttpTools;->androidHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 221
    :cond_0
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 224
    :try_start_0
    new-instance p1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v1, "GBK"

    invoke-direct {p1, p2, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0, p1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 228
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->androidHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {p1, v0}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 229
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    .line 230
    iget-object v1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "statusCode>>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_1

    .line 233
    iput v1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->httpstatus:I

    .line 234
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x1f4

    if-ne p2, v1, :cond_2

    .line 238
    iput v1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->httpstatus:I

    const-string p1, "\u670d\u52a1\u5668\u5185\u90e8\u9519\u8bef\uff01"

    .line 239
    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    .line 240
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u670d\u52a1\u5668\u5185\u90e8\u9519\u8bef>>>"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x198

    if-ne p2, v1, :cond_3

    .line 243
    iput v1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->httpstatus:I

    const-string p1, "\u8bf7\u6c42\u8d85\u65f6\uff01"

    .line 244
    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    .line 245
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \u8bf7\u6c42\u8d85\u65f6>>>"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/16 p2, -0x63

    .line 247
    iput p2, p0, Lcom/ds/daisi/net/xutils/HttpTools;->httpstatus:I

    .line 248
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bf7\u6c42\u9519\u8bef>>>> "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    .line 249
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "else>>>"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    const-string p1, "\u672a\u77e5\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u540e\u8bbf\u95ee\uff01"

    .line 250
    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    .line 251
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "else>>>"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :goto_0
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 280
    invoke-virtual {p0}, Lcom/ds/daisi/net/xutils/HttpTools;->shutdownHttpClient()V

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 274
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    .line 275
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception>>>"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    const-string p1, "\u672a\u77e5\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u540e\u8bbf\u95ee\uff01"

    .line 276
    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    .line 277
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception>>>"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 269
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    .line 270
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IOException>>>"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    const-string p1, "IO\u5f02\u5e38\uff01"

    .line 271
    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    .line 272
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IOException>>>"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_2
    move-exception p1

    .line 264
    invoke-virtual {p1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    .line 265
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnknownHostException>>>"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    const-string p1, "\u8bbf\u95ee\u4e0d\u5230\u670d\u52a1\u5668\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\uff01"

    .line 266
    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    .line 267
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnknownHostException>>>"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_3
    move-exception p1

    .line 259
    invoke-virtual {p1}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    .line 260
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientProtocolException>>>"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    const-string p1, "\u534f\u8bae\u9519\u8bef\uff01"

    .line 261
    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    .line 262
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientProtocolException>>>"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_4
    move-exception p1

    .line 254
    invoke-virtual {p1}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    .line 255
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectTimeoutException>>>"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    const-string p1, "\u8fde\u63a5\u8d85\u65f6\uff01"

    .line 256
    iput-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    .line 257
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectTimeoutException>>>"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 283
    :goto_1
    iget-object p1, p0, Lcom/ds/daisi/net/xutils/HttpTools;->strResult:Ljava/lang/String;

    return-object p1

    .line 279
    :goto_2
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 280
    invoke-virtual {p0}, Lcom/ds/daisi/net/xutils/HttpTools;->shutdownHttpClient()V

    .line 281
    throw p1
.end method

.method public shutdownHttpClient()V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/ds/daisi/net/xutils/HttpTools;->androidHttpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/ds/daisi/net/xutils/HttpTools;->androidHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/ds/daisi/net/xutils/HttpTools;->androidHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/ds/daisi/net/xutils/HttpTools;->androidHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    const/4 v0, 0x0

    .line 328
    iput-object v0, p0, Lcom/ds/daisi/net/xutils/HttpTools;->androidHttpClient:Landroid/net/http/AndroidHttpClient;

    :cond_1
    return-void
.end method

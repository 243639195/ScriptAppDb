.class public Lorg/wlf/filedownloader/file_download/base/HttpFailReason;
.super Lorg/wlf/filedownloader/base/UrlFailReason;
.source "HttpFailReason.java"


# static fields
.field public static final TYPE_NETWORK_DENIED:Ljava/lang/String;

.field public static final TYPE_NETWORK_TIMEOUT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/file_download/base/HttpFailReason;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_NETWORK_DENIED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/file_download/base/HttpFailReason;->TYPE_NETWORK_DENIED:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/file_download/base/HttpFailReason;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_NETWORK_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/file_download/base/HttpFailReason;->TYPE_NETWORK_TIMEOUT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "detailMessage"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lorg/wlf/filedownloader/base/UrlFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lorg/wlf/filedownloader/base/UrlFailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onInitTypeWithOriginalThrowable(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lorg/wlf/filedownloader/base/UrlFailReason;->onInitTypeWithOriginalThrowable(Ljava/lang/Throwable;)V

    .line 40
    if-nez p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_2

    .line 45
    sget-object v0, Lorg/wlf/filedownloader/file_download/base/HttpFailReason;->TYPE_NETWORK_TIMEOUT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/wlf/filedownloader/file_download/base/HttpFailReason;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_2
    instance-of v0, p1, Ljava/net/ConnectException;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_4

    .line 47
    :cond_3
    sget-object v0, Lorg/wlf/filedownloader/file_download/base/HttpFailReason;->TYPE_NETWORK_DENIED:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/wlf/filedownloader/file_download/base/HttpFailReason;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_4
    instance-of v0, p1, Ljava/net/SocketException;

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lorg/wlf/filedownloader/file_download/base/HttpFailReason;->TYPE_NETWORK_DENIED:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/wlf/filedownloader/file_download/base/HttpFailReason;->setType(Ljava/lang/String;)V

    goto :goto_0
.end method

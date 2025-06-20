.class public abstract Lorg/wlf/filedownloader/base/UrlFailReason;
.super Lorg/wlf/filedownloader/base/FailReason;
.source "UrlFailReason.java"


# instance fields
.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p2}, Lorg/wlf/filedownloader/base/FailReason;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/base/UrlFailReason;->init(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "detailMessage"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p2, p3}, Lorg/wlf/filedownloader/base/FailReason;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/base/UrlFailReason;->init(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "detailMessage"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 38
    invoke-direct {p0, p2, p3}, Lorg/wlf/filedownloader/base/FailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/base/UrlFailReason;->init(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "detailMessage"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p2, p3, p4}, Lorg/wlf/filedownloader/base/FailReason;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/base/UrlFailReason;->init(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 43
    invoke-direct {p0, p2}, Lorg/wlf/filedownloader/base/FailReason;-><init>(Ljava/lang/Throwable;)V

    .line 44
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/base/UrlFailReason;->init(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p2, p3}, Lorg/wlf/filedownloader/base/FailReason;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/base/UrlFailReason;->init(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method private init(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lorg/wlf/filedownloader/base/UrlFailReason;->mUrl:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/wlf/filedownloader/base/UrlFailReason;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected final setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/wlf/filedownloader/base/UrlFailReason;->mUrl:Ljava/lang/String;

    .line 60
    return-void
.end method

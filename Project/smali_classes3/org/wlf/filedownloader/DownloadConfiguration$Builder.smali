.class public Lorg/wlf/filedownloader/DownloadConfiguration$Builder;
.super Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
.source "DownloadConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/DownloadConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;-><init>(Lorg/wlf/filedownloader/DownloadConfiguration$1;)V

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$Builder;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    .line 33
    return-object p0
.end method

.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lorg/wlf/filedownloader/DownloadConfiguration$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addHeaders(Ljava/util/Map;)Lorg/wlf/filedownloader/DownloadConfiguration$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/wlf/filedownloader/DownloadConfiguration$Builder;"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->addHeaders(Ljava/util/Map;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    .line 45
    return-object p0
.end method

.method public bridge synthetic addHeaders(Ljava/util/Map;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration$Builder;->addHeaders(Ljava/util/Map;)Lorg/wlf/filedownloader/DownloadConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lorg/wlf/filedownloader/DownloadConfiguration;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->build()Lorg/wlf/filedownloader/DownloadConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public configConnectTimeout(I)Lorg/wlf/filedownloader/DownloadConfiguration$Builder;
    .locals 0
    .param p1, "connectTimeout"    # I

    .prologue
    .line 56
    invoke-super {p0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->configConnectTimeout(I)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    .line 57
    return-object p0
.end method

.method public bridge synthetic configConnectTimeout(I)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration$Builder;->configConnectTimeout(I)Lorg/wlf/filedownloader/DownloadConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic configConnectTimeout(I)Lorg/wlf/filedownloader/base/BaseDownloadConfigBuilder;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration$Builder;->configConnectTimeout(I)Lorg/wlf/filedownloader/DownloadConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public configRequestMethod(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$Builder;
    .locals 0
    .param p1, "requestMethod"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->configRequestMethod(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    .line 63
    return-object p0
.end method

.method public bridge synthetic configRequestMethod(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration$Builder;->configRequestMethod(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public configRetryDownloadTimes(I)Lorg/wlf/filedownloader/DownloadConfiguration$Builder;
    .locals 0
    .param p1, "retryDownloadTimes"    # I

    .prologue
    .line 50
    invoke-super {p0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->configRetryDownloadTimes(I)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    .line 51
    return-object p0
.end method

.method public bridge synthetic configRetryDownloadTimes(I)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration$Builder;->configRetryDownloadTimes(I)Lorg/wlf/filedownloader/DownloadConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic configRetryDownloadTimes(I)Lorg/wlf/filedownloader/base/BaseDownloadConfigBuilder;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration$Builder;->configRetryDownloadTimes(I)Lorg/wlf/filedownloader/DownloadConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public replaceHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$Builder;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->replaceHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    .line 39
    return-object p0
.end method

.method public bridge synthetic replaceHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lorg/wlf/filedownloader/DownloadConfiguration$Builder;->replaceHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

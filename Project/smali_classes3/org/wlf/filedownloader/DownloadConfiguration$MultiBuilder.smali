.class public Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;
.super Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
.source "DownloadConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/DownloadConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiBuilder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;-><init>(Lorg/wlf/filedownloader/DownloadConfiguration$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1, p2}, Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    .line 75
    return-object p0
.end method

.method public bridge synthetic addHeaderWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1, p2, p3}, Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;->addHeaderWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addHeaderWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-super {p0, p1, p2, p3}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->addHeaderWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    .line 113
    return-object p0
.end method

.method public bridge synthetic addHeaders(Ljava/util/Map;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;->addHeaders(Ljava/util/Map;)Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addHeaders(Ljava/util/Map;)Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->addHeaders(Ljava/util/Map;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    .line 87
    return-object p0
.end method

.method public bridge synthetic addHeadersWithUrl(Ljava/lang/String;Ljava/util/Map;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1, p2}, Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;->addHeadersWithUrl(Ljava/lang/String;Ljava/util/Map;)Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addHeadersWithUrl(Ljava/lang/String;Ljava/util/Map;)Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;"
        }
    .end annotation

    .prologue
    .line 124
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0, p1, p2}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->addHeadersWithUrl(Ljava/lang/String;Ljava/util/Map;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    .line 125
    return-object p0
.end method

.method public bridge synthetic build()Lorg/wlf/filedownloader/DownloadConfiguration;
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->build()Lorg/wlf/filedownloader/DownloadConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic configConnectTimeout(I)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;->configConnectTimeout(I)Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;

    move-result-object v0

    return-object v0
.end method

.method public configConnectTimeout(I)Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;
    .locals 0
    .param p1, "connectTimeout"    # I

    .prologue
    .line 98
    invoke-super {p0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->configConnectTimeout(I)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    .line 99
    return-object p0
.end method

.method public bridge synthetic configConnectTimeout(I)Lorg/wlf/filedownloader/base/BaseDownloadConfigBuilder;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;->configConnectTimeout(I)Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic configConnectTimeoutWithUrl(Ljava/lang/String;I)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1, p2}, Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;->configConnectTimeoutWithUrl(Ljava/lang/String;I)Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;

    move-result-object v0

    return-object v0
.end method

.method public configConnectTimeoutWithUrl(Ljava/lang/String;I)Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "connectTimeout"    # I

    .prologue
    .line 136
    invoke-super {p0, p1, p2}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->configConnectTimeoutWithUrl(Ljava/lang/String;I)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    .line 137
    return-object p0
.end method

.method public bridge synthetic configRequestMethod(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;->configRequestMethod(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;

    move-result-object v0

    return-object v0
.end method

.method public configRequestMethod(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;
    .locals 0
    .param p1, "requestMethod"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->configRequestMethod(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    .line 105
    return-object p0
.end method

.method public bridge synthetic configRequestMethodWithUrl(Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1, p2}, Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;->configRequestMethodWithUrl(Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;

    move-result-object v0

    return-object v0
.end method

.method public configRequestMethodWithUrl(Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "requestMethod"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-super {p0, p1, p2}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->configRequestMethodWithUrl(Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    .line 143
    return-object p0
.end method

.method public bridge synthetic configRetryDownloadTimes(I)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;->configRetryDownloadTimes(I)Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;

    move-result-object v0

    return-object v0
.end method

.method public configRetryDownloadTimes(I)Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;
    .locals 0
    .param p1, "retryDownloadTimes"    # I

    .prologue
    .line 92
    invoke-super {p0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->configRetryDownloadTimes(I)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    .line 93
    return-object p0
.end method

.method public bridge synthetic configRetryDownloadTimes(I)Lorg/wlf/filedownloader/base/BaseDownloadConfigBuilder;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;->configRetryDownloadTimes(I)Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic configRetryDownloadTimesWithUrl(Ljava/lang/String;I)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1, p2}, Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;->configRetryDownloadTimesWithUrl(Ljava/lang/String;I)Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;

    move-result-object v0

    return-object v0
.end method

.method public configRetryDownloadTimesWithUrl(Ljava/lang/String;I)Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "retryDownloadTimes"    # I

    .prologue
    .line 130
    invoke-super {p0, p1, p2}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->configRetryDownloadTimesWithUrl(Ljava/lang/String;I)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    .line 131
    return-object p0
.end method

.method public bridge synthetic replaceHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1, p2}, Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;->replaceHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replaceHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->replaceHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    .line 81
    return-object p0
.end method

.method public bridge synthetic replaceHeaderWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1, p2, p3}, Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;->replaceHeaderWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replaceHeaderWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$MultiBuilder;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-super {p0, p1, p2, p3}, Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;->replaceHeaderWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadConfiguration$InnerBuilder;

    .line 119
    return-object p0
.end method

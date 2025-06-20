.class public Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;
.super Ljava/lang/Object;
.source "DownloadStatusConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/DownloadStatusConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAutoRelease:Z

.field private mListenUrls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;

    .prologue
    .line 22
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;->mListenUrls:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;

    .prologue
    .line 22
    iget-boolean v0, p0, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;->mAutoRelease:Z

    return v0
.end method


# virtual methods
.method public addListenUrl(Ljava/lang/String;)Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p1}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;->mListenUrls:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;->mListenUrls:Ljava/util/Set;

    .line 44
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;->mListenUrls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_1
    return-object p0
.end method

.method public addListenUrls(Ljava/util/List;)Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v1, "needAdd":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 60
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Lorg/wlf/filedownloader/util/UrlUtil;->isUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    .end local v2    # "url":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 67
    iget-object v3, p0, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;->mListenUrls:Ljava/util/Set;

    if-nez v3, :cond_2

    .line 68
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;->mListenUrls:Ljava/util/Set;

    .line 70
    :cond_2
    iget-object v3, p0, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;->mListenUrls:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 72
    :cond_3
    return-object p0
.end method

.method public build()Lorg/wlf/filedownloader/DownloadStatusConfiguration;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/wlf/filedownloader/DownloadStatusConfiguration;-><init>(Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;Lorg/wlf/filedownloader/DownloadStatusConfiguration$1;)V

    return-object v0
.end method

.method public configAutoRelease(Z)Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;
    .locals 0
    .param p1, "autoRelease"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;->mAutoRelease:Z

    .line 84
    return-object p0
.end method

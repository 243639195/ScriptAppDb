.class public Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;
.super Ljava/lang/Object;
.source "DownloadFileChangeConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wlf/filedownloader/DownloadFileChangeConfiguration$1;,
        Lorg/wlf/filedownloader/DownloadFileChangeConfiguration$Builder;
    }
.end annotation


# instance fields
.field private mBuilder:Lorg/wlf/filedownloader/DownloadFileChangeConfiguration$Builder;


# direct methods
.method private constructor <init>(Lorg/wlf/filedownloader/DownloadFileChangeConfiguration$Builder;)V
    .locals 0
    .param p1, "builder"    # Lorg/wlf/filedownloader/DownloadFileChangeConfiguration$Builder;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadFileChangeConfiguration$Builder;

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Lorg/wlf/filedownloader/DownloadFileChangeConfiguration$Builder;Lorg/wlf/filedownloader/DownloadFileChangeConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/wlf/filedownloader/DownloadFileChangeConfiguration$Builder;
    .param p2, "x1"    # Lorg/wlf/filedownloader/DownloadFileChangeConfiguration$1;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;-><init>(Lorg/wlf/filedownloader/DownloadFileChangeConfiguration$Builder;)V

    return-void
.end method


# virtual methods
.method public getListenUrls()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadFileChangeConfiguration$Builder;

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadFileChangeConfiguration$Builder;

    invoke-static {v0}, Lorg/wlf/filedownloader/DownloadFileChangeConfiguration$Builder;->access$100(Lorg/wlf/filedownloader/DownloadFileChangeConfiguration$Builder;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public isTreadCallback()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadFileChangeConfiguration$Builder;

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadFileChangeConfiguration$Builder;

    invoke-static {v0}, Lorg/wlf/filedownloader/DownloadFileChangeConfiguration$Builder;->access$200(Lorg/wlf/filedownloader/DownloadFileChangeConfiguration$Builder;)Z

    move-result v0

    goto :goto_0
.end method

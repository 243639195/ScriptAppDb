.class public Lorg/wlf/filedownloader/DownloadStatusConfiguration;
.super Ljava/lang/Object;
.source "DownloadStatusConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wlf/filedownloader/DownloadStatusConfiguration$1;,
        Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;
    }
.end annotation


# instance fields
.field private mBuilder:Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;


# direct methods
.method private constructor <init>(Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;)V
    .locals 0
    .param p1, "builder"    # Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lorg/wlf/filedownloader/DownloadStatusConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;Lorg/wlf/filedownloader/DownloadStatusConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;
    .param p2, "x1"    # Lorg/wlf/filedownloader/DownloadStatusConfiguration$1;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/DownloadStatusConfiguration;-><init>(Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;)V

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
    .line 110
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadStatusConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadStatusConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;

    invoke-static {v0}, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;->access$100(Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public isAutoRelease()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadStatusConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadStatusConfiguration;->mBuilder:Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;

    invoke-static {v0}, Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;->access$200(Lorg/wlf/filedownloader/DownloadStatusConfiguration$Builder;)Z

    move-result v0

    goto :goto_0
.end method

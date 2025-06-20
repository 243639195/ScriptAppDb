.class public Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;
.super Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
.source "OnStopFileDownloadTaskListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StopDownloadFileTaskFailReason"
.end annotation


# static fields
.field public static final TYPE_TASK_HAS_BEEN_STOPPED:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_TASK_HAS_BEEN_STOPPED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;->TYPE_TASK_HAS_BEEN_STOPPED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "detailMessage"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected onInitTypeWithFailReason(Lorg/wlf/filedownloader/base/FailReason;)V
    .locals 2
    .param p1, "failReason"    # Lorg/wlf/filedownloader/base/FailReason;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->onInitTypeWithFailReason(Lorg/wlf/filedownloader/base/FailReason;)V

    .line 47
    if-nez p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    instance-of v1, p1, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 55
    check-cast v0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    .line 56
    .local v0, "fileDownloadStatusFailReason":Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;
    invoke-virtual {v0}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;->setType(Ljava/lang/String;)V

    goto :goto_0
.end method

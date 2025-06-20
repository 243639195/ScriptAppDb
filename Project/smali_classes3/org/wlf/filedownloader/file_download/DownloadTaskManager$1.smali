.class Lorg/wlf/filedownloader/file_download/DownloadTaskManager$1;
.super Ljava/lang/Object;
.source "DownloadTaskManager.java"

# interfaces
.implements Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->release(Lorg/wlf/filedownloader/file_download/DownloadTaskManager$OnReleaseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mFailed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsNotify:Z

.field private mSucceed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

.field final synthetic val$onReleaseListener:Lorg/wlf/filedownloader/file_download/DownloadTaskManager$OnReleaseListener;

.field final synthetic val$runningUrls:Ljava/util/Set;


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Ljava/util/Set;Lorg/wlf/filedownloader/file_download/DownloadTaskManager$OnReleaseListener;)V
    .locals 1

    .prologue
    .line 103
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$1;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iput-object p2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$1;->val$runningUrls:Ljava/util/Set;

    iput-object p3, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$1;->val$onReleaseListener:Lorg/wlf/filedownloader/file_download/DownloadTaskManager$OnReleaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$1;->mSucceed:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$1;->mFailed:Ljava/util/List;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$1;->mIsNotify:Z

    return-void
.end method


# virtual methods
.method public onStopFileDownloadTaskFailed(Ljava/lang/String;Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "failReason"    # Lorg/wlf/filedownloader/file_download/base/OnStopFileDownloadTaskListener$StopDownloadFileTaskFailReason;

    .prologue
    .line 125
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$1;->mFailed:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$1;->val$runningUrls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$1;->mSucceed:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$1;->mFailed:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 127
    iget-boolean v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$1;->mIsNotify:Z

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$1;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$1;->val$onReleaseListener:Lorg/wlf/filedownloader/file_download/DownloadTaskManager$OnReleaseListener;

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->access$000(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Lorg/wlf/filedownloader/file_download/DownloadTaskManager$OnReleaseListener;)V

    goto :goto_0
.end method

.method public onStopFileDownloadTaskSucceed(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$1;->mSucceed:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$1;->val$runningUrls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$1;->mSucceed:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$1;->mFailed:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 114
    iget-boolean v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$1;->mIsNotify:Z

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$1;->this$0:Lorg/wlf/filedownloader/file_download/DownloadTaskManager;

    iget-object v1, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$1;->val$onReleaseListener:Lorg/wlf/filedownloader/file_download/DownloadTaskManager$OnReleaseListener;

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/file_download/DownloadTaskManager;->access$000(Lorg/wlf/filedownloader/file_download/DownloadTaskManager;Lorg/wlf/filedownloader/file_download/DownloadTaskManager$OnReleaseListener;)V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/wlf/filedownloader/file_download/DownloadTaskManager$1;->mIsNotify:Z

    goto :goto_0
.end method

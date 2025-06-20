.class final Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper$2;
.super Ljava/lang/Object;
.source "OnDeleteDownloadFilesListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper;->onDeletingDownloadFiles(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadFileDeleting:Lorg/wlf/filedownloader/DownloadFileInfo;

.field final synthetic val$downloadFilesDeleted:Ljava/util/List;

.field final synthetic val$downloadFilesNeedDelete:Ljava/util/List;

.field final synthetic val$downloadFilesSkip:Ljava/util/List;

.field final synthetic val$onDeleteDownloadFilesListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper$2;->val$onDeleteDownloadFilesListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;

    iput-object p2, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper$2;->val$downloadFilesNeedDelete:Ljava/util/List;

    iput-object p3, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper$2;->val$downloadFilesDeleted:Ljava/util/List;

    iput-object p4, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper$2;->val$downloadFilesSkip:Ljava/util/List;

    iput-object p5, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper$2;->val$downloadFileDeleting:Lorg/wlf/filedownloader/DownloadFileInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 92
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper$2;->val$onDeleteDownloadFilesListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper$2;->val$onDeleteDownloadFilesListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;

    iget-object v1, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper$2;->val$downloadFilesNeedDelete:Ljava/util/List;

    iget-object v2, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper$2;->val$downloadFilesDeleted:Ljava/util/List;

    iget-object v3, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper$2;->val$downloadFilesSkip:Ljava/util/List;

    iget-object v4, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper$2;->val$downloadFileDeleting:Lorg/wlf/filedownloader/DownloadFileInfo;

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;->onDeletingDownloadFiles(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/wlf/filedownloader/DownloadFileInfo;)V

    goto :goto_0
.end method

.class final Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener$MainThreadHelper$3;
.super Ljava/lang/Object;
.source "OnMoveDownloadFilesListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener$MainThreadHelper;->onMoveDownloadFilesCompleted(Ljava/util/List;Ljava/util/List;Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadFilesMoved:Ljava/util/List;

.field final synthetic val$downloadFilesNeedMove:Ljava/util/List;

.field final synthetic val$onMoveDownloadFilesListener:Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener$MainThreadHelper$3;->val$onMoveDownloadFilesListener:Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;

    iput-object p2, p0, Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener$MainThreadHelper$3;->val$downloadFilesNeedMove:Ljava/util/List;

    iput-object p3, p0, Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener$MainThreadHelper$3;->val$downloadFilesMoved:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener$MainThreadHelper$3;->val$onMoveDownloadFilesListener:Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener$MainThreadHelper$3;->val$onMoveDownloadFilesListener:Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;

    iget-object v1, p0, Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener$MainThreadHelper$3;->val$downloadFilesNeedMove:Ljava/util/List;

    iget-object v2, p0, Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener$MainThreadHelper$3;->val$downloadFilesMoved:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFilesListener;->onMoveDownloadFilesCompleted(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

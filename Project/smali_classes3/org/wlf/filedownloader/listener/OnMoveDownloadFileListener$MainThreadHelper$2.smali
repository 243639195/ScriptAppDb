.class final Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MainThreadHelper$2;
.super Ljava/lang/Object;
.source "OnMoveDownloadFileListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MainThreadHelper;->onMoveDownloadFileSuccess(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadFileMoved:Lorg/wlf/filedownloader/DownloadFileInfo;

.field final synthetic val$onMoveDownloadFileListener:Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MainThreadHelper$2;->val$onMoveDownloadFileListener:Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;

    iput-object p2, p0, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MainThreadHelper$2;->val$downloadFileMoved:Lorg/wlf/filedownloader/DownloadFileInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MainThreadHelper$2;->val$onMoveDownloadFileListener:Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MainThreadHelper$2;->val$onMoveDownloadFileListener:Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;

    iget-object v1, p0, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener$MainThreadHelper$2;->val$downloadFileMoved:Lorg/wlf/filedownloader/DownloadFileInfo;

    invoke-interface {v0, v1}, Lorg/wlf/filedownloader/listener/OnMoveDownloadFileListener;->onMoveDownloadFileSuccess(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    goto :goto_0
.end method

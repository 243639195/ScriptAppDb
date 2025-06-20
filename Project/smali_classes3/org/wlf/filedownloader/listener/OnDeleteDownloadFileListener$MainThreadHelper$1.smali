.class final Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$MainThreadHelper$1;
.super Ljava/lang/Object;
.source "OnDeleteDownloadFileListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$MainThreadHelper;->onDeleteDownloadFilePrepared(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadFileNeedDelete:Lorg/wlf/filedownloader/DownloadFileInfo;

.field final synthetic val$onDeleteDownloadFileListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$MainThreadHelper$1;->val$onDeleteDownloadFileListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;

    iput-object p2, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$MainThreadHelper$1;->val$downloadFileNeedDelete:Lorg/wlf/filedownloader/DownloadFileInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$MainThreadHelper$1;->val$onDeleteDownloadFileListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$MainThreadHelper$1;->val$onDeleteDownloadFileListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;

    iget-object v1, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$MainThreadHelper$1;->val$downloadFileNeedDelete:Lorg/wlf/filedownloader/DownloadFileInfo;

    invoke-interface {v0, v1}, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;->onDeleteDownloadFilePrepared(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    goto :goto_0
.end method

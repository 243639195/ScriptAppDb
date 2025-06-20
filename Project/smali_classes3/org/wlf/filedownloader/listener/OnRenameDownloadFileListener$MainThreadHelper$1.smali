.class final Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$MainThreadHelper$1;
.super Ljava/lang/Object;
.source "OnRenameDownloadFileListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$MainThreadHelper;->onRenameDownloadFilePrepared(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadFileNeedRename:Lorg/wlf/filedownloader/DownloadFileInfo;

.field final synthetic val$onRenameDownloadFileListener:Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$MainThreadHelper$1;->val$onRenameDownloadFileListener:Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;

    iput-object p2, p0, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$MainThreadHelper$1;->val$downloadFileNeedRename:Lorg/wlf/filedownloader/DownloadFileInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$MainThreadHelper$1;->val$onRenameDownloadFileListener:Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;

    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$MainThreadHelper$1;->val$onRenameDownloadFileListener:Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;

    iget-object v1, p0, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$MainThreadHelper$1;->val$downloadFileNeedRename:Lorg/wlf/filedownloader/DownloadFileInfo;

    invoke-interface {v0, v1}, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;->onRenameDownloadFilePrepared(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    goto :goto_0
.end method

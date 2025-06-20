.class final Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$MainThreadHelper$3;
.super Ljava/lang/Object;
.source "OnRenameDownloadFileListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$MainThreadHelper;->onRenameDownloadFileFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadFileInfo:Lorg/wlf/filedownloader/DownloadFileInfo;

.field final synthetic val$failReason:Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;

.field final synthetic val$onRenameDownloadFileListener:Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$MainThreadHelper$3;->val$onRenameDownloadFileListener:Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;

    iput-object p2, p0, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$MainThreadHelper$3;->val$downloadFileInfo:Lorg/wlf/filedownloader/DownloadFileInfo;

    iput-object p3, p0, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$MainThreadHelper$3;->val$failReason:Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$MainThreadHelper$3;->val$onRenameDownloadFileListener:Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$MainThreadHelper$3;->val$onRenameDownloadFileListener:Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;

    iget-object v1, p0, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$MainThreadHelper$3;->val$downloadFileInfo:Lorg/wlf/filedownloader/DownloadFileInfo;

    iget-object v2, p0, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$MainThreadHelper$3;->val$failReason:Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;

    invoke-interface {v0, v1, v2}, Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener;->onRenameDownloadFileFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnRenameDownloadFileListener$RenameDownloadFileFailReason;)V

    goto :goto_0
.end method

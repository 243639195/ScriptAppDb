.class final Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$MainThreadHelper$3;
.super Ljava/lang/Object;
.source "OnDeleteDownloadFileListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$MainThreadHelper;->onDeleteDownloadFileFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadFileInfo:Lorg/wlf/filedownloader/DownloadFileInfo;

.field final synthetic val$failReason:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;

.field final synthetic val$onDeleteDownloadFileListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$MainThreadHelper$3;->val$onDeleteDownloadFileListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;

    iput-object p2, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$MainThreadHelper$3;->val$downloadFileInfo:Lorg/wlf/filedownloader/DownloadFileInfo;

    iput-object p3, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$MainThreadHelper$3;->val$failReason:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$MainThreadHelper$3;->val$onDeleteDownloadFileListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$MainThreadHelper$3;->val$onDeleteDownloadFileListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;

    iget-object v1, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$MainThreadHelper$3;->val$downloadFileInfo:Lorg/wlf/filedownloader/DownloadFileInfo;

    iget-object v2, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$MainThreadHelper$3;->val$failReason:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;

    invoke-interface {v0, v1, v2}, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;->onDeleteDownloadFileFailed(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener$DeleteDownloadFileFailReason;)V

    goto :goto_0
.end method

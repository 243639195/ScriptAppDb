.class final Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener$MainThreadHelper$1;
.super Ljava/lang/Object;
.source "OnRetryableFileDownloadStatusListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener$MainThreadHelper;->onFileDownloadStatusRetrying(Lorg/wlf/filedownloader/DownloadFileInfo;ILorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadFileInfo:Lorg/wlf/filedownloader/DownloadFileInfo;

.field final synthetic val$onRetryableFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener;

.field final synthetic val$retryTimes:I


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener;Lorg/wlf/filedownloader/DownloadFileInfo;I)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener$MainThreadHelper$1;->val$onRetryableFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener;

    iput-object p2, p0, Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener$MainThreadHelper$1;->val$downloadFileInfo:Lorg/wlf/filedownloader/DownloadFileInfo;

    iput p3, p0, Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener$MainThreadHelper$1;->val$retryTimes:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener$MainThreadHelper$1;->val$onRetryableFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener;

    if-nez v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener$MainThreadHelper$1;->val$onRetryableFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener;

    iget-object v1, p0, Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener$MainThreadHelper$1;->val$downloadFileInfo:Lorg/wlf/filedownloader/DownloadFileInfo;

    iget v2, p0, Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener$MainThreadHelper$1;->val$retryTimes:I

    invoke-interface {v0, v1, v2}, Lorg/wlf/filedownloader/listener/OnRetryableFileDownloadStatusListener;->onFileDownloadStatusRetrying(Lorg/wlf/filedownloader/DownloadFileInfo;I)V

    goto :goto_0
.end method

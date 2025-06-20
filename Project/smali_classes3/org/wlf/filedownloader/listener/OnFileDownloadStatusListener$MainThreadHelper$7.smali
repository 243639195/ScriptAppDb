.class final Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$7;
.super Ljava/lang/Object;
.source "OnFileDownloadStatusListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper;->onFileDownloadStatusFailed(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadFileInfo:Lorg/wlf/filedownloader/DownloadFileInfo;

.field final synthetic val$failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

.field final synthetic val$onFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$7;->val$onFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    iput-object p2, p0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$7;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$7;->val$downloadFileInfo:Lorg/wlf/filedownloader/DownloadFileInfo;

    iput-object p4, p0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$7;->val$failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 235
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$7;->val$onFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    if-nez v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$7;->val$onFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    iget-object v1, p0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$7;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$7;->val$downloadFileInfo:Lorg/wlf/filedownloader/DownloadFileInfo;

    iget-object v3, p0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$7;->val$failReason:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;

    invoke-interface {v0, v1, v2, v3}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;->onFileDownloadStatusFailed(Ljava/lang/String;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$FileDownloadStatusFailReason;)V

    goto :goto_0
.end method

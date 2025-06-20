.class final Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$6;
.super Ljava/lang/Object;
.source "OnFileDownloadStatusListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper;->onFileDownloadStatusCompleted(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadFileInfo:Lorg/wlf/filedownloader/DownloadFileInfo;

.field final synthetic val$onFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$6;->val$onFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    iput-object p2, p0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$6;->val$downloadFileInfo:Lorg/wlf/filedownloader/DownloadFileInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$6;->val$onFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    if-nez v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$6;->val$onFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    iget-object v1, p0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$6;->val$downloadFileInfo:Lorg/wlf/filedownloader/DownloadFileInfo;

    invoke-interface {v0, v1}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;->onFileDownloadStatusCompleted(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    goto :goto_0
.end method

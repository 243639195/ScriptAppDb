.class final Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$4;
.super Ljava/lang/Object;
.source "OnFileDownloadStatusListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper;->onFileDownloadStatusDownloading(Lorg/wlf/filedownloader/DownloadFileInfo;FJLorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadFileInfo:Lorg/wlf/filedownloader/DownloadFileInfo;

.field final synthetic val$downloadSpeed:F

.field final synthetic val$onFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

.field final synthetic val$remainingTime:J


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;Lorg/wlf/filedownloader/DownloadFileInfo;FJ)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$4;->val$onFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    iput-object p2, p0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$4;->val$downloadFileInfo:Lorg/wlf/filedownloader/DownloadFileInfo;

    iput p3, p0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$4;->val$downloadSpeed:F

    iput-wide p4, p0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$4;->val$remainingTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 165
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$4;->val$onFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$4;->val$onFileDownloadStatusListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    iget-object v1, p0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$4;->val$downloadFileInfo:Lorg/wlf/filedownloader/DownloadFileInfo;

    iget v2, p0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$4;->val$downloadSpeed:F

    iget-wide v4, p0, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener$MainThreadHelper$4;->val$remainingTime:J

    invoke-interface {v0, v1, v2, v4, v5}, Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;->onFileDownloadStatusDownloading(Lorg/wlf/filedownloader/DownloadFileInfo;FJ)V

    goto :goto_0
.end method

.class final Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$MainThreadHelper$1;
.super Ljava/lang/Object;
.source "OnDownloadFileChangeListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$MainThreadHelper;->onDownloadFileCreated(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadFileInfo:Lorg/wlf/filedownloader/DownloadFileInfo;

.field final synthetic val$onDownloadFileChangeListener:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;Lorg/wlf/filedownloader/DownloadFileInfo;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$MainThreadHelper$1;->val$onDownloadFileChangeListener:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    iput-object p2, p0, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$MainThreadHelper$1;->val$downloadFileInfo:Lorg/wlf/filedownloader/DownloadFileInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$MainThreadHelper$1;->val$onDownloadFileChangeListener:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$MainThreadHelper$1;->val$onDownloadFileChangeListener:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    iget-object v1, p0, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$MainThreadHelper$1;->val$downloadFileInfo:Lorg/wlf/filedownloader/DownloadFileInfo;

    invoke-interface {v0, v1}, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;->onDownloadFileCreated(Lorg/wlf/filedownloader/DownloadFileInfo;)V

    goto :goto_0
.end method

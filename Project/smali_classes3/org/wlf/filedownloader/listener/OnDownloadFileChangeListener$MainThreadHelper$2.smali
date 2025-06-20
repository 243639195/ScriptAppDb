.class final Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$MainThreadHelper$2;
.super Ljava/lang/Object;
.source "OnDownloadFileChangeListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$MainThreadHelper;->onDownloadFileUpdated(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadFileInfo:Lorg/wlf/filedownloader/DownloadFileInfo;

.field final synthetic val$onDownloadFileChangeListener:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

.field final synthetic val$type:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$MainThreadHelper$2;->val$onDownloadFileChangeListener:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    iput-object p2, p0, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$MainThreadHelper$2;->val$downloadFileInfo:Lorg/wlf/filedownloader/DownloadFileInfo;

    iput-object p3, p0, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$MainThreadHelper$2;->val$type:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$MainThreadHelper$2;->val$onDownloadFileChangeListener:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$MainThreadHelper$2;->val$onDownloadFileChangeListener:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    iget-object v1, p0, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$MainThreadHelper$2;->val$downloadFileInfo:Lorg/wlf/filedownloader/DownloadFileInfo;

    iget-object v2, p0, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$MainThreadHelper$2;->val$type:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    invoke-interface {v0, v1, v2}, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;->onDownloadFileUpdated(Lorg/wlf/filedownloader/DownloadFileInfo;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;)V

    goto :goto_0
.end method

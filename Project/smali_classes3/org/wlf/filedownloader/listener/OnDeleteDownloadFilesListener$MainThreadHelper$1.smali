.class final Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper$1;
.super Ljava/lang/Object;
.source "OnDeleteDownloadFilesListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper;->onDeleteDownloadFilesPrepared(Ljava/util/List;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadFilesNeedDelete:Ljava/util/List;

.field final synthetic val$onDeleteDownloadFilesListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper$1;->val$onDeleteDownloadFilesListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;

    iput-object p2, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper$1;->val$downloadFilesNeedDelete:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper$1;->val$onDeleteDownloadFilesListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper$1;->val$onDeleteDownloadFilesListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;

    iget-object v1, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper$1;->val$downloadFilesNeedDelete:Ljava/util/List;

    invoke-interface {v0, v1}, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;->onDeleteDownloadFilesPrepared(Ljava/util/List;)V

    goto :goto_0
.end method

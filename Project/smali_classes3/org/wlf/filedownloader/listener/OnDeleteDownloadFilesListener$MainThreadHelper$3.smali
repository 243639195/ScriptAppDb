.class final Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper$3;
.super Ljava/lang/Object;
.source "OnDeleteDownloadFilesListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper;->onDeleteDownloadFilesCompleted(Ljava/util/List;Ljava/util/List;Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadFilesDeleted:Ljava/util/List;

.field final synthetic val$downloadFilesNeedDelete:Ljava/util/List;

.field final synthetic val$onDeleteDownloadFilesListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;


# direct methods
.method constructor <init>(Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper$3;->val$onDeleteDownloadFilesListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;

    iput-object p2, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper$3;->val$downloadFilesNeedDelete:Ljava/util/List;

    iput-object p3, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper$3;->val$downloadFilesDeleted:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper$3;->val$onDeleteDownloadFilesListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper$3;->val$onDeleteDownloadFilesListener:Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;

    iget-object v1, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper$3;->val$downloadFilesNeedDelete:Ljava/util/List;

    iget-object v2, p0, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener$MainThreadHelper$3;->val$downloadFilesDeleted:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lorg/wlf/filedownloader/listener/OnDeleteDownloadFilesListener;->onDeleteDownloadFilesCompleted(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

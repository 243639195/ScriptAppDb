.class Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;
.super Ljava/lang/Object;
.source "DownloadFileChangeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/DownloadFileChangeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadFileChangeListenerInfo"
.end annotation


# instance fields
.field private mDownloadFileChangeConfiguration:Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;

.field private mListener:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

.field final synthetic this$0:Lorg/wlf/filedownloader/DownloadFileChangeObserver;


# direct methods
.method public constructor <init>(Lorg/wlf/filedownloader/DownloadFileChangeObserver;Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;)V
    .locals 0
    .param p2, "downloadFileChangeConfiguration"    # Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;
    .param p3, "listener"    # Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    .prologue
    .line 307
    iput-object p1, p0, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->this$0:Lorg/wlf/filedownloader/DownloadFileChangeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput-object p2, p0, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->mDownloadFileChangeConfiguration:Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;

    .line 309
    iput-object p3, p0, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->mListener:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    .line 310
    return-void
.end method

.method static synthetic access$000(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;

    .prologue
    .line 301
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->mListener:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;)Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;

    .prologue
    .line 301
    iget-object v0, p0, Lorg/wlf/filedownloader/DownloadFileChangeObserver$DownloadFileChangeListenerInfo;->mDownloadFileChangeConfiguration:Lorg/wlf/filedownloader/DownloadFileChangeConfiguration;

    return-object v0
.end method

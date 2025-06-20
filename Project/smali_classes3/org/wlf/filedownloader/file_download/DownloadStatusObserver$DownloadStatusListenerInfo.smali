.class Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;
.super Ljava/lang/Object;
.source "DownloadStatusObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/file_download/DownloadStatusObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadStatusListenerInfo"
.end annotation


# instance fields
.field private mDownloadStatusConfiguration:Lorg/wlf/filedownloader/DownloadStatusConfiguration;

.field private mListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;


# direct methods
.method public constructor <init>(Lorg/wlf/filedownloader/DownloadStatusConfiguration;Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V
    .locals 0
    .param p1, "downloadStatusConfiguration"    # Lorg/wlf/filedownloader/DownloadStatusConfiguration;
    .param p2, "listener"    # Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    .prologue
    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    iput-object p1, p0, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->mDownloadStatusConfiguration:Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    .line 590
    iput-object p2, p0, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->mListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    .line 591
    return-void
.end method

.method static synthetic access$000(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;

    .prologue
    .line 582
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->mListener:Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;

    return-object v0
.end method

.method static synthetic access$100(Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;)Lorg/wlf/filedownloader/DownloadStatusConfiguration;
    .locals 1
    .param p0, "x0"    # Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;

    .prologue
    .line 582
    iget-object v0, p0, Lorg/wlf/filedownloader/file_download/DownloadStatusObserver$DownloadStatusListenerInfo;->mDownloadStatusConfiguration:Lorg/wlf/filedownloader/DownloadStatusConfiguration;

    return-object v0
.end method

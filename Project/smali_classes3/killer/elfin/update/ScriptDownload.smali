.class public Lkiller/elfin/update/ScriptDownload;
.super Ljava/lang/Object;
.source "ScriptDownload.java"


# static fields
.field public static HOT_SCRIPT_DOWNLOAD_IMMEDIATELY_AND_ENGINE_RUNNING:I

.field private static instance:Lkiller/elfin/update/ScriptDownload;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x3eb

    sput v0, Lkiller/elfin/update/ScriptDownload;->HOT_SCRIPT_DOWNLOAD_IMMEDIATELY_AND_ENGINE_RUNNING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lkiller/elfin/update/ScriptDownload;
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lkiller/elfin/update/ScriptDownload;->instance:Lkiller/elfin/update/ScriptDownload;

    if-nez v0, :cond_1

    .line 110
    const-class v1, Lkiller/elfin/update/ScriptDownload;

    monitor-enter v1

    .line 111
    :try_start_0
    sget-object v0, Lkiller/elfin/update/ScriptDownload;->instance:Lkiller/elfin/update/ScriptDownload;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lkiller/elfin/update/ScriptDownload;

    invoke-direct {v0}, Lkiller/elfin/update/ScriptDownload;-><init>()V

    sput-object v0, Lkiller/elfin/update/ScriptDownload;->instance:Lkiller/elfin/update/ScriptDownload;

    .line 114
    :cond_0
    sget-object v0, Lkiller/elfin/update/ScriptDownload;->instance:Lkiller/elfin/update/ScriptDownload;

    monitor-exit v1

    .line 117
    :goto_0
    return-object v0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 117
    :cond_1
    sget-object v0, Lkiller/elfin/update/ScriptDownload;->instance:Lkiller/elfin/update/ScriptDownload;

    goto :goto_0
.end method


# virtual methods
.method public download(Lkiller/core/entity/ScriptVersionInfo;)V
    .locals 6
    .param p1, "scriptVersionInfo"    # Lkiller/core/entity/ScriptVersionInfo;

    .prologue
    const/4 v5, 0x1

    .line 28
    invoke-static {}, Lkiller/elfin/Free;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_0

    .line 106
    :goto_0
    return-void

    .line 31
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lkiller/elfin/Free;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "script"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    .local v2, "downloadDir":Ljava/io/File;
    invoke-static {}, Lorg/wlf/filedownloader/FileDownloader;->isInit()Z

    move-result v3

    if-nez v3, :cond_1

    .line 33
    new-instance v0, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;

    invoke-static {}, Lkiller/elfin/Free;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;-><init>(Landroid/content/Context;)V

    .line 34
    .local v0, "builder":Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->configFileDownloadDir(Ljava/lang/String;)Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;

    .line 35
    invoke-virtual {v0, v5}, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->configDownloadTaskSize(I)Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;

    .line 36
    invoke-virtual {v0, v5}, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->configRetryDownloadTimes(I)Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;

    .line 37
    const/16 v3, 0x1388

    invoke-virtual {v0, v3}, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->configConnectTimeout(I)Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;

    .line 38
    invoke-virtual {v0}, Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;->build()Lorg/wlf/filedownloader/FileDownloadConfiguration;

    move-result-object v1

    .line 39
    .local v1, "configuration":Lorg/wlf/filedownloader/FileDownloadConfiguration;
    invoke-static {v1}, Lorg/wlf/filedownloader/FileDownloader;->init(Lorg/wlf/filedownloader/FileDownloadConfiguration;)V

    .line 41
    .end local v0    # "builder":Lorg/wlf/filedownloader/FileDownloadConfiguration$Builder;
    .end local v1    # "configuration":Lorg/wlf/filedownloader/FileDownloadConfiguration;
    :cond_1
    iget-object v3, p1, Lkiller/core/entity/ScriptVersionInfo;->downloadUrl:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v5, v4}, Lorg/wlf/filedownloader/FileDownloader;->delete(Ljava/lang/String;ZLorg/wlf/filedownloader/listener/OnDeleteDownloadFileListener;)V

    .line 42
    new-instance v3, Lkiller/elfin/update/ScriptDownload$1;

    invoke-direct {v3, p0, p1, v2}, Lkiller/elfin/update/ScriptDownload$1;-><init>(Lkiller/elfin/update/ScriptDownload;Lkiller/core/entity/ScriptVersionInfo;Ljava/io/File;)V

    invoke-static {v3}, Lorg/wlf/filedownloader/FileDownloader;->registerDownloadStatusListener(Lorg/wlf/filedownloader/listener/OnFileDownloadStatusListener;)V

    .line 105
    iget-object v3, p1, Lkiller/core/entity/ScriptVersionInfo;->downloadUrl:Ljava/lang/String;

    invoke-static {v3}, Lorg/wlf/filedownloader/FileDownloader;->start(Ljava/lang/String;)V

    goto :goto_0
.end method

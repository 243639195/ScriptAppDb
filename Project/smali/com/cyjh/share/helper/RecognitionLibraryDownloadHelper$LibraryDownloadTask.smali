.class Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$LibraryDownloadTask;
.super Landroid/os/AsyncTask;
.source "RecognitionLibraryDownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LibraryDownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;


# direct methods
.method public constructor <init>(Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;Landroid/content/Context;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$LibraryDownloadTask;->this$0:Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$LibraryDownloadTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$LibraryDownloadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 10

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$LibraryDownloadTask;->mContext:Landroid/content/Context;

    const-string v1, "tessdata"

    invoke-static {v0, v1}, Lcom/cyjh/share/util/FileUtil;->createDataDataFileDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/io/File;

    const-string v2, "chi_sim.traineddata"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    new-instance v2, Ljava/io/File;

    const-string v3, "chi_sim.traineddata"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    invoke-static {v1}, Lcom/cyjh/share/util/FileUtil;->deleteSingleFile(Ljava/io/File;)Z

    .line 84
    invoke-static {v2}, Lcom/cyjh/share/util/FileUtil;->deleteSingleFile(Ljava/io/File;)Z

    const/4 v0, 0x0

    .line 85
    aget-object v1, p1, v0

    aget-object v2, p1, v0

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$LibraryDownloadTask;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-static {v2, v3, v1}, Lcom/cyjh/share/util/FileUtil;->getFileByPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 87
    invoke-static {}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LibraryDownloadTask doInBackground --> zipName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", file path = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/cyjh/share/util/DownloadUtil;->get()Lcom/cyjh/share/util/DownloadUtil;

    move-result-object v4

    aget-object v5, p1, v0

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    iget-object p1, p0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$LibraryDownloadTask;->this$0:Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;

    iget-object v9, p1, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->mOnDownloadListener:Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;

    invoke-virtual/range {v4 .. v9}, Lcom/cyjh/share/util/DownloadUtil;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/cyjh/share/util/DownloadUtil$OnDownloadListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

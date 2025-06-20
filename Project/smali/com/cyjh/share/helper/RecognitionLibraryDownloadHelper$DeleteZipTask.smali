.class Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$DeleteZipTask;
.super Landroid/os/AsyncTask;
.source "RecognitionLibraryDownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteZipTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private srcFile:Ljava/io/File;

.field final synthetic this$0:Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;


# direct methods
.method public constructor <init>(Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;Ljava/io/File;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$DeleteZipTask;->this$0:Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 101
    iput-object p2, p0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$DeleteZipTask;->srcFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .line 106
    iget-object p1, p0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$DeleteZipTask;->this$0:Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;

    invoke-static {p1}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->access$100(Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "tessdata"

    invoke-static {p1, v0}, Lcom/cyjh/share/util/FileUtil;->createDataDataFileDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 107
    iget-object v0, p0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$DeleteZipTask;->srcFile:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/cyjh/share/util/ZipUtil;->unzipFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    .line 108
    iget-object v0, p0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$DeleteZipTask;->srcFile:Ljava/io/File;

    invoke-static {v0}, Lcom/cyjh/share/util/FileUtil;->deleteSingleFile(Ljava/io/File;)Z

    .line 109
    invoke-static {}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeleteZipTask doInBackground --> result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 96
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$DeleteZipTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 115
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$DeleteZipTask;->this$0:Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;

    invoke-static {v0}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->access$200(Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;)Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$OnDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$DeleteZipTask;->this$0:Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;

    invoke-static {p1}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->access$200(Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;)Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$OnDownloadListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$OnDownloadListener;->onDownloadSuccess()V

    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$DeleteZipTask;->this$0:Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;

    invoke-static {p1}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->access$200(Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;)Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$OnDownloadListener;

    move-result-object p1

    const-string v0, "\u4e0b\u8f7d\u8bed\u97f3\u8bc6\u522b\u5e93\u5931\u8d25\uff01"

    invoke-interface {p1, v0}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$OnDownloadListener;->onDownloadFailed(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 96
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$DeleteZipTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

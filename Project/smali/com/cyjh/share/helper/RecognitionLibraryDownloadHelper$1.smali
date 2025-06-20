.class Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$1;
.super Ljava/lang/Object;
.source "RecognitionLibraryDownloadHelper.java"

# interfaces
.implements Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;


# direct methods
.method constructor <init>(Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$1;->this$0:Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailed(Ljava/lang/Exception;)V
    .locals 3

    .line 140
    invoke-static {}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadFailed --> exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$1;->this$0:Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;

    invoke-static {p1}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->access$200(Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;)Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$OnDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$1;->this$0:Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;

    invoke-static {p1}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->access$200(Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;)Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$OnDownloadListener;

    move-result-object p1

    const-string v0, "\u4e0b\u8f7d\u8bed\u97f3\u8bc6\u522b\u5e93\u5931\u8d25\uff01"

    invoke-interface {p1, v0}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$OnDownloadListener;->onDownloadFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDownloadSuccess(Ljava/io/File;)V
    .locals 3

    .line 129
    invoke-static {}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadSuccess --> file="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$DeleteZipTask;

    iget-object v1, p0, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$1;->this$0:Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;

    invoke-direct {v0, v1, p1}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$DeleteZipTask;-><init>(Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;Ljava/io/File;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$DeleteZipTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onDownloading(JJI)V
    .locals 0

    .line 135
    invoke-static {}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onDownloading --> progress="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

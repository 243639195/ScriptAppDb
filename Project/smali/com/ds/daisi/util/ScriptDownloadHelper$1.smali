.class Lcom/ds/daisi/util/ScriptDownloadHelper$1;
.super Ljava/lang/Object;
.source "ScriptDownloadHelper.java"

# interfaces
.implements Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/util/ScriptDownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/util/ScriptDownloadHelper;


# direct methods
.method constructor <init>(Lcom/ds/daisi/util/ScriptDownloadHelper;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/ds/daisi/util/ScriptDownloadHelper$1;->this$0:Lcom/ds/daisi/util/ScriptDownloadHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailed(Ljava/lang/Exception;)V
    .locals 3

    .line 99
    invoke-static {}, Lcom/ds/daisi/util/ScriptDownloadHelper;->access$200()Ljava/lang/String;

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

    .line 100
    iget-object p1, p0, Lcom/ds/daisi/util/ScriptDownloadHelper$1;->this$0:Lcom/ds/daisi/util/ScriptDownloadHelper;

    invoke-static {p1}, Lcom/ds/daisi/util/ScriptDownloadHelper;->access$400(Lcom/ds/daisi/util/ScriptDownloadHelper;)V

    return-void
.end method

.method public onDownloadSuccess(Ljava/io/File;)V
    .locals 3

    .line 88
    invoke-static {}, Lcom/ds/daisi/util/ScriptDownloadHelper;->access$200()Ljava/lang/String;

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

    .line 89
    iget-object v0, p0, Lcom/ds/daisi/util/ScriptDownloadHelper$1;->this$0:Lcom/ds/daisi/util/ScriptDownloadHelper;

    invoke-static {v0, p1}, Lcom/ds/daisi/util/ScriptDownloadHelper;->access$300(Lcom/ds/daisi/util/ScriptDownloadHelper;Ljava/io/File;)V

    return-void
.end method

.method public onDownloading(JJI)V
    .locals 0

    .line 94
    invoke-static {}, Lcom/ds/daisi/util/ScriptDownloadHelper;->access$200()Ljava/lang/String;

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

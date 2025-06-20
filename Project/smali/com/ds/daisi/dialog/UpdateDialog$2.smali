.class Lcom/ds/daisi/dialog/UpdateDialog$2;
.super Ljava/lang/Object;
.source "UpdateDialog.java"

# interfaces
.implements Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/dialog/UpdateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/dialog/UpdateDialog;


# direct methods
.method constructor <init>(Lcom/ds/daisi/dialog/UpdateDialog;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/ds/daisi/dialog/UpdateDialog$2;->this$0:Lcom/ds/daisi/dialog/UpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailed(Ljava/lang/Exception;)V
    .locals 3

    .line 298
    invoke-static {}, Lcom/ds/daisi/dialog/UpdateDialog;->access$000()Ljava/lang/String;

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

    .line 299
    iget-object p1, p0, Lcom/ds/daisi/dialog/UpdateDialog$2;->this$0:Lcom/ds/daisi/dialog/UpdateDialog;

    invoke-static {p1}, Lcom/ds/daisi/dialog/UpdateDialog;->access$600(Lcom/ds/daisi/dialog/UpdateDialog;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onDownloadSuccess(Ljava/io/File;)V
    .locals 3

    .line 277
    invoke-static {}, Lcom/ds/daisi/dialog/UpdateDialog;->access$000()Ljava/lang/String;

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

    .line 278
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 279
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0x3e8

    .line 280
    iput p1, v0, Landroid/os/Message;->what:I

    .line 281
    iget-object p1, p0, Lcom/ds/daisi/dialog/UpdateDialog$2;->this$0:Lcom/ds/daisi/dialog/UpdateDialog;

    invoke-static {p1}, Lcom/ds/daisi/dialog/UpdateDialog;->access$600(Lcom/ds/daisi/dialog/UpdateDialog;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDownloading(JJI)V
    .locals 3

    .line 286
    invoke-static {}, Lcom/ds/daisi/dialog/UpdateDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloading --> progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/share/util/SlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/ds/daisi/dialog/UpdateDialog$2;->this$0:Lcom/ds/daisi/dialog/UpdateDialog;

    invoke-static {p3, p4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p3

    invoke-static {p3}, Lorg/apache/commons/io/FileUtils;->byteCountToDisplaySize(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/ds/daisi/dialog/UpdateDialog;->access$702(Lcom/ds/daisi/dialog/UpdateDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 288
    iget-object p3, p0, Lcom/ds/daisi/dialog/UpdateDialog$2;->this$0:Lcom/ds/daisi/dialog/UpdateDialog;

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->byteCountToDisplaySize(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/ds/daisi/dialog/UpdateDialog;->access$802(Lcom/ds/daisi/dialog/UpdateDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 291
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p2, 0x3e9

    .line 292
    iput p2, p1, Landroid/os/Message;->what:I

    .line 293
    iget-object p2, p0, Lcom/ds/daisi/dialog/UpdateDialog$2;->this$0:Lcom/ds/daisi/dialog/UpdateDialog;

    invoke-static {p2}, Lcom/ds/daisi/dialog/UpdateDialog;->access$600(Lcom/ds/daisi/dialog/UpdateDialog;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.class Lcom/ds/daisi/activity/ScriptLogDetailActivity$ReadScriptLogTask;
.super Landroid/os/AsyncTask;
.source "ScriptLogDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/ScriptLogDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadScriptLogTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/io/File;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/ScriptLogDetailActivity;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/ScriptLogDetailActivity;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/ds/daisi/activity/ScriptLogDetailActivity$ReadScriptLogTask;->this$0:Lcom/ds/daisi/activity/ScriptLogDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/ScriptLogDetailActivity;Lcom/ds/daisi/activity/ScriptLogDetailActivity$1;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/ds/daisi/activity/ScriptLogDetailActivity$ReadScriptLogTask;-><init>(Lcom/ds/daisi/activity/ScriptLogDetailActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 91
    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/ScriptLogDetailActivity$ReadScriptLogTask;->doInBackground([Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/io/File;)Ljava/lang/String;
    .locals 4

    const/4 p1, 0x0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/ds/daisi/activity/ScriptLogDetailActivity$ReadScriptLogTask;->this$0:Lcom/ds/daisi/activity/ScriptLogDetailActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->access$200(Lcom/ds/daisi/activity/ScriptLogDetailActivity;)Lcom/ds/daisi/entity/ScriptLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ds/daisi/entity/ScriptLog;->getFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/ds/daisi/util/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    :try_start_1
    iget-object p1, p0, Lcom/ds/daisi/activity/ScriptLogDetailActivity$ReadScriptLogTask;->this$0:Lcom/ds/daisi/activity/ScriptLogDetailActivity;

    iget-object p1, p1, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->commonLog:Lcom/ds/daisi/log/CommonLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readTextFile>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    .line 107
    :goto_0
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 91
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/ScriptLogDetailActivity$ReadScriptLogTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 119
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/ds/daisi/activity/ScriptLogDetailActivity$ReadScriptLogTask;->this$0:Lcom/ds/daisi/activity/ScriptLogDetailActivity;

    invoke-static {v0}, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->access$300(Lcom/ds/daisi/activity/ScriptLogDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object p1, p0, Lcom/ds/daisi/activity/ScriptLogDetailActivity$ReadScriptLogTask;->this$0:Lcom/ds/daisi/activity/ScriptLogDetailActivity;

    invoke-virtual {p1}, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->dismissProgressDialog()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 95
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 96
    iget-object v0, p0, Lcom/ds/daisi/activity/ScriptLogDetailActivity$ReadScriptLogTask;->this$0:Lcom/ds/daisi/activity/ScriptLogDetailActivity;

    iget-object v1, p0, Lcom/ds/daisi/activity/ScriptLogDetailActivity$ReadScriptLogTask;->this$0:Lcom/ds/daisi/activity/ScriptLogDetailActivity;

    const v2, 0x7f09015b

    const v3, 0x7f09015a

    invoke-virtual {v0, v1, v2, v3}, Lcom/ds/daisi/activity/ScriptLogDetailActivity;->showProgressDialog(Landroid/content/Context;II)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    .line 114
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 91
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/activity/ScriptLogDetailActivity$ReadScriptLogTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

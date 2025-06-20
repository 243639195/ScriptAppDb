.class Lcom/ds/daisi/fragment/OptionFragment$copyScriptFilesTask;
.super Landroid/os/AsyncTask;
.source "OptionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/fragment/OptionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "copyScriptFilesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/io/InputStream;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private destFiles:[Ljava/io/File;

.field final synthetic this$0:Lcom/ds/daisi/fragment/OptionFragment;


# direct methods
.method public varargs constructor <init>(Lcom/ds/daisi/fragment/OptionFragment;[Ljava/io/File;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$copyScriptFilesTask;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 352
    iput-object p2, p0, Lcom/ds/daisi/fragment/OptionFragment$copyScriptFilesTask;->destFiles:[Ljava/io/File;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/io/InputStream;)Ljava/lang/Boolean;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 357
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 358
    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/ds/daisi/fragment/OptionFragment$copyScriptFilesTask;->destFiles:[Ljava/io/File;

    aget-object v3, v3, v1

    invoke-static {v2, v3}, Lcom/ds/daisi/util/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$copyScriptFilesTask;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    iget-object p1, p1, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object p1, p1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {p1}, Lcom/ds/daisi/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$copyScriptFilesTask;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    iget-object p1, p1, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget-object p1, p1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {p1}, Lcom/ds/daisi/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_1

    .line 361
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->getInstance()Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;

    move-result-object p1

    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment$copyScriptFilesTask;->destFiles:[Ljava/io/File;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->startLoop(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    .line 363
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 347
    check-cast p1, [Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/fragment/OptionFragment$copyScriptFilesTask;->doInBackground([Ljava/io/InputStream;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 368
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 369
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$copyScriptFilesTask;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-static {p1}, Lcom/ds/daisi/fragment/OptionFragment;->access$100(Lcom/ds/daisi/fragment/OptionFragment;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 347
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/fragment/OptionFragment$copyScriptFilesTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

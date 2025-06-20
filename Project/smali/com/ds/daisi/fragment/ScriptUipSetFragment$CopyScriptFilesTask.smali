.class Lcom/ds/daisi/fragment/ScriptUipSetFragment$CopyScriptFilesTask;
.super Landroid/os/AsyncTask;
.source "ScriptUipSetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/fragment/ScriptUipSetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CopyScriptFilesTask"
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

.field private mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ds/daisi/fragment/ScriptUipSetFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private varargs constructor <init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;[Ljava/io/File;)V
    .locals 1

    .line 424
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 425
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$CopyScriptFilesTask;->mReference:Ljava/lang/ref/WeakReference;

    .line 426
    iput-object p2, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$CopyScriptFilesTask;->destFiles:[Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;[Ljava/io/File;Lcom/ds/daisi/fragment/ScriptUipSetFragment$1;)V
    .locals 0

    .line 420
    invoke-direct {p0, p1, p2}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$CopyScriptFilesTask;-><init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;[Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/io/InputStream;)Ljava/lang/Boolean;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 431
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 432
    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$CopyScriptFilesTask;->destFiles:[Ljava/io/File;

    aget-object v3, v3, v1

    invoke-static {v2, v3}, Lcom/ds/daisi/util/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 434
    :cond_0
    iget-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$CopyScriptFilesTask;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    if-eqz p1, :cond_2

    .line 436
    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v1

    .line 437
    iget-object v2, v1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v2}, Lcom/ds/daisi/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/ds/daisi/AppContext;->mScript:Lcom/ds/daisi/entity/Script;

    invoke-virtual {v1}, Lcom/ds/daisi/entity/Script;->getUipFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 438
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->getInstance()Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;

    move-result-object v1

    iget-object v2, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$CopyScriptFilesTask;->destFiles:[Ljava/io/File;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->startLoop(Ljava/lang/String;)V

    .line 440
    :cond_1
    invoke-static {p1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->access$500(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V

    .line 441
    invoke-static {}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->get()Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;

    move-result-object p1

    const-string v0, "http://res2.mobileanjian.com/Resource/ocr/Android.zip"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->download(Ljava/lang/String;Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$OnDownloadListener;)V

    :cond_2
    const/4 p1, 0x1

    .line 443
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 420
    check-cast p1, [Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$CopyScriptFilesTask;->doInBackground([Ljava/io/InputStream;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 448
    iget-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$CopyScriptFilesTask;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    if-eqz p1, :cond_0

    .line 450
    invoke-static {p1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->access$600(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 420
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$CopyScriptFilesTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

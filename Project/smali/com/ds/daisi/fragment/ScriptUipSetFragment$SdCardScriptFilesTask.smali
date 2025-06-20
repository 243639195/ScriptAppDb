.class Lcom/ds/daisi/fragment/ScriptUipSetFragment$SdCardScriptFilesTask;
.super Landroid/os/AsyncTask;
.source "ScriptUipSetFragment.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x3
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/fragment/ScriptUipSetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SdCardScriptFilesTask"
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
.field private mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ds/daisi/fragment/ScriptUipSetFragment;",
            ">;"
        }
    .end annotation
.end field

.field private sdCardLcFile:Ljava/io/File;

.field private sdCardUipFile:Ljava/io/File;


# direct methods
.method private varargs constructor <init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;[Ljava/io/File;)V
    .locals 1

    .line 461
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 462
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SdCardScriptFilesTask;->mReference:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    .line 463
    aget-object p1, p2, p1

    iput-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SdCardScriptFilesTask;->sdCardLcFile:Ljava/io/File;

    const/4 p1, 0x1

    .line 464
    aget-object p1, p2, p1

    iput-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SdCardScriptFilesTask;->sdCardUipFile:Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;[Ljava/io/File;Lcom/ds/daisi/fragment/ScriptUipSetFragment$1;)V
    .locals 0

    .line 456
    invoke-direct {p0, p1, p2}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SdCardScriptFilesTask;-><init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;[Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5

    .line 469
    iget-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SdCardScriptFilesTask;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    if-eqz p1, :cond_1

    .line 471
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SdCardScriptFilesTask;->sdCardUipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SdCardScriptFilesTask;->sdCardUipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 472
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->getInstance()Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SdCardScriptFilesTask;->sdCardLcFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/UisScriptRunner;->startLoop(Ljava/lang/String;)V

    .line 474
    :cond_0
    invoke-static {p1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->access$500(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V

    .line 475
    invoke-static {}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->get()Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;

    move-result-object p1

    const-string v0, "http://res2.mobileanjian.com/Resource/ocr/Android.zip"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper;->download(Ljava/lang/String;Lcom/cyjh/share/helper/RecognitionLibraryDownloadHelper$OnDownloadListener;)V

    :cond_1
    const/4 p1, 0x1

    .line 477
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 455
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SdCardScriptFilesTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 482
    iget-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SdCardScriptFilesTask;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    if-eqz p1, :cond_0

    .line 484
    invoke-static {p1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->access$600(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 455
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SdCardScriptFilesTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

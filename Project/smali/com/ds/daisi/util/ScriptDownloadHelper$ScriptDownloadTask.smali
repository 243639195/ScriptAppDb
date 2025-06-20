.class Lcom/ds/daisi/util/ScriptDownloadHelper$ScriptDownloadTask;
.super Landroid/os/AsyncTask;
.source "ScriptDownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/util/ScriptDownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScriptDownloadTask"
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
.field final synthetic this$0:Lcom/ds/daisi/util/ScriptDownloadHelper;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/util/ScriptDownloadHelper;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/ds/daisi/util/ScriptDownloadHelper$ScriptDownloadTask;->this$0:Lcom/ds/daisi/util/ScriptDownloadHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/util/ScriptDownloadHelper;Lcom/ds/daisi/util/ScriptDownloadHelper$1;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/ds/daisi/util/ScriptDownloadHelper$ScriptDownloadTask;-><init>(Lcom/ds/daisi/util/ScriptDownloadHelper;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 69
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/util/ScriptDownloadHelper$ScriptDownloadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 7

    const/4 v0, 0x0

    .line 73
    :try_start_0
    aget-object v2, p1, v0

    const-string v0, "/"

    .line 74
    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/ds/daisi/util/ScriptDownloadHelper$ScriptDownloadTask;->this$0:Lcom/ds/daisi/util/ScriptDownloadHelper;

    invoke-static {v1}, Lcom/ds/daisi/util/ScriptDownloadHelper;->access$100(Lcom/ds/daisi/util/ScriptDownloadHelper;)Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x1

    aget-object p1, p1, v3

    invoke-static {v1, p1, v0}, Lcom/cyjh/share/util/FileUtil;->getFileByPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 76
    invoke-static {}, Lcom/cyjh/share/util/DownloadUtil;->get()Lcom/cyjh/share/util/DownloadUtil;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    iget-object p1, p0, Lcom/ds/daisi/util/ScriptDownloadHelper$ScriptDownloadTask;->this$0:Lcom/ds/daisi/util/ScriptDownloadHelper;

    iget-object v6, p1, Lcom/ds/daisi/util/ScriptDownloadHelper;->mOnDownloadListener:Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;

    invoke-virtual/range {v1 .. v6}, Lcom/cyjh/share/util/DownloadUtil;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/cyjh/share/util/DownloadUtil$OnDownloadListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 78
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

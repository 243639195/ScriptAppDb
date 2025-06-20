.class Lcom/ds/daisi/dialog/UpdateDialog$MyAsyncTask;
.super Landroid/os/AsyncTask;
.source "UpdateDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/dialog/UpdateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAsyncTask"
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
.field final synthetic this$0:Lcom/ds/daisi/dialog/UpdateDialog;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/dialog/UpdateDialog;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/ds/daisi/dialog/UpdateDialog$MyAsyncTask;->this$0:Lcom/ds/daisi/dialog/UpdateDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/dialog/UpdateDialog;Lcom/ds/daisi/dialog/UpdateDialog$1;)V
    .locals 0

    .line 303
    invoke-direct {p0, p1}, Lcom/ds/daisi/dialog/UpdateDialog$MyAsyncTask;-><init>(Lcom/ds/daisi/dialog/UpdateDialog;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 303
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/dialog/UpdateDialog$MyAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 7

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/ds/daisi/dialog/UpdateDialog$MyAsyncTask;->this$0:Lcom/ds/daisi/dialog/UpdateDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ds/daisi/dialog/UpdateDialog;->access$102(Lcom/ds/daisi/dialog/UpdateDialog;Z)Z

    .line 308
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/cyjh/share/util/DownloadUtil;->get()Lcom/cyjh/share/util/DownloadUtil;

    move-result-object v1

    iget-object p1, p0, Lcom/ds/daisi/dialog/UpdateDialog$MyAsyncTask;->this$0:Lcom/ds/daisi/dialog/UpdateDialog;

    invoke-static {p1}, Lcom/ds/daisi/dialog/UpdateDialog;->access$900(Lcom/ds/daisi/dialog/UpdateDialog;)Lcom/cyjh/share/bean/response/VersionUpdateInfo;

    move-result-object p1

    iget-object v2, p1, Lcom/cyjh/share/bean/response/VersionUpdateInfo;->UpdateUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/ds/daisi/dialog/UpdateDialog$MyAsyncTask;->this$0:Lcom/ds/daisi/dialog/UpdateDialog;

    invoke-static {p1}, Lcom/ds/daisi/dialog/UpdateDialog;->access$900(Lcom/ds/daisi/dialog/UpdateDialog;)Lcom/cyjh/share/bean/response/VersionUpdateInfo;

    move-result-object p1

    iget v5, p1, Lcom/cyjh/share/bean/response/VersionUpdateInfo;->PackageSize:I

    iget-object p1, p0, Lcom/ds/daisi/dialog/UpdateDialog$MyAsyncTask;->this$0:Lcom/ds/daisi/dialog/UpdateDialog;

    iget-object v6, p1, Lcom/ds/daisi/dialog/UpdateDialog;->mOnDownloadListener:Lcom/cyjh/share/util/DownloadUtil$OnDownloadListener;

    invoke-virtual/range {v1 .. v6}, Lcom/cyjh/share/util/DownloadUtil;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/cyjh/share/util/DownloadUtil$OnDownloadListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 311
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

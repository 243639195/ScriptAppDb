.class public Lcom/ds/daisi/util/FileUtils$copyFilesTask;
.super Landroid/os/AsyncTask;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/util/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "copyFilesTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/util/FileUtils$copyFilesTask$OnPostExecuteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "[",
        "Ljava/io/File;",
        "Ljava/util/ArrayList<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;>;",
        "Ljava/util/ArrayList<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private onPostExecuteListener:Lcom/ds/daisi/util/FileUtils$copyFilesTask$OnPostExecuteListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 184
    check-cast p1, [[Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/util/FileUtils$copyFilesTask;->doInBackground([[Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([[Ljava/io/File;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 201
    :goto_0
    aget-object v2, p1, v1

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 202
    aget-object v2, p1, v1

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aget-object v3, p1, v3

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lcom/ds/daisi/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 184
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/util/FileUtils$copyFilesTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .line 215
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lcom/ds/daisi/util/FileUtils$copyFilesTask;->onPostExecuteListener:Lcom/ds/daisi/util/FileUtils$copyFilesTask$OnPostExecuteListener;

    invoke-interface {v0, p1}, Lcom/ds/daisi/util/FileUtils$copyFilesTask$OnPostExecuteListener;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 194
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 184
    check-cast p1, [Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/ds/daisi/util/FileUtils$copyFilesTask;->onProgressUpdate([Ljava/util/ArrayList;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 210
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method public setOnPostExecuteListener(Lcom/ds/daisi/util/FileUtils$copyFilesTask$OnPostExecuteListener;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/ds/daisi/util/FileUtils$copyFilesTask;->onPostExecuteListener:Lcom/ds/daisi/util/FileUtils$copyFilesTask$OnPostExecuteListener;

    return-void
.end method

.class public Lnet/lingala/zip4j/tasks/AddFolderToZipTask;
.super Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;
.source "AddFolderToZipTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask",
        "<",
        "Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/ZipModel;[CLnet/lingala/zip4j/headers/HeaderWriter;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V
    .locals 0
    .param p1, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .param p2, "password"    # [C
    .param p3, "headerWriter"    # Lnet/lingala/zip4j/headers/HeaderWriter;
    .param p4, "asyncTaskParameters"    # Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/lingala/zip4j/tasks/AbstractAddFileToZipTask;-><init>(Lnet/lingala/zip4j/model/ZipModel;[CLnet/lingala/zip4j/headers/HeaderWriter;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    .line 21
    return-void
.end method

.method private getFilesToAdd(Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;)Ljava/util/List;
    .locals 5
    .param p1, "taskParameters"    # Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;->access$100(Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;)Ljava/io/File;

    move-result-object v1

    .line 64
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipParameters;->isReadHiddenFiles()Z

    move-result v2

    .line 65
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipParameters;->isReadHiddenFolders()Z

    move-result v3

    .line 66
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipParameters;->getExcludeFileFilter()Lnet/lingala/zip4j/model/ExcludeFileFilter;

    move-result-object v4

    .line 63
    invoke-static {v1, v2, v3, v4}, Lnet/lingala/zip4j/util/FileUtils;->getFilesInDirectoryRecursive(Ljava/io/File;ZZLnet/lingala/zip4j/model/ExcludeFileFilter;)Ljava/util/List;

    move-result-object v0

    .line 68
    .local v0, "filesToAdd":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipParameters;->isIncludeRootFolder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;->access$100(Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;)Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    return-object v0
.end method

.method private setDefaultFolderPath(Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;)V
    .locals 4
    .param p1, "taskParameters"    # Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;->access$100(Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;)Ljava/io/File;

    move-result-object v0

    .line 48
    .local v0, "folderToAdd":Ljava/io/File;
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipParameters;->isIncludeRootFolder()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 50
    .local v1, "parentFile":Ljava/io/File;
    if-nez v1, :cond_0

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 59
    .end local v1    # "parentFile":Ljava/io/File;
    .local v2, "rootFolderPath":Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v3

    invoke-virtual {v3, v2}, Lnet/lingala/zip4j/model/ZipParameters;->setDefaultFolderPath(Ljava/lang/String;)V

    .line 60
    return-void

    .line 53
    .end local v2    # "rootFolderPath":Ljava/lang/String;
    .restart local v1    # "parentFile":Ljava/io/File;
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "rootFolderPath":Ljava/lang/String;
    goto :goto_0

    .line 56
    .end local v1    # "parentFile":Ljava/io/File;
    .end local v2    # "rootFolderPath":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "rootFolderPath":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic calculateTotalWork(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 17
    check-cast p1, Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/tasks/AddFolderToZipTask;->calculateTotalWork(Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected calculateTotalWork(Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;)J
    .locals 5
    .param p1, "taskParameters"    # Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;->access$100(Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;)Ljava/io/File;

    move-result-object v1

    .line 34
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipParameters;->isReadHiddenFiles()Z

    move-result v2

    .line 35
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipParameters;->isReadHiddenFolders()Z

    move-result v3

    .line 36
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipParameters;->getExcludeFileFilter()Lnet/lingala/zip4j/model/ExcludeFileFilter;

    move-result-object v4

    .line 33
    invoke-static {v1, v2, v3, v4}, Lnet/lingala/zip4j/util/FileUtils;->getFilesInDirectoryRecursive(Ljava/io/File;ZZLnet/lingala/zip4j/model/ExcludeFileFilter;)Ljava/util/List;

    move-result-object v0

    .line 38
    .local v0, "filesToAdd":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipParameters;->isIncludeRootFolder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;->access$100(Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;)Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/lingala/zip4j/tasks/AddFolderToZipTask;->calculateWorkForFiles(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters;)J

    move-result-wide v2

    return-wide v2
.end method

.method protected bridge synthetic executeTask(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    check-cast p1, Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;

    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/tasks/AddFolderToZipTask;->executeTask(Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method protected executeTask(Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 3
    .param p1, "taskParameters"    # Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;
    .param p2, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/tasks/AddFolderToZipTask;->getFilesToAdd(Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;)Ljava/util/List;

    move-result-object v0

    .line 27
    .local v0, "filesToAdd":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/tasks/AddFolderToZipTask;->setDefaultFolderPath(Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;)V

    .line 28
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object v1

    iget-object v2, p1, Lnet/lingala/zip4j/tasks/AddFolderToZipTask$AddFolderToZipTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {p0, v0, p2, v1, v2}, Lnet/lingala/zip4j/tasks/AddFolderToZipTask;->addFilesToZip(Ljava/util/List;Lnet/lingala/zip4j/progress/ProgressMonitor;Lnet/lingala/zip4j/model/ZipParameters;Lnet/lingala/zip4j/model/Zip4jConfig;)V

    .line 29
    return-void
.end method

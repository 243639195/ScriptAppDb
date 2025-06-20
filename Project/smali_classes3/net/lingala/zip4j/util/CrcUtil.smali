.class public Lnet/lingala/zip4j/util/CrcUtil;
.super Ljava/lang/Object;
.source "CrcUtil.java"


# static fields
.field private static final BUF_SIZE:I = 0x4000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeFileCrc(Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)J
    .locals 9
    .param p0, "inputFile"    # Ljava/io/File;
    .param p1, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_1

    .line 35
    :cond_0
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    const-string v5, "input file is null or does not exist or cannot read. Cannot calculate CRC for the file"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 39
    :cond_1
    const/16 v4, 0x4000

    new-array v0, v4, [B

    .line 40
    .local v0, "buff":[B
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 42
    .local v1, "crc32":Ljava/util/zip/CRC32;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v2, "inputStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 44
    :cond_2
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "readLen":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 45
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 47
    if-eqz p1, :cond_2

    .line 48
    int-to-long v4, v3

    invoke-virtual {p1, v4, v5}, Lnet/lingala/zip4j/progress/ProgressMonitor;->updateWorkCompleted(J)V

    .line 49
    invoke-virtual {p1}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 50
    sget-object v4, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->CANCELLED:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    invoke-virtual {p1, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(Lnet/lingala/zip4j/progress/ProgressMonitor$Result;)V

    .line 51
    sget-object v4, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->READY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    invoke-virtual {p1, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setState(Lnet/lingala/zip4j/progress/ProgressMonitor$State;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 52
    const-wide/16 v4, 0x0

    .line 57
    if-eqz v2, :cond_3

    if-eqz v6, :cond_4

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    :cond_3
    :goto_0
    return-wide v4

    .line 57
    :catch_0
    move-exception v7

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 56
    :cond_5
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v4

    .line 57
    if-eqz v2, :cond_3

    if-eqz v6, :cond_6

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v7

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 42
    .end local v3    # "readLen":I
    :catch_2
    move-exception v4

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 57
    :catchall_0
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    :goto_1
    if-eqz v2, :cond_7

    if-eqz v5, :cond_8

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_7
    :goto_2
    throw v4

    :catch_3
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catchall_1
    move-exception v4

    move-object v5, v6

    goto :goto_1
.end method

.class public Lnet/lingala/zip4j/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static final DEFAULT_POSIX_FILE_ATTRIBUTES:[B

.field public static final DEFAULT_POSIX_FOLDER_ATTRIBUTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 45
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lnet/lingala/zip4j/util/FileUtils;->DEFAULT_POSIX_FILE_ATTRIBUTES:[B

    .line 46
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lnet/lingala/zip4j/util/FileUtils;->DEFAULT_POSIX_FOLDER_ATTRIBUTES:[B

    return-void

    .line 45
    :array_0
    .array-data 1
        0x0t
        0x0t
        -0x5ct
        -0x7ft
    .end array-data

    .line 46
    :array_1
    .array-data 1
        0x0t
        0x0t
        -0x13t
        0x41t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V
    .locals 1
    .param p0, "b"    # B
    .param p1, "pos"    # I
    .param p3, "posixFilePermissionToAdd"    # Ljava/nio/file/attribute/PosixFilePermission;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BI",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ")V"
        }
    .end annotation

    .prologue
    .line 573
    .local p2, "posixFilePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    invoke-static {p0, p1}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 576
    :cond_0
    return-void
.end method

.method private static applyPosixFileAttributes(Ljava/nio/file/Path;[B)V
    .locals 4
    .param p0, "file"    # Ljava/nio/file/Path;
    .param p1, "fileAttributes"    # [B

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 479
    aget-byte v1, p1, v1

    if-nez v1, :cond_0

    aget-byte v1, p1, v2

    if-nez v1, :cond_0

    .line 499
    :goto_0
    return-void

    .line 485
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 486
    .local v0, "posixFilePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    const/4 v1, 0x3

    aget-byte v1, p1, v1

    const/4 v2, 0x0

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v1, v2, v0, v3}, Lnet/lingala/zip4j/util/FileUtils;->addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 487
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    const/4 v2, 0x7

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v1, v2, v0, v3}, Lnet/lingala/zip4j/util/FileUtils;->addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 488
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    const/4 v2, 0x6

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v1, v2, v0, v3}, Lnet/lingala/zip4j/util/FileUtils;->addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 489
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    const/4 v2, 0x5

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v1, v2, v0, v3}, Lnet/lingala/zip4j/util/FileUtils;->addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 490
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    const/4 v2, 0x4

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v1, v2, v0, v3}, Lnet/lingala/zip4j/util/FileUtils;->addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 491
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    const/4 v2, 0x3

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v1, v2, v0, v3}, Lnet/lingala/zip4j/util/FileUtils;->addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 492
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    const/4 v2, 0x2

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v1, v2, v0, v3}, Lnet/lingala/zip4j/util/FileUtils;->addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 493
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    const/4 v2, 0x1

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v1, v2, v0, v3}, Lnet/lingala/zip4j/util/FileUtils;->addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 494
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    const/4 v2, 0x0

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v1, v2, v0, v3}, Lnet/lingala/zip4j/util/FileUtils;->addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 495
    invoke-static {p0, v0}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 496
    .end local v0    # "posixFilePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static applyWindowsFileAttributes(Ljava/nio/file/Path;[B)V
    .locals 5
    .param p0, "file"    # Ljava/nio/file/Path;
    .param p1, "fileAttributes"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 462
    aget-byte v1, p1, v4

    if-nez v1, :cond_0

    .line 476
    :goto_0
    return-void

    .line 467
    :cond_0
    const-class v1, Ljava/nio/file/attribute/DosFileAttributeView;

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    sget-object v3, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/DosFileAttributeView;

    .line 469
    .local v0, "fileAttributeView":Ljava/nio/file/attribute/DosFileAttributeView;
    const/4 v1, 0x0

    :try_start_0
    aget-byte v1, p1, v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v1

    invoke-interface {v0, v1}, Ljava/nio/file/attribute/DosFileAttributeView;->setReadOnly(Z)V

    .line 470
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v1

    invoke-interface {v0, v1}, Ljava/nio/file/attribute/DosFileAttributeView;->setHidden(Z)V

    .line 471
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v1

    invoke-interface {v0, v1}, Ljava/nio/file/attribute/DosFileAttributeView;->setSystem(Z)V

    .line 472
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v1

    invoke-interface {v0, v1}, Ljava/nio/file/attribute/DosFileAttributeView;->setArchive(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 473
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static assertFileExists(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 525
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_0
    return-void
.end method

.method public static assertFilesExist(Ljava/util/List;Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;)V
    .locals 3
    .param p1, "symLinkAction"    # Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 351
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lnet/lingala/zip4j/util/FileUtils;->isSymbolicLink(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 354
    sget-object v2, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINK_AND_LINKED_FILE:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    invoke-virtual {p1, v2}, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINKED_FILE_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 355
    invoke-virtual {p1, v2}, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    :cond_1
    invoke-static {v0}, Lnet/lingala/zip4j/util/FileUtils;->assertSymbolicLinkTargetExists(Ljava/io/File;)V

    goto :goto_0

    .line 359
    :cond_2
    invoke-static {v0}, Lnet/lingala/zip4j/util/FileUtils;->assertFileExists(Ljava/io/File;)V

    goto :goto_0

    .line 362
    .end local v0    # "file":Ljava/io/File;
    :cond_3
    return-void
.end method

.method private static assertSymbolicLinkTargetExists(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 531
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 532
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Symlink target \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lnet/lingala/zip4j/util/FileUtils;->readSymbolicLink(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not exist for link \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 534
    :cond_0
    return-void
.end method

.method public static copyFile(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLnet/lingala/zip4j/progress/ProgressMonitor;I)V
    .locals 14
    .param p0, "randomAccessFile"    # Ljava/io/RandomAccessFile;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "progressMonitor"    # Lnet/lingala/zip4j/progress/ProgressMonitor;
    .param p7, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 304
    const-wide/16 v10, 0x0

    cmp-long v9, p2, v10

    if-ltz v9, :cond_0

    const-wide/16 v10, 0x0

    cmp-long v9, p4, v10

    if-ltz v9, :cond_0

    cmp-long v9, p2, p4

    if-lez v9, :cond_1

    .line 305
    :cond_0
    new-instance v9, Lnet/lingala/zip4j/exception/ZipException;

    const-string v10, "invalid offsets"

    invoke-direct {v9, v10}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 308
    :cond_1
    cmp-long v9, p2, p4

    if-nez v9, :cond_3

    .line 347
    :cond_2
    :goto_0
    return-void

    .line 313
    :cond_3
    :try_start_0
    move-wide/from16 v0, p2

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 317
    const-wide/16 v4, 0x0

    .line 318
    .local v4, "bytesRead":J
    sub-long v6, p4, p2

    .line 320
    .local v6, "bytesToRead":J
    sub-long v10, p4, p2

    move/from16 v0, p7

    int-to-long v12, v0

    cmp-long v9, v10, v12

    if-gez v9, :cond_5

    .line 321
    long-to-int v9, v6

    new-array v2, v9, [B

    .line 326
    .local v2, "buff":[B
    :cond_4
    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v8

    .local v8, "readLen":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 327
    const/4 v9, 0x0

    invoke-virtual {p1, v2, v9, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 329
    int-to-long v10, v8

    move-object/from16 v0, p6

    invoke-virtual {v0, v10, v11}, Lnet/lingala/zip4j/progress/ProgressMonitor;->updateWorkCompleted(J)V

    .line 330
    invoke-virtual/range {p6 .. p6}, Lnet/lingala/zip4j/progress/ProgressMonitor;->isCancelAllTasks()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 331
    sget-object v9, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->CANCELLED:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setResult(Lnet/lingala/zip4j/progress/ProgressMonitor$Result;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 344
    .end local v2    # "buff":[B
    .end local v4    # "bytesRead":J
    .end local v6    # "bytesToRead":J
    .end local v8    # "readLen":I
    :catch_0
    move-exception v3

    .line 345
    .local v3, "e":Ljava/io/IOException;
    new-instance v9, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v9, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    throw v9

    .line 323
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "bytesRead":J
    .restart local v6    # "bytesToRead":J
    :cond_5
    :try_start_1
    move/from16 v0, p7

    new-array v2, v0, [B

    .restart local v2    # "buff":[B
    goto :goto_1

    .line 335
    .restart local v8    # "readLen":I
    :cond_6
    int-to-long v10, v8

    add-long/2addr v4, v10

    .line 337
    cmp-long v9, v4, v6

    if-eqz v9, :cond_2

    .line 339
    array-length v9, v2

    int-to-long v10, v9

    add-long/2addr v10, v4

    cmp-long v9, v10, v6

    if-lez v9, :cond_4

    .line 340
    sub-long v10, v6, v4

    long-to-int v9, v10

    new-array v2, v9, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getAllSortedNumberedSplitFiles(Ljava/io/File;)[Ljava/io/File;
    .locals 4
    .param p0, "firstNumberedFile"    # Ljava/io/File;

    .prologue
    .line 385
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/lingala/zip4j/util/FileUtils;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "zipFileNameWithoutExtension":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    new-instance v3, Lnet/lingala/zip4j/util/FileUtils$1;

    invoke-direct {v3, v1}, Lnet/lingala/zip4j/util/FileUtils$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 393
    .local v0, "allSplitFiles":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 394
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/io/File;

    .line 399
    .end local v0    # "allSplitFiles":[Ljava/io/File;
    :goto_0
    return-object v0

    .line 397
    .restart local v0    # "allSplitFiles":[Ljava/io/File;
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getDefaultFileAttributes(Z)[B
    .locals 4
    .param p0, "isDirectory"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 423
    new-array v0, v2, [B

    .line 424
    .local v0, "permissions":[B
    invoke-static {}, Lnet/lingala/zip4j/util/FileUtils;->isUnix()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lnet/lingala/zip4j/util/FileUtils;->isMac()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 425
    :cond_0
    if-eqz p0, :cond_2

    .line 426
    sget-object v1, Lnet/lingala/zip4j/util/FileUtils;->DEFAULT_POSIX_FOLDER_ATTRIBUTES:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    :cond_1
    :goto_0
    return-object v0

    .line 428
    :cond_2
    sget-object v1, Lnet/lingala/zip4j/util/FileUtils;->DEFAULT_POSIX_FILE_ATTRIBUTES:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 430
    :cond_3
    invoke-static {}, Lnet/lingala/zip4j/util/FileUtils;->isWindows()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    .line 431
    aget-byte v1, v0, v3

    invoke-static {v1, v2}, Lnet/lingala/zip4j/util/BitUtils;->setBit(BI)B

    move-result v1

    aput-byte v1, v0, v3

    goto :goto_0
.end method

.method private static getExtensionZerosPrefix(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 452
    const/16 v0, 0x9

    if-ge p0, v0, :cond_0

    .line 453
    const-string v0, "00"

    .line 457
    :goto_0
    return-object v0

    .line 454
    :cond_0
    const/16 v0, 0x63

    if-ge p0, v0, :cond_1

    .line 455
    const-string v0, "0"

    goto :goto_0

    .line 457
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static getFileAttributes(Ljava/io/File;)[B
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x4

    .line 78
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 92
    :goto_0
    return-object v2

    .line 82
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    .line 84
    .local v1, "path":Ljava/nio/file/Path;
    invoke-static {}, Lnet/lingala/zip4j/util/FileUtils;->isWindows()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 85
    invoke-static {v1}, Lnet/lingala/zip4j/util/FileUtils;->getWindowsFileAttributes(Ljava/nio/file/Path;)[B

    move-result-object v2

    goto :goto_0

    .line 86
    :cond_2
    invoke-static {}, Lnet/lingala/zip4j/util/FileUtils;->isMac()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lnet/lingala/zip4j/util/FileUtils;->isUnix()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 87
    :cond_3
    invoke-static {v1}, Lnet/lingala/zip4j/util/FileUtils;->getPosixFileAttributes(Ljava/nio/file/Path;)[B

    move-result-object v2

    goto :goto_0

    .line 89
    :cond_4
    const/4 v2, 0x4

    new-array v2, v2, [B
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    .end local v1    # "path":Ljava/nio/file/Path;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    new-array v2, v3, [B

    goto :goto_0
.end method

.method public static getFileExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 369
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "fileName":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    const-string v1, ""

    .line 375
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 138
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 139
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 143
    .end local p0    # "fileName":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "fileName":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getFilesInDirectoryRecursive(Ljava/io/File;ZZ)Ljava/util/List;
    .locals 1
    .param p0, "path"    # Ljava/io/File;
    .param p1, "readHiddenFiles"    # Z
    .param p2, "readHiddenFolders"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "ZZ)",
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
    .line 97
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lnet/lingala/zip4j/util/FileUtils;->getFilesInDirectoryRecursive(Ljava/io/File;ZZLnet/lingala/zip4j/model/ExcludeFileFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getFilesInDirectoryRecursive(Ljava/io/File;ZZLnet/lingala/zip4j/model/ExcludeFileFilter;)Ljava/util/List;
    .locals 6
    .param p0, "path"    # Ljava/io/File;
    .param p1, "readHiddenFiles"    # Z
    .param p2, "readHiddenFolders"    # Z
    .param p3, "excludedFiles"    # Lnet/lingala/zip4j/model/ExcludeFileFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "ZZ",
            "Lnet/lingala/zip4j/model/ExcludeFileFilter;",
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
    .line 103
    if-nez p0, :cond_0

    .line 104
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    const-string v4, "input path is null, cannot read files in the directory"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 107
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 110
    .local v1, "filesAndDirs":[Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_2

    .line 134
    :cond_1
    return-object v2

    .line 114
    :cond_2
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 115
    .local v0, "file":Ljava/io/File;
    if-eqz p3, :cond_4

    invoke-interface {p3, v0}, Lnet/lingala/zip4j/model/ExcludeFileFilter;->isExcluded(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 114
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 121
    if-eqz p2, :cond_3

    .line 128
    :cond_5
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 130
    invoke-static {v0, p1, p2, p3}, Lnet/lingala/zip4j/util/FileUtils;->getFilesInDirectoryRecursive(Ljava/io/File;ZZLnet/lingala/zip4j/model/ExcludeFileFilter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 124
    :cond_6
    if-nez p1, :cond_5

    goto :goto_1
.end method

.method private static getNameOfFileInZip(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "fileToAdd"    # Ljava/io/File;
    .param p1, "fileNameInZip"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    .end local p1    # "fileNameInZip":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 290
    .restart local p1    # "fileNameInZip":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lnet/lingala/zip4j/util/FileUtils;->isSymbolicLink(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    const/4 v2, 0x0

    sget-object v3, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getNextNumberedSplitFileCounterAsExtension(I)Ljava/lang/String;
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lnet/lingala/zip4j/util/FileUtils;->getExtensionZerosPrefix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p0, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPosixFileAttributes(Ljava/nio/file/Path;)[B
    .locals 7
    .param p0, "file"    # Ljava/nio/file/Path;

    .prologue
    const/4 v3, 0x4

    .line 537
    new-array v0, v3, [B

    .line 540
    .local v0, "fileAttributes":[B
    :try_start_0
    const-class v3, Ljava/nio/file/attribute/PosixFileAttributeView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/nio/file/LinkOption;

    const/4 v5, 0x0

    sget-object v6, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v1

    check-cast v1, Ljava/nio/file/attribute/PosixFileAttributeView;

    .line 542
    .local v1, "posixFileAttributeView":Ljava/nio/file/attribute/PosixFileAttributeView;
    invoke-interface {v1}, Ljava/nio/file/attribute/PosixFileAttributeView;->readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/attribute/PosixFileAttributes;->permissions()Ljava/util/Set;

    move-result-object v2

    .line 544
    .local v2, "posixFilePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    const/4 v3, 0x3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v4}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    const/4 v5, 0x3

    aget-byte v5, v0, v5

    const/4 v6, 0x7

    invoke-static {v4, v5, v6}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v4

    aput-byte v4, v0, v3

    .line 545
    const/4 v3, 0x3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v4}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    const/4 v5, 0x3

    aget-byte v5, v0, v5

    const/4 v6, 0x6

    invoke-static {v4, v5, v6}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v4

    aput-byte v4, v0, v3

    .line 546
    const/4 v3, 0x3

    invoke-static {p0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v4

    const/4 v5, 0x3

    aget-byte v5, v0, v5

    const/4 v6, 0x5

    invoke-static {v4, v5, v6}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v4

    aput-byte v4, v0, v3

    .line 547
    const/4 v3, 0x3

    sget-object v4, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x3

    aget-byte v5, v0, v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v4

    aput-byte v4, v0, v3

    .line 548
    const/4 v3, 0x2

    sget-object v4, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    aget-byte v5, v0, v5

    const/4 v6, 0x7

    invoke-static {v4, v5, v6}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v4

    aput-byte v4, v0, v3

    .line 549
    const/4 v3, 0x2

    sget-object v4, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    aget-byte v5, v0, v5

    const/4 v6, 0x6

    invoke-static {v4, v5, v6}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v4

    aput-byte v4, v0, v3

    .line 550
    const/4 v3, 0x2

    sget-object v4, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    aget-byte v5, v0, v5

    const/4 v6, 0x5

    invoke-static {v4, v5, v6}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v4

    aput-byte v4, v0, v3

    .line 551
    const/4 v3, 0x2

    sget-object v4, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    aget-byte v5, v0, v5

    const/4 v6, 0x4

    invoke-static {v4, v5, v6}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v4

    aput-byte v4, v0, v3

    .line 552
    const/4 v3, 0x2

    sget-object v4, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    aget-byte v5, v0, v5

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v4

    aput-byte v4, v0, v3

    .line 553
    const/4 v3, 0x2

    sget-object v4, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    aget-byte v5, v0, v5

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v4

    aput-byte v4, v0, v3

    .line 554
    const/4 v3, 0x2

    sget-object v4, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    aget-byte v5, v0, v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v4

    aput-byte v4, v0, v3

    .line 555
    const/4 v3, 0x2

    sget-object v4, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    aget-byte v5, v0, v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v4

    aput-byte v4, v0, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    .end local v1    # "posixFileAttributeView":Ljava/nio/file/attribute/PosixFileAttributeView;
    .end local v2    # "posixFilePermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    :goto_0
    return-object v0

    .line 556
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getRelativeFileName(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)Ljava/lang/String;
    .locals 15
    .param p0, "fileToAdd"    # Ljava/io/File;
    .param p1, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 211
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "fileCanonicalPath":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipParameters;->getDefaultFolderPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 213
    new-instance v6, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipParameters;->getDefaultFolderPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v6, "rootFolderFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    .line 216
    .local v7, "rootFolderFileRef":Ljava/lang/String;
    sget-object v12, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 217
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 222
    :cond_0
    invoke-static {p0}, Lnet/lingala/zip4j/util/FileUtils;->isSymbolicLink(Ljava/io/File;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 223
    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 224
    .local v9, "rootPath":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 229
    .end local v9    # "rootPath":Ljava/lang/String;
    .local v11, "tmpFileName":Ljava/lang/String;
    :goto_0
    const-string v12, "file.separator"

    invoke-static {v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 230
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 233
    :cond_1
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v10, "tmpFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 236
    const-string v12, "\\\\"

    const-string v13, "/"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 237
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 244
    :goto_1
    move-object v4, v11

    .line 256
    .end local v6    # "rootFolderFile":Ljava/io/File;
    .end local v7    # "rootFolderFileRef":Ljava/lang/String;
    .end local v10    # "tmpFile":Ljava/io/File;
    .end local v11    # "tmpFileName":Ljava/lang/String;
    .local v4, "fileName":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipParameters;->getRootFolderNameInZip()Ljava/lang/String;

    move-result-object v8

    .line 257
    .local v8, "rootFolderNameInZip":Ljava/lang/String;
    invoke-static {v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 258
    const-string v12, "\\"

    invoke-virtual {v8, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "/"

    invoke-virtual {v8, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 259
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 262
    :cond_3
    const-string v12, "\\\\"

    const-string v13, "/"

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 263
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 266
    :cond_4
    invoke-static {v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 267
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fileName to add to zip is empty or null. fileName: \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' DefaultFolderPath: \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 268
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipParameters;->getDefaultFolderPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' FileNameInZip: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 269
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "errorMessage":Ljava/lang/String;
    invoke-static {p0}, Lnet/lingala/zip4j/util/FileUtils;->isSymbolicLink(Ljava/io/File;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 272
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "isSymlink: true "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    :cond_5
    invoke-static {v8}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 276
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "rootFolderNameInZip: \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 279
    :cond_6
    new-instance v12, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v12, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 226
    .end local v2    # "errorMessage":Ljava/lang/String;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v8    # "rootFolderNameInZip":Ljava/lang/String;
    .restart local v6    # "rootFolderFile":Ljava/io/File;
    .restart local v7    # "rootFolderFileRef":Ljava/lang/String;
    :cond_7
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "tmpFileName":Ljava/lang/String;
    goto/16 :goto_0

    .line 239
    .restart local v10    # "tmpFile":Ljava/io/File;
    :cond_8
    const/4 v12, 0x0

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "bkFileName":Ljava/lang/String;
    const-string v12, "\\\\"

    const-string v13, "/"

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lnet/lingala/zip4j/util/FileUtils;->getNameOfFileInZip(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 246
    .end local v0    # "bkFileName":Ljava/lang/String;
    .end local v6    # "rootFolderFile":Ljava/io/File;
    .end local v7    # "rootFolderFileRef":Ljava/lang/String;
    .end local v10    # "tmpFile":Ljava/io/File;
    .end local v11    # "tmpFileName":Ljava/lang/String;
    :cond_9
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    .local v5, "relFile":Ljava/io/File;
    invoke-virtual/range {p1 .. p1}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lnet/lingala/zip4j/util/FileUtils;->getNameOfFileInZip(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 248
    .restart local v4    # "fileName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 249
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto/16 :goto_2

    .line 252
    .end local v3    # "fileCanonicalPath":Ljava/lang/String;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "relFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Ljava/io/IOException;
    new-instance v12, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v12, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    throw v12

    .line 282
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "fileCanonicalPath":Ljava/lang/String;
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v8    # "rootFolderNameInZip":Ljava/lang/String;
    :cond_a
    return-object v4
.end method

.method public static getSplitZipFiles(Lnet/lingala/zip4j/model/ZipModel;)Ljava/util/List;
    .locals 10
    .param p0, "zipModel"    # Lnet/lingala/zip4j/model/ZipModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/lingala/zip4j/model/ZipModel;",
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
    .line 162
    if-nez p0, :cond_0

    .line 163
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    const-string v7, "cannot get split zip files: zipmodel is null"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 166
    :cond_0
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v6

    if-nez v6, :cond_2

    .line 167
    const/4 v5, 0x0

    .line 204
    :cond_1
    :goto_0
    return-object v5

    .line 170
    :cond_2
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 171
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    const-string v7, "zip file does not exist"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 174
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v5, "splitZipFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v0

    .line 178
    .local v0, "currZipFile":Ljava/io/File;
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v6

    if-nez v6, :cond_4

    .line 179
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    :cond_4
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v6

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getNumberOfThisDisk()I

    move-result v3

    .line 185
    .local v3, "numberOfThisDisk":I
    if-nez v3, :cond_5

    .line 186
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-gt v2, v3, :cond_1

    .line 190
    if-ne v2, v3, :cond_6

    .line 191
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 193
    :cond_6
    const-string v1, ".z0"

    .line 194
    .local v1, "fileExt":Ljava/lang/String;
    const/16 v6, 0x9

    if-lt v2, v6, :cond_7

    .line 195
    const-string v1, ".z"

    .line 197
    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 198
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "partFile":Ljava/lang/String;
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 200
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 198
    .end local v4    # "partFile":Ljava/lang/String;
    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method private static getWindowsFileAttributes(Ljava/nio/file/Path;)[B
    .locals 8
    .param p0, "file"    # Ljava/nio/file/Path;

    .prologue
    const/4 v4, 0x4

    .line 502
    new-array v2, v4, [B

    .line 505
    .local v2, "fileAttributes":[B
    :try_start_0
    const-class v4, Ljava/nio/file/attribute/DosFileAttributeView;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/nio/file/LinkOption;

    const/4 v6, 0x0

    sget-object v7, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v7, v5, v6

    invoke-static {p0, v4, v5}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/DosFileAttributeView;

    .line 507
    .local v0, "dosFileAttributeView":Ljava/nio/file/attribute/DosFileAttributeView;
    invoke-interface {v0}, Ljava/nio/file/attribute/DosFileAttributeView;->readAttributes()Ljava/nio/file/attribute/DosFileAttributes;

    move-result-object v1

    .line 509
    .local v1, "dosFileAttributes":Ljava/nio/file/attribute/DosFileAttributes;
    const/4 v3, 0x0

    .line 511
    .local v3, "windowsAttribute":B
    invoke-interface {v1}, Ljava/nio/file/attribute/DosFileAttributes;->isReadOnly()Z

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v3

    .line 512
    invoke-interface {v1}, Ljava/nio/file/attribute/DosFileAttributes;->isHidden()Z

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v3

    .line 513
    invoke-interface {v1}, Ljava/nio/file/attribute/DosFileAttributes;->isSystem()Z

    move-result v4

    const/4 v5, 0x2

    invoke-static {v4, v3, v5}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v3

    .line 514
    invoke-interface {v1}, Ljava/nio/file/attribute/DosFileAttributes;->isDirectory()Z

    move-result v4

    const/4 v5, 0x4

    invoke-static {v4, v3, v5}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v3

    .line 515
    invoke-interface {v1}, Ljava/nio/file/attribute/DosFileAttributes;->isArchive()Z

    move-result v4

    const/4 v5, 0x5

    invoke-static {v4, v3, v5}, Lnet/lingala/zip4j/util/FileUtils;->setBitIfApplicable(ZBI)B

    move-result v3

    .line 516
    const/4 v4, 0x0

    aput-byte v3, v2, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    .end local v0    # "dosFileAttributeView":Ljava/nio/file/attribute/DosFileAttributeView;
    .end local v1    # "dosFileAttributes":Ljava/nio/file/attribute/DosFileAttributes;
    .end local v3    # "windowsAttribute":B
    :goto_0
    return-object v2

    .line 517
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getZipFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "zipFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {p0}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "zip file name is empty or null, cannot determine zip file name"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_0
    move-object v0, p0

    .line 151
    .local v0, "tmpFileName":Ljava/lang/String;
    const-string v1, "file.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    const-string v1, "file.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    :cond_1
    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    const/4 v1, 0x0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_2
    return-object v0
.end method

.method public static isMac()Z
    .locals 2

    .prologue
    .line 442
    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "os":Ljava/lang/String;
    const-string v1, "mac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static isNumberedSplitFile(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 365
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zip.001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSymbolicLink(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 408
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 410
    :goto_0
    return v1

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 409
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static isUnix()Z
    .locals 2

    .prologue
    .line 447
    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "os":Ljava/lang/String;
    const-string v1, "nux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static isWindows()Z
    .locals 2

    .prologue
    .line 437
    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "os":Ljava/lang/String;
    const-string v1, "win"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static isZipEntryDirectory(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fileNameInZip"    # Ljava/lang/String;

    .prologue
    .line 298
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\\"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readSymbolicLink(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 416
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 418
    :goto_0
    return-object v1

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 417
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static setBitIfApplicable(ZBI)B
    .locals 0
    .param p0, "applicable"    # Z
    .param p1, "b"    # B
    .param p2, "pos"    # I

    .prologue
    .line 564
    if-eqz p0, :cond_0

    .line 565
    invoke-static {p1, p2}, Lnet/lingala/zip4j/util/BitUtils;->setBit(BI)B

    move-result p1

    .line 568
    :cond_0
    return p1
.end method

.method public static setFileAttributes(Ljava/nio/file/Path;[B)V
    .locals 1
    .param p0, "file"    # Ljava/nio/file/Path;
    .param p1, "fileAttributes"    # [B

    .prologue
    .line 49
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-static {}, Lnet/lingala/zip4j/util/FileUtils;->isWindows()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    invoke-static {p0, p1}, Lnet/lingala/zip4j/util/FileUtils;->applyWindowsFileAttributes(Ljava/nio/file/Path;[B)V

    goto :goto_0

    .line 55
    :cond_2
    invoke-static {}, Lnet/lingala/zip4j/util/FileUtils;->isMac()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lnet/lingala/zip4j/util/FileUtils;->isUnix()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    :cond_3
    invoke-static {p0, p1}, Lnet/lingala/zip4j/util/FileUtils;->applyPosixFileAttributes(Ljava/nio/file/Path;[B)V

    goto :goto_0
.end method

.method public static setFileLastModifiedTime(Ljava/nio/file/Path;J)V
    .locals 3
    .param p0, "file"    # Ljava/nio/file/Path;
    .param p1, "lastModifiedTime"    # J

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    :try_start_0
    invoke-static {p1, p2}, Lnet/lingala/zip4j/util/Zip4jUtil;->dosToExtendedEpochTme(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/nio/file/Files;->setLastModifiedTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setFileLastModifiedTimeWithoutNio(Ljava/io/File;J)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "lastModifiedTime"    # J

    .prologue
    .line 73
    invoke-static {p1, p2}, Lnet/lingala/zip4j/util/Zip4jUtil;->dosToExtendedEpochTme(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 74
    return-void
.end method

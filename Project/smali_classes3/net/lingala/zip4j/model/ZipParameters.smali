.class public Lnet/lingala/zip4j/model/ZipParameters;
.super Ljava/lang/Object;
.source "ZipParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;
    }
.end annotation


# instance fields
.field private aesKeyStrength:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

.field private aesVersion:Lnet/lingala/zip4j/model/enums/AesVersion;

.field private compressionLevel:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field private compressionMethod:Lnet/lingala/zip4j/model/enums/CompressionMethod;

.field private defaultFolderPath:Ljava/lang/String;

.field private encryptFiles:Z

.field private encryptionMethod:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

.field private entryCRC:J

.field private entrySize:J

.field private excludeFileFilter:Lnet/lingala/zip4j/model/ExcludeFileFilter;

.field private fileComment:Ljava/lang/String;

.field private fileNameInZip:Ljava/lang/String;

.field private includeRootFolder:Z

.field private lastModifiedFileTime:J

.field private overrideExistingFilesInZip:Z

.field private readHiddenFiles:Z

.field private readHiddenFolders:Z

.field private rootFolderNameInZip:Ljava/lang/String;

.field private symbolicLinkAction:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

.field private unixMode:Z

.field private writeExtendedLocalFileHeader:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionMethod:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 49
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->NORMAL:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionLevel:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptFiles:Z

    .line 51
    sget-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->NONE:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptionMethod:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 52
    iput-boolean v2, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFiles:Z

    .line 53
    iput-boolean v2, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFolders:Z

    .line 54
    sget-object v0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesKeyStrength:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 55
    sget-object v0, Lnet/lingala/zip4j/model/enums/AesVersion;->TWO:Lnet/lingala/zip4j/model/enums/AesVersion;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesVersion:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 56
    iput-boolean v2, p0, Lnet/lingala/zip4j/model/ZipParameters;->includeRootFolder:Z

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->lastModifiedFileTime:J

    .line 61
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->entrySize:J

    .line 62
    iput-boolean v2, p0, Lnet/lingala/zip4j/model/ZipParameters;->writeExtendedLocalFileHeader:Z

    .line 63
    iput-boolean v2, p0, Lnet/lingala/zip4j/model/ZipParameters;->overrideExistingFilesInZip:Z

    .line 66
    sget-object v0, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINKED_FILE_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->symbolicLinkAction:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 78
    return-void
.end method

.method public constructor <init>(Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 3
    .param p1, "zipParameters"    # Lnet/lingala/zip4j/model/ZipParameters;

    .prologue
    const/4 v2, 0x1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionMethod:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 49
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->NORMAL:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionLevel:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptFiles:Z

    .line 51
    sget-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->NONE:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptionMethod:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 52
    iput-boolean v2, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFiles:Z

    .line 53
    iput-boolean v2, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFolders:Z

    .line 54
    sget-object v0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesKeyStrength:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 55
    sget-object v0, Lnet/lingala/zip4j/model/enums/AesVersion;->TWO:Lnet/lingala/zip4j/model/enums/AesVersion;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesVersion:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 56
    iput-boolean v2, p0, Lnet/lingala/zip4j/model/ZipParameters;->includeRootFolder:Z

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->lastModifiedFileTime:J

    .line 61
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->entrySize:J

    .line 62
    iput-boolean v2, p0, Lnet/lingala/zip4j/model/ZipParameters;->writeExtendedLocalFileHeader:Z

    .line 63
    iput-boolean v2, p0, Lnet/lingala/zip4j/model/ZipParameters;->overrideExistingFilesInZip:Z

    .line 66
    sget-object v0, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINKED_FILE_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->symbolicLinkAction:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 85
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionMethod:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 86
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionLevel()Lnet/lingala/zip4j/model/enums/CompressionLevel;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionLevel:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 87
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptFiles:Z

    .line 88
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptionMethod:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 89
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isReadHiddenFiles()Z

    move-result v0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFiles:Z

    .line 90
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isReadHiddenFolders()Z

    move-result v0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFolders:Z

    .line 91
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getAesKeyStrength()Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesKeyStrength:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 92
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getAesVersion()Lnet/lingala/zip4j/model/enums/AesVersion;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesVersion:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 93
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isIncludeRootFolder()Z

    move-result v0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->includeRootFolder:Z

    .line 94
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getEntryCRC()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->entryCRC:J

    .line 95
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getDefaultFolderPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->defaultFolderPath:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->fileNameInZip:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getLastModifiedFileTime()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->lastModifiedFileTime:J

    .line 98
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getEntrySize()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->entrySize:J

    .line 99
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isWriteExtendedLocalFileHeader()Z

    move-result v0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->writeExtendedLocalFileHeader:Z

    .line 100
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isOverrideExistingFilesInZip()Z

    move-result v0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->overrideExistingFilesInZip:Z

    .line 101
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getRootFolderNameInZip()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->rootFolderNameInZip:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getFileComment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->fileComment:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getSymbolicLinkAction()Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->symbolicLinkAction:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 104
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getExcludeFileFilter()Lnet/lingala/zip4j/model/ExcludeFileFilter;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->excludeFileFilter:Lnet/lingala/zip4j/model/ExcludeFileFilter;

    .line 105
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isUnixMode()Z

    move-result v0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->unixMode:Z

    .line 106
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAesKeyStrength()Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesKeyStrength:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    return-object v0
.end method

.method public getAesVersion()Lnet/lingala/zip4j/model/enums/AesVersion;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesVersion:Lnet/lingala/zip4j/model/enums/AesVersion;

    return-object v0
.end method

.method public getCompressionLevel()Lnet/lingala/zip4j/model/enums/CompressionLevel;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionLevel:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    return-object v0
.end method

.method public getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionMethod:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    return-object v0
.end method

.method public getDefaultFolderPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->defaultFolderPath:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptionMethod:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    return-object v0
.end method

.method public getEntryCRC()J
    .locals 2

    .prologue
    .line 260
    iget-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->entryCRC:J

    return-wide v0
.end method

.method public getEntrySize()J
    .locals 2

    .prologue
    .line 314
    iget-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->entrySize:J

    return-wide v0
.end method

.method public getExcludeFileFilter()Lnet/lingala/zip4j/model/ExcludeFileFilter;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->excludeFileFilter:Lnet/lingala/zip4j/model/ExcludeFileFilter;

    return-object v0
.end method

.method public getFileComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->fileComment:Ljava/lang/String;

    return-object v0
.end method

.method public getFileNameInZip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->fileNameInZip:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifiedFileTime()J
    .locals 2

    .prologue
    .line 297
    iget-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->lastModifiedFileTime:J

    return-wide v0
.end method

.method public getRootFolderNameInZip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->rootFolderNameInZip:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbolicLinkAction()Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->symbolicLinkAction:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    return-object v0
.end method

.method public isEncryptFiles()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptFiles:Z

    return v0
.end method

.method public isIncludeRootFolder()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->includeRootFolder:Z

    return v0
.end method

.method public isOverrideExistingFilesInZip()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->overrideExistingFilesInZip:Z

    return v0
.end method

.method public isReadHiddenFiles()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFiles:Z

    return v0
.end method

.method public isReadHiddenFolders()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFolders:Z

    return v0
.end method

.method public isUnixMode()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->unixMode:Z

    return v0
.end method

.method public isWriteExtendedLocalFileHeader()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->writeExtendedLocalFileHeader:Z

    return v0
.end method

.method public setAesKeyStrength(Lnet/lingala/zip4j/model/enums/AesKeyStrength;)V
    .locals 0
    .param p1, "aesKeyStrength"    # Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .prologue
    .line 224
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesKeyStrength:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 225
    return-void
.end method

.method public setAesVersion(Lnet/lingala/zip4j/model/enums/AesVersion;)V
    .locals 0
    .param p1, "aesVersion"    # Lnet/lingala/zip4j/model/enums/AesVersion;

    .prologue
    .line 240
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesVersion:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 241
    return-void
.end method

.method public setCompressionLevel(Lnet/lingala/zip4j/model/enums/CompressionLevel;)V
    .locals 0
    .param p1, "compressionLevel"    # Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .prologue
    .line 169
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionLevel:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 170
    return-void
.end method

.method public setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V
    .locals 0
    .param p1, "compressionMethod"    # Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .prologue
    .line 121
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionMethod:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 122
    return-void
.end method

.method public setDefaultFolderPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultFolderPath"    # Ljava/lang/String;

    .prologue
    .line 272
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->defaultFolderPath:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setEncryptFiles(Z)V
    .locals 0
    .param p1, "encryptFiles"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptFiles:Z

    .line 138
    return-void
.end method

.method public setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V
    .locals 0
    .param p1, "encryptionMethod"    # Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .prologue
    .line 153
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptionMethod:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 154
    return-void
.end method

.method public setEntryCRC(J)V
    .locals 1
    .param p1, "entryCRC"    # J

    .prologue
    .line 264
    iput-wide p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->entryCRC:J

    .line 265
    return-void
.end method

.method public setEntrySize(J)V
    .locals 1
    .param p1, "entrySize"    # J

    .prologue
    .line 318
    iput-wide p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->entrySize:J

    .line 319
    return-void
.end method

.method public setExcludeFileFilter(Lnet/lingala/zip4j/model/ExcludeFileFilter;)V
    .locals 0
    .param p1, "excludeFileFilter"    # Lnet/lingala/zip4j/model/ExcludeFileFilter;

    .prologue
    .line 401
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->excludeFileFilter:Lnet/lingala/zip4j/model/ExcludeFileFilter;

    .line 402
    return-void
.end method

.method public setFileComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileComment"    # Ljava/lang/String;

    .prologue
    .line 369
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->fileComment:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public setFileNameInZip(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileNameInZip"    # Ljava/lang/String;

    .prologue
    .line 289
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->fileNameInZip:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setIncludeRootFolder(Z)V
    .locals 0
    .param p1, "includeRootFolder"    # Z

    .prologue
    .line 256
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->includeRootFolder:Z

    .line 257
    return-void
.end method

.method public setLastModifiedFileTime(J)V
    .locals 3
    .param p1, "lastModifiedFileTime"    # J

    .prologue
    .line 306
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 310
    :cond_0
    iput-wide p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->lastModifiedFileTime:J

    goto :goto_0
.end method

.method public setOverrideExistingFilesInZip(Z)V
    .locals 0
    .param p1, "overrideExistingFilesInZip"    # Z

    .prologue
    .line 338
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->overrideExistingFilesInZip:Z

    .line 339
    return-void
.end method

.method public setReadHiddenFiles(Z)V
    .locals 0
    .param p1, "readHiddenFiles"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFiles:Z

    .line 188
    return-void
.end method

.method public setReadHiddenFolders(Z)V
    .locals 0
    .param p1, "readHiddenFolders"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFolders:Z

    .line 205
    return-void
.end method

.method public setRootFolderNameInZip(Ljava/lang/String;)V
    .locals 0
    .param p1, "rootFolderNameInZip"    # Ljava/lang/String;

    .prologue
    .line 353
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->rootFolderNameInZip:Ljava/lang/String;

    .line 354
    return-void
.end method

.method public setSymbolicLinkAction(Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;)V
    .locals 0
    .param p1, "symbolicLinkAction"    # Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .prologue
    .line 385
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->symbolicLinkAction:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 386
    return-void
.end method

.method public setUnixMode(Z)V
    .locals 0
    .param p1, "unixMode"    # Z

    .prologue
    .line 417
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->unixMode:Z

    .line 418
    return-void
.end method

.method public setWriteExtendedLocalFileHeader(Z)V
    .locals 0
    .param p1, "writeExtendedLocalFileHeader"    # Z

    .prologue
    .line 326
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->writeExtendedLocalFileHeader:Z

    .line 327
    return-void
.end method

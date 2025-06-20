.class public Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;
.super Lorg/wlf/filedownloader/base/FailException;
.source "FileSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/file_download/file_saver/FileSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileSaveException"
.end annotation


# static fields
.field public static final TYPE_FILE_CAN_NOT_STORAGE:Ljava/lang/String;

.field public static final TYPE_RENAME_TEMP_FILE_ERROR:Ljava/lang/String;

.field public static final TYPE_SAVER_HAS_BEEN_STOPPED:Ljava/lang/String;

.field public static final TYPE_TEMP_FILE_DOES_NOT_EXIST:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_RENAME_TEMP_FILE_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;->TYPE_RENAME_TEMP_FILE_ERROR:Ljava/lang/String;

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_SAVER_HAS_BEEN_STOPPED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;->TYPE_SAVER_HAS_BEEN_STOPPED:Ljava/lang/String;

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_TEMP_FILE_DOES_NOT_EXIST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;->TYPE_TEMP_FILE_DOES_NOT_EXIST:Ljava/lang/String;

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_TYPE_FILE_CAN_NOT_STORAGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;->TYPE_FILE_CAN_NOT_STORAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 382
    invoke-direct {p0, p1, p2}, Lorg/wlf/filedownloader/base/FailException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/base/FailException;-><init>(Ljava/lang/Throwable;)V

    .line 387
    return-void
.end method

.method private setTypeByOriginalClassInstanceType(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 411
    if-nez p1, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_0

    goto :goto_0
.end method


# virtual methods
.method protected onInitTypeWithThrowable(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 391
    invoke-super {p0, p1}, Lorg/wlf/filedownloader/base/FailException;->onInitTypeWithThrowable(Ljava/lang/Throwable;)V

    .line 393
    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;->isTypeInit()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    instance-of v1, p1, Lorg/wlf/filedownloader/base/FailReason;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 398
    check-cast v0, Lorg/wlf/filedownloader/base/FailReason;

    .line 399
    .local v0, "failReason":Lorg/wlf/filedownloader/base/FailReason;
    invoke-virtual {v0}, Lorg/wlf/filedownloader/base/FailReason;->getOriginalCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;->setTypeByOriginalClassInstanceType(Ljava/lang/Throwable;)V

    .line 400
    invoke-virtual {p0}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;->isTypeInit()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 406
    .end local v0    # "failReason":Lorg/wlf/filedownloader/base/FailReason;
    :cond_2
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/file_download/file_saver/FileSaver$FileSaveException;->setTypeByOriginalClassInstanceType(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

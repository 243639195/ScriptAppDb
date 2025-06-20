.class public Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDao;
.super Lorg/wlf/filedownloader/db/BaseContentDbDao;
.source "DownloadFileDao.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDao;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDao;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 2
    .param p1, "dbHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .prologue
    .line 23
    const-string v0, "tb_download_file"

    const-string v1, "_id"

    invoke-direct {p0, p1, v0, v1}, Lorg/wlf/filedownloader/db/BaseContentDbDao;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method private updateVersion1To2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 66
    invoke-static {}, Lorg/wlf/filedownloader/DownloadFileInfo$Table;->getUpdateTableVersion1To2Sql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method private updateVersion1To3(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 76
    invoke-static {}, Lorg/wlf/filedownloader/DownloadFileInfo$Table;->getUpdateTableVersion1To2Sql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lorg/wlf/filedownloader/DownloadFileInfo$Table;->getUpdateTableVersion2To3Sql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method private updateVersion2To3(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 71
    invoke-static {}, Lorg/wlf/filedownloader/DownloadFileInfo$Table;->getUpdateTableVersion2To3Sql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 30
    invoke-static {}, Lorg/wlf/filedownloader/DownloadFileInfo$Table;->getCreateTableSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 36
    sget-object v0, Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDao;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDao;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onUpgrade\uff0coldVersion\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff0coldVersion\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wlf/filedownloader/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 40
    packed-switch p2, :pswitch_data_0

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 43
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDao;->updateVersion1To2(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 48
    :cond_1
    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 49
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 52
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDao;->updateVersion1To3(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 56
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDao;->updateVersion2To3(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 49
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

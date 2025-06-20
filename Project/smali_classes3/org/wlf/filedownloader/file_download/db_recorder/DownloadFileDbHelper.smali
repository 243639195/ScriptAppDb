.class public Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDbHelper;
.super Lorg/wlf/filedownloader/db/BaseContentDbHelper;
.source "DownloadFileDbHelper.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "download_file.db"

.field private static final DB_VERSION:I = 0x3


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const-string v0, "download_file.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/wlf/filedownloader/db/BaseContentDbHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 25
    return-void
.end method


# virtual methods
.method protected onConfigContentDbDaos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/wlf/filedownloader/db/ContentDbDao;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "contentDbDaos":Ljava/util/List;, "Ljava/util/List<Lorg/wlf/filedownloader/db/ContentDbDao;>;"
    new-instance v0, Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDao;

    invoke-direct {v0, p0}, Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDao;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 31
    .local v0, "downloadFileDao":Lorg/wlf/filedownloader/file_download/db_recorder/DownloadFileDao;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

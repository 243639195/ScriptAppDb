.class public final Lorg/wlf/filedownloader/DownloadFileInfo$Table;
.super Ljava/lang/Object;
.source "DownloadFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/DownloadFileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Table"
.end annotation


# static fields
.field public static final COLUMN_NAME_OF_FIELD_ACCEPT_RANGE_TYPE:Ljava/lang/String; = "accept_range_type"

.field public static final COLUMN_NAME_OF_FIELD_CREATE_DATETIME:Ljava/lang/String; = "create_datetime"

.field public static final COLUMN_NAME_OF_FIELD_DOWNLOADED_SIZE:Ljava/lang/String; = "downloaded_size"

.field public static final COLUMN_NAME_OF_FIELD_E_TAG:Ljava/lang/String; = "e_tag"

.field public static final COLUMN_NAME_OF_FIELD_FILE_DIR:Ljava/lang/String; = "file_dir"

.field public static final COLUMN_NAME_OF_FIELD_FILE_NAME:Ljava/lang/String; = "file_name"

.field public static final COLUMN_NAME_OF_FIELD_FILE_SIZE:Ljava/lang/String; = "file_size"

.field public static final COLUMN_NAME_OF_FIELD_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_NAME_OF_FIELD_LAST_MODIFIED:Ljava/lang/String; = "last_modified"

.field public static final COLUMN_NAME_OF_FIELD_STATUS:Ljava/lang/String; = "status"

.field public static final COLUMN_NAME_OF_FIELD_TEMP_FILE_NAME:Ljava/lang/String; = "temp_file_name"

.field public static final COLUMN_NAME_OF_FIELD_URL:Ljava/lang/String; = "url"

.field public static final TABLE_NAME_OF_DOWNLOAD_FILE:Ljava/lang/String; = "tb_download_file"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCreateTableSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "CREATE TABLE IF NOT EXISTS tb_download_file(_id INTEGER PRIMARY KEY AUTOINCREMENT,url TEXT UNIQUE,downloaded_size INTEGER,file_size INTEGER,e_tag TEXT,last_modified TEXT,accept_range_type TEXT,file_dir TEXT,temp_file_name TEXT,file_name TEXT,status INTEGER,create_datetime TEXT)"

    .line 107
    .local v0, "createTableSql":Ljava/lang/String;
    return-object v0
.end method

.method public static final getUpdateTableVersion1To2Sql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string v0, "ALTER TABLE tb_download_file ADD create_datetime TEXT"

    .line 120
    .local v0, "updateSql":Ljava/lang/String;
    return-object v0
.end method

.method public static final getUpdateTableVersion2To3Sql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-string v0, "ALTER TABLE tb_download_file ADD last_modified TEXT"

    .line 133
    .local v0, "updateSql":Ljava/lang/String;
    return-object v0
.end method

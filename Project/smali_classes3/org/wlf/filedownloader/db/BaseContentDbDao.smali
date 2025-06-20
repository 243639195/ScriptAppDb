.class public abstract Lorg/wlf/filedownloader/db/BaseContentDbDao;
.super Ljava/lang/Object;
.source "BaseContentDbDao.java"

# interfaces
.implements Lorg/wlf/filedownloader/db/ContentDbDao;
.implements Lorg/wlf/filedownloader/db/DatabaseCallback;


# static fields
.field public static final DEFAULT_TABLE_ID_FIELD_NAME:Ljava/lang/String; = "_id"


# instance fields
.field private mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mTableIdFieldName:Ljava/lang/String;

.field private mTableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "dbHelper"    # Landroid/database/sqlite/SQLiteOpenHelper;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "tableIdFieldName"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "_id"

    iput-object v0, p0, Lorg/wlf/filedownloader/db/BaseContentDbDao;->mTableIdFieldName:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lorg/wlf/filedownloader/db/BaseContentDbDao;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 30
    iput-object p2, p0, Lorg/wlf/filedownloader/db/BaseContentDbDao;->mTableName:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lorg/wlf/filedownloader/db/BaseContentDbDao;->mTableIdFieldName:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 53
    const/4 v0, -0x1

    .line 54
    .local v0, "count":I
    const/4 v1, 0x0

    .line 56
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v3, p0, Lorg/wlf/filedownloader/db/BaseContentDbDao;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 57
    iget-object v3, p0, Lorg/wlf/filedownloader/db/BaseContentDbDao;->mTableName:Ljava/lang/String;

    invoke-virtual {v1, v3, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 65
    :goto_0
    return v0

    .line 58
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 60
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    throw v3
.end method

.method public getTableIdFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/wlf/filedownloader/db/BaseContentDbDao;->mTableIdFieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/wlf/filedownloader/db/BaseContentDbDao;->mTableName:Ljava/lang/String;

    return-object v0
.end method

.method public insert(Landroid/content/ContentValues;)J
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 36
    const-wide/16 v2, -0x1

    .line 37
    .local v2, "id":J
    const/4 v0, 0x0

    .line 39
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v4, p0, Lorg/wlf/filedownloader/db/BaseContentDbDao;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 40
    iget-object v4, p0, Lorg/wlf/filedownloader/db/BaseContentDbDao;->mTableName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 48
    :goto_0
    return-wide v2

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 43
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    throw v4
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 90
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lorg/wlf/filedownloader/db/BaseContentDbDao;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 91
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/wlf/filedownloader/db/BaseContentDbDao;->mTableName:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 99
    :goto_0
    return-object v10

    .line 92
    :catch_0
    move-exception v11

    .line 93
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    throw v1
.end method

.method public update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 70
    const/4 v1, 0x0

    .line 71
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, -0x1

    .line 73
    .local v0, "count":I
    :try_start_0
    iget-object v3, p0, Lorg/wlf/filedownloader/db/BaseContentDbDao;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 74
    iget-object v3, p0, Lorg/wlf/filedownloader/db/BaseContentDbDao;->mTableName:Ljava/lang/String;

    invoke-virtual {v1, v3, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 82
    :goto_0
    return v0

    .line 75
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 77
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    throw v3
.end method

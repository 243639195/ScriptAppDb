.class public abstract Lorg/wlf/filedownloader/db/BaseContentDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BaseContentDbHelper.java"


# instance fields
.field private mContentDbDaoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/wlf/filedownloader/db/ContentDbDao;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/wlf/filedownloader/db/BaseContentDbHelper;->mContentDbDaoMap:Ljava/util/Map;

    .line 32
    invoke-direct {p0}, Lorg/wlf/filedownloader/db/BaseContentDbHelper;->initContentDbDaoMap()V

    .line 33
    return-void
.end method

.method private initContentDbDaoMap()V
    .locals 5

    .prologue
    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v1, "contentDbDaos":Ljava/util/List;, "Ljava/util/List<Lorg/wlf/filedownloader/db/ContentDbDao;>;"
    invoke-virtual {p0, v1}, Lorg/wlf/filedownloader/db/BaseContentDbHelper;->onConfigContentDbDaos(Ljava/util/List;)V

    .line 45
    invoke-static {v1}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    :cond_0
    return-void

    .line 49
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wlf/filedownloader/db/ContentDbDao;

    .line 50
    .local v0, "contentDbDao":Lorg/wlf/filedownloader/db/ContentDbDao;
    if-eqz v0, :cond_2

    .line 53
    invoke-interface {v0}, Lorg/wlf/filedownloader/db/ContentDbDao;->getTableName()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "tableName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 59
    iget-object v4, p0, Lorg/wlf/filedownloader/db/BaseContentDbHelper;->mContentDbDaoMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 64
    iget-object v4, p0, Lorg/wlf/filedownloader/db/BaseContentDbHelper;->mContentDbDaoMap:Ljava/util/Map;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public getContentDbDao(Ljava/lang/String;)Lorg/wlf/filedownloader/db/ContentDbDao;
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v0, p0, Lorg/wlf/filedownloader/db/BaseContentDbHelper;->mContentDbDaoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregistered database table:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/wlf/filedownloader/db/BaseContentDbHelper;->mContentDbDaoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wlf/filedownloader/db/ContentDbDao;

    return-object v0
.end method

.method protected abstract onConfigContentDbDaos(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/wlf/filedownloader/db/ContentDbDao;",
            ">;)V"
        }
    .end annotation
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 71
    iget-object v3, p0, Lorg/wlf/filedownloader/db/BaseContentDbHelper;->mContentDbDaoMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 73
    .local v1, "contentDbDaos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/wlf/filedownloader/db/ContentDbDao;>;"
    invoke-static {v1}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    :cond_0
    return-void

    .line 77
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wlf/filedownloader/db/ContentDbDao;

    .line 78
    .local v0, "contentDbDao":Lorg/wlf/filedownloader/db/ContentDbDao;
    if-eqz v0, :cond_2

    .line 82
    invoke-interface {v0, p1}, Lorg/wlf/filedownloader/db/ContentDbDao;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 89
    iget-object v3, p0, Lorg/wlf/filedownloader/db/BaseContentDbHelper;->mContentDbDaoMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 91
    .local v1, "contentDbDaos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/wlf/filedownloader/db/ContentDbDao;>;"
    invoke-static {v1}, Lorg/wlf/filedownloader/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    :cond_0
    return-void

    .line 95
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wlf/filedownloader/db/ContentDbDao;

    .line 96
    .local v0, "contentDbDao":Lorg/wlf/filedownloader/db/ContentDbDao;
    if-eqz v0, :cond_2

    .line 100
    invoke-interface {v0, p1, p2, p3}, Lorg/wlf/filedownloader/db/ContentDbDao;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_0
.end method

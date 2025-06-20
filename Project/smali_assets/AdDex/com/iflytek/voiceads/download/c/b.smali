.class public Lcom/iflytek/voiceads/download/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/voiceads/download/c/a;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Lcom/iflytek/voiceads/download/c/c;

.field private d:Landroid/database/sqlite/SQLiteDatabase;

.field private e:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "uri"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "path"

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/voiceads/download/c/b;->a:[Ljava/lang/String;

    const-string v0, "REPLACE INTO %s (_id,uri,path) VALUES(?,?,?);"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "download_info"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/voiceads/download/c/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iflytek/voiceads/download/c/c;

    invoke-direct {v0, p1}, Lcom/iflytek/voiceads/download/c/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/voiceads/download/c/b;->c:Lcom/iflytek/voiceads/download/c/c;

    iget-object v0, p0, Lcom/iflytek/voiceads/download/c/b;->c:Lcom/iflytek/voiceads/download/c/c;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/download/c/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/voiceads/download/c/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/iflytek/voiceads/download/c/b;->c:Lcom/iflytek/voiceads/download/c/c;

    invoke-virtual {v0}, Lcom/iflytek/voiceads/download/c/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/voiceads/download/c/b;->e:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private a(Landroid/database/Cursor;Lcom/iflytek/voiceads/download/d/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/iflytek/voiceads/download/d/a;->b(I)V

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/iflytek/voiceads/download/d/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/iflytek/voiceads/download/d/a;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/iflytek/voiceads/download/d/a;
    .locals 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/iflytek/voiceads/download/c/b;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "download_info"

    sget-object v2, Lcom/iflytek/voiceads/download/c/b;->a:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v5, Lcom/iflytek/voiceads/download/d/a;

    invoke-direct {v5}, Lcom/iflytek/voiceads/download/d/a;-><init>()V

    invoke-direct {p0, v0, v5}, Lcom/iflytek/voiceads/download/c/b;->a(Landroid/database/Cursor;Lcom/iflytek/voiceads/download/d/a;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v5
.end method

.method public a()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/voiceads/download/d/a;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/iflytek/voiceads/download/c/b;->e:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "download_info"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/iflytek/voiceads/download/d/a;

    invoke-direct {v2}, Lcom/iflytek/voiceads/download/d/a;-><init>()V

    invoke-direct {p0, v0, v2}, Lcom/iflytek/voiceads/download/c/b;->a(Landroid/database/Cursor;Lcom/iflytek/voiceads/download/d/a;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1
.end method

.method public a(Lcom/iflytek/voiceads/download/d/a;)V
    .locals 5

    iget-object v0, p0, Lcom/iflytek/voiceads/download/c/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/iflytek/voiceads/download/c/b;->b:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/iflytek/voiceads/download/d/a;->h()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/iflytek/voiceads/download/d/a;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/iflytek/voiceads/download/d/a;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/iflytek/voiceads/download/d/a;)V
    .locals 6

    iget-object v0, p0, Lcom/iflytek/voiceads/download/c/b;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "download_info"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/iflytek/voiceads/download/d/a;->h()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

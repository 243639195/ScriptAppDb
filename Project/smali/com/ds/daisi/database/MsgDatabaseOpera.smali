.class public Lcom/ds/daisi/database/MsgDatabaseOpera;
.super Ljava/lang/Object;
.source "MsgDatabaseOpera.java"


# static fields
.field private static final DB_VERSION:I = 0x1


# instance fields
.field private dbHelper:Lcom/ds/daisi/database/MsgDatabaseHelper;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/ds/daisi/database/MsgDatabaseHelper;

    invoke-static {}, Lcom/ds/daisi/AppContext;->getInstance()Lcom/ds/daisi/AppContext;

    move-result-object v1

    const-string v2, "MESSAGE_PAY.db"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ds/daisi/database/MsgDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/ds/daisi/database/MsgDatabaseOpera;->dbHelper:Lcom/ds/daisi/database/MsgDatabaseHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/database/MsgDatabaseOpera;)Lcom/ds/daisi/database/MsgDatabaseHelper;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/ds/daisi/database/MsgDatabaseOpera;->dbHelper:Lcom/ds/daisi/database/MsgDatabaseHelper;

    return-object p0
.end method


# virtual methods
.method public deleteAll()V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/ds/daisi/database/MsgDatabaseOpera;->dbHelper:Lcom/ds/daisi/database/MsgDatabaseHelper;

    invoke-virtual {v0}, Lcom/ds/daisi/database/MsgDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "Message"

    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public insertData(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cyjh/share/bean/NotifyMsgBean;",
            ">;)V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/ds/daisi/database/MsgDatabaseOpera;->dbHelper:Lcom/ds/daisi/database/MsgDatabaseHelper;

    invoke-virtual {v0}, Lcom/ds/daisi/database/MsgDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 45
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u957f\u5ea6:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/orhanobut/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 48
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cyjh/share/bean/NotifyMsgBean;

    .line 49
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    const-string v4, "number"

    .line 50
    iget-object v5, v3, Lcom/cyjh/share/bean/NotifyMsgBean;->ID:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "title"

    .line 51
    iget-object v5, v3, Lcom/cyjh/share/bean/NotifyMsgBean;->NoticeTitle:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "time"

    .line 52
    iget-object v5, v3, Lcom/cyjh/share/bean/NotifyMsgBean;->NoticeTime:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "content"

    .line 53
    iget-object v5, v3, Lcom/cyjh/share/bean/NotifyMsgBean;->NoticeContent:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "description"

    .line 54
    iget-object v5, v3, Lcom/cyjh/share/bean/NotifyMsgBean;->NoticeDescription:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "type"

    .line 55
    iget-object v3, v3, Lcom/cyjh/share/bean/NotifyMsgBean;->DescriptionType:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Message"

    const/4 v4, 0x0

    .line 56
    invoke-virtual {v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public queryAll(Landroid/os/Handler;)V
    .locals 2

    .line 66
    invoke-static {}, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxyFactory;->getNormalThreadPool()Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/ds/daisi/database/MsgDatabaseOpera$1;

    invoke-direct {v1, p0, p1}, Lcom/ds/daisi/database/MsgDatabaseOpera$1;-><init>(Lcom/ds/daisi/database/MsgDatabaseOpera;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/feedback/lib/executor/ThreadPoolProxy;->executeRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

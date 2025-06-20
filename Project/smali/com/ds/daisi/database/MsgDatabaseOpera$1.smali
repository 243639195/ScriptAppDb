.class Lcom/ds/daisi/database/MsgDatabaseOpera$1;
.super Ljava/lang/Object;
.source "MsgDatabaseOpera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/database/MsgDatabaseOpera;->queryAll(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/database/MsgDatabaseOpera;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/ds/daisi/database/MsgDatabaseOpera;Landroid/os/Handler;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/ds/daisi/database/MsgDatabaseOpera$1;->this$0:Lcom/ds/daisi/database/MsgDatabaseOpera;

    iput-object p2, p0, Lcom/ds/daisi/database/MsgDatabaseOpera$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    iget-object v1, p0, Lcom/ds/daisi/database/MsgDatabaseOpera$1;->this$0:Lcom/ds/daisi/database/MsgDatabaseOpera;

    invoke-static {v1}, Lcom/ds/daisi/database/MsgDatabaseOpera;->access$000(Lcom/ds/daisi/database/MsgDatabaseOpera;)Lcom/ds/daisi/database/MsgDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ds/daisi/database/MsgDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "Message"

    const-string v9, "id desc"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    .line 71
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 72
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    :cond_0
    new-instance v3, Lcom/cyjh/share/bean/NotifyMsgBean;

    invoke-direct {v3}, Lcom/cyjh/share/bean/NotifyMsgBean;-><init>()V

    const-string v4, "content"

    .line 75
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/cyjh/share/bean/NotifyMsgBean;->NoticeContent:Ljava/lang/String;

    const-string v4, "type"

    .line 76
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/cyjh/share/bean/NotifyMsgBean;->DescriptionType:Ljava/lang/String;

    const-string v4, "description"

    .line 77
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/cyjh/share/bean/NotifyMsgBean;->NoticeDescription:Ljava/lang/String;

    const-string v4, "number"

    .line 78
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/cyjh/share/bean/NotifyMsgBean;->ID:Ljava/lang/String;

    const-string v4, "title"

    .line 79
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/cyjh/share/bean/NotifyMsgBean;->NoticeTitle:Ljava/lang/String;

    const-string v4, "time"

    .line 80
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/cyjh/share/bean/NotifyMsgBean;->NoticeTime:Ljava/lang/String;

    .line 81
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 85
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 86
    iget-object v1, p0, Lcom/ds/daisi/database/MsgDatabaseOpera$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 87
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v0, 0x3ed

    .line 88
    iput v0, v1, Landroid/os/Message;->what:I

    .line 89
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

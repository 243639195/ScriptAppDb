.class public Lcom/ds/daisi/database/MsgDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MsgDatabaseHelper.java"


# static fields
.field private static final CREATE_MSG:Ljava/lang/String; = "create table Message(id integer primary key autoincrement,number text,title text,time text,content text,description text,type text)"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 23
    iput-object p1, p0, Lcom/ds/daisi/database/MsgDatabaseHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table Message(id integer primary key autoincrement,number text,title text,time text,content text,description text,type text)"

    .line 28
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

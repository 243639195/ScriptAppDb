.class public Lcom/lidroid/xutils/db/converter/SqlDateColumnConverter;
.super Ljava/lang/Object;
.source "SqlDateColumnConverter.java"

# interfaces
.implements Lcom/lidroid/xutils/db/converter/ColumnConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lidroid/xutils/db/converter/ColumnConverter<",
        "Ljava/sql/Date;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic fieldValue2ColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/sql/Date;

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/db/converter/SqlDateColumnConverter;->fieldValue2ColumnValue(Ljava/sql/Date;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fieldValue2ColumnValue(Ljava/sql/Date;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 27
    :cond_0
    invoke-virtual {p1}, Ljava/sql/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getColumnDbType()Lcom/lidroid/xutils/db/sqlite/ColumnDbType;
    .locals 1

    .line 32
    sget-object v0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->INTEGER:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    return-object v0
.end method

.method public bridge synthetic getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/lidroid/xutils/db/converter/SqlDateColumnConverter;->getFieldValue(Landroid/database/Cursor;I)Ljava/sql/Date;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getFieldValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/db/converter/SqlDateColumnConverter;->getFieldValue(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object p1

    return-object p1
.end method

.method public getFieldValue(Landroid/database/Cursor;I)Ljava/sql/Date;
    .locals 1

    .line 15
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/sql/Date;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Ljava/sql/Date;-><init>(J)V

    return-object v0
.end method

.method public getFieldValue(Ljava/lang/String;)Ljava/sql/Date;
    .locals 3

    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 21
    :cond_0
    new-instance v0, Ljava/sql/Date;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    return-object v0
.end method

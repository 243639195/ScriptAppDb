.class public Lcom/lidroid/xutils/db/table/Table;
.super Ljava/lang/Object;
.source "Table.java"


# static fields
.field private static final tableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/db/table/Table;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checkedDatabase:Z

.field public final columnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/db/table/Column;",
            ">;"
        }
    .end annotation
.end field

.field public final db:Lcom/lidroid/xutils/DbUtils;

.field public final finderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/db/table/Finder;",
            ">;"
        }
    .end annotation
.end field

.field public final id:Lcom/lidroid/xutils/db/table/Id;

.field public final tableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/db/table/Table;->tableMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/DbUtils;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/lidroid/xutils/db/table/Table;->db:Lcom/lidroid/xutils/DbUtils;

    .line 48
    invoke-static {p2}, Lcom/lidroid/xutils/db/table/TableUtils;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lidroid/xutils/db/table/Table;->tableName:Ljava/lang/String;

    .line 49
    invoke-static {p2}, Lcom/lidroid/xutils/db/table/TableUtils;->getId(Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Id;

    move-result-object p1

    iput-object p1, p0, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    .line 50
    invoke-static {p2}, Lcom/lidroid/xutils/db/table/TableUtils;->getColumnMap(Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/lidroid/xutils/db/table/Table;->columnMap:Ljava/util/HashMap;

    .line 52
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/lidroid/xutils/db/table/Table;->finderMap:Ljava/util/HashMap;

    .line 53
    iget-object p1, p0, Lcom/lidroid/xutils/db/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lidroid/xutils/db/table/Column;

    .line 54
    invoke-virtual {p2, p0}, Lcom/lidroid/xutils/db/table/Column;->setTable(Lcom/lidroid/xutils/db/table/Table;)V

    .line 55
    instance-of v0, p2, Lcom/lidroid/xutils/db/table/Finder;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/lidroid/xutils/db/table/Table;->finderMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/lidroid/xutils/db/table/Column;->getColumnName()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Lcom/lidroid/xutils/db/table/Finder;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static declared-synchronized get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/DbUtils;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/lidroid/xutils/db/table/Table;"
        }
    .end annotation

    const-class v0, Lcom/lidroid/xutils/db/table/Table;

    monitor-enter v0

    .line 62
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lidroid/xutils/DbUtils;->getDaoConfig()Lcom/lidroid/xutils/DbUtils$DaoConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    sget-object v2, Lcom/lidroid/xutils/db/table/Table;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lidroid/xutils/db/table/Table;

    if-nez v2, :cond_0

    .line 65
    new-instance v2, Lcom/lidroid/xutils/db/table/Table;

    invoke-direct {v2, p0, p1}, Lcom/lidroid/xutils/db/table/Table;-><init>(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)V

    .line 66
    sget-object p0, Lcom/lidroid/xutils/db/table/Table;->tableMap:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 61
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized remove(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/DbUtils;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-class v0, Lcom/lidroid/xutils/db/table/Table;

    monitor-enter v0

    .line 73
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lidroid/xutils/DbUtils;->getDaoConfig()Lcom/lidroid/xutils/DbUtils$DaoConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "#"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 74
    sget-object p1, Lcom/lidroid/xutils/db/table/Table;->tableMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 72
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized remove(Lcom/lidroid/xutils/DbUtils;Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/lidroid/xutils/db/table/Table;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Lcom/lidroid/xutils/db/table/Table;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 80
    sget-object v2, Lcom/lidroid/xutils/db/table/Table;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lidroid/xutils/db/table/Table;

    if-eqz v4, :cond_0

    .line 82
    iget-object v4, v4, Lcom/lidroid/xutils/db/table/Table;->tableName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lidroid/xutils/DbUtils;->getDaoConfig()Lcom/lidroid/xutils/DbUtils$DaoConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 89
    :cond_2
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 90
    sget-object p0, Lcom/lidroid/xutils/db/table/Table;->tableMap:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 77
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public isCheckedDatabase()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/lidroid/xutils/db/table/Table;->checkedDatabase:Z

    return v0
.end method

.method public setCheckedDatabase(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/lidroid/xutils/db/table/Table;->checkedDatabase:Z

    return-void
.end method

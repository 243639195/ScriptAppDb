.class public Lcom/umeng/analytics/pro/i$d;
.super Ljava/lang/Object;
.source "CoreProtocolImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 998
    iput-object v0, p0, Lcom/umeng/analytics/pro/i$d;->a:Ljava/util/Map;

    .line 999
    iput-object v0, p0, Lcom/umeng/analytics/pro/i$d;->b:Ljava/lang/String;

    .line 1000
    iput-object v0, p0, Lcom/umeng/analytics/pro/i$d;->c:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 1001
    iput-wide v0, p0, Lcom/umeng/analytics/pro/i$d;->d:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 1006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 998
    iput-object v0, p0, Lcom/umeng/analytics/pro/i$d;->a:Ljava/util/Map;

    .line 999
    iput-object v0, p0, Lcom/umeng/analytics/pro/i$d;->b:Ljava/lang/String;

    .line 1000
    iput-object v0, p0, Lcom/umeng/analytics/pro/i$d;->c:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 1001
    iput-wide v0, p0, Lcom/umeng/analytics/pro/i$d;->d:J

    .line 1007
    iput-object p2, p0, Lcom/umeng/analytics/pro/i$d;->a:Ljava/util/Map;

    .line 1008
    iput-object p1, p0, Lcom/umeng/analytics/pro/i$d;->b:Ljava/lang/String;

    .line 1009
    iput-wide p4, p0, Lcom/umeng/analytics/pro/i$d;->d:J

    .line 1010
    iput-object p3, p0, Lcom/umeng/analytics/pro/i$d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1014
    iget-object v0, p0, Lcom/umeng/analytics/pro/i$d;->a:Ljava/util/Map;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1018
    iget-object v0, p0, Lcom/umeng/analytics/pro/i$d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1022
    iget-object v0, p0, Lcom/umeng/analytics/pro/i$d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .locals 2

    .line 1026
    iget-wide v0, p0, Lcom/umeng/analytics/pro/i$d;->d:J

    return-wide v0
.end method

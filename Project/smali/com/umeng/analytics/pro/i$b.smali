.class Lcom/umeng/analytics/pro/i$b;
.super Ljava/lang/Object;
.source "CoreProtocolImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/umeng/analytics/pro/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 101
    new-instance v0, Lcom/umeng/analytics/pro/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/i;-><init>(Lcom/umeng/analytics/pro/i$1;)V

    sput-object v0, Lcom/umeng/analytics/pro/i$b;->a:Lcom/umeng/analytics/pro/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/umeng/analytics/pro/i;
    .locals 1

    .line 100
    sget-object v0, Lcom/umeng/analytics/pro/i$b;->a:Lcom/umeng/analytics/pro/i;

    return-object v0
.end method

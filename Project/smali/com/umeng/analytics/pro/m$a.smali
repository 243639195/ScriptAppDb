.class Lcom/umeng/analytics/pro/m$a;
.super Ljava/lang/Object;
.source "EventTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/umeng/analytics/pro/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Lcom/umeng/analytics/pro/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/m;-><init>(Lcom/umeng/analytics/pro/m$1;)V

    sput-object v0, Lcom/umeng/analytics/pro/m$a;->a:Lcom/umeng/analytics/pro/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/umeng/analytics/pro/m;
    .locals 1

    .line 56
    sget-object v0, Lcom/umeng/analytics/pro/m$a;->a:Lcom/umeng/analytics/pro/m;

    return-object v0
.end method

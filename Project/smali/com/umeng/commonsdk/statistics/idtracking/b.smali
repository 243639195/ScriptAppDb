.class public Lcom/umeng/commonsdk/statistics/idtracking/b;
.super Lcom/umeng/commonsdk/statistics/idtracking/a;
.source "AndroidIdTracker.java"


# static fields
.field private static final a:Ljava/lang/String; = "android_id"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "android_id"

    .line 18
    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;-><init>(Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

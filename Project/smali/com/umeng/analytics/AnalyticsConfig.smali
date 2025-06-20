.class public Lcom/umeng/analytics/AnalyticsConfig;
.super Ljava/lang/Object;
.source "AnalyticsConfig.java"


# static fields
.field public static ACTIVITY_DURATION_OPEN:Z = true

.field public static CATCH_EXCEPTION:Z = true

.field public static FLAG_DPLUS:Z = false

.field public static GPU_RENDERER:Ljava/lang/String; = ""

.field public static GPU_VENDER:Ljava/lang/String; = ""

.field static a:[D = null

.field private static b:Ljava/lang/String; = null

.field private static c:Ljava/lang/String; = null

.field private static d:Ljava/lang/String; = null

.field private static e:I = 0x0

.field public static kContinueSessionMillis:J = 0x7530L

.field public static mWrapperType:Ljava/lang/String;

.field public static mWrapperVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;I)V
    .locals 0

    .line 84
    sput p1, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    .line 85
    invoke-static {p0}, Lcom/umeng/analytics/pro/t;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/t;

    move-result-object p0

    sget p1, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/t;->a(I)V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    sput-object p1, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    .line 67
    invoke-static {p0}, Lcom/umeng/analytics/pro/t;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/t;

    move-result-object p0

    sget-object p1, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/t;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 0

    .line 43
    sput-object p0, Lcom/umeng/analytics/AnalyticsConfig;->c:Ljava/lang/String;

    return-void
.end method

.method public static getAppkey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 47
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLocation()[D
    .locals 1

    .line 55
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    return-object v0
.end method

.method public static getSecretKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {p0}, Lcom/umeng/analytics/pro/t;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/t;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/t;->c()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    .line 80
    :cond_0
    sget-object p0, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static getVerticalType(Landroid/content/Context;)I
    .locals 1

    .line 89
    sget v0, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    if-nez v0, :cond_0

    .line 90
    invoke-static {p0}, Lcom/umeng/analytics/pro/t;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/t;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/t;->d()I

    move-result p0

    sput p0, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    .line 92
    :cond_0
    sget p0, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    return p0
.end method

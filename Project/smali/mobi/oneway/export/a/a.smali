.class public Lmobi/oneway/export/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "/v4/sdkConfig"

.field public static final b:Ljava/lang/String; = "/diagnosis"

.field public static final c:Ljava/lang/String; = "/crash/report"

.field public static final d:Ljava/lang/String; = "/sdkEvent"

.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;

.field public static final g:Ljava/lang/String; = "plugin"

.field public static final h:Ljava/lang/String; = "opt"

.field public static final i:Ljava/lang/String; = "owc"

.field public static final j:Ljava/lang/String; = "OnewaySdk2.4.7.jar"

.field public static final k:Ljava/lang/String; = "mobi.oneway.sdk.AdShowActivity"

.field public static final l:Ljava/lang/String; = "mobi.oneway.sdk.OnewayAd"

.field public static final m:Ljava/lang/String; = " is empty"

.field public static final n:Ljava/lang/String; = " request or show count is over limit"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "https://tl.oneway.mobi"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "http://track.oway.mobi"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "http://tl.oway.mobi"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "http://owtk.audioadx.com"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "http://118.178.152.152"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sput-object v0, Lmobi/oneway/export/a/a;->e:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "https://ads.oneway.mobi"

    aput-object v1, v0, v2

    const-string v1, "http://ads.oway.mobi"

    aput-object v1, v0, v3

    const-string v1, "http://owads.audioadx.com"

    aput-object v1, v0, v4

    const-string v1, "http://118.178.152.152"

    aput-object v1, v0, v5

    sput-object v0, Lmobi/oneway/export/a/a;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

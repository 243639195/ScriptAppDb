.class public Lcom/iflytek/voiceads/a/c;
.super Ljava/lang/Object;


# static fields
.field public static a:[Ljava/lang/String;

.field public static b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "succes"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "network error"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "server error"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "invalid ad request"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "no fill"

    const/4 v5, 0x4

    aput-object v1, v0, v5

    const-string v1, "invalid ad unit id"

    const/4 v5, 0x5

    aput-object v1, v0, v5

    const-string v1, "permission error"

    const/4 v5, 0x6

    aput-object v1, v0, v5

    const-string v1, "unknown error"

    const/4 v5, 0x7

    aput-object v1, v0, v5

    const-string v1, "request over limit"

    const/16 v5, 0x8

    aput-object v1, v0, v5

    const-string v1, "ad page load timeout"

    const/16 v5, 0x9

    aput-object v1, v0, v5

    const-string v1, "ad page load error"

    const/16 v5, 0xa

    aput-object v1, v0, v5

    const-string v1, "video cache error"

    const/16 v5, 0xb

    aput-object v1, v0, v5

    const-string v1, "activity finish error"

    const/16 v5, 0xc

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/voiceads/a/c;->a:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Error code"

    aput-object v1, v0, v2

    const-string v1, "Unexpected error"

    aput-object v1, v0, v3

    sput-object v0, Lcom/iflytek/voiceads/a/c;->b:[Ljava/lang/String;

    return-void
.end method

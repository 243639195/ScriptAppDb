.class public final Lcom/google/a/b/a/r;
.super Ljava/lang/Enum;
.source "ParsedResultType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/a/b/a/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field public static final f:I = 0x6

.field public static final g:I = 0x7

.field public static final h:I = 0x8

.field public static final i:I = 0x9

.field public static final j:I = 0xa

.field public static final k:I = 0xb

.field public static final l:I = 0xc

.field private static final synthetic m:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    .line 25
    new-array v0, v0, [I

    sget v1, Lcom/google/a/b/a/r;->a:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/google/a/b/a/r;->b:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/google/a/b/a/r;->c:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/google/a/b/a/r;->d:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/google/a/b/a/r;->e:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lcom/google/a/b/a/r;->f:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lcom/google/a/b/a/r;->g:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sget v1, Lcom/google/a/b/a/r;->h:I

    const/4 v2, 0x7

    aput v1, v0, v2

    sget v1, Lcom/google/a/b/a/r;->i:I

    const/16 v2, 0x8

    aput v1, v0, v2

    sget v1, Lcom/google/a/b/a/r;->j:I

    const/16 v2, 0x9

    aput v1, v0, v2

    sget v1, Lcom/google/a/b/a/r;->k:I

    const/16 v2, 0xa

    aput v1, v0, v2

    sget v1, Lcom/google/a/b/a/r;->l:I

    const/16 v2, 0xb

    aput v1, v0, v2

    sput-object v0, Lcom/google/a/b/a/r;->m:[I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static a()[I
    .locals 1

    .line 25
    sget-object v0, Lcom/google/a/b/a/r;->m:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

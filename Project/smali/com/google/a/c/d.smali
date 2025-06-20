.class public final enum Lcom/google/a/c/d;
.super Ljava/lang/Enum;
.source "CharacterSetECI.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/a/c/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/google/a/c/d;

.field private static final C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/a/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private static final D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/a/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic F:[Lcom/google/a/c/d;

.field public static final enum a:Lcom/google/a/c/d;

.field public static final enum b:Lcom/google/a/c/d;

.field public static final enum c:Lcom/google/a/c/d;

.field public static final enum d:Lcom/google/a/c/d;

.field public static final enum e:Lcom/google/a/c/d;

.field public static final enum f:Lcom/google/a/c/d;

.field public static final enum g:Lcom/google/a/c/d;

.field public static final enum h:Lcom/google/a/c/d;

.field public static final enum i:Lcom/google/a/c/d;

.field public static final enum j:Lcom/google/a/c/d;

.field public static final enum k:Lcom/google/a/c/d;

.field public static final enum l:Lcom/google/a/c/d;

.field public static final enum m:Lcom/google/a/c/d;

.field public static final enum n:Lcom/google/a/c/d;

.field public static final enum o:Lcom/google/a/c/d;

.field public static final enum p:Lcom/google/a/c/d;

.field public static final enum q:Lcom/google/a/c/d;

.field public static final enum r:Lcom/google/a/c/d;

.field public static final enum s:Lcom/google/a/c/d;

.field public static final enum t:Lcom/google/a/c/d;

.field public static final enum u:Lcom/google/a/c/d;

.field public static final enum v:Lcom/google/a/c/d;

.field public static final enum w:Lcom/google/a/c/d;

.field public static final enum x:Lcom/google/a/c/d;

.field public static final enum y:Lcom/google/a/c/d;

.field public static final enum z:Lcom/google/a/c/d;


# instance fields
.field public final B:[I

.field private final E:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 33
    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "Cp437"

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    invoke-direct {v0, v1, v4, v3, v5}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->a:Lcom/google/a/c/d;

    .line 34
    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_1"

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "ISO-8859-1"

    aput-object v7, v6, v4

    invoke-direct {v0, v1, v5, v3, v6}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->b:Lcom/google/a/c/d;

    .line 35
    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_2"

    new-array v3, v5, [Ljava/lang/String;

    const-string v6, "ISO-8859-2"

    aput-object v6, v3, v4

    const/4 v6, 0x4

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->c:Lcom/google/a/c/d;

    .line 36
    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_3"

    new-array v3, v5, [Ljava/lang/String;

    const-string v7, "ISO-8859-3"

    aput-object v7, v3, v4

    const/4 v7, 0x5

    const/4 v8, 0x3

    invoke-direct {v0, v1, v8, v7, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->d:Lcom/google/a/c/d;

    .line 37
    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_4"

    new-array v3, v5, [Ljava/lang/String;

    const-string v9, "ISO-8859-4"

    aput-object v9, v3, v4

    const/4 v9, 0x6

    invoke-direct {v0, v1, v6, v9, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->e:Lcom/google/a/c/d;

    .line 38
    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_5"

    new-array v3, v5, [Ljava/lang/String;

    const-string v10, "ISO-8859-5"

    aput-object v10, v3, v4

    const/4 v10, 0x7

    invoke-direct {v0, v1, v7, v10, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->f:Lcom/google/a/c/d;

    .line 39
    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_6"

    new-array v3, v5, [Ljava/lang/String;

    const-string v11, "ISO-8859-6"

    aput-object v11, v3, v4

    const/16 v11, 0x8

    invoke-direct {v0, v1, v9, v11, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->g:Lcom/google/a/c/d;

    .line 40
    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_7"

    new-array v3, v5, [Ljava/lang/String;

    const-string v12, "ISO-8859-7"

    aput-object v12, v3, v4

    const/16 v12, 0x9

    invoke-direct {v0, v1, v10, v12, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->h:Lcom/google/a/c/d;

    .line 41
    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_8"

    new-array v3, v5, [Ljava/lang/String;

    const-string v13, "ISO-8859-8"

    aput-object v13, v3, v4

    const/16 v13, 0xa

    invoke-direct {v0, v1, v11, v13, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->i:Lcom/google/a/c/d;

    .line 42
    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_9"

    new-array v3, v5, [Ljava/lang/String;

    const-string v14, "ISO-8859-9"

    aput-object v14, v3, v4

    const/16 v14, 0xb

    invoke-direct {v0, v1, v12, v14, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->j:Lcom/google/a/c/d;

    .line 43
    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_10"

    new-array v3, v5, [Ljava/lang/String;

    const-string v15, "ISO-8859-10"

    aput-object v15, v3, v4

    const/16 v15, 0xc

    invoke-direct {v0, v1, v13, v15, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->k:Lcom/google/a/c/d;

    .line 44
    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_11"

    new-array v3, v5, [Ljava/lang/String;

    const-string v16, "ISO-8859-11"

    aput-object v16, v3, v4

    const/16 v13, 0xd

    invoke-direct {v0, v1, v14, v13, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->l:Lcom/google/a/c/d;

    .line 45
    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_13"

    new-array v3, v5, [Ljava/lang/String;

    const-string v16, "ISO-8859-13"

    aput-object v16, v3, v4

    const/16 v14, 0xf

    invoke-direct {v0, v1, v15, v14, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->m:Lcom/google/a/c/d;

    .line 46
    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_14"

    new-array v3, v5, [Ljava/lang/String;

    const-string v16, "ISO-8859-14"

    aput-object v16, v3, v4

    const/16 v15, 0x10

    invoke-direct {v0, v1, v13, v15, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->n:Lcom/google/a/c/d;

    .line 47
    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_15"

    new-array v3, v5, [Ljava/lang/String;

    const-string v15, "ISO-8859-15"

    aput-object v15, v3, v4

    const/16 v15, 0xe

    const/16 v13, 0x11

    invoke-direct {v0, v1, v15, v13, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->o:Lcom/google/a/c/d;

    .line 48
    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ISO8859_16"

    new-array v3, v5, [Ljava/lang/String;

    const-string v13, "ISO-8859-16"

    aput-object v13, v3, v4

    const/16 v13, 0x12

    invoke-direct {v0, v1, v14, v13, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->p:Lcom/google/a/c/d;

    .line 49
    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "SJIS"

    new-array v3, v5, [Ljava/lang/String;

    const-string v13, "Shift_JIS"

    aput-object v13, v3, v4

    const/16 v13, 0x10

    const/16 v15, 0x14

    invoke-direct {v0, v1, v13, v15, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->q:Lcom/google/a/c/d;

    .line 50
    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "Cp1250"

    new-array v3, v5, [Ljava/lang/String;

    const-string v13, "windows-1250"

    aput-object v13, v3, v4

    const/16 v13, 0x11

    const/16 v15, 0x15

    invoke-direct {v0, v1, v13, v15, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->r:Lcom/google/a/c/d;

    .line 51
    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "Cp1251"

    new-array v3, v5, [Ljava/lang/String;

    const-string v13, "windows-1251"

    aput-object v13, v3, v4

    const/16 v13, 0x12

    const/16 v15, 0x16

    invoke-direct {v0, v1, v13, v15, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->s:Lcom/google/a/c/d;

    .line 52
    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "Cp1252"

    new-array v3, v5, [Ljava/lang/String;

    const-string v13, "windows-1252"

    aput-object v13, v3, v4

    const/16 v13, 0x13

    const/16 v15, 0x17

    invoke-direct {v0, v1, v13, v15, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->t:Lcom/google/a/c/d;

    .line 53
    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "Cp1256"

    new-array v3, v5, [Ljava/lang/String;

    const-string v13, "windows-1256"

    aput-object v13, v3, v4

    const/16 v13, 0x14

    const/16 v15, 0x18

    invoke-direct {v0, v1, v13, v15, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->u:Lcom/google/a/c/d;

    .line 54
    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "UnicodeBigUnmarked"

    new-array v3, v2, [Ljava/lang/String;

    const-string v13, "UTF-16BE"

    aput-object v13, v3, v4

    const-string v13, "UnicodeBig"

    aput-object v13, v3, v5

    const/16 v13, 0x15

    const/16 v15, 0x19

    invoke-direct {v0, v1, v13, v15, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->v:Lcom/google/a/c/d;

    .line 55
    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "UTF8"

    new-array v3, v5, [Ljava/lang/String;

    const-string v13, "UTF-8"

    aput-object v13, v3, v4

    const/16 v13, 0x16

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v13, v15, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->w:Lcom/google/a/c/d;

    .line 56
    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "ASCII"

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    new-array v13, v5, [Ljava/lang/String;

    const-string v15, "US-ASCII"

    aput-object v15, v13, v4

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15, v3, v13}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->x:Lcom/google/a/c/d;

    .line 57
    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "Big5"

    invoke-direct {v0, v1}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->y:Lcom/google/a/c/d;

    .line 58
    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "GB18030"

    new-array v3, v8, [Ljava/lang/String;

    const-string v13, "GB2312"

    aput-object v13, v3, v4

    const-string v13, "EUC_CN"

    aput-object v13, v3, v5

    const-string v13, "GBK"

    aput-object v13, v3, v2

    const/16 v13, 0x19

    const/16 v15, 0x1d

    invoke-direct {v0, v1, v13, v15, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->z:Lcom/google/a/c/d;

    .line 59
    new-instance v0, Lcom/google/a/c/d;

    const-string v1, "EUC_KR"

    new-array v3, v5, [Ljava/lang/String;

    const-string v13, "EUC-KR"

    aput-object v13, v3, v4

    const/16 v13, 0x1a

    const/16 v15, 0x1e

    invoke-direct {v0, v1, v13, v15, v3}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/d;->A:Lcom/google/a/c/d;

    const/16 v0, 0x1b

    .line 30
    new-array v0, v0, [Lcom/google/a/c/d;

    sget-object v1, Lcom/google/a/c/d;->a:Lcom/google/a/c/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/a/c/d;->b:Lcom/google/a/c/d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/a/c/d;->c:Lcom/google/a/c/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->d:Lcom/google/a/c/d;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/a/c/d;->e:Lcom/google/a/c/d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/a/c/d;->f:Lcom/google/a/c/d;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/a/c/d;->g:Lcom/google/a/c/d;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/a/c/d;->h:Lcom/google/a/c/d;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/a/c/d;->i:Lcom/google/a/c/d;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/a/c/d;->j:Lcom/google/a/c/d;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/a/c/d;->k:Lcom/google/a/c/d;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->l:Lcom/google/a/c/d;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->m:Lcom/google/a/c/d;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->n:Lcom/google/a/c/d;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->o:Lcom/google/a/c/d;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->p:Lcom/google/a/c/d;

    aput-object v1, v0, v14

    sget-object v1, Lcom/google/a/c/d;->q:Lcom/google/a/c/d;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->r:Lcom/google/a/c/d;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->s:Lcom/google/a/c/d;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->t:Lcom/google/a/c/d;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->u:Lcom/google/a/c/d;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->v:Lcom/google/a/c/d;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->w:Lcom/google/a/c/d;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->x:Lcom/google/a/c/d;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->y:Lcom/google/a/c/d;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->z:Lcom/google/a/c/d;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/c/d;->A:Lcom/google/a/c/d;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/a/c/d;->F:[Lcom/google/a/c/d;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/a/c/d;->C:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/a/c/d;->D:Ljava/util/Map;

    .line 64
    invoke-static {}, Lcom/google/a/c/d;->values()[Lcom/google/a/c/d;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 65
    iget-object v5, v3, Lcom/google/a/c/d;->B:[I

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    aget v8, v5, v7

    .line 66
    sget-object v9, Lcom/google/a/c/d;->C:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 68
    :cond_0
    sget-object v5, Lcom/google/a/c/d;->D:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/a/c/d;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v5, v3, Lcom/google/a/c/d;->E:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 70
    sget-object v9, Lcom/google/a/c/d;->D:Ljava/util/Map;

    invoke-interface {v9, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x1b
        0xaa
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 79
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    aput v2, v0, v1

    new-array v1, v1, [Ljava/lang/String;

    const/16 v2, 0x18

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/a/c/d;-><init>(Ljava/lang/String;I[I[Ljava/lang/String;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 83
    new-array p1, p1, [I

    const/4 p2, 0x0

    aput p3, p1, p2

    iput-object p1, p0, Lcom/google/a/c/d;->B:[I

    .line 84
    iput-object p4, p0, Lcom/google/a/c/d;->E:[Ljava/lang/String;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    iput-object p3, p0, Lcom/google/a/c/d;->B:[I

    .line 89
    iput-object p4, p0, Lcom/google/a/c/d;->E:[Ljava/lang/String;

    return-void
.end method

.method private a()I
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/google/a/c/d;->B:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public static a(I)Lcom/google/a/c/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    if-ltz p0, :cond_1

    const/16 v0, 0x384

    if-lt p0, v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    sget-object v0, Lcom/google/a/c/d;->C:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/a/c/d;

    return-object p0

    .line 104
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object p0

    throw p0
.end method

.method public static a(Ljava/lang/String;)Lcom/google/a/c/d;
    .locals 1

    .line 115
    sget-object v0, Lcom/google/a/c/d;->D:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/a/c/d;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/c/d;
    .locals 1

    .line 30
    const-class v0, Lcom/google/a/c/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/a/c/d;

    return-object p0
.end method

.method public static values()[Lcom/google/a/c/d;
    .locals 1

    .line 30
    sget-object v0, Lcom/google/a/c/d;->F:[Lcom/google/a/c/d;

    invoke-virtual {v0}, [Lcom/google/a/c/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/c/d;

    return-object v0
.end method

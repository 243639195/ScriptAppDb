.class public final enum Lcom/google/a/e;
.super Ljava/lang/Enum;
.source "DecodeHintType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/a/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/a/e;

.field public static final enum b:Lcom/google/a/e;

.field public static final enum c:Lcom/google/a/e;

.field public static final enum d:Lcom/google/a/e;

.field public static final enum e:Lcom/google/a/e;

.field public static final enum f:Lcom/google/a/e;

.field public static final enum g:Lcom/google/a/e;

.field public static final enum h:Lcom/google/a/e;

.field public static final enum i:Lcom/google/a/e;

.field public static final enum j:Lcom/google/a/e;

.field public static final enum k:Lcom/google/a/e;

.field private static final synthetic m:[Lcom/google/a/e;


# instance fields
.field private final l:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 35
    new-instance v0, Lcom/google/a/e;

    const-string v1, "OTHER"

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/google/a/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/a/e;->a:Lcom/google/a/e;

    .line 41
    new-instance v0, Lcom/google/a/e;

    const-string v1, "PURE_BARCODE"

    const-class v2, Ljava/lang/Void;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/google/a/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/a/e;->b:Lcom/google/a/e;

    .line 47
    new-instance v0, Lcom/google/a/e;

    const-string v1, "POSSIBLE_FORMATS"

    const-class v2, Ljava/util/List;

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/google/a/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/a/e;->c:Lcom/google/a/e;

    .line 53
    new-instance v0, Lcom/google/a/e;

    const-string v1, "TRY_HARDER"

    const-class v2, Ljava/lang/Void;

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/google/a/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/a/e;->d:Lcom/google/a/e;

    .line 58
    new-instance v0, Lcom/google/a/e;

    const-string v1, "CHARACTER_SET"

    const-class v2, Ljava/lang/String;

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/google/a/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/a/e;->e:Lcom/google/a/e;

    .line 63
    new-instance v0, Lcom/google/a/e;

    const-string v1, "ALLOWED_LENGTHS"

    const-class v2, [I

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/google/a/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/a/e;->f:Lcom/google/a/e;

    .line 69
    new-instance v0, Lcom/google/a/e;

    const-string v1, "ASSUME_CODE_39_CHECK_DIGIT"

    const-class v2, Ljava/lang/Void;

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/google/a/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/a/e;->g:Lcom/google/a/e;

    .line 76
    new-instance v0, Lcom/google/a/e;

    const-string v1, "ASSUME_GS1"

    const-class v2, Ljava/lang/Void;

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/google/a/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/a/e;->h:Lcom/google/a/e;

    .line 83
    new-instance v0, Lcom/google/a/e;

    const-string v1, "RETURN_CODABAR_START_END"

    const-class v2, Ljava/lang/Void;

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/google/a/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/a/e;->i:Lcom/google/a/e;

    .line 89
    new-instance v0, Lcom/google/a/e;

    const-string v1, "NEED_RESULT_POINT_CALLBACK"

    const-class v2, Lcom/google/a/u;

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lcom/google/a/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/a/e;->j:Lcom/google/a/e;

    .line 99
    new-instance v0, Lcom/google/a/e;

    const-string v1, "ALLOWED_EAN_EXTENSIONS"

    const-class v2, [I

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2}, Lcom/google/a/e;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lcom/google/a/e;->k:Lcom/google/a/e;

    const/16 v0, 0xb

    .line 30
    new-array v0, v0, [Lcom/google/a/e;

    sget-object v1, Lcom/google/a/e;->a:Lcom/google/a/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/a/e;->b:Lcom/google/a/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/a/e;->c:Lcom/google/a/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/a/e;->d:Lcom/google/a/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/a/e;->e:Lcom/google/a/e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/a/e;->f:Lcom/google/a/e;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/a/e;->g:Lcom/google/a/e;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/a/e;->h:Lcom/google/a/e;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/a/e;->i:Lcom/google/a/e;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/a/e;->j:Lcom/google/a/e;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/a/e;->k:Lcom/google/a/e;

    aput-object v1, v0, v13

    sput-object v0, Lcom/google/a/e;->m:[Lcom/google/a/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 115
    iput-object p3, p0, Lcom/google/a/e;->l:Ljava/lang/Class;

    return-void
.end method

.method private a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/google/a/e;->l:Ljava/lang/Class;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/e;
    .locals 1

    .line 30
    const-class v0, Lcom/google/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/a/e;

    return-object p0
.end method

.method public static values()[Lcom/google/a/e;
    .locals 1

    .line 30
    sget-object v0, Lcom/google/a/e;->m:[Lcom/google/a/e;

    invoke-virtual {v0}, [Lcom/google/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/e;

    return-object v0
.end method

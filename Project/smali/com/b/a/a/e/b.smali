.class public final enum Lcom/b/a/a/e/b;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/b/a/a/e/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/b/a/a/e/b;

.field public static final enum b:Lcom/b/a/a/e/b;

.field public static final enum c:Lcom/b/a/a/e/b;

.field public static final enum d:Lcom/b/a/a/e/b;

.field public static final enum e:Lcom/b/a/a/e/b;

.field public static final enum f:Lcom/b/a/a/e/b;

.field private static final synthetic h:[Lcom/b/a/a/e/b;


# instance fields
.field public final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 21
    new-instance v0, Lcom/b/a/a/e/b;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/b/a/a/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/a/a/e/b;->a:Lcom/b/a/a/e/b;

    .line 23
    new-instance v0, Lcom/b/a/a/e/b;

    const-string v1, "PROTOCOL_ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/b/a/a/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/a/a/e/b;->b:Lcom/b/a/a/e/b;

    .line 25
    new-instance v0, Lcom/b/a/a/e/b;

    const-string v1, "INTERNAL_ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/b/a/a/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/a/a/e/b;->c:Lcom/b/a/a/e/b;

    .line 27
    new-instance v0, Lcom/b/a/a/e/b;

    const-string v1, "FLOW_CONTROL_ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/b/a/a/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/a/a/e/b;->d:Lcom/b/a/a/e/b;

    .line 29
    new-instance v0, Lcom/b/a/a/e/b;

    const-string v1, "REFUSED_STREAM"

    const/4 v6, 0x4

    const/4 v7, 0x7

    invoke-direct {v0, v1, v6, v7}, Lcom/b/a/a/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/a/a/e/b;->e:Lcom/b/a/a/e/b;

    .line 31
    new-instance v0, Lcom/b/a/a/e/b;

    const-string v1, "CANCEL"

    const/4 v7, 0x5

    const/16 v8, 0x8

    invoke-direct {v0, v1, v7, v8}, Lcom/b/a/a/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/a/a/e/b;->f:Lcom/b/a/a/e/b;

    const/4 v0, 0x6

    .line 19
    new-array v0, v0, [Lcom/b/a/a/e/b;

    sget-object v1, Lcom/b/a/a/e/b;->a:Lcom/b/a/a/e/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/b/a/a/e/b;->b:Lcom/b/a/a/e/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/b/a/a/e/b;->c:Lcom/b/a/a/e/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/b/a/a/e/b;->d:Lcom/b/a/a/e/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/b/a/a/e/b;->e:Lcom/b/a/a/e/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/b/a/a/e/b;->f:Lcom/b/a/a/e/b;

    aput-object v1, v0, v7

    sput-object v0, Lcom/b/a/a/e/b;->h:[Lcom/b/a/a/e/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcom/b/a/a/e/b;->g:I

    return-void
.end method

.method public static a(I)Lcom/b/a/a/e/b;
    .locals 5

    .line 40
    invoke-static {}, Lcom/b/a/a/e/b;->values()[Lcom/b/a/a/e/b;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 41
    iget v4, v3, Lcom/b/a/a/e/b;->g:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/a/e/b;
    .locals 1

    .line 19
    const-class v0, Lcom/b/a/a/e/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/b/a/a/e/b;

    return-object p0
.end method

.method public static values()[Lcom/b/a/a/e/b;
    .locals 1

    .line 19
    sget-object v0, Lcom/b/a/a/e/b;->h:[Lcom/b/a/a/e/b;

    invoke-virtual {v0}, [Lcom/b/a/a/e/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/a/e/b;

    return-object v0
.end method

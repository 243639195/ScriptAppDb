.class public final enum Lnet/lingala/zip4j/model/enums/CompressionLevel;
.super Ljava/lang/Enum;
.source "CompressionLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/lingala/zip4j/model/enums/CompressionLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public static final enum FAST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public static final enum FASTER:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public static final enum FASTEST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public static final enum HIGHER:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public static final enum MAXIMUM:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public static final enum MEDIUM_FAST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public static final enum NORMAL:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public static final enum PRE_ULTRA:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field public static final enum ULTRA:Lnet/lingala/zip4j/model/enums/CompressionLevel;


# instance fields
.field private level:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 12
    new-instance v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    const-string v1, "FASTEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lnet/lingala/zip4j/model/enums/CompressionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->FASTEST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 16
    new-instance v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    const-string v1, "FASTER"

    invoke-direct {v0, v1, v4, v5}, Lnet/lingala/zip4j/model/enums/CompressionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->FASTER:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 20
    new-instance v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    const-string v1, "FAST"

    invoke-direct {v0, v1, v5, v6}, Lnet/lingala/zip4j/model/enums/CompressionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->FAST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 24
    new-instance v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    const-string v1, "MEDIUM_FAST"

    invoke-direct {v0, v1, v6, v7}, Lnet/lingala/zip4j/model/enums/CompressionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->MEDIUM_FAST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 28
    new-instance v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v7, v8}, Lnet/lingala/zip4j/model/enums/CompressionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->NORMAL:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 32
    new-instance v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    const-string v1, "HIGHER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lnet/lingala/zip4j/model/enums/CompressionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->HIGHER:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 36
    new-instance v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    const-string v1, "MAXIMUM"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lnet/lingala/zip4j/model/enums/CompressionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->MAXIMUM:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 40
    new-instance v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    const-string v1, "PRE_ULTRA"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lnet/lingala/zip4j/model/enums/CompressionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->PRE_ULTRA:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 44
    new-instance v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    const-string v1, "ULTRA"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lnet/lingala/zip4j/model/enums/CompressionLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->ULTRA:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 7
    const/16 v0, 0x9

    new-array v0, v0, [Lnet/lingala/zip4j/model/enums/CompressionLevel;

    const/4 v1, 0x0

    sget-object v2, Lnet/lingala/zip4j/model/enums/CompressionLevel;->FASTEST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    aput-object v2, v0, v1

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionLevel;->FASTER:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    aput-object v1, v0, v4

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionLevel;->FAST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    aput-object v1, v0, v5

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionLevel;->MEDIUM_FAST:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    aput-object v1, v0, v6

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionLevel;->NORMAL:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    aput-object v1, v0, v7

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionLevel;->HIGHER:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lnet/lingala/zip4j/model/enums/CompressionLevel;->MAXIMUM:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lnet/lingala/zip4j/model/enums/CompressionLevel;->PRE_ULTRA:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lnet/lingala/zip4j/model/enums/CompressionLevel;->ULTRA:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    aput-object v2, v0, v1

    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->$VALUES:[Lnet/lingala/zip4j/model/enums/CompressionLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->level:I

    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/model/enums/CompressionLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;

    return-object v0
.end method

.method public static values()[Lnet/lingala/zip4j/model/enums/CompressionLevel;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->$VALUES:[Lnet/lingala/zip4j/model/enums/CompressionLevel;

    invoke-virtual {v0}, [Lnet/lingala/zip4j/model/enums/CompressionLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/lingala/zip4j/model/enums/CompressionLevel;

    return-object v0
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->level:I

    return v0
.end method

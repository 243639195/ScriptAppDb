.class public final enum Lnet/lingala/zip4j/model/enums/CompressionMethod;
.super Ljava/lang/Enum;
.source "CompressionMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/lingala/zip4j/model/enums/CompressionMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/lingala/zip4j/model/enums/CompressionMethod;

.field public static final enum AES_INTERNAL_ONLY:Lnet/lingala/zip4j/model/enums/CompressionMethod;

.field public static final enum DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

.field public static final enum STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;

    const-string v1, "STORE"

    invoke-direct {v0, v1, v3, v3}, Lnet/lingala/zip4j/model/enums/CompressionMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 19
    new-instance v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;

    const-string v1, "DEFLATE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v4, v2}, Lnet/lingala/zip4j/model/enums/CompressionMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 23
    new-instance v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;

    const-string v1, "AES_INTERNAL_ONLY"

    const/16 v2, 0x63

    invoke-direct {v0, v1, v5, v2}, Lnet/lingala/zip4j/model/enums/CompressionMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->AES_INTERNAL_ONLY:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lnet/lingala/zip4j/model/enums/CompressionMethod;

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    aput-object v1, v0, v3

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    aput-object v1, v0, v4

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->AES_INTERNAL_ONLY:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    aput-object v1, v0, v5

    sput-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->$VALUES:[Lnet/lingala/zip4j/model/enums/CompressionMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->code:I

    .line 29
    return-void
.end method

.method public static getCompressionMethodFromCode(I)Lnet/lingala/zip4j/model/enums/CompressionMethod;
    .locals 5
    .param p0, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->values()[Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 47
    .local v0, "compressionMethod":Lnet/lingala/zip4j/model/enums/CompressionMethod;
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCode()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 48
    return-object v0

    .line 46
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "compressionMethod":Lnet/lingala/zip4j/model/enums/CompressionMethod;
    :cond_1
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "Unknown compression method"

    sget-object v3, Lnet/lingala/zip4j/exception/ZipException$Type;->UNKNOWN_COMPRESSION_METHOD:Lnet/lingala/zip4j/exception/ZipException$Type;

    invoke-direct {v1, v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/model/enums/CompressionMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;

    return-object v0
.end method

.method public static values()[Lnet/lingala/zip4j/model/enums/CompressionMethod;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->$VALUES:[Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {v0}, [Lnet/lingala/zip4j/model/enums/CompressionMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/lingala/zip4j/model/enums/CompressionMethod;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->code:I

    return v0
.end method

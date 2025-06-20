.class public final enum Lnet/lingala/zip4j/model/enums/AesKeyStrength;
.super Ljava/lang/Enum;
.source "AesKeyStrength.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/lingala/zip4j/model/enums/AesKeyStrength;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/lingala/zip4j/model/enums/AesKeyStrength;

.field public static final enum KEY_STRENGTH_128:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

.field public static final enum KEY_STRENGTH_192:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

.field public static final enum KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;


# instance fields
.field private keyLength:I

.field private macLength:I

.field private rawCode:I

.field private saltLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v2, 0x0

    const/16 v5, 0x10

    const/4 v9, 0x2

    const/4 v3, 0x1

    .line 12
    new-instance v0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    const-string v1, "KEY_STRENGTH_128"

    const/16 v4, 0x8

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_128:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 16
    new-instance v6, Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    const-string v7, "KEY_STRENGTH_192"

    const/16 v10, 0xc

    const/16 v11, 0x18

    const/16 v12, 0x18

    move v8, v3

    invoke-direct/range {v6 .. v12}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;-><init>(Ljava/lang/String;IIIII)V

    sput-object v6, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_192:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 20
    new-instance v7, Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    const-string v8, "KEY_STRENGTH_256"

    const/16 v12, 0x20

    const/16 v13, 0x20

    move v10, v14

    move v11, v5

    invoke-direct/range {v7 .. v13}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;-><init>(Ljava/lang/String;IIIII)V

    sput-object v7, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 7
    new-array v0, v14, [Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_128:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    aput-object v1, v0, v2

    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_192:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    aput-object v1, v0, v3

    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    aput-object v1, v0, v9

    sput-object v0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->$VALUES:[Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .param p3, "rawCode"    # I
    .param p4, "saltLength"    # I
    .param p5, "macLength"    # I
    .param p6, "keyLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->rawCode:I

    .line 29
    iput p4, p0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->saltLength:I

    .line 30
    iput p5, p0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->macLength:I

    .line 31
    iput p6, p0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->keyLength:I

    .line 32
    return-void
.end method

.method public static getAesKeyStrengthFromRawCode(I)Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 63
    invoke-static {}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->values()[Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 64
    .local v0, "aesKeyStrength":Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getRawCode()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 69
    .end local v0    # "aesKeyStrength":Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    :goto_1
    return-object v0

    .line 63
    .restart local v0    # "aesKeyStrength":Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "aesKeyStrength":Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    return-object v0
.end method

.method public static values()[Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->$VALUES:[Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    invoke-virtual {v0}, [Lnet/lingala/zip4j/model/enums/AesKeyStrength;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    return-object v0
.end method


# virtual methods
.method public getKeyLength()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->keyLength:I

    return v0
.end method

.method public getMacLength()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->macLength:I

    return v0
.end method

.method public getRawCode()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->rawCode:I

    return v0
.end method

.method public getSaltLength()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->saltLength:I

    return v0
.end method

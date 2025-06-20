.class public final enum Lnet/lingala/zip4j/headers/VersionMadeBy;
.super Ljava/lang/Enum;
.source "VersionMadeBy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/lingala/zip4j/headers/VersionMadeBy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/lingala/zip4j/headers/VersionMadeBy;

.field public static final enum SPECIFICATION_VERSION:Lnet/lingala/zip4j/headers/VersionMadeBy;

.field public static final enum UNIX:Lnet/lingala/zip4j/headers/VersionMadeBy;

.field public static final enum WINDOWS:Lnet/lingala/zip4j/headers/VersionMadeBy;


# instance fields
.field private final code:B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lnet/lingala/zip4j/headers/VersionMadeBy;

    const-string v1, "SPECIFICATION_VERSION"

    const/16 v2, 0x33

    invoke-direct {v0, v1, v3, v2}, Lnet/lingala/zip4j/headers/VersionMadeBy;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lnet/lingala/zip4j/headers/VersionMadeBy;->SPECIFICATION_VERSION:Lnet/lingala/zip4j/headers/VersionMadeBy;

    .line 6
    new-instance v0, Lnet/lingala/zip4j/headers/VersionMadeBy;

    const-string v1, "WINDOWS"

    invoke-direct {v0, v1, v4, v3}, Lnet/lingala/zip4j/headers/VersionMadeBy;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lnet/lingala/zip4j/headers/VersionMadeBy;->WINDOWS:Lnet/lingala/zip4j/headers/VersionMadeBy;

    .line 7
    new-instance v0, Lnet/lingala/zip4j/headers/VersionMadeBy;

    const-string v1, "UNIX"

    invoke-direct {v0, v1, v5, v6}, Lnet/lingala/zip4j/headers/VersionMadeBy;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lnet/lingala/zip4j/headers/VersionMadeBy;->UNIX:Lnet/lingala/zip4j/headers/VersionMadeBy;

    .line 3
    new-array v0, v6, [Lnet/lingala/zip4j/headers/VersionMadeBy;

    sget-object v1, Lnet/lingala/zip4j/headers/VersionMadeBy;->SPECIFICATION_VERSION:Lnet/lingala/zip4j/headers/VersionMadeBy;

    aput-object v1, v0, v3

    sget-object v1, Lnet/lingala/zip4j/headers/VersionMadeBy;->WINDOWS:Lnet/lingala/zip4j/headers/VersionMadeBy;

    aput-object v1, v0, v4

    sget-object v1, Lnet/lingala/zip4j/headers/VersionMadeBy;->UNIX:Lnet/lingala/zip4j/headers/VersionMadeBy;

    aput-object v1, v0, v5

    sput-object v0, Lnet/lingala/zip4j/headers/VersionMadeBy;->$VALUES:[Lnet/lingala/zip4j/headers/VersionMadeBy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .param p3, "code"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-byte p3, p0, Lnet/lingala/zip4j/headers/VersionMadeBy;->code:B

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/headers/VersionMadeBy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lnet/lingala/zip4j/headers/VersionMadeBy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/headers/VersionMadeBy;

    return-object v0
.end method

.method public static values()[Lnet/lingala/zip4j/headers/VersionMadeBy;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lnet/lingala/zip4j/headers/VersionMadeBy;->$VALUES:[Lnet/lingala/zip4j/headers/VersionMadeBy;

    invoke-virtual {v0}, [Lnet/lingala/zip4j/headers/VersionMadeBy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/lingala/zip4j/headers/VersionMadeBy;

    return-object v0
.end method


# virtual methods
.method public getCode()B
    .locals 1

    .prologue
    .line 16
    iget-byte v0, p0, Lnet/lingala/zip4j/headers/VersionMadeBy;->code:B

    return v0
.end method

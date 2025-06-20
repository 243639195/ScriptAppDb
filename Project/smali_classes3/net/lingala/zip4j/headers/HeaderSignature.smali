.class public final enum Lnet/lingala/zip4j/headers/HeaderSignature;
.super Ljava/lang/Enum;
.source "HeaderSignature.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/lingala/zip4j/headers/HeaderSignature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum AES_EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum ARCEXTDATREC:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum DIGITAL_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum LOCAL_FILE_HEADER:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum SPLIT_ZIP:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum TEMPORARY_SPANNING_MARKER:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum ZIP64_END_CENTRAL_DIRECTORY_LOCATOR:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum ZIP64_END_CENTRAL_DIRECTORY_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

.field public static final enum ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;


# instance fields
.field private value:J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    const-string v1, "LOCAL_FILE_HEADER"

    const-wide/32 v2, 0x4034b50

    invoke-direct {v0, v1, v6, v2, v3}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->LOCAL_FILE_HEADER:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 6
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    const-string v1, "EXTRA_DATA_RECORD"

    const-wide/32 v2, 0x8074b50

    invoke-direct {v0, v1, v7, v2, v3}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 7
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    const-string v1, "CENTRAL_DIRECTORY"

    const-wide/32 v2, 0x2014b50    # 1.6619997E-316

    invoke-direct {v0, v1, v8, v2, v3}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 8
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    const-string v1, "END_OF_CENTRAL_DIRECTORY"

    const-wide/32 v2, 0x6054b50

    invoke-direct {v0, v1, v9, v2, v3}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 9
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    const-string v1, "TEMPORARY_SPANNING_MARKER"

    const-wide/32 v2, 0x30304b50

    invoke-direct {v0, v1, v10, v2, v3}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->TEMPORARY_SPANNING_MARKER:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 10
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    const-string v1, "DIGITAL_SIGNATURE"

    const/4 v2, 0x5

    const-wide/32 v4, 0x5054b50

    invoke-direct {v0, v1, v2, v4, v5}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->DIGITAL_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 11
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    const-string v1, "ARCEXTDATREC"

    const/4 v2, 0x6

    const-wide/32 v4, 0x8064b50

    invoke-direct {v0, v1, v2, v4, v5}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->ARCEXTDATREC:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 12
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    const-string v1, "SPLIT_ZIP"

    const/4 v2, 0x7

    const-wide/32 v4, 0x8074b50

    invoke-direct {v0, v1, v2, v4, v5}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->SPLIT_ZIP:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 13
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    const-string v1, "ZIP64_END_CENTRAL_DIRECTORY_LOCATOR"

    const/16 v2, 0x8

    const-wide/32 v4, 0x7064b50

    invoke-direct {v0, v1, v2, v4, v5}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_LOCATOR:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 14
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    const-string v1, "ZIP64_END_CENTRAL_DIRECTORY_RECORD"

    const/16 v2, 0x9

    const-wide/32 v4, 0x6064b50

    invoke-direct {v0, v1, v2, v4, v5}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 15
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    const-string v1, "ZIP64_EXTRA_FIELD_SIGNATURE"

    const/16 v2, 0xa

    const-wide/16 v4, 0x1

    invoke-direct {v0, v1, v2, v4, v5}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 16
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    const-string v1, "AES_EXTRA_DATA_RECORD"

    const/16 v2, 0xb

    const-wide/32 v4, 0x9901

    invoke-direct {v0, v1, v2, v4, v5}, Lnet/lingala/zip4j/headers/HeaderSignature;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->AES_EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 3
    const/16 v0, 0xc

    new-array v0, v0, [Lnet/lingala/zip4j/headers/HeaderSignature;

    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->LOCAL_FILE_HEADER:Lnet/lingala/zip4j/headers/HeaderSignature;

    aput-object v1, v0, v6

    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    aput-object v1, v0, v7

    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    aput-object v1, v0, v8

    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    aput-object v1, v0, v9

    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->TEMPORARY_SPANNING_MARKER:Lnet/lingala/zip4j/headers/HeaderSignature;

    aput-object v1, v0, v10

    const/4 v1, 0x5

    sget-object v2, Lnet/lingala/zip4j/headers/HeaderSignature;->DIGITAL_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnet/lingala/zip4j/headers/HeaderSignature;->ARCEXTDATREC:Lnet/lingala/zip4j/headers/HeaderSignature;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lnet/lingala/zip4j/headers/HeaderSignature;->SPLIT_ZIP:Lnet/lingala/zip4j/headers/HeaderSignature;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_LOCATOR:Lnet/lingala/zip4j/headers/HeaderSignature;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lnet/lingala/zip4j/headers/HeaderSignature;->AES_EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    aput-object v2, v0, v1

    sput-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->$VALUES:[Lnet/lingala/zip4j/headers/HeaderSignature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 1
    .param p3, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-wide p3, p0, Lnet/lingala/zip4j/headers/HeaderSignature;->value:J

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/headers/HeaderSignature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/headers/HeaderSignature;

    return-object v0
.end method

.method public static values()[Lnet/lingala/zip4j/headers/HeaderSignature;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->$VALUES:[Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v0}, [Lnet/lingala/zip4j/headers/HeaderSignature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/lingala/zip4j/headers/HeaderSignature;

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lnet/lingala/zip4j/headers/HeaderSignature;->value:J

    return-wide v0
.end method

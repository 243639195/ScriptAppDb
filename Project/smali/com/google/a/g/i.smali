.class public final Lcom/google/a/g/i;
.super Lcom/google/a/g/y;
.source "EAN13Reader.java"


# static fields
.field static final a:[I


# instance fields
.field private final g:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    .line 61
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/a/g/i;->a:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0xb
        0xd
        0xe
        0x13
        0x19
        0x1c
        0x15
        0x16
        0x1a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/google/a/g/y;-><init>()V

    const/4 v0, 0x4

    .line 68
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/a/g/i;->g:[I

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 130
    sget-object v2, Lcom/google/a/g/i;->a:[I

    aget v2, v2, v1

    if-ne p1, v2, :cond_0

    add-int/lit8 v1, v1, 0x30

    int-to-char p1, v1

    .line 131
    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_1
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method protected final a(Lcom/google/a/c/a;[ILjava/lang/StringBuilder;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/google/a/g/i;->g:[I

    const/4 v1, 0x0

    .line 76
    aput v1, v0, v1

    const/4 v2, 0x1

    .line 77
    aput v1, v0, v2

    const/4 v3, 0x2

    .line 78
    aput v1, v0, v3

    const/4 v3, 0x3

    .line 79
    aput v1, v0, v3

    .line 1048
    iget v3, p1, Lcom/google/a/c/a;->b:I

    .line 81
    aget p2, p2, v2

    move v4, p2

    const/4 p2, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x6

    const/16 v7, 0xa

    if-ge p2, v6, :cond_2

    if-ge v4, v3, :cond_2

    .line 86
    sget-object v6, Lcom/google/a/g/i;->f:[[I

    invoke-static {p1, v0, v4, v6}, Lcom/google/a/g/i;->a(Lcom/google/a/c/a;[II[[I)I

    move-result v6

    .line 87
    rem-int/lit8 v8, v6, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    array-length v8, v0

    move v9, v4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v8, :cond_0

    aget v10, v0, v4

    add-int/2addr v9, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    if-lt v6, v7, :cond_1

    rsub-int/lit8 v4, p2, 0x5

    shl-int v4, v2, v4

    or-int/2addr v4, v5

    move v5, v4

    :cond_1
    add-int/lit8 p2, p2, 0x1

    move v4, v9

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_2
    if-ge p2, v7, :cond_6

    .line 1130
    sget-object v8, Lcom/google/a/g/i;->a:[I

    aget v8, v8, p2

    if-ne v5, v8, :cond_5

    add-int/lit8 p2, p2, 0x30

    int-to-char p2, p2

    .line 1131
    invoke-virtual {p3, v1, p2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 98
    sget-object p2, Lcom/google/a/g/i;->c:[I

    invoke-static {p1, v4, v2, p2}, Lcom/google/a/g/i;->a(Lcom/google/a/c/a;IZ[I)[I

    move-result-object p2

    .line 99
    aget p2, p2, v2

    move v2, p2

    const/4 p2, 0x0

    :goto_3
    if-ge p2, v6, :cond_4

    if-ge v2, v3, :cond_4

    .line 102
    sget-object v4, Lcom/google/a/g/i;->e:[[I

    invoke-static {p1, v0, v2, v4}, Lcom/google/a/g/i;->a(Lcom/google/a/c/a;[II[[I)I

    move-result v4

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    .line 103
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    array-length v4, v0

    move v5, v2

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v4, :cond_3

    aget v7, v0, v2

    add-int/2addr v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 p2, p2, 0x1

    move v2, v5

    goto :goto_3

    :cond_4
    return v2

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 1135
    :cond_6
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object p1

    throw p1
.end method

.method final b()Lcom/google/a/a;
    .locals 1

    .line 114
    sget-object v0, Lcom/google/a/a;->h:Lcom/google/a/a;

    return-object v0
.end method

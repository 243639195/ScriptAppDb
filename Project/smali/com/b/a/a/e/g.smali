.class public final Lcom/b/a/a/e/g;
.super Ljava/lang/Object;
.source "Http2.java"


# static fields
.field static final a:Lcom/b/b/i;

.field static final b:[Ljava/lang/String;

.field static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    .line 25
    invoke-static {v0}, Lcom/b/b/i;->a(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/e/g;->a:Lcom/b/b/i;

    const/16 v0, 0xa

    .line 51
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DATA"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "HEADERS"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "PRIORITY"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "RST_STREAM"

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const-string v1, "SETTINGS"

    const/4 v5, 0x4

    aput-object v1, v0, v5

    const-string v1, "PUSH_PROMISE"

    const/4 v6, 0x5

    aput-object v1, v0, v6

    const-string v1, "PING"

    const/4 v6, 0x6

    aput-object v1, v0, v6

    const-string v1, "GOAWAY"

    const/4 v6, 0x7

    aput-object v1, v0, v6

    const-string v1, "WINDOW_UPDATE"

    const/16 v6, 0x8

    aput-object v1, v0, v6

    const-string v1, "CONTINUATION"

    const/16 v7, 0x9

    aput-object v1, v0, v7

    sput-object v0, Lcom/b/a/a/e/g;->d:[Ljava/lang/String;

    const/16 v0, 0x40

    .line 68
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/b/a/a/e/g;->b:[Ljava/lang/String;

    const/16 v0, 0x100

    .line 69
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/b/a/a/e/g;->c:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 71
    :goto_0
    sget-object v1, Lcom/b/a/a/e/g;->c:[Ljava/lang/String;

    array-length v1, v1

    const/16 v7, 0x20

    if-ge v0, v1, :cond_0

    .line 72
    sget-object v1, Lcom/b/a/a/e/g;->c:[Ljava/lang/String;

    const-string v8, "%8s"

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v8, v9}, Lcom/b/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x30

    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    sget-object v0, Lcom/b/a/a/e/g;->b:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    .line 76
    sget-object v0, Lcom/b/a/a/e/g;->b:[Ljava/lang/String;

    const-string v1, "END_STREAM"

    aput-object v1, v0, v3

    .line 78
    new-array v0, v3, [I

    aput v3, v0, v2

    .line 80
    sget-object v1, Lcom/b/a/a/e/g;->b:[Ljava/lang/String;

    const-string v3, "PADDED"

    aput-object v3, v1, v6

    const/4 v1, 0x0

    :goto_1
    if-gtz v1, :cond_1

    .line 81
    aget v3, v0, v1

    .line 82
    sget-object v8, Lcom/b/a/a/e/g;->b:[Ljava/lang/String;

    or-int/lit8 v9, v3, 0x8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/b/a/a/e/g;->b:[Ljava/lang/String;

    aget-object v3, v11, v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|PADDED"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 85
    :cond_1
    sget-object v1, Lcom/b/a/a/e/g;->b:[Ljava/lang/String;

    const-string v3, "END_HEADERS"

    aput-object v3, v1, v5

    .line 86
    sget-object v1, Lcom/b/a/a/e/g;->b:[Ljava/lang/String;

    const-string v3, "PRIORITY"

    aput-object v3, v1, v7

    .line 87
    sget-object v1, Lcom/b/a/a/e/g;->b:[Ljava/lang/String;

    const/16 v3, 0x24

    const-string v5, "END_HEADERS|PRIORITY"

    aput-object v5, v1, v3

    .line 88
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_3

    .line 92
    aget v5, v1, v3

    const/4 v7, 0x0

    :goto_3
    if-gtz v7, :cond_2

    .line 93
    aget v8, v0, v7

    .line 94
    sget-object v9, Lcom/b/a/a/e/g;->b:[Ljava/lang/String;

    or-int v10, v8, v5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/b/a/a/e/g;->b:[Ljava/lang/String;

    aget-object v12, v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x7c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/b/a/a/e/g;->b:[Ljava/lang/String;

    aget-object v13, v13, v5

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 95
    sget-object v9, Lcom/b/a/a/e/g;->b:[Ljava/lang/String;

    or-int/2addr v10, v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/b/a/a/e/g;->b:[Ljava/lang/String;

    aget-object v8, v13, v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/b/a/a/e/g;->b:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "|PADDED"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 100
    :cond_3
    :goto_4
    sget-object v0, Lcom/b/a/a/e/g;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge v2, v0, :cond_5

    .line 101
    sget-object v0, Lcom/b/a/a/e/g;->b:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-nez v0, :cond_4

    sget-object v0, Lcom/b/a/a/e/g;->b:[Ljava/lang/String;

    sget-object v1, Lcom/b/a/a/e/g;->c:[Ljava/lang/String;

    aget-object v1, v1, v2

    aput-object v1, v0, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    return-void

    :array_0
    .array-data 4
        0x4
        0x20
        0x24
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 1

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1}, Lcom/b/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(ZIIBB)Ljava/lang/String;
    .locals 6

    .line 135
    sget-object v0, Lcom/b/a/a/e/g;->d:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p3, v0, :cond_0

    sget-object v0, Lcom/b/a/a/e/g;->d:[Ljava/lang/String;

    aget-object v0, v0, p3

    goto :goto_0

    :cond_0
    const-string v0, "0x%02x"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/b/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v3, 0x5

    if-nez p4, :cond_1

    const-string p3, ""

    goto :goto_2

    :cond_1
    packed-switch p3, :pswitch_data_0

    .line 1158
    :pswitch_0
    sget-object v4, Lcom/b/a/a/e/g;->b:[Ljava/lang/String;

    array-length v4, v4

    if-ge p4, v4, :cond_3

    sget-object v4, Lcom/b/a/a/e/g;->b:[Ljava/lang/String;

    aget-object v4, v4, p4

    goto :goto_1

    :pswitch_1
    if-ne p4, v2, :cond_2

    const-string p3, "ACK"

    goto :goto_2

    .line 1151
    :cond_2
    sget-object p3, Lcom/b/a/a/e/g;->c:[Ljava/lang/String;

    aget-object p3, p3, p4

    goto :goto_2

    .line 1156
    :pswitch_2
    sget-object p3, Lcom/b/a/a/e/g;->c:[Ljava/lang/String;

    aget-object p3, p3, p4

    goto :goto_2

    .line 1158
    :cond_3
    sget-object v4, Lcom/b/a/a/e/g;->c:[Ljava/lang/String;

    aget-object v4, v4, p4

    :goto_1
    if-ne p3, v3, :cond_4

    and-int/lit8 v5, p4, 0x4

    if-eqz v5, :cond_4

    const-string p3, "HEADERS"

    const-string p4, "PUSH_PROMISE"

    .line 1161
    invoke-virtual {v4, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_4
    if-nez p3, :cond_5

    and-int/lit8 p3, p4, 0x20

    if-eqz p3, :cond_5

    const-string p3, "PRIORITY"

    const-string p4, "COMPRESSED"

    .line 1163
    invoke-virtual {v4, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_5
    move-object p3, v4

    :goto_2
    const-string p4, "%s 0x%08x %5d %-13s %s"

    .line 137
    new-array v3, v3, [Ljava/lang/Object;

    if-eqz p0, :cond_6

    const-string p0, "<<"

    goto :goto_3

    :cond_6
    const-string p0, ">>"

    :goto_3
    aput-object p0, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p0

    const/4 p0, 0x3

    aput-object v0, v3, p0

    const/4 p0, 0x4

    aput-object p3, v3, p0

    invoke-static {p4, v3}, Lcom/b/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static varargs b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 1

    .line 113
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Lcom/b/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

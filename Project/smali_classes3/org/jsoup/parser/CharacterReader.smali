.class public final Lorg/jsoup/parser/CharacterReader;
.super Ljava/lang/Object;
.source "CharacterReader.java"


# static fields
.field static final EOF:C = '\uffff'

.field static final maxBufferLen:I = 0x8000

.field private static final maxStringCacheLen:I = 0xc

.field private static final minReadAheadLen:I = 0x400

.field static final readAheadLimit:I = 0x6000

.field private static final stringCacheSize:I = 0x200


# instance fields
.field private bufLength:I

.field private bufMark:I

.field private bufPos:I

.field private bufSplitPoint:I

.field private charBuf:[C

.field private readFully:Z

.field private reader:Ljava/io/Reader;

.field private readerPos:I

.field private stringCache:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "input"    # Ljava/io/Reader;

    .prologue
    .line 41
    const v0, 0x8000

    invoke-direct {p0, p1, v0}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/io/Reader;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 1
    .param p1, "input"    # Ljava/io/Reader;
    .param p2, "sz"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 30
    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 35
    iput-object p1, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    .line 36
    const v0, 0x8000

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 37
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/jsoup/parser/CharacterReader;-><init>(Ljava/io/Reader;I)V

    .line 46
    return-void
.end method

.method private bufferUp()V
    .locals 13

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v12, -0x1

    .line 63
    iget-boolean v9, p0, Lorg/jsoup/parser/CharacterReader;->readFully:Z

    if-nez v9, :cond_0

    iget v9, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v10, p0, Lorg/jsoup/parser/CharacterReader;->bufSplitPoint:I

    if-ge v9, v10, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget v9, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    if-eq v9, v12, :cond_5

    .line 69
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 70
    .local v2, "pos":I
    iget v9, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v10, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    sub-int v1, v9, v10

    .line 77
    .local v1, "offset":I
    :goto_1
    :try_start_0
    iget-object v9, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    int-to-long v10, v2

    invoke-virtual {v9, v10, v11}, Ljava/io/Reader;->skip(J)J

    move-result-wide v4

    .line 78
    .local v4, "skipped":J
    iget-object v9, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    const v10, 0x8000

    invoke-virtual {v9, v10}, Ljava/io/Reader;->mark(I)V

    .line 79
    const/4 v3, 0x0

    .line 80
    .local v3, "read":I
    :goto_2
    const/16 v9, 0x400

    if-gt v3, v9, :cond_3

    .line 81
    iget-object v9, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    iget-object v10, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v11, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    array-length v11, v11

    sub-int/2addr v11, v3

    invoke-virtual {v9, v10, v3, v11}, Ljava/io/Reader;->read([CII)I

    move-result v6

    .line 82
    .local v6, "thisRead":I
    if-ne v6, v12, :cond_2

    .line 83
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/jsoup/parser/CharacterReader;->readFully:Z

    .line 84
    :cond_2
    if-gtz v6, :cond_6

    .line 88
    .end local v6    # "thisRead":I
    :cond_3
    iget-object v9, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    invoke-virtual {v9}, Ljava/io/Reader;->reset()V

    .line 89
    if-lez v3, :cond_0

    .line 90
    int-to-long v10, v2

    cmp-long v9, v4, v10

    if-nez v9, :cond_7

    :goto_3
    invoke-static {v7}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    .line 91
    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 92
    iget v7, p0, Lorg/jsoup/parser/CharacterReader;->readerPos:I

    add-int/2addr v7, v2

    iput v7, p0, Lorg/jsoup/parser/CharacterReader;->readerPos:I

    .line 93
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 94
    iget v7, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    if-eq v7, v12, :cond_4

    .line 95
    const/4 v7, 0x0

    iput v7, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 96
    :cond_4
    iget v7, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    const/16 v8, 0x6000

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Lorg/jsoup/parser/CharacterReader;->bufSplitPoint:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    .end local v3    # "read":I
    .end local v4    # "skipped":J
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Lorg/jsoup/UncheckedIOException;

    invoke-direct {v7, v0}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v7

    .line 72
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "offset":I
    .end local v2    # "pos":I
    :cond_5
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 73
    .restart local v2    # "pos":I
    const/4 v1, 0x0

    .restart local v1    # "offset":I
    goto :goto_1

    .line 86
    .restart local v3    # "read":I
    .restart local v4    # "skipped":J
    .restart local v6    # "thisRead":I
    :cond_6
    add-int/2addr v3, v6

    .line 87
    goto :goto_2

    .end local v6    # "thisRead":I
    :cond_7
    move v7, v8

    .line 90
    goto :goto_3
.end method

.method private static cacheString([C[Ljava/lang/String;II)Ljava/lang/String;
    .locals 6
    .param p0, "charBuf"    # [C
    .param p1, "stringCache"    # [Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 577
    const/16 v4, 0xc

    if-le p3, v4, :cond_1

    .line 578
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 599
    :cond_0
    :goto_0
    return-object v0

    .line 579
    :cond_1
    const/4 v4, 0x1

    if-ge p3, v4, :cond_2

    .line 580
    const-string v0, ""

    goto :goto_0

    .line 583
    :cond_2
    const/4 v1, 0x0

    .line 584
    .local v1, "hash":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p3, :cond_3

    .line 585
    mul-int/lit8 v4, v1, 0x1f

    add-int v5, p2, v2

    aget-char v5, p0, v5

    add-int v1, v4, v5

    .line 584
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 589
    :cond_3
    and-int/lit16 v3, v1, 0x1ff

    .line 590
    .local v3, "index":I
    aget-object v0, p1, v3

    .line 592
    .local v0, "cached":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-static {p0, p2, p3, v0}, Lorg/jsoup/parser/CharacterReader;->rangeEquals([CIILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 595
    :cond_4
    new-instance v0, Ljava/lang/String;

    .end local v0    # "cached":Ljava/lang/String;
    invoke-direct {v0, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 596
    .restart local v0    # "cached":Ljava/lang/String;
    aput-object v0, p1, v3

    goto :goto_0
.end method

.method private isEmptyNoBufferUp()Z
    .locals 2

    .prologue
    .line 121
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static rangeEquals([CIILjava/lang/String;)Z
    .locals 8
    .param p0, "charBuf"    # [C
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "cached"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 606
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne p2, v6, :cond_0

    .line 607
    move v1, p1

    .line 608
    .local v1, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    move v0, p2

    .line 609
    .end local p2    # "count":I
    .local v0, "count":I
    :goto_0
    add-int/lit8 p2, v0, -0x1

    .end local v0    # "count":I
    .restart local p2    # "count":I
    if-eqz v0, :cond_1

    .line 610
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-char v6, p0, v2

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_2

    .line 615
    .end local v1    # "i":I
    .end local v3    # "j":I
    :cond_0
    :goto_1
    return v5

    .line 613
    .restart local v2    # "i":I
    .restart local v4    # "j":I
    :cond_1
    const/4 v5, 0x1

    goto :goto_1

    .end local v2    # "i":I
    .end local v4    # "j":I
    .restart local v1    # "i":I
    .restart local v3    # "j":I
    :cond_2
    move v4, v3

    .end local v3    # "j":I
    .restart local v4    # "j":I
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    move v0, p2

    .end local p2    # "count":I
    .restart local v0    # "count":I
    goto :goto_0
.end method


# virtual methods
.method public advance()V
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 155
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 52
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    iput-object v1, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    .line 56
    iput-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 57
    iput-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 55
    iput-object v1, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    .line 56
    iput-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 57
    iput-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    .line 56
    iput-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 57
    iput-object v1, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 58
    throw v0
.end method

.method consume()C
    .locals 3

    .prologue
    .line 134
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 135
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->isEmptyNoBufferUp()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0xffff

    .line 136
    .local v0, "val":C
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 137
    return v0

    .line 135
    .end local v0    # "val":C
    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v1, v2

    goto :goto_0
.end method

.method consumeAttributeQuoted(Z)Ljava/lang/String;
    .locals 7
    .param p1, "single"    # Z

    .prologue
    .line 320
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 321
    .local v0, "pos":I
    move v2, v0

    .line 322
    .local v2, "start":I
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 323
    .local v1, "remaining":I
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 325
    .local v3, "val":[C
    :goto_0
    if-ge v0, v1, :cond_1

    .line 326
    aget-char v4, v3, v0

    sparse-switch v4, :sswitch_data_0

    .line 335
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :sswitch_0
    if-eqz p1, :cond_2

    .line 338
    :cond_1
    :goto_1
    :sswitch_1
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 339
    if-le v0, v2, :cond_3

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int v6, v0, v2

    invoke-static {v4, v5, v2, v6}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    :goto_2
    return-object v4

    .line 333
    :cond_2
    :sswitch_2
    if-nez p1, :cond_0

    goto :goto_1

    .line 339
    :cond_3
    const-string v4, ""

    goto :goto_2

    .line 326
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x22 -> :sswitch_2
        0x26 -> :sswitch_1
        0x27 -> :sswitch_0
    .end sparse-switch
.end method

.method consumeData()Ljava/lang/String;
    .locals 7

    .prologue
    .line 298
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 299
    .local v0, "pos":I
    move v2, v0

    .line 300
    .local v2, "start":I
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 301
    .local v1, "remaining":I
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 303
    .local v3, "val":[C
    :goto_0
    if-ge v0, v1, :cond_0

    .line 304
    aget-char v4, v3, v0

    sparse-switch v4, :sswitch_data_0

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_0
    :sswitch_0
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 314
    if-le v0, v2, :cond_1

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int v6, v0, v2

    invoke-static {v4, v5, v2, v6}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_1
    const-string v4, ""

    goto :goto_1

    .line 304
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x26 -> :sswitch_0
        0x3c -> :sswitch_0
    .end sparse-switch
.end method

.method consumeDigitSequence()Ljava/lang/String;
    .locals 5

    .prologue
    .line 448
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 449
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 450
    .local v1, "start":I
    :goto_0
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v2, v3, :cond_0

    .line 451
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v2, v3

    .line 452
    .local v0, "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-gt v0, v2, :cond_0

    .line 453
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    goto :goto_0

    .line 457
    .end local v0    # "c":C
    :cond_0
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v4, v1

    invoke-static {v2, v3, v1, v4}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method consumeHexSequence()Ljava/lang/String;
    .locals 5

    .prologue
    .line 435
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 436
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 437
    .local v1, "start":I
    :goto_0
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v2, v3, :cond_3

    .line 438
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v2, v3

    .line 439
    .local v0, "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-le v0, v2, :cond_2

    :cond_0
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x46

    if-le v0, v2, :cond_2

    :cond_1
    const/16 v2, 0x61

    if-lt v0, v2, :cond_3

    const/16 v2, 0x66

    if-gt v0, v2, :cond_3

    .line 440
    :cond_2
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    goto :goto_0

    .line 444
    .end local v0    # "c":C
    :cond_3
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v4, v1

    invoke-static {v2, v3, v1, v4}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method consumeLetterSequence()Ljava/lang/String;
    .locals 5

    .prologue
    .line 400
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 401
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 402
    .local v1, "start":I
    :goto_0
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v2, v3, :cond_3

    .line 403
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v2, v3

    .line 404
    .local v0, "c":C
    const/16 v2, 0x41

    if-lt v0, v2, :cond_0

    const/16 v2, 0x5a

    if-le v0, v2, :cond_2

    :cond_0
    const/16 v2, 0x61

    if-lt v0, v2, :cond_1

    const/16 v2, 0x7a

    if-le v0, v2, :cond_2

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 405
    :cond_2
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    goto :goto_0

    .line 410
    .end local v0    # "c":C
    :cond_3
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v4, v1

    invoke-static {v2, v3, v1, v4}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method consumeLetterThenDigitSequence()Ljava/lang/String;
    .locals 5

    .prologue
    .line 414
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 415
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 416
    .local v1, "start":I
    :goto_0
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v2, v3, :cond_3

    .line 417
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v2, v3

    .line 418
    .local v0, "c":C
    const/16 v2, 0x41

    if-lt v0, v2, :cond_0

    const/16 v2, 0x5a

    if-le v0, v2, :cond_2

    :cond_0
    const/16 v2, 0x61

    if-lt v0, v2, :cond_1

    const/16 v2, 0x7a

    if-le v0, v2, :cond_2

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 419
    :cond_2
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    goto :goto_0

    .line 423
    .end local v0    # "c":C
    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->isEmptyNoBufferUp()Z

    move-result v2

    if-nez v2, :cond_4

    .line 424
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v2, v3

    .line 425
    .restart local v0    # "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_4

    const/16 v2, 0x39

    if-gt v0, v2, :cond_4

    .line 426
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    goto :goto_1

    .line 431
    .end local v0    # "c":C
    :cond_4
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v4, v1

    invoke-static {v2, v3, v1, v4}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method consumeRawData()Ljava/lang/String;
    .locals 7

    .prologue
    .line 346
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 347
    .local v0, "pos":I
    move v2, v0

    .line 348
    .local v2, "start":I
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 349
    .local v1, "remaining":I
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 351
    .local v3, "val":[C
    :goto_0
    if-ge v0, v1, :cond_0

    .line 352
    aget-char v4, v3, v0

    sparse-switch v4, :sswitch_data_0

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    :cond_0
    :sswitch_0
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 361
    if-le v0, v2, :cond_1

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int v6, v0, v2

    invoke-static {v4, v5, v2, v6}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_1
    const-string v4, ""

    goto :goto_1

    .line 352
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3c -> :sswitch_0
    .end sparse-switch
.end method

.method consumeTagName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 367
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 368
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 369
    .local v0, "pos":I
    move v2, v0

    .line 370
    .local v2, "start":I
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 371
    .local v1, "remaining":I
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 373
    .local v3, "val":[C
    :goto_0
    if-ge v0, v1, :cond_0

    .line 374
    aget-char v4, v3, v0

    sparse-switch v4, :sswitch_data_0

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_0
    :sswitch_0
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 389
    if-le v0, v2, :cond_1

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int v6, v0, v2

    invoke-static {v4, v5, v2, v6}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_1
    const-string v4, ""

    goto :goto_1

    .line 374
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x2f -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method public consumeTo(C)Ljava/lang/String;
    .locals 5
    .param p1, "c"    # C

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(C)I

    move-result v1

    .line 225
    .local v1, "offset":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 226
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    invoke-static {v2, v3, v4, v1}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "consumed":Ljava/lang/String;
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 230
    .end local v0    # "consumed":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method consumeTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result v2

    .line 236
    .local v2, "offset":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 237
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    invoke-static {v3, v4, v5, v2}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "consumed":Ljava/lang/String;
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 249
    .end local v0    # "consumed":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 240
    :cond_0
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 242
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 246
    :cond_1
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v1, v3, 0x1

    .line 247
    .local v1, "endPos":I
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v6, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int v6, v1, v6

    invoke-static {v3, v4, v5, v6}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 248
    .restart local v0    # "consumed":Ljava/lang/String;
    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    goto :goto_0
.end method

.method public varargs consumeToAny([C)Ljava/lang/String;
    .locals 9
    .param p1, "chars"    # [C

    .prologue
    .line 259
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 260
    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 261
    .local v2, "pos":I
    move v4, v2

    .line 262
    .local v4, "start":I
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 263
    .local v3, "remaining":I
    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 264
    .local v5, "val":[C
    array-length v0, p1

    .line 267
    .local v0, "charLen":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 268
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 269
    aget-char v6, v5, v2

    aget-char v7, p1, v1

    if-ne v6, v7, :cond_1

    .line 275
    .end local v1    # "i":I
    :cond_0
    iput v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 276
    if-le v2, v4, :cond_3

    iget-object v6, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v7, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int v8, v2, v4

    invoke-static {v6, v7, v4, v8}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    :goto_2
    return-object v6

    .line 268
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 272
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    .end local v1    # "i":I
    :cond_3
    const-string v6, ""

    goto :goto_2
.end method

.method varargs consumeToAnySorted([C)Ljava/lang/String;
    .locals 7
    .param p1, "chars"    # [C

    .prologue
    .line 280
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 281
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 282
    .local v0, "pos":I
    move v2, v0

    .line 283
    .local v2, "start":I
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    .line 284
    .local v1, "remaining":I
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    .line 286
    .local v3, "val":[C
    :goto_0
    if-ge v0, v1, :cond_0

    .line 287
    aget-char v4, v3, v0

    invoke-static {p1, v4}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v4

    if-ltz v4, :cond_1

    .line 291
    :cond_0
    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 292
    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    if-le v4, v2, :cond_2

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int v6, v0, v2

    invoke-static {v4, v5, v2, v6}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    .line 289
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_2
    const-string v4, ""

    goto :goto_1
.end method

.method consumeToEnd()Ljava/lang/String;
    .locals 6

    .prologue
    .line 393
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 394
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v4}, Lorg/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "data":Ljava/lang/String;
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iput v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 396
    return-object v0
.end method

.method containsIgnoreCase(Ljava/lang/String;)Z
    .locals 4
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 556
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 557
    .local v1, "loScan":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "hiScan":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result v2

    if-gt v2, v3, :cond_0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result v2

    if-le v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public current()C
    .locals 2

    .prologue
    .line 129
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 130
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->isEmptyNoBufferUp()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xffff

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 116
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 117
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method mark()V
    .locals 2

    .prologue
    .line 159
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v0, v1

    const/16 v1, 0x400

    if-ge v0, v1, :cond_0

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufSplitPoint:I

    .line 162
    :cond_0
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 163
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 164
    return-void
.end method

.method matchConsume(Ljava/lang/String;)Z
    .locals 2
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 536
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 537
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 539
    const/4 v0, 0x1

    .line 541
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method matchConsumeIgnoreCase(Ljava/lang/String;)Z
    .locals 2
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 546
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/CharacterReader;->matchesIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 548
    const/4 v0, 0x1

    .line 550
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method matches(C)Z
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 461
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method matches(Ljava/lang/String;)Z
    .locals 6
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 466
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 467
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 468
    .local v1, "scanLength":I
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v3, v4

    if-le v1, v3, :cond_1

    .line 474
    :cond_0
    :goto_0
    return v2

    .line 471
    :cond_1
    const/4 v0, 0x0

    .local v0, "offset":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 472
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v5, v0

    aget-char v4, v4, v5

    if-ne v3, v4, :cond_0

    .line 471
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 474
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method varargs matchesAny([C)Z
    .locals 5
    .param p1, "seq"    # [C

    .prologue
    const/4 v2, 0x0

    .line 493
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 502
    :cond_0
    :goto_0
    return v2

    .line 496
    :cond_1
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 497
    iget-object v3, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v3, v4

    .line 498
    .local v0, "c":C
    array-length v4, p1

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-char v1, p1, v3

    .line 499
    .local v1, "seek":C
    if-ne v1, v0, :cond_2

    .line 500
    const/4 v2, 0x1

    goto :goto_0

    .line 498
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method matchesAnySorted([C)Z
    .locals 2
    .param p1, "seq"    # [C

    .prologue
    .line 506
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 507
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method matchesAsciiAlpha()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 522
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 525
    :cond_0
    :goto_0
    return v1

    .line 524
    :cond_1
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v2, v3

    .line 525
    .local v0, "c":C
    const/16 v2, 0x41

    if-lt v0, v2, :cond_2

    const/16 v2, 0x5a

    if-le v0, v2, :cond_3

    :cond_2
    const/16 v2, 0x61

    if-lt v0, v2, :cond_0

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method matchesDigit()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 529
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 532
    :cond_0
    :goto_0
    return v1

    .line 531
    :cond_1
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v2, v3

    .line 532
    .local v0, "c":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method matchesIgnoreCase(Ljava/lang/String;)Z
    .locals 7
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 478
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 479
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 480
    .local v1, "scanLength":I
    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v6, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v5, v6

    if-le v1, v5, :cond_1

    .line 489
    :cond_0
    :goto_0
    return v4

    .line 483
    :cond_1
    const/4 v0, 0x0

    .local v0, "offset":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 484
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 485
    .local v2, "upScan":C
    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v6, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v6, v0

    aget-char v5, v5, v6

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 486
    .local v3, "upTarget":C
    if-ne v2, v3, :cond_0

    .line 483
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 489
    .end local v2    # "upScan":C
    .end local v3    # "upTarget":C
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method matchesLetter()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 511
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 514
    :cond_0
    :goto_0
    return v1

    .line 513
    :cond_1
    iget-object v2, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v2, v3

    .line 514
    .local v0, "c":C
    const/16 v2, 0x41

    if-lt v0, v2, :cond_2

    const/16 v2, 0x5a

    if-le v0, v2, :cond_4

    :cond_2
    const/16 v2, 0x61

    if-lt v0, v2, :cond_3

    const/16 v2, 0x7a

    if-le v0, v2, :cond_4

    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method nextIndexOf(C)I
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 185
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 186
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v0, v1, :cond_1

    .line 187
    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 188
    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int v1, v0, v1

    .line 190
    :goto_1
    return v1

    .line 186
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method nextIndexOf(Ljava/lang/CharSequence;)I
    .locals 7
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .prologue
    .line 200
    invoke-direct {p0}, Lorg/jsoup/parser/CharacterReader;->bufferUp()V

    .line 202
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 203
    .local v4, "startChar":C
    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .local v3, "offset":I
    :goto_0
    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v3, v5, :cond_4

    .line 205
    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v5, v5, v3

    if-eq v4, v5, :cond_1

    .line 206
    :cond_0
    add-int/lit8 v3, v3, 0x1

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v5, v5, v3

    if-ne v4, v5, :cond_0

    .line 207
    :cond_1
    add-int/lit8 v0, v3, 0x1

    .line 208
    .local v0, "i":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v5, v0

    add-int/lit8 v2, v5, -0x1

    .line 209
    .local v2, "last":I
    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v3, v5, :cond_3

    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    if-gt v2, v5, :cond_3

    .line 210
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_1
    if-ge v0, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    iget-object v6, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v6, v6, v0

    if-ne v5, v6, :cond_2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 211
    :cond_2
    if-ne v0, v2, :cond_3

    .line 212
    iget v5, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int v5, v3, v5

    .line 215
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "last":I
    :goto_2
    return v5

    .line 203
    .restart local v0    # "i":I
    .restart local v2    # "last":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 215
    .end local v0    # "i":I
    .end local v2    # "last":I
    :cond_4
    const/4 v5, -0x1

    goto :goto_2
.end method

.method public pos()I
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->readerPos:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v0, v1

    return v0
.end method

.method rangeEquals(IILjava/lang/String;)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "cached"    # Ljava/lang/String;

    .prologue
    .line 620
    iget-object v0, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    invoke-static {v0, p1, p2, p3}, Lorg/jsoup/parser/CharacterReader;->rangeEquals([CIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method rewindToMark()V
    .locals 3

    .prologue
    .line 171
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 172
    new-instance v0, Lorg/jsoup/UncheckedIOException;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Mark invalid"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 174
    :cond_0
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 175
    invoke-virtual {p0}, Lorg/jsoup/parser/CharacterReader;->unmark()V

    .line 176
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 563
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v1, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 564
    const-string v0, ""

    .line 565
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    iget v3, p0, Lorg/jsoup/parser/CharacterReader;->bufLength:I

    iget v4, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method unconsume()V
    .locals 3

    .prologue
    .line 144
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 145
    new-instance v0, Lorg/jsoup/UncheckedIOException;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "WTF: No buffer left to unconsume."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 147
    :cond_0
    iget v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufPos:I

    .line 148
    return-void
.end method

.method unmark()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, -0x1

    iput v0, p0, Lorg/jsoup/parser/CharacterReader;->bufMark:I

    .line 168
    return-void
.end method

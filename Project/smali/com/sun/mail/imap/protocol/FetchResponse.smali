.class public Lcom/sun/mail/imap/protocol/FetchResponse;
.super Lcom/sun/mail/imap/protocol/IMAPResponse;
.source "FetchResponse.java"


# static fields
.field private static final HEADER:[C

.field private static final TEXT:[C


# instance fields
.field private items:[Lcom/sun/mail/imap/protocol/Item;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    .line 109
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/imap/protocol/FetchResponse;->HEADER:[C

    const/4 v0, 0x5

    .line 110
    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/mail/imap/protocol/FetchResponse;->TEXT:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x2es
        0x48s
        0x45s
        0x41s
        0x44s
        0x45s
        0x52s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x2es
        0x54s
        0x45s
        0x58s
        0x54s
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/iap/Protocol;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;-><init>(Lcom/sun/mail/iap/Protocol;)V

    .line 62
    invoke-direct {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->parse()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    .line 68
    invoke-direct {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->parse()V

    return-void
.end method

.method public static getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 92
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_1

    return-object v0

    .line 94
    :cond_1
    aget-object v3, p0, v2

    if-eqz v3, :cond_4

    .line 95
    aget-object v3, p0, v2

    instance-of v3, v3, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-eqz v3, :cond_4

    .line 96
    aget-object v3, p0, v2

    check-cast v3, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v3

    if-ne v3, p1, :cond_4

    .line 99
    aget-object v3, p0, v2

    check-cast v3, Lcom/sun/mail/imap/protocol/FetchResponse;

    const/4 v4, 0x0

    .line 100
    :goto_1
    iget-object v5, v3, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    array-length v5, v5

    if-lt v4, v5, :cond_2

    goto :goto_2

    .line 101
    :cond_2
    iget-object v5, v3, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object v5, v5, v4

    invoke-virtual {p2, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 102
    iget-object p0, v3, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object p0, p0, v4

    return-object p0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private match([C)Z
    .locals 6

    .line 201
    array-length v0, p1

    .line 202
    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    const/4 v2, 0x0

    move v3, v1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 205
    :cond_0
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, v4, v3

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    add-int/lit8 v4, v1, 0x1

    aget-char v1, p1, v1

    if-eq v3, v1, :cond_1

    return v2

    :cond_1
    move v1, v4

    move v3, v5

    goto :goto_0
.end method

.method private parse()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 115
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    aget-byte v0, v0, v1

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    .line 116
    new-instance v0, Lcom/sun/mail/iap/ParsingException;

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error in FETCH parsing, missing \'(\' at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    .line 122
    :cond_1
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 124
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    iget v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->size:I

    if-lt v2, v3, :cond_2

    .line 125
    new-instance v0, Lcom/sun/mail/iap/ParsingException;

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error in FETCH parsing, ran off end of buffer, size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_2
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    aget-byte v2, v2, v3

    const/16 v3, 0x42

    if-eq v2, v3, :cond_9

    const/16 v3, 0x49

    if-eq v2, v3, :cond_8

    const/16 v3, 0x52

    if-eq v2, v3, :cond_4

    const/16 v3, 0x55

    if-eq v2, v3, :cond_3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 136
    :pswitch_0
    sget-object v2, Lcom/sun/mail/imap/protocol/FLAGS;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 137
    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v2, Lcom/sun/mail/imap/protocol/FLAGS;->name:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 138
    new-instance v1, Lcom/sun/mail/imap/protocol/FLAGS;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/protocol/FLAGS;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    goto/16 :goto_2

    .line 130
    :pswitch_1
    sget-object v2, Lcom/sun/mail/imap/protocol/ENVELOPE;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 131
    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v2, Lcom/sun/mail/imap/protocol/ENVELOPE;->name:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 132
    new-instance v1, Lcom/sun/mail/imap/protocol/ENVELOPE;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/protocol/ENVELOPE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    goto/16 :goto_2

    .line 180
    :cond_3
    sget-object v2, Lcom/sun/mail/imap/protocol/UID;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 181
    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v2, Lcom/sun/mail/imap/protocol/UID;->name:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 182
    new-instance v1, Lcom/sun/mail/imap/protocol/UID;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/protocol/UID;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    goto/16 :goto_2

    .line 164
    :cond_4
    sget-object v2, Lcom/sun/mail/imap/protocol/RFC822SIZE;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 165
    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v2, Lcom/sun/mail/imap/protocol/RFC822SIZE;->name:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 166
    new-instance v1, Lcom/sun/mail/imap/protocol/RFC822SIZE;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/protocol/RFC822SIZE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    goto/16 :goto_2

    .line 169
    :cond_5
    sget-object v2, Lcom/sun/mail/imap/protocol/RFC822DATA;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 170
    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v2, Lcom/sun/mail/imap/protocol/RFC822DATA;->name:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 171
    sget-object v1, Lcom/sun/mail/imap/protocol/FetchResponse;->HEADER:[C

    invoke-direct {p0, v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 172
    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v2, Lcom/sun/mail/imap/protocol/FetchResponse;->HEADER:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    goto :goto_0

    .line 173
    :cond_6
    sget-object v1, Lcom/sun/mail/imap/protocol/FetchResponse;->TEXT:[C

    invoke-direct {p0, v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 174
    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v2, Lcom/sun/mail/imap/protocol/FetchResponse;->TEXT:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 175
    :cond_7
    :goto_0
    new-instance v1, Lcom/sun/mail/imap/protocol/RFC822DATA;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/protocol/RFC822DATA;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    goto :goto_2

    .line 142
    :cond_8
    sget-object v2, Lcom/sun/mail/imap/protocol/INTERNALDATE;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 143
    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v2, Lcom/sun/mail/imap/protocol/INTERNALDATE;->name:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 144
    new-instance v1, Lcom/sun/mail/imap/protocol/INTERNALDATE;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/protocol/INTERNALDATE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    goto :goto_2

    .line 148
    :cond_9
    sget-object v2, Lcom/sun/mail/imap/protocol/BODY;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 149
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    add-int/lit8 v2, v2, 0x4

    aget-byte v1, v1, v2

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_a

    .line 150
    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v2, Lcom/sun/mail/imap/protocol/BODY;->name:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 151
    new-instance v1, Lcom/sun/mail/imap/protocol/BODY;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/protocol/BODY;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    goto :goto_2

    .line 154
    :cond_a
    sget-object v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->name:[C

    invoke-direct {p0, v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 155
    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->name:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    goto :goto_1

    .line 158
    :cond_b
    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v2, Lcom/sun/mail/imap/protocol/BODY;->name:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 159
    :goto_1
    new-instance v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    :cond_c
    :goto_2
    if-eqz v1, :cond_d

    .line 188
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 189
    :cond_d
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    aget-byte v2, v2, v3

    const/16 v3, 0x29

    if-ne v2, v3, :cond_1

    .line 191
    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 192
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sun/mail/imap/protocol/Item;

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    .line 193
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getItem(I)Lcom/sun/mail/imap/protocol/Item;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;
    .locals 2

    const/4 v0, 0x0

    .line 80
    :goto_0
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object p1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object p1, p1, v0

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    array-length v0, v0

    return v0
.end method

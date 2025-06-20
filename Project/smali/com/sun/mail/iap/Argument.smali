.class public Lcom/sun/mail/iap/Argument;
.super Ljava/lang/Object;
.source "Argument.java"


# instance fields
.field protected items:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    return-void
.end method

.method private astring([BLcom/sun/mail/iap/Protocol;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 194
    invoke-virtual {p2}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/DataOutputStream;

    .line 195
    array-length v1, p1

    const/16 v2, 0x400

    if-le v1, v2, :cond_0

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/iap/Argument;->literal([BLcom/sun/mail/iap/Protocol;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    move v5, v4

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0x5c

    const/16 v8, 0x22

    if-lt v4, v1, :cond_8

    if-eqz v5, :cond_2

    .line 224
    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->write(I)V

    :cond_2
    if-eqz v6, :cond_6

    :goto_2
    if-lt v2, v1, :cond_3

    goto :goto_3

    .line 229
    :cond_3
    aget-byte p2, p1, v2

    if-eq p2, v8, :cond_4

    if-ne p2, v7, :cond_5

    .line 231
    :cond_4
    invoke-virtual {v0, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 232
    :cond_5
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 235
    :cond_6
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    :goto_3
    if-eqz v5, :cond_7

    .line 239
    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->write(I)V

    :cond_7
    return-void

    .line 209
    :cond_8
    aget-byte v9, p1, v4

    if-eqz v9, :cond_e

    const/16 v10, 0xd

    if-eq v9, v10, :cond_e

    const/16 v10, 0xa

    if-eq v9, v10, :cond_e

    and-int/lit16 v10, v9, 0xff

    const/16 v11, 0x7f

    if-le v10, v11, :cond_9

    goto :goto_6

    :cond_9
    const/16 v11, 0x2a

    if-eq v9, v11, :cond_a

    const/16 v11, 0x25

    if-eq v9, v11, :cond_a

    const/16 v11, 0x28

    if-eq v9, v11, :cond_a

    const/16 v11, 0x29

    if-eq v9, v11, :cond_a

    const/16 v11, 0x7b

    if-eq v9, v11, :cond_a

    if-eq v9, v8, :cond_a

    if-eq v9, v7, :cond_a

    const/16 v11, 0x20

    if-gt v10, v11, :cond_d

    :cond_a
    if-eq v9, v8, :cond_c

    if-ne v9, v7, :cond_b

    goto :goto_4

    :cond_b
    const/4 v5, 0x1

    goto :goto_5

    :cond_c
    :goto_4
    const/4 v5, 0x1

    const/4 v6, 0x1

    :cond_d
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 212
    :cond_e
    :goto_6
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/iap/Argument;->literal([BLcom/sun/mail/iap/Protocol;)V

    return-void
.end method

.method private literal(Lcom/sun/mail/iap/Literal;Lcom/sun/mail/iap/Protocol;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 263
    invoke-interface {p1}, Lcom/sun/mail/iap/Literal;->size()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/sun/mail/iap/Argument;->startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/mail/iap/Literal;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method

.method private literal(Ljava/io/ByteArrayOutputStream;Lcom/sun/mail/iap/Protocol;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 255
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/sun/mail/iap/Argument;->startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method

.method private literal([BLcom/sun/mail/iap/Protocol;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 247
    array-length v0, p1

    invoke-direct {p0, p2, v0}, Lcom/sun/mail/iap/Argument;->startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 268
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/DataOutputStream;

    .line 269
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->supportsNonSyncLiterals()Z

    move-result v1

    const/16 v2, 0x7b

    .line 271
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 272
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string p2, "+}\r\n"

    .line 274
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "}\r\n"

    .line 276
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 277
    :goto_0
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    if-nez v1, :cond_2

    .line 283
    :cond_1
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object p2

    .line 284
    invoke-virtual {p2}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v1

    if-nez v1, :cond_2

    .line 286
    invoke-virtual {p2}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    new-instance p1, Lcom/sun/mail/iap/LiteralException;

    invoke-direct {p1, p2}, Lcom/sun/mail/iap/LiteralException;-><init>(Lcom/sun/mail/iap/Response;)V

    throw p1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public append(Lcom/sun/mail/iap/Argument;)V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    iget-object v1, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget-object v2, p1, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->ensureCapacity(I)V

    const/4 v0, 0x0

    .line 69
    :goto_0
    iget-object v1, p1, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    iget-object v2, p1, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public write(Lcom/sun/mail/iap/Protocol;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 162
    :goto_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    check-cast v2, Ljava/io/DataOutputStream;

    :goto_1
    if-lt v1, v0, :cond_1

    return-void

    :cond_1
    if-lez v1, :cond_2

    const/16 v3, 0x20

    .line 166
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 168
    :cond_2
    iget-object v3, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 169
    instance-of v4, v3, Lcom/sun/mail/iap/Atom;

    if-eqz v4, :cond_3

    .line 170
    check-cast v3, Lcom/sun/mail/iap/Atom;

    iget-object v3, v3, Lcom/sun/mail/iap/Atom;->string:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_2

    .line 171
    :cond_3
    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_4

    .line 172
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_2

    .line 173
    :cond_4
    instance-of v4, v3, Lcom/sun/mail/iap/AString;

    if-eqz v4, :cond_5

    .line 174
    check-cast v3, Lcom/sun/mail/iap/AString;

    iget-object v3, v3, Lcom/sun/mail/iap/AString;->bytes:[B

    invoke-direct {p0, v3, p1}, Lcom/sun/mail/iap/Argument;->astring([BLcom/sun/mail/iap/Protocol;)V

    goto :goto_2

    .line 175
    :cond_5
    instance-of v4, v3, [B

    if-eqz v4, :cond_6

    .line 176
    check-cast v3, [B

    invoke-direct {p0, v3, p1}, Lcom/sun/mail/iap/Argument;->literal([BLcom/sun/mail/iap/Protocol;)V

    goto :goto_2

    .line 177
    :cond_6
    instance-of v4, v3, Ljava/io/ByteArrayOutputStream;

    if-eqz v4, :cond_7

    .line 178
    check-cast v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v3, p1}, Lcom/sun/mail/iap/Argument;->literal(Ljava/io/ByteArrayOutputStream;Lcom/sun/mail/iap/Protocol;)V

    goto :goto_2

    .line 179
    :cond_7
    instance-of v4, v3, Lcom/sun/mail/iap/Literal;

    if-eqz v4, :cond_8

    .line 180
    check-cast v3, Lcom/sun/mail/iap/Literal;

    invoke-direct {p0, v3, p1}, Lcom/sun/mail/iap/Argument;->literal(Lcom/sun/mail/iap/Literal;Lcom/sun/mail/iap/Protocol;)V

    goto :goto_2

    .line 181
    :cond_8
    instance-of v4, v3, Lcom/sun/mail/iap/Argument;

    if-eqz v4, :cond_9

    const/16 v4, 0x28

    .line 182
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 183
    check-cast v3, Lcom/sun/mail/iap/Argument;

    invoke-virtual {v3, p1}, Lcom/sun/mail/iap/Argument;->write(Lcom/sun/mail/iap/Protocol;)V

    const/16 v3, 0x29

    .line 184
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    :cond_9
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public writeArgument(Lcom/sun/mail/iap/Argument;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public writeAtom(Ljava/lang/String;)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Lcom/sun/mail/iap/Atom;

    invoke-direct {v1, p1}, Lcom/sun/mail/iap/Atom;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public writeBytes(Lcom/sun/mail/iap/Literal;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public writeBytes(Ljava/io/ByteArrayOutputStream;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public writeBytes([B)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public writeNumber(I)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public writeNumber(J)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Lcom/sun/mail/iap/AString;

    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/sun/mail/iap/AString;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 93
    invoke-virtual {p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/Vector;

    new-instance v1, Lcom/sun/mail/iap/AString;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/sun/mail/iap/AString;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

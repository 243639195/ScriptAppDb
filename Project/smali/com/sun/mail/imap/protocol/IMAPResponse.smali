.class public Lcom/sun/mail/imap/protocol/IMAPResponse;
.super Lcom/sun/mail/iap/Response;
.source "IMAPResponse.java"


# instance fields
.field private key:Ljava/lang/String;

.field private number:I


# direct methods
.method public constructor <init>(Lcom/sun/mail/iap/Protocol;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Lcom/sun/mail/iap/Response;-><init>(Lcom/sun/mail/iap/Protocol;)V

    .line 64
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isUnTagged()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isOK()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isNO()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isBAD()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isBYE()Z

    move-result p1

    if-nez p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtom()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    .line 69
    :try_start_0
    iget-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->number:I

    .line 70
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtom()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V
    .locals 1

    .line 79
    invoke-direct {p0, p1}, Lcom/sun/mail/iap/Response;-><init>(Lcom/sun/mail/iap/Response;)V

    .line 80
    iget-object v0, p1, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    .line 81
    iget p1, p1, Lcom/sun/mail/imap/protocol/IMAPResponse;->number:I

    iput p1, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->number:I

    return-void
.end method

.method public static readResponse(Lcom/sun/mail/iap/Protocol;)Lcom/sun/mail/imap/protocol/IMAPResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 135
    new-instance v0, Lcom/sun/mail/imap/protocol/IMAPResponse;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;-><init>(Lcom/sun/mail/iap/Protocol;)V

    const-string p0, "FETCH"

    .line 136
    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 137
    new-instance p0, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->number:I

    return v0
.end method

.method public keyEquals(Ljava/lang/String;)Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public readSimpleList()[Ljava/lang/String;
    .locals 5

    .line 91
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skipSpaces()V

    .line 93
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->buffer:[B

    iget v1, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    aget-byte v0, v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_0

    return-object v1

    .line 95
    :cond_0
    iget v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    .line 97
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 99
    iget v2, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    :goto_0
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->buffer:[B

    iget v4, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    aget-byte v3, v3, v4

    const/16 v4, 0x29

    if-ne v3, v4, :cond_3

    .line 105
    iget v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    if-le v3, v2, :cond_1

    .line 106
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->buffer:[B

    iget v4, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    invoke-static {v3, v2, v4}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 107
    :cond_1
    iget v2, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    .line 109
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 111
    new-array v1, v2, [Ljava/lang/String;

    .line 112
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v1

    :cond_2
    return-object v1

    .line 100
    :cond_3
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->buffer:[B

    iget v4, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    aget-byte v3, v3, v4

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4

    .line 101
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->buffer:[B

    iget v4, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    invoke-static {v3, v2, v4}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 102
    iget v2, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    add-int/lit8 v2, v2, 0x1

    .line 99
    :cond_4
    iget v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sun/mail/imap/protocol/IMAPResponse;->index:I

    goto :goto_0
.end method

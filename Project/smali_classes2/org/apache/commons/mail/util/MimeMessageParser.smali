.class public Lorg/apache/commons/mail/util/MimeMessageParser;
.super Ljava/lang/Object;
.source "MimeMessageParser.java"


# instance fields
.field private final attachmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/activation/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final cidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/activation/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private htmlContent:Ljava/lang/String;

.field private isMultiPart:Z

.field private final mimeMessage:Ljavax/mail/internet/MimeMessage;

.field private plainContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/mail/internet/MimeMessage;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->attachmentList:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->cidMap:Ljava/util/Map;

    .line 84
    iput-object p1, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->mimeMessage:Ljavax/mail/internet/MimeMessage;

    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->isMultiPart:Z

    return-void
.end method

.method private getBaseMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3b

    .line 450
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    .line 453
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p1
.end method

.method private getContent(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 427
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 428
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-direct {p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 430
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 432
    invoke-virtual {p1, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    goto :goto_0

    .line 435
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 436
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 437
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V

    return-object v0
.end method

.method private isMimeType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/activation/DataHandler;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, p2}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 255
    :catch_0
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private stripContentId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 230
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[\\<\\>]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected createDataSource(Ljavax/mail/Multipart;Ljavax/mail/internet/MimePart;)Ljavax/activation/DataSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    invoke-interface {p2}, Ljavax/mail/internet/MimePart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object p1

    .line 272
    invoke-virtual {p1}, Ljavax/activation/DataHandler;->getDataSource()Ljavax/activation/DataSource;

    move-result-object p1

    .line 273
    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/mail/util/MimeMessageParser;->getBaseMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/mail/util/MimeMessageParser;->getContent(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 275
    new-instance v2, Ljavax/mail/util/ByteArrayDataSource;

    invoke-direct {v2, v1, v0}, Ljavax/mail/util/ByteArrayDataSource;-><init>([BLjava/lang/String;)V

    .line 276
    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/mail/util/MimeMessageParser;->getDataSourceName(Ljavax/mail/Part;Ljavax/activation/DataSource;)Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-virtual {v2, p1}, Ljavax/mail/util/ByteArrayDataSource;->setName(Ljava/lang/String;)V

    return-object v2
.end method

.method public findAttachmentByCid(Ljava/lang/String;)Ljavax/activation/DataSource;
    .locals 1

    .line 378
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->cidMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/activation/DataSource;

    return-object p1
.end method

.method public findAttachmentByName(Ljava/lang/String;)Ljavax/activation/DataSource;
    .locals 3

    const/4 v0, 0x0

    .line 354
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/mail/util/MimeMessageParser;->getAttachmentList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 356
    invoke-virtual {p0}, Lorg/apache/commons/mail/util/MimeMessageParser;->getAttachmentList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/activation/DataSource;

    .line 357
    invoke-interface {v1}, Ljavax/activation/DataSource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttachmentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/activation/DataSource;",
            ">;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->attachmentList:Ljava/util/List;

    return-object v0
.end method

.method public getBcc()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/mail/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->mimeMessage:Ljavax/mail/internet/MimeMessage;

    sget-object v1, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0
.end method

.method public getCc()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/mail/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->mimeMessage:Ljavax/mail/internet/MimeMessage;

    sget-object v1, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0
.end method

.method public getContentIds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->cidMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected getDataSourceName(Ljavax/mail/Part;Ljavax/activation/DataSource;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 394
    invoke-interface {p2}, Ljavax/activation/DataSource;->getName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 396
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 398
    :cond_0
    invoke-interface {p1}, Ljavax/mail/Part;->getFileName()Ljava/lang/String;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_2

    .line 401
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 403
    invoke-static {p2}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getFrom()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->mimeMessage:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 141
    aget-object v0, v0, v1

    check-cast v0, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHtmlContent()Ljava/lang/String;
    .locals 1

    .line 323
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->htmlContent:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeMessage()Ljavax/mail/internet/MimeMessage;
    .locals 1

    .line 285
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->mimeMessage:Ljavax/mail/internet/MimeMessage;

    return-object v0
.end method

.method public getPlainContent()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->plainContent:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyTo()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->mimeMessage:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->getReplyTo()[Ljavax/mail/Address;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 151
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 155
    aget-object v0, v0, v1

    check-cast v0, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->mimeMessage:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->getSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/mail/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->mimeMessage:Ljavax/mail/internet/MimeMessage;

    sget-object v1, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0
.end method

.method public hasAttachments()Z
    .locals 1

    .line 341
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->attachmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHtmlContent()Z
    .locals 1

    .line 335
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->htmlContent:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPlainContent()Z
    .locals 1

    .line 329
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->plainContent:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMultipart()Z
    .locals 1

    .line 291
    iget-boolean v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->isMultiPart:Z

    return v0
.end method

.method public parse()Lorg/apache/commons/mail/util/MimeMessageParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->mimeMessage:Ljavax/mail/internet/MimeMessage;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/mail/util/MimeMessageParser;->parse(Ljavax/mail/Multipart;Ljavax/mail/internet/MimePart;)V

    return-object p0
.end method

.method protected parse(Ljavax/mail/Multipart;Ljavax/mail/internet/MimePart;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "text/plain"

    .line 178
    invoke-direct {p0, p2, v0}, Lorg/apache/commons/mail/util/MimeMessageParser;->isMimeType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->plainContent:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "attachment"

    invoke-interface {p2}, Ljavax/mail/internet/MimePart;->getDisposition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-interface {p2}, Ljavax/mail/internet/MimePart;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->plainContent:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v0, "text/html"

    .line 185
    invoke-direct {p0, p2, v0}, Lorg/apache/commons/mail/util/MimeMessageParser;->isMimeType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->htmlContent:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "attachment"

    invoke-interface {p2}, Ljavax/mail/internet/MimePart;->getDisposition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    invoke-interface {p2}, Ljavax/mail/internet/MimePart;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->htmlContent:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v0, "multipart/*"

    .line 192
    invoke-direct {p0, p2, v0}, Lorg/apache/commons/mail/util/MimeMessageParser;->isMimeType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    .line 194
    iput-boolean p1, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->isMultiPart:Z

    .line 195
    invoke-interface {p2}, Ljavax/mail/internet/MimePart;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/mail/Multipart;

    .line 196
    invoke-virtual {p1}, Ljavax/mail/Multipart;->getCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_4

    .line 202
    invoke-virtual {p1, v0}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v1

    check-cast v1, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/mail/util/MimeMessageParser;->parse(Ljavax/mail/Multipart;Ljavax/mail/internet/MimePart;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_2
    invoke-interface {p2}, Ljavax/mail/internet/MimePart;->getContentID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/mail/util/MimeMessageParser;->stripContentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/mail/util/MimeMessageParser;->createDataSource(Ljavax/mail/Multipart;Ljavax/mail/internet/MimePart;)Ljavax/activation/DataSource;

    move-result-object p1

    if-eqz v0, :cond_3

    .line 211
    iget-object p2, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->cidMap:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_3
    iget-object p2, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->attachmentList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-void
.end method

.class public Lorg/apache/commons/mail/MultiPartEmail;
.super Lorg/apache/commons/mail/Email;
.source "MultiPartEmail.java"


# instance fields
.field private boolHasAttachments:Z

.field private container:Ljavax/mail/internet/MimeMultipart;

.field private initialized:Z

.field private primaryBodyPart:Ljavax/mail/BodyPart;

.field private subType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/apache/commons/mail/Email;-><init>()V

    return-void
.end method


# virtual methods
.method public addPart(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->createBodyPart()Ljavax/mail/BodyPart;

    move-result-object v0

    .line 104
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljavax/mail/BodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getContainer()Ljavax/mail/internet/MimeMultipart;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 109
    new-instance p2, Lorg/apache/commons/mail/EmailException;

    invoke-direct {p2, p1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public addPart(Ljavax/mail/internet/MimeMultipart;)Lorg/apache/commons/mail/Email;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 128
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getContainer()Ljavax/mail/internet/MimeMultipart;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMultipart;->getCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/mail/MultiPartEmail;->addPart(Ljavax/mail/internet/MimeMultipart;I)Lorg/apache/commons/mail/Email;

    move-result-object p1
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 132
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v0, p1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public addPart(Ljavax/mail/internet/MimeMultipart;I)Lorg/apache/commons/mail/Email;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->createBodyPart()Ljavax/mail/BodyPart;

    move-result-object v0

    .line 150
    :try_start_0
    invoke-virtual {v0, p1}, Ljavax/mail/BodyPart;->setContent(Ljavax/mail/Multipart;)V

    .line 151
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getContainer()Ljavax/mail/internet/MimeMultipart;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 155
    new-instance p2, Lorg/apache/commons/mail/EmailException;

    invoke-direct {p2, p1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public attach(Ljava/io/File;)Lorg/apache/commons/mail/MultiPartEmail;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 274
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 278
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 283
    :cond_0
    new-instance v1, Ljavax/activation/FileDataSource;

    invoke-direct {v1, p1}, Ljavax/activation/FileDataSource;-><init>(Ljava/io/File;)V

    .line 285
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    const-string v3, "attachment"

    invoke-virtual {p0, v1, p1, v2, v3}, Lorg/apache/commons/mail/MultiPartEmail;->attach(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 289
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot attach file \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public attach(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    const-string v0, "attachment"

    .line 365
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/mail/MultiPartEmail;->attach(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;

    move-result-object p1

    return-object p1
.end method

.method public attach(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 390
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    new-instance v0, Ljavax/activation/URLDataSource;

    invoke-direct {v0, p1}, Ljavax/activation/URLDataSource;-><init>(Ljava/net/URL;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/commons/mail/MultiPartEmail;->attach(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p2

    .line 395
    new-instance p3, Lorg/apache/commons/mail/EmailException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Invalid URL set:"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public attach(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 421
    :try_start_0
    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 425
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    if-nez v0, :cond_2

    .line 430
    new-instance p1, Lorg/apache/commons/mail/EmailException;

    const-string p2, "Invalid Datasource"

    invoke-direct {p1, p2}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_1
    new-instance p2, Lorg/apache/commons/mail/EmailException;

    const-string p3, "Invalid Datasource"

    invoke-direct {p2, p3, p1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    const-string v0, "attachment"

    .line 438
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/mail/MultiPartEmail;->attach(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;

    move-result-object p1

    return-object p1
.end method

.method public attach(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 460
    invoke-static {p2}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    invoke-interface {p1}, Ljavax/activation/DataSource;->getName()Ljava/lang/String;

    move-result-object p2

    .line 464
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->createBodyPart()Ljavax/mail/BodyPart;

    move-result-object v0

    .line 467
    :try_start_0
    invoke-virtual {v0, p4}, Ljavax/mail/BodyPart;->setDisposition(Ljava/lang/String;)V

    .line 468
    invoke-static {p2}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljavax/mail/BodyPart;->setFileName(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v0, p3}, Ljavax/mail/BodyPart;->setDescription(Ljava/lang/String;)V

    .line 470
    new-instance p2, Ljavax/activation/DataHandler;

    invoke-direct {p2, p1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    invoke-virtual {v0, p2}, Ljavax/mail/BodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 472
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getContainer()Ljavax/mail/internet/MimeMultipart;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    .line 483
    invoke-virtual {p0, p1}, Lorg/apache/commons/mail/MultiPartEmail;->setBoolHasAttachments(Z)V

    return-object p0

    :catch_0
    move-exception p1

    .line 481
    new-instance p2, Lorg/apache/commons/mail/EmailException;

    invoke-direct {p2, p1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 477
    new-instance p2, Lorg/apache/commons/mail/EmailException;

    invoke-direct {p2, p1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public attach(Lorg/apache/commons/mail/EmailAttachment;)Lorg/apache/commons/mail/MultiPartEmail;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 309
    new-instance p1, Lorg/apache/commons/mail/EmailException;

    const-string v0, "Invalid attachment supplied"

    invoke-direct {p1, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 312
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getURL()Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 319
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getPath()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 320
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 323
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" does not exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 325
    :cond_1
    new-instance v2, Ljavax/activation/FileDataSource;

    invoke-direct {v2, v0}, Ljavax/activation/FileDataSource;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getDisposition()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, v0, v3, p1}, Lorg/apache/commons/mail/MultiPartEmail;->attach(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, v0

    .line 334
    :goto_0
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot attach file \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 339
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getDisposition()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/apache/commons/mail/MultiPartEmail;->attach(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public buildMimeMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 229
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->primaryBodyPart:Ljavax/mail/BodyPart;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getPrimaryBodyPart()Ljavax/mail/BodyPart;

    move-result-object v0
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 238
    :try_start_1
    invoke-virtual {v0}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 249
    :catch_0
    :cond_0
    :try_start_2
    iget-object v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->subType:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getContainer()Ljavax/mail/internet/MimeMultipart;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/mail/MultiPartEmail;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 254
    :cond_1
    invoke-super {p0}, Lorg/apache/commons/mail/Email;->buildMimeMessage()V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 258
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v1, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected createBodyPart()Ljavax/mail/BodyPart;
    .locals 1

    .line 535
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    return-object v0
.end method

.method protected createMimeMultipart()Ljavax/mail/internet/MimeMultipart;
    .locals 1

    .line 545
    new-instance v0, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    return-object v0
.end method

.method protected getContainer()Ljavax/mail/internet/MimeMultipart;
    .locals 1

    .line 520
    iget-boolean v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->initialized:Z

    if-nez v0, :cond_0

    .line 522
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->init()V

    .line 524
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->container:Ljavax/mail/internet/MimeMultipart;

    return-object v0
.end method

.method protected getPrimaryBodyPart()Ljavax/mail/BodyPart;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 497
    iget-boolean v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->initialized:Z

    if-nez v0, :cond_0

    .line 499
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->init()V

    .line 503
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->primaryBodyPart:Ljavax/mail/BodyPart;

    if-nez v0, :cond_1

    .line 505
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->createBodyPart()Ljavax/mail/BodyPart;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->primaryBodyPart:Ljavax/mail/BodyPart;

    .line 506
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getContainer()Ljavax/mail/internet/MimeMultipart;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/mail/MultiPartEmail;->primaryBodyPart:Ljavax/mail/BodyPart;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;I)V

    .line 509
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->primaryBodyPart:Ljavax/mail/BodyPart;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->subType:Ljava/lang/String;

    return-object v0
.end method

.method protected init()V
    .locals 2

    .line 167
    iget-boolean v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->initialized:Z

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->createMimeMultipart()Ljavax/mail/internet/MimeMultipart;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->container:Ljavax/mail/internet/MimeMultipart;

    .line 173
    iget-object v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->container:Ljavax/mail/internet/MimeMultipart;

    invoke-super {p0, v0}, Lorg/apache/commons/mail/Email;->setContent(Ljavax/mail/internet/MimeMultipart;)V

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->initialized:Z

    return-void
.end method

.method public isBoolHasAttachments()Z
    .locals 1

    .line 556
    iget-boolean v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->boolHasAttachments:Z

    return v0
.end method

.method protected isInitialized()Z
    .locals 1

    .line 577
    iget-boolean v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->initialized:Z

    return v0
.end method

.method public setBoolHasAttachments(Z)V
    .locals 0

    .line 567
    iput-boolean p1, p0, Lorg/apache/commons/mail/MultiPartEmail;->boolHasAttachments:Z

    return-void
.end method

.method protected setInitialized(Z)V
    .locals 0

    .line 587
    iput-boolean p1, p0, Lorg/apache/commons/mail/MultiPartEmail;->initialized:Z

    return-void
.end method

.method public setMsg(Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 191
    invoke-static {p1}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    new-instance p1, Lorg/apache/commons/mail/EmailException;

    const-string v0, "Invalid message supplied"

    invoke-direct {p1, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 197
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getPrimaryBodyPart()Ljavax/mail/BodyPart;

    move-result-object v0

    .line 199
    instance-of v1, v0, Ljavax/mail/internet/MimePart;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/mail/MultiPartEmail;->charset:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    check-cast v0, Ljavax/mail/internet/MimePart;

    iget-object v1, p0, Lorg/apache/commons/mail/MultiPartEmail;->charset:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljavax/mail/internet/MimePart;->setText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {v0, p1}, Ljavax/mail/BodyPart;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p1

    .line 210
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v0, p1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lorg/apache/commons/mail/MultiPartEmail;->subType:Ljava/lang/String;

    return-void
.end method

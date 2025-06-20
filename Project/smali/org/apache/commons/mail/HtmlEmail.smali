.class public Lorg/apache/commons/mail/HtmlEmail;
.super Lorg/apache/commons/mail/MultiPartEmail;
.source "HtmlEmail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    }
.end annotation


# static fields
.field public static final CID_LENGTH:I = 0xa

.field private static final HTML_MESSAGE_END:Ljava/lang/String; = "</pre></body></html>"

.field private static final HTML_MESSAGE_START:Ljava/lang/String; = "<html><body><pre>"


# instance fields
.field protected html:Ljava/lang/String;

.field protected inlineEmbeds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/mail/HtmlEmail$InlineImage;",
            ">;"
        }
    .end annotation
.end field

.field protected inlineImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/mail/HtmlEmail$InlineImage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Lorg/apache/commons/mail/MultiPartEmail;-><init>()V

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    return-void
.end method

.method private build()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 525
    invoke-virtual {p0}, Lorg/apache/commons/mail/HtmlEmail;->getContainer()Ljavax/mail/internet/MimeMultipart;

    move-result-object v0

    const-string v1, "mixed"

    .line 531
    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 538
    new-instance v0, Ljavax/mail/internet/MimeMultipart;

    const-string v1, "related"

    invoke-direct {v0, v1}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/mail/HtmlEmail;->addPart(Ljavax/mail/internet/MimeMultipart;I)Lorg/apache/commons/mail/Email;

    .line 543
    iget-object v1, p0, Lorg/apache/commons/mail/HtmlEmail;->text:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 545
    new-instance v1, Ljavax/mail/internet/MimeMultipart;

    const-string v3, "alternative"

    invoke-direct {v1, v3}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Lorg/apache/commons/mail/HtmlEmail;->createBodyPart()Ljavax/mail/BodyPart;

    move-result-object v3

    .line 549
    :try_start_0
    invoke-virtual {v3, v1}, Ljavax/mail/BodyPart;->setContent(Ljavax/mail/Multipart;)V

    .line 550
    invoke-virtual {v0, v3, v2}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 554
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v1, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 558
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/mail/HtmlEmail;->text:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 564
    iget-object v1, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/mail/HtmlEmail;->isBoolHasAttachments()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "alternative"

    .line 575
    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    goto :goto_2

    .line 568
    :cond_2
    :goto_0
    new-instance v1, Ljavax/mail/internet/MimeMultipart;

    const-string v3, "alternative"

    invoke-direct {v1, v3}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/mail/HtmlEmail;->addPart(Ljavax/mail/internet/MimeMultipart;I)Lorg/apache/commons/mail/Email;

    :goto_1
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :cond_3
    :goto_2
    move-object v1, v0

    .line 579
    :goto_3
    iget-object v3, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 581
    new-instance v3, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v3}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 582
    invoke-virtual {v0, v3, v2}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;I)V

    .line 586
    iget-object v4, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/commons/mail/HtmlEmail;->charset:Ljava/lang/String;

    const-string v6, "html"

    invoke-virtual {v3, v4, v5, v6}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-virtual {v3}, Ljavax/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v5, "text/html"

    .line 592
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 595
    :cond_4
    iget-object v4, p0, Lorg/apache/commons/mail/HtmlEmail;->charset:Ljava/lang/String;

    invoke-static {v4}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 597
    iget-object v4, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "text/html; charset="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/apache/commons/mail/HtmlEmail;->charset:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 604
    :cond_5
    iget-object v4, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    const-string v5, "text/html"

    invoke-virtual {v3, v4, v5}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    :cond_6
    :goto_4
    iget-object v3, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/mail/HtmlEmail$InlineImage;

    .line 610
    invoke-virtual {v4}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getMbp()Ljavax/mail/internet/MimeBodyPart;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    goto :goto_5

    .line 614
    :cond_7
    iget-object v1, p0, Lorg/apache/commons/mail/HtmlEmail;->text:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 616
    new-instance v1, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v1}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 617
    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;I)V

    .line 621
    iget-object v0, p0, Lorg/apache/commons/mail/HtmlEmail;->text:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/mail/HtmlEmail;->charset:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public buildMimeMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 510
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/mail/HtmlEmail;->build()V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    invoke-super {p0}, Lorg/apache/commons/mail/MultiPartEmail;->buildMimeMessage()V

    return-void

    :catch_0
    move-exception v0

    .line 514
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v1, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public embed(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 322
    invoke-static {v0}, Lorg/apache/commons/mail/EmailUtils;->randomAlphabetic(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/mail/HtmlEmail;->embed(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public embed(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 353
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    new-instance p1, Lorg/apache/commons/mail/EmailException;

    const-string p2, "file name cannot be null or empty"

    invoke-direct {p1, p2}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 362
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 372
    iget-object v1, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 374
    iget-object p2, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/mail/HtmlEmail$InlineImage;

    .line 375
    invoke-virtual {p2}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v1

    check-cast v1, Ljavax/activation/FileDataSource;

    .line 381
    :try_start_1
    invoke-virtual {v1}, Ljavax/activation/FileDataSource;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 389
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    invoke-virtual {p2}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getCid()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 393
    :cond_1
    new-instance p2, Lorg/apache/commons/mail/EmailException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "embedded name \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is already bound to file "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; existing names cannot be rebound"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_0
    move-exception p1

    .line 385
    new-instance p2, Lorg/apache/commons/mail/EmailException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "couldn\'t get canonical path for file "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljavax/activation/FileDataSource;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "which has already been embedded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 399
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 401
    new-instance p1, Lorg/apache/commons/mail/EmailException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "file "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " doesn\'t exist"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 403
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_4

    .line 405
    new-instance p1, Lorg/apache/commons/mail/EmailException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "file "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isn\'t a normal file"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 407
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_5

    .line 409
    new-instance p1, Lorg/apache/commons/mail/EmailException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "file "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isn\'t readable"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 412
    :cond_5
    new-instance v0, Ljavax/activation/FileDataSource;

    invoke-direct {v0, p1}, Ljavax/activation/FileDataSource;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/mail/HtmlEmail;->embed(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p2

    .line 366
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "couldn\'t get canonical path for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public embed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 215
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/mail/HtmlEmail;->embed(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 219
    new-instance p2, Lorg/apache/commons/mail/EmailException;

    const-string v0, "Invalid URL"

    invoke-direct {p2, v0, p1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public embed(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 257
    invoke-static {p2}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    new-instance p1, Lorg/apache/commons/mail/EmailException;

    const-string p2, "name cannot be null or empty"

    invoke-direct {p1, p2}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 264
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/mail/HtmlEmail$InlineImage;

    .line 267
    invoke-virtual {v0}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v1

    check-cast v1, Ljavax/activation/URLDataSource;

    .line 273
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljavax/activation/URLDataSource;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 275
    invoke-virtual {v0}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getCid()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 277
    :cond_1
    new-instance p1, Lorg/apache/commons/mail/EmailException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "embedded name \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' is already bound to URL "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/activation/URLDataSource;->getURL()Ljava/net/URL;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; existing names cannot be rebound"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 286
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 298
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 305
    :catch_0
    :cond_3
    new-instance v0, Ljavax/activation/URLDataSource;

    invoke-direct {v0, p1}, Ljavax/activation/URLDataSource;-><init>(Ljava/net/URL;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/mail/HtmlEmail;->embed(Ljavax/activation/DataSource;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 290
    :try_start_2
    new-instance p2, Lorg/apache/commons/mail/EmailException;

    const-string v0, "Invalid URL"

    invoke-direct {p2, v0, p1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 302
    :goto_0
    throw p1
.end method

.method public embed(Ljavax/activation/DataSource;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/mail/HtmlEmail$InlineImage;

    .line 436
    invoke-virtual {v0}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 438
    invoke-virtual {v0}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getCid()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 440
    :cond_0
    new-instance p1, Lorg/apache/commons/mail/EmailException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "embedded DataSource \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' is already bound to name "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getDataSource()Ljavax/activation/DataSource;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; existing names cannot be rebound"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 v0, 0xa

    .line 445
    invoke-static {v0}, Lorg/apache/commons/mail/EmailUtils;->randomAlphabetic(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 446
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/mail/HtmlEmail;->embed(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public embed(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 464
    invoke-static {p2}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    new-instance p1, Lorg/apache/commons/mail/EmailException;

    const-string p2, "name cannot be null or empty"

    invoke-direct {p1, p2}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 469
    :cond_0
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 474
    :try_start_0
    invoke-static {p3}, Lorg/apache/commons/mail/EmailUtils;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 476
    new-instance v1, Ljavax/activation/DataHandler;

    invoke-direct {v1, p1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 477
    invoke-virtual {v0, p2}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljava/lang/String;)V

    const-string v1, "inline"

    .line 478
    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeBodyPart;->setDisposition(Ljava/lang/String;)V

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeBodyPart;->setContentID(Ljava/lang/String;)V

    .line 481
    new-instance v1, Lorg/apache/commons/mail/HtmlEmail$InlineImage;

    invoke-direct {v1, p3, p1, v0}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;-><init>(Ljava/lang/String;Ljavax/activation/DataSource;Ljavax/mail/internet/MimeBodyPart;)V

    .line 482
    iget-object p1, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    .line 492
    new-instance p2, Lorg/apache/commons/mail/EmailException;

    invoke-direct {p2, p1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 488
    new-instance p2, Lorg/apache/commons/mail/EmailException;

    invoke-direct {p2, p1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setHtmlMsg(Ljava/lang/String;)Lorg/apache/commons/mail/HtmlEmail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 149
    invoke-static {p1}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    new-instance p1, Lorg/apache/commons/mail/EmailException;

    const-string v0, "Invalid message supplied"

    invoke-direct {p1, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 154
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    return-object p0
.end method

.method public setMsg(Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 176
    invoke-static {p1}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    new-instance p1, Lorg/apache/commons/mail/EmailException;

    const-string v0, "Invalid message supplied"

    invoke-direct {p1, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 181
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/mail/HtmlEmail;->setTextMsg(Ljava/lang/String;)Lorg/apache/commons/mail/HtmlEmail;

    .line 183
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x11

    add-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "<html><body><pre>"

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "</pre></body></html>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/mail/HtmlEmail;->setHtmlMsg(Ljava/lang/String;)Lorg/apache/commons/mail/HtmlEmail;

    return-object p0
.end method

.method public setTextMsg(Ljava/lang/String;)Lorg/apache/commons/mail/HtmlEmail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 129
    invoke-static {p1}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    new-instance p1, Lorg/apache/commons/mail/EmailException;

    const-string v0, "Invalid message supplied"

    invoke-direct {p1, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/mail/HtmlEmail;->text:Ljava/lang/String;

    return-object p0
.end method

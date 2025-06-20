.class public Lcom/sun/mail/dsn/MultipartReport;
.super Ljavax/mail/internet/MimeMultipart;
.source "MultipartReport.java"


# instance fields
.field protected constructed:Z


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "report"

    .line 80
    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V

    .line 84
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    const/4 v1, 0x1

    .line 85
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V

    .line 86
    iput-boolean v1, p0, Lcom/sun/mail/dsn/MultipartReport;->constructed:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/mail/dsn/DeliveryStatus;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "report"

    .line 95
    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p0, Lcom/sun/mail/dsn/MultipartReport;->contentType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v1, "report-type"

    const-string v2, "delivery-status"

    .line 97
    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/dsn/MultipartReport;->contentType:Ljava/lang/String;

    .line 99
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 100
    invoke-virtual {v0, p1}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 101
    invoke-direct {p0, v0, p1}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V

    .line 102
    new-instance p1, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {p1}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    const-string v0, "message/delivery-status"

    .line 103
    invoke-virtual {p1, p2, v0}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V

    .line 105
    iput-boolean p2, p0, Lcom/sun/mail/dsn/MultipartReport;->constructed:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/mail/dsn/DeliveryStatus;Ljavax/mail/internet/InternetHeaders;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/dsn/MultipartReport;-><init>(Ljava/lang/String;Lcom/sun/mail/dsn/DeliveryStatus;)V

    if-eqz p3, :cond_0

    .line 131
    new-instance p1, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {p1}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 132
    new-instance p2, Lcom/sun/mail/dsn/MessageHeaders;

    invoke-direct {p2, p3}, Lcom/sun/mail/dsn/MessageHeaders;-><init>(Ljavax/mail/internet/InternetHeaders;)V

    const-string p3, "text/rfc822-headers"

    invoke-virtual {p1, p2, p3}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/mail/dsn/DeliveryStatus;Ljavax/mail/internet/MimeMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/dsn/MultipartReport;-><init>(Ljava/lang/String;Lcom/sun/mail/dsn/DeliveryStatus;)V

    if-eqz p3, :cond_0

    .line 116
    new-instance p1, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {p1}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    const-string p2, "message/rfc822"

    .line 117
    invoke-virtual {p1, p3, p2}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljavax/activation/DataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 144
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljavax/activation/DataSource;)V

    .line 145
    invoke-virtual {p0}, Lcom/sun/mail/dsn/MultipartReport;->parse()V

    const/4 p1, 0x1

    .line 146
    iput-boolean p1, p0, Lcom/sun/mail/dsn/MultipartReport;->constructed:Z

    return-void
.end method

.method private declared-synchronized setBodyPart(Ljavax/mail/BodyPart;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/dsn/MultipartReport;->parts:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/dsn/MultipartReport;->parts:Ljava/util/Vector;

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/dsn/MultipartReport;->parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 295
    invoke-super {p0, p2}, Ljavax/mail/internet/MimeMultipart;->removeBodyPart(I)V

    .line 296
    :cond_1
    invoke-super {p0, p1, p2}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 290
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 347
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/dsn/MultipartReport;->constructed:Z

    if-nez v0, :cond_0

    .line 348
    invoke-super {p0, p1}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 350
    :cond_0
    :try_start_1
    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "Can\'t add body parts to multipart/report 1"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 346
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 364
    :try_start_0
    new-instance p1, Ljavax/mail/MessagingException;

    const-string p2, "Can\'t add body parts to multipart/report 2"

    invoke-direct {p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 363
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDeliveryStatus()Lcom/sun/mail/dsn/DeliveryStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 221
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/dsn/MultipartReport;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 222
    monitor-exit p0

    return-object v2

    :cond_0
    const/4 v0, 0x1

    .line 223
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/sun/mail/dsn/MultipartReport;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v0

    const-string v1, "message/delivery-status"

    .line 224
    invoke-virtual {v0, v1}, Ljavax/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 225
    monitor-exit p0

    return-object v2

    .line 227
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/dsn/DeliveryStatus;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    .line 229
    :try_start_3
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "IOException getting DeliveryStatus"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 220
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReturnedMessage()Ljavax/mail/internet/MimeMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 255
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/dsn/MultipartReport;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 256
    monitor-exit p0

    return-object v2

    :cond_0
    const/4 v0, 0x2

    .line 257
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/sun/mail/dsn/MultipartReport;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v0

    const-string v1, "message/rfc822"

    .line 258
    invoke-virtual {v0, v1}, Ljavax/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "text/rfc822-headers"

    .line 259
    invoke-virtual {v0, v1}, Ljavax/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 260
    monitor-exit p0

    return-object v2

    .line 262
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/MimeMessage;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    .line 264
    :try_start_3
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "IOException getting ReturnedMessage"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 254
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getText()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 168
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sun/mail/dsn/MultipartReport;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v1

    const-string v2, "text/plain"

    .line 169
    invoke-virtual {v1, v2}, Ljavax/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    invoke-virtual {v1}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v2, "multipart/alternative"

    .line 171
    invoke-virtual {v1, v2}, Ljavax/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 172
    invoke-virtual {v1}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/Multipart;

    .line 173
    :goto_0
    invoke-virtual {v1}, Ljavax/mail/Multipart;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    goto :goto_1

    .line 174
    :cond_1
    invoke-virtual {v1, v0}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v2

    const-string v3, "text/plain"

    .line 175
    invoke-virtual {v2, v3}, Ljavax/mail/BodyPart;->isMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    invoke-virtual {v2}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 182
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 180
    :try_start_2
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Exception getting text content"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTextBodyPart()Ljavax/mail/internet/MimeBodyPart;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 201
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sun/mail/dsn/MultipartReport;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/MimeBodyPart;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeBodyPart(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 333
    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "Can\'t remove body parts from multipart/report"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeBodyPart(Ljavax/mail/BodyPart;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 321
    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "Can\'t remove body parts from multipart/report"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized setDeliveryStatus(Lcom/sun/mail/dsn/DeliveryStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 239
    :try_start_0
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    const-string v1, "message/delivery-status"

    .line 240
    invoke-virtual {v0, p1, v1}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 241
    invoke-direct {p0, v0, p1}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V

    .line 242
    new-instance p1, Ljavax/mail/internet/ContentType;

    iget-object v0, p0, Lcom/sun/mail/dsn/MultipartReport;->contentType:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v0, "report-type"

    const-string v1, "delivery-status"

    .line 243
    invoke-virtual {p1, v0, v1}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/dsn/MultipartReport;->contentType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 238
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setReturnedMessage(Ljavax/mail/internet/MimeMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 277
    :try_start_0
    iget-object p1, p0, Lcom/sun/mail/dsn/MultipartReport;->parts:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 278
    invoke-super {p0, v0}, Ljavax/mail/internet/MimeMultipart;->removeBodyPart(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 281
    :cond_0
    :try_start_1
    new-instance v1, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v1}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 282
    instance-of v2, p1, Lcom/sun/mail/dsn/MessageHeaders;

    if-eqz v2, :cond_1

    const-string v2, "text/rfc822-headers"

    .line 283
    invoke-virtual {v1, p1, v2}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "message/rfc822"

    .line 285
    invoke-virtual {v1, p1, v2}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    monitor-exit p0

    return-void

    .line 275
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSubType(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 310
    :try_start_0
    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "Can\'t change subtype of MultipartReport"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setText(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 190
    :try_start_0
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 191
    invoke-virtual {v0, p1}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 192
    invoke-direct {p0, v0, p1}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 189
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTextBodyPart(Ljavax/mail/internet/MimeBodyPart;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 213
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/dsn/MultipartReport;->setBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 212
    monitor-exit p0

    throw p1
.end method

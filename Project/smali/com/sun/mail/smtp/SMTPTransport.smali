.class public Lcom/sun/mail/smtp/SMTPTransport;
.super Ljavax/mail/Transport;
.source "SMTPTransport.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CRLF:[B

.field private static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field private static hexchar:[C

.field private static final ignoreList:[Ljava/lang/String;


# instance fields
.field private addresses:[Ljavax/mail/Address;

.field private dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

.field private defaultPort:I

.field private exception:Ljavax/mail/MessagingException;

.field private extMap:Ljava/util/Hashtable;

.field private invalidAddr:[Ljavax/mail/Address;

.field private isSSL:Z

.field private lastReturnCode:I

.field private lastServerResponse:Ljava/lang/String;

.field private lineInputStream:Lcom/sun/mail/util/LineInputStream;

.field private localHostName:Ljava/lang/String;

.field private md5support:Lcom/sun/mail/smtp/DigestMD5;

.field private message:Ljavax/mail/internet/MimeMessage;

.field private name:Ljava/lang/String;

.field private out:Ljava/io/PrintStream;

.field private quitWait:Z

.field private reportSuccess:Z

.field private saslRealm:Ljava/lang/String;

.field private sendPartiallyFailed:Z

.field private serverInput:Ljava/io/BufferedInputStream;

.field private serverOutput:Ljava/io/OutputStream;

.field private serverSocket:Ljava/net/Socket;

.field private useRset:Z

.field private useStartTLS:Z

.field private validSentAddr:[Ljavax/mail/Address;

.field private validUnsentAddr:[Ljavax/mail/Address;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    .line 119
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Bcc"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Content-Length"

    aput-object v3, v1, v2

    sput-object v1, Lcom/sun/mail/smtp/SMTPTransport;->ignoreList:[Ljava/lang/String;

    .line 120
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/smtp/SMTPTransport;->CRLF:[B

    const/16 v0, 0x10

    .line 1737
    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/mail/smtp/SMTPTransport;->hexchar:[C

    return-void

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .locals 6

    const-string v3, "smtp"

    const/16 v4, 0x19

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 128
    invoke-direct/range {v0 .. v5}, Lcom/sun/mail/smtp/SMTPTransport;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;IZ)V

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;IZ)V
    .locals 2

    .line 136
    invoke-direct {p0, p1, p2}, Ljavax/mail/Transport;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    const-string v0, "smtp"

    .line 87
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    const/16 v0, 0x19

    .line 88
    iput v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultPort:I

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    .line 97
    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    .line 106
    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitWait:Z

    const-string v1, "UNKNOWN"

    .line 107
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 138
    invoke-virtual {p2}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object p3

    .line 139
    :cond_0
    iput-object p3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    .line 140
    iput p4, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultPort:I

    .line 141
    iput-boolean p5, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    .line 143
    invoke-virtual {p1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "mail."

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ".quitwait"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x1

    if-eqz p2, :cond_1

    const-string p5, "true"

    .line 148
    invoke-virtual {p2, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    iput-boolean p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitWait:Z

    .line 151
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "mail."

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".reportsuccess"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string p5, "true"

    .line 152
    invoke-virtual {p2, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z

    .line 155
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "mail."

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ".starttls.enable"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string p5, "true"

    .line 156
    invoke-virtual {p2, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    iput-boolean p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z

    .line 160
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "mail."

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".userset"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p2, "true"

    .line 161
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 p4, 0x0

    :goto_3
    iput-boolean p4, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z

    return-void
.end method

.method private closeConnection()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 710
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 711
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    :cond_0
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 716
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 717
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 718
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    .line 719
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 720
    invoke-super {p0}, Ljavax/mail/Transport;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 713
    :try_start_1
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "Server Close Failed"

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 715
    :goto_0
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 716
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 717
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 718
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    .line 719
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 720
    invoke-super {p0}, Ljavax/mail/Transport;->close()V

    .line 721
    :cond_2
    throw v1
.end method

.method private convertTo8Bit(Ljavax/mail/internet/MimePart;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "text/*"

    .line 820
    invoke-interface {p1, v2}, Ljavax/mail/internet/MimePart;->isMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 821
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "quoted-printable"

    .line 822
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "base64"

    .line 823
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 824
    :cond_0
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 825
    invoke-direct {p0, v2}, Lcom/sun/mail/smtp/SMTPTransport;->is8Bit(Ljava/io/InputStream;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 835
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContent()Ljava/lang/Object;

    move-result-object v2

    .line 836
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 835
    invoke-interface {p1, v2, v3}, Ljavax/mail/internet/MimePart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Content-Transfer-Encoding"

    const-string v3, "8bit"

    .line 837
    invoke-interface {p1, v2, v3}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "multipart/*"

    .line 841
    invoke-interface {p1, v2}, Ljavax/mail/internet/MimePart;->isMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 842
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/mail/internet/MimeMultipart;

    .line 843
    invoke-virtual {p1}, Ljavax/mail/internet/MimeMultipart;->getCount()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    :goto_0
    if-lt v0, v2, :cond_2

    :catch_0
    move v0, v3

    goto :goto_1

    .line 845
    :cond_2
    :try_start_1
    invoke-virtual {p1, v0}, Ljavax/mail/internet/MimeMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v4

    check-cast v4, Ljavax/mail/internet/MimePart;

    invoke-direct {p0, v4}, Lcom/sun/mail/smtp/SMTPTransport;->convertTo8Bit(Ljavax/mail/internet/MimePart;)Z

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_1
    :cond_4
    :goto_1
    return v0
.end method

.method private expandGroups()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    const/4 v1, 0x0

    .line 771
    :goto_0
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    array-length v3, v3

    if-lt v1, v3, :cond_1

    if-eqz v2, :cond_0

    .line 801
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/internet/InternetAddress;

    .line 802
    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 803
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    :cond_0
    return-void

    .line 772
    :cond_1
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    aget-object v3, v3, v1

    check-cast v3, Ljavax/mail/internet/InternetAddress;

    .line 773
    invoke-virtual {v3}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez v2, :cond_3

    .line 776
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_2

    move-object v2, v4

    goto :goto_2

    .line 778
    :cond_2
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/4 v4, 0x1

    .line 782
    :try_start_0
    invoke-virtual {v3, v4}, Ljavax/mail/internet/InternetAddress;->getGroup(Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v4

    if-eqz v4, :cond_5

    const/4 v5, 0x0

    .line 784
    :goto_3
    array-length v6, v4

    if-lt v5, v6, :cond_4

    goto :goto_4

    .line 785
    :cond_4
    aget-object v6, v4, v5

    invoke-virtual {v2, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 787
    :cond_5
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 790
    :catch_0
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    if-eqz v2, :cond_7

    .line 795
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private declared-synchronized getMD5()Lcom/sun/mail/smtp/DigestMD5;
    .locals 2

    monitor-enter p0

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->md5support:Lcom/sun/mail/smtp/DigestMD5;

    if-nez v0, :cond_1

    .line 347
    new-instance v0, Lcom/sun/mail/smtp/DigestMD5;

    iget-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Lcom/sun/mail/smtp/DigestMD5;-><init>(Ljava/io/PrintStream;)V

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->md5support:Lcom/sun/mail/smtp/DigestMD5;

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->md5support:Lcom/sun/mail/smtp/DigestMD5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 345
    monitor-exit p0

    throw v0
.end method

.method private initStreams()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1441
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 1442
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v1

    .line 1443
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v2}, Ljavax/mail/Session;->getDebug()Z

    move-result v2

    const-string v3, "mail.debug.quote"

    .line 1445
    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "true"

    .line 1446
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1449
    :goto_0
    new-instance v3, Lcom/sun/mail/util/TraceInputStream;

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/sun/mail/util/TraceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1450
    invoke-virtual {v3, v2}, Lcom/sun/mail/util/TraceInputStream;->setTrace(Z)V

    .line 1451
    invoke-virtual {v3, v0}, Lcom/sun/mail/util/TraceInputStream;->setQuote(Z)V

    .line 1454
    new-instance v4, Lcom/sun/mail/util/TraceOutputStream;

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/sun/mail/util/TraceOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    .line 1455
    invoke-virtual {v4, v2}, Lcom/sun/mail/util/TraceOutputStream;->setTrace(Z)V

    .line 1456
    invoke-virtual {v4, v0}, Lcom/sun/mail/util/TraceOutputStream;->setQuote(Z)V

    .line 1459
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1458
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 1461
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1460
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 1462
    new-instance v0, Lcom/sun/mail/util/LineInputStream;

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    invoke-direct {v0, v1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    return-void
.end method

.method private is8Bit(Ljava/io/InputStream;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 869
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v4, :cond_2

    .line 886
    iget-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    .line 887
    iget-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v0, "DEBUG SMTP: found an 8bit part"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return v2

    :cond_2
    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xd

    if-eq v4, v5, :cond_5

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    return v1

    :cond_4
    add-int/2addr v3, v0

    const/16 v5, 0x3e6

    if-le v3, v5, :cond_6

    return v1

    :cond_5
    :goto_1
    const/4 v3, 0x0

    :cond_6
    const/16 v5, 0x7f

    if-le v4, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    return v1
.end method

.method private isNotLastLine(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1669
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private issueSendCommand(Ljava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1489
    invoke-virtual {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 1494
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v2

    if-eq v2, p2, :cond_6

    .line 1497
    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    array-length p2, p2

    .line 1498
    :goto_0
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    array-length v1, v1

    :goto_1
    add-int v3, p2, v1

    .line 1499
    new-array v3, v3, [Ljavax/mail/Address;

    if-lez p2, :cond_2

    .line 1501
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    invoke-static {v4, v0, v3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    if-lez v1, :cond_3

    .line 1503
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    invoke-static {v4, v0, v3, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    const/4 p2, 0x0

    .line 1504
    iput-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1505
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1506
    iget-boolean p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz p2, :cond_4

    .line 1507
    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DEBUG SMTP: got response code "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", with response: "

    .line 1508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1507
    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1509
    :cond_4
    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1510
    iget v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1511
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v1, :cond_5

    const-string v1, "RSET"

    const/16 v3, 0xfa

    .line 1512
    invoke-virtual {p0, v1, v3}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    .line 1513
    :cond_5
    iput-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1514
    iput v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1515
    new-instance p2, Lcom/sun/mail/smtp/SMTPSendFailedException;

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1516
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    move-object v0, p2

    move-object v1, p1

    .line 1515
    invoke-direct/range {v0 .. v7}, Lcom/sun/mail/smtp/SMTPSendFailedException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw p2

    :cond_6
    return-void
.end method

.method private normalizeAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "<"

    .line 1674
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1675
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p1
.end method

.method private openServer()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "UNKNOWN"

    const/4 v1, -0x1

    .line 1404
    :try_start_0
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getPort()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1405
    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1406
    :try_start_2
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v0, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG SMTP: starting protocol to host \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1408
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\", port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1407
    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1410
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->initStreams()V

    .line 1413
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0

    const/16 v3, 0xdc

    if-eq v0, v3, :cond_2

    .line 1414
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    const/4 v3, 0x0

    .line 1415
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 1416
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 1417
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 1418
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    .line 1419
    iget-boolean v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v3, :cond_1

    .line 1420
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG SMTP: got bad greeting from host \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1421
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\", port: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", response: "

    .line 1422
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1420
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1423
    :cond_1
    new-instance v3, Ljavax/mail/MessagingException;

    .line 1424
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got bad greeting from SMTP host: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", port: "

    .line 1425
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", response: "

    .line 1426
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1424
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1423
    invoke-direct {v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1428
    :cond_2
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v0, :cond_3

    .line 1429
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG SMTP: protocol started to host \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1430
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\", port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1429
    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :cond_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_0

    :catch_2
    move-exception v2

    move-object v1, v0

    move-object v0, v2

    const/4 v2, -0x1

    .line 1433
    :goto_0
    new-instance v3, Ljavax/mail/MessagingException;

    .line 1434
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not start protocol to SMTP host: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", port: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1434
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1433
    invoke-direct {v3, v1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method private openServer(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1352
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG SMTP: trying to connect to host \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", port "

    .line 1354
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isSSL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1353
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1357
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 1360
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    .line 1359
    invoke-static {p1, p2, v0, v1, v2}, Lcom/sun/mail/util/SocketFetcher;->getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 1364
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1366
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->initStreams()V

    .line 1369
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result p2

    const/16 v1, 0xdc

    if-eq p2, v1, :cond_2

    .line 1370
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    const/4 v1, 0x0

    .line 1371
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 1372
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 1373
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 1374
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    .line 1375
    iget-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v1, :cond_1

    .line 1376
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG SMTP: could not connect to host \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1377
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\", port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", response: "

    .line 1378
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1376
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1379
    :cond_1
    new-instance v1, Ljavax/mail/MessagingException;

    .line 1380
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not connect to SMTP host: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", port: "

    .line 1381
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", response: "

    .line 1382
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1380
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1379
    invoke-direct {v1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1384
    :cond_2
    iget-boolean p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz p2, :cond_3

    .line 1385
    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG SMTP: connected to host \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1386
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1385
    invoke-virtual {p2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :cond_3
    return-void

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v0

    move v0, p2

    move-object p2, v4

    .line 1391
    :goto_0
    new-instance v1, Ljavax/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not connect to SMTP host: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1392
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", port: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1391
    invoke-direct {v1, p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception p2

    .line 1389
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown SMTP host: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method private sendCommand([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1560
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 1561
    iget-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    sget-object v0, Lcom/sun/mail/smtp/SMTPTransport;->CRLF:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1562
    iget-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1564
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Can\'t send command to SMTP host"

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method protected static xtext(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    const/4 v1, 0x0

    .line 1762
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_1

    if-eqz v2, :cond_0

    .line 1780
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0

    .line 1763
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-lt v3, v4, :cond_2

    .line 1765
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1766
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Non-ASCII character in SMTP submitter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1765
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v4, 0x21

    const/16 v5, 0x2b

    if-lt v3, v4, :cond_4

    const/16 v4, 0x7e

    if-gt v3, v4, :cond_4

    if-eq v3, v5, :cond_4

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_6

    .line 1777
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    .line 1769
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1770
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1772
    :cond_5
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1773
    sget-object v4, Lcom/sun/mail/smtp/SMTPTransport;->hexchar:[C

    and-int/lit16 v5, v3, 0xf0

    shr-int/lit8 v5, v5, 0x4

    aget-char v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1774
    sget-object v4, Lcom/sun/mail/smtp/SMTPTransport;->hexchar:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected checkConnected()V
    .locals 2

    .line 1663
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1664
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 692
    :try_start_0
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 693
    monitor-exit p0

    return-void

    .line 695
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    const-string v0, "QUIT"

    .line 696
    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 697
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitWait:Z

    if-eqz v0, :cond_1

    .line 698
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0

    const/16 v1, 0xdd

    if-eq v0, v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 700
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG SMTP: QUIT failed with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 704
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 706
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 704
    :try_start_3
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    .line 705
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 691
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect(Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 209
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 210
    invoke-super {p0}, Ljavax/mail/Transport;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 208
    monitor-exit p0

    throw p1
.end method

.method protected data()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "DATA"

    const/16 v1, 0x162

    .line 1308
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->issueSendCommand(Ljava/lang/String;I)V

    .line 1309
    new-instance v0, Lcom/sun/mail/smtp/SMTPOutputStream;

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lcom/sun/mail/smtp/SMTPOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

    .line 1310
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

    return-object v0
.end method

.method protected ehlo(Ljava/lang/String;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EHLO "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "EHLO"

    .line 935
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 936
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result p1

    const/16 v0, 0xfa

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_6

    .line 940
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/StringReader;

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 942
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    const/4 v4, 0x1

    .line 945
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    .line 950
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-lt v6, v7, :cond_1

    const/4 v6, 0x4

    .line 952
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    .line 953
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const-string v7, ""

    if-lez v6, :cond_4

    add-int/lit8 v7, v6, 0x1

    .line 956
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 957
    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 959
    :cond_4
    iget-boolean v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v6, :cond_5

    .line 960
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DEBUG SMTP: Found extension \""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 961
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\", arg \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 960
    invoke-virtual {v6, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 962
    :cond_5
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_6
    :goto_2
    if-ne p1, v0, :cond_7

    return v2

    :cond_7
    return v1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 892
    invoke-super {p0}, Ljavax/mail/Transport;->finalize()V

    .line 894
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    return-void
.end method

.method protected finishData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1320
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPOutputStream;->ensureAtBOL()V

    const-string v0, "."

    const/16 v1, 0xfa

    .line 1321
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->issueSendCommand(Ljava/lang/String;I)V

    return-void
.end method

.method public getExtensionParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1707
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1708
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public declared-synchronized getLastReturnCode()I
    .locals 1

    monitor-enter p0

    .line 340
    :try_start_0
    iget v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastServerResponse()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalHost()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".localhost"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".localaddress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 179
    :cond_4
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    .line 182
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 188
    :catch_0
    :cond_5
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 171
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReportSuccess()Z
    .locals 1

    monitor-enter p0

    .line 255
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSASLRealm()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    const-string v1, "UNKNOWN"

    if-ne v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".sasl.realm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".saslrealm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 220
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStartTLS()Z
    .locals 1

    monitor-enter p0

    .line 279
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseRset()Z
    .locals 1

    monitor-enter p0

    .line 302
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected helo(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/16 v0, 0xfa

    if-eqz p1, :cond_0

    .line 915
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HELO "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    return-void

    :cond_0
    const-string p1, "HELO"

    .line 917
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    return-void
.end method

.method public declared-synchronized isConnected()Z
    .locals 3

    monitor-enter p0

    .line 729
    :try_start_0
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 731
    monitor-exit p0

    return v1

    .line 736
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z

    if-eqz v0, :cond_1

    const-string v0, "RSET"

    .line 737
    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "NOOP"

    .line 739
    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 740
    :goto_0
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ltz v0, :cond_2

    const/16 v2, 0x1a5

    if-eq v0, v2, :cond_2

    const/4 v0, 0x1

    .line 751
    monitor-exit p0

    return v0

    .line 754
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 756
    :catch_0
    monitor-exit p0

    return v1

    .line 760
    :catch_1
    :try_start_3
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_3
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 762
    :catch_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 728
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized issueCommand(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1476
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 1480
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result p1

    if-eq p1, p2, :cond_0

    .line 1481
    new-instance p1, Ljavax/mail/MessagingException;

    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1482
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1475
    monitor-exit p0

    throw p1
.end method

.method protected mailFrom()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 985
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v0, v0, Lcom/sun/mail/smtp/SMTPMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    check-cast v0, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPMessage;->getEnvelopeFrom()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 987
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 988
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".from"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 989
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_5

    .line 992
    :cond_3
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 993
    array-length v2, v0

    if-lez v2, :cond_4

    const/4 v2, 0x0

    .line 994
    aget-object v0, v0, v2

    goto :goto_1

    .line 996
    :cond_4
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_f

    .line 999
    check-cast v0, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1005
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MAIL FROM:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->normalizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DSN"

    .line 1008
    invoke-virtual {p0, v2}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1010
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v2, v2, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v2, :cond_6

    .line 1011
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    check-cast v2, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v2}, Lcom/sun/mail/smtp/SMTPMessage;->getDSNRet()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    move-object v2, v1

    :goto_2
    if-nez v2, :cond_7

    .line 1013
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mail."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".dsn.ret"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_7
    if-eqz v2, :cond_8

    .line 1016
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " RET="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    const-string v2, "AUTH"

    .line 1024
    invoke-virtual {p0, v2}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1026
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v2, v2, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v2, :cond_9

    .line 1027
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    check-cast v2, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v2}, Lcom/sun/mail/smtp/SMTPMessage;->getSubmitter()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_9
    move-object v2, v1

    :goto_3
    if-nez v2, :cond_a

    .line 1029
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mail."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".submitter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_a
    if-eqz v2, :cond_b

    .line 1033
    :try_start_0
    invoke-static {v2}, Lcom/sun/mail/smtp/SMTPTransport;->xtext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1034
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " AUTH="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_4

    :catch_0
    move-exception v3

    .line 1036
    iget-boolean v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v4, :cond_b

    .line 1037
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DEBUG SMTP: ignoring invalid submitter: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Exception: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1037
    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1047
    :cond_b
    :goto_4
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v2, v2, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v2, :cond_c

    .line 1048
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    check-cast v1, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v1}, Lcom/sun/mail/smtp/SMTPMessage;->getMailExtension()Ljava/lang/String;

    move-result-object v1

    :cond_c
    if-nez v1, :cond_d

    .line 1050
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".mailextension"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_d
    if-eqz v1, :cond_e

    .line 1051
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e

    .line 1052
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_e
    const/16 v1, 0xfa

    .line 1054
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->issueSendCommand(Ljava/lang/String;I)V

    return-void

    .line 1001
    :cond_f
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "can\'t determine local email address"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 372
    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "mail."

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".ehlo"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    const-string v3, "false"

    .line 373
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 375
    :goto_0
    iget-object v3, v1, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mail."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".auth"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v6, "true"

    .line 376
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 378
    :goto_1
    iget-boolean v6, v1, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v6, :cond_2

    .line 379
    iget-object v6, v1, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "DEBUG SMTP: useEhlo "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", useAuth "

    .line 380
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 379
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    if-eqz v3, :cond_4

    if-eqz p3, :cond_3

    if-nez p4, :cond_4

    :cond_3
    return v9

    :cond_4
    const/4 v10, -0x1

    move/from16 v6, p2

    if-ne v6, v10, :cond_6

    .line 396
    iget-object v6, v1, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "mail."

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".port"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 398
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_2

    .line 400
    :cond_5
    iget v6, v1, Lcom/sun/mail/smtp/SMTPTransport;->defaultPort:I

    :cond_6
    :goto_2
    move v7, v6

    if-eqz p1, :cond_8

    .line 404
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_7

    goto :goto_3

    :cond_7
    move-object/from16 v6, p1

    goto :goto_4

    :cond_8
    :goto_3
    const-string v6, "localhost"

    .line 409
    :goto_4
    iget-object v11, v1, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v11, :cond_9

    .line 410
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->openServer()V

    goto :goto_5

    .line 412
    :cond_9
    invoke-direct {v1, v6, v7}, Lcom/sun/mail/smtp/SMTPTransport;->openServer(Ljava/lang/String;I)V

    :goto_5
    if-eqz v2, :cond_a

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->getLocalHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->ehlo(Ljava/lang/String;)Z

    move-result v2

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    :goto_6
    if-nez v2, :cond_b

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->getLocalHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->helo(Ljava/lang/String;)V

    .line 419
    :cond_b
    iget-boolean v2, v1, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z

    if-eqz v2, :cond_c

    const-string v2, "STARTTLS"

    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->startTLS()V

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->getLocalHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->ehlo(Ljava/lang/String;)Z

    :cond_c
    if-nez v3, :cond_d

    if-eqz p3, :cond_1e

    if-eqz p4, :cond_1e

    :cond_d
    const-string v2, "AUTH"

    .line 430
    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "AUTH=LOGIN"

    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 431
    :cond_e
    iget-boolean v2, v1, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v2, :cond_f

    .line 432
    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v3, "DEBUG SMTP: Attempt to authenticate"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v2, "LOGIN"

    .line 433
    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->supportsAuthentication(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "AUTH=LOGIN"

    .line 434
    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 435
    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v3, "DEBUG SMTP: use AUTH=LOGIN hack"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_f
    const-string v2, "LOGIN"

    .line 438
    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->supportsAuthentication(Ljava/lang/String;)Z

    move-result v2

    const v3, 0x7fffffff

    const/16 v11, 0x14e

    const/16 v12, 0xeb

    if-nez v2, :cond_19

    const-string v2, "AUTH=LOGIN"

    .line 439
    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_b

    :cond_10
    const-string v2, "PLAIN"

    .line 491
    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->supportsAuthentication(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "AUTH PLAIN"

    .line 493
    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v2

    .line 495
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 497
    new-instance v7, Lcom/sun/mail/util/BASE64EncoderStream;

    invoke-direct {v7, v6, v3}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V

    if-ne v2, v11, :cond_11

    .line 501
    invoke-virtual {v7, v9}, Ljava/io/OutputStream;->write(I)V

    .line 502
    invoke-static/range {p3 .. p3}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/OutputStream;->write([B)V

    .line 503
    invoke-virtual {v7, v9}, Ljava/io/OutputStream;->write(I)V

    .line 504
    invoke-static/range {p4 .. p4}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/OutputStream;->write([B)V

    .line 505
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 508
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand([B)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    :cond_11
    if-eq v2, v12, :cond_1e

    .line 513
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    return v9

    :catchall_0
    move-exception v0

    move-object v3, v0

    if-eq v2, v12, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    return v9

    .line 516
    :cond_12
    throw v3

    :catch_0
    if-eq v2, v12, :cond_1e

    .line 513
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    return v9

    :cond_13
    const-string v2, "DIGEST-MD5"

    .line 517
    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->supportsAuthentication(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 518
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->getMD5()Lcom/sun/mail/smtp/DigestMD5;

    move-result-object v13

    if-eqz v13, :cond_1e

    const-string v2, "AUTH DIGEST-MD5"

    .line 519
    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v14

    if-ne v14, v11, :cond_18

    .line 523
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->getSASLRealm()Ljava/lang/String;

    move-result-object v7

    iget-object v15, v1, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    move-object v2, v13

    move-object v3, v6

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v7

    move-object v7, v15

    .line 522
    invoke-virtual/range {v2 .. v7}, Lcom/sun/mail/smtp/DigestMD5;->authClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 524
    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand([B)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne v2, v11, :cond_15

    .line 526
    :try_start_2
    iget-object v3, v1, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-virtual {v13, v3}, Lcom/sun/mail/smtp/DigestMD5;->authServer(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_a

    .line 531
    :cond_14
    new-array v3, v9, [B

    invoke-virtual {v1, v3}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand([B)I

    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception v0

    move v14, v2

    goto :goto_7

    :catch_1
    move-exception v0

    move v14, v2

    goto :goto_8

    :cond_15
    move v10, v2

    goto :goto_a

    :catchall_2
    move-exception v0

    :goto_7
    move-object v2, v0

    goto :goto_9

    :catch_2
    move-exception v0

    :goto_8
    move-object v2, v0

    .line 536
    :try_start_3
    iget-boolean v3, v1, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v3, :cond_16

    .line 537
    iget-object v3, v1, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG SMTP: DIGEST-MD5: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_16
    if-eq v14, v12, :cond_1e

    .line 540
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    return v9

    :goto_9
    if-eq v14, v12, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    return v9

    .line 543
    :cond_17
    throw v2

    :cond_18
    move v10, v14

    :goto_a
    if-eq v10, v12, :cond_1e

    .line 540
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    return v9

    :cond_19
    :goto_b
    const-string v2, "AUTH LOGIN"

    .line 441
    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v2

    const/16 v6, 0x212

    if-ne v2, v6, :cond_1a

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->startTLS()V

    const-string v2, "AUTH LOGIN"

    .line 449
    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v2

    .line 462
    :cond_1a
    :try_start_4
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 464
    new-instance v7, Lcom/sun/mail/util/BASE64EncoderStream;

    invoke-direct {v7, v6, v3}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V

    if-ne v2, v11, :cond_1b

    .line 468
    invoke-static/range {p3 .. p3}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/OutputStream;->write([B)V

    .line 469
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 472
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand([B)I

    move-result v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 473
    :try_start_5
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move v2, v3

    goto :goto_c

    :catchall_3
    move-exception v0

    goto :goto_d

    :catch_3
    move v2, v3

    goto :goto_e

    :cond_1b
    :goto_c
    if-ne v2, v11, :cond_1c

    .line 477
    :try_start_6
    invoke-static/range {p4 .. p4}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/OutputStream;->write([B)V

    .line 478
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 481
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand([B)I

    move-result v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 482
    :try_start_7
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move v2, v3

    :cond_1c
    if-eq v2, v12, :cond_1e

    .line 487
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    return v9

    :catchall_4
    move-exception v0

    move v3, v2

    :goto_d
    move-object v2, v0

    if-eq v3, v12, :cond_1d

    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    return v9

    .line 490
    :cond_1d
    throw v2

    :catch_4
    :goto_e
    if-eq v2, v12, :cond_1e

    .line 487
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    return v9

    :cond_1e
    return v8
.end method

.method protected rcptTo()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v7, p0

    .line 1079
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1080
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1081
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    const/4 v4, 0x0

    .line 1086
    iput-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iput-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iput-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1088
    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v5, v5, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v5, :cond_0

    .line 1089
    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    check-cast v5, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v5}, Lcom/sun/mail/smtp/SMTPMessage;->getSendPartial()Z

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v8, 0x1

    if-nez v5, :cond_2

    .line 1091
    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mail."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v7, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".sendpartial"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v9, "true"

    .line 1092
    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 1094
    :cond_2
    :goto_1
    iget-boolean v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v9, :cond_3

    if-eqz v5, :cond_3

    .line 1095
    iget-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v10, "DEBUG SMTP: sendPartial set"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    const-string v9, "DSN"

    .line 1099
    invoke-virtual {v7, v9}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1100
    iget-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v9, v9, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v9, :cond_4

    .line 1101
    iget-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    check-cast v9, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v9}, Lcom/sun/mail/smtp/SMTPMessage;->getDSNNotify()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_4
    move-object v9, v4

    :goto_2
    if-nez v9, :cond_5

    .line 1103
    iget-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "mail."

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v7, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".dsn.notify"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_5
    if-eqz v9, :cond_6

    move-object v10, v9

    const/4 v9, 0x1

    goto :goto_4

    :cond_6
    move-object v10, v9

    goto :goto_3

    :cond_7
    move-object v10, v4

    :goto_3
    const/4 v9, 0x0

    :goto_4
    move-object v14, v4

    const/4 v4, 0x0

    const/4 v11, 0x0

    .line 1110
    :goto_5
    iget-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    array-length v12, v12

    const/16 v13, 0xfa

    if-lt v4, v12, :cond_17

    if-eqz v5, :cond_8

    .line 1204
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_8

    const/4 v11, 0x1

    :cond_8
    if-eqz v11, :cond_b

    .line 1210
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Ljavax/mail/Address;

    iput-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    .line 1211
    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1214
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/2addr v3, v4

    new-array v3, v3, [Ljavax/mail/Address;

    iput-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1216
    :goto_6
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v3, v5, :cond_a

    const/4 v1, 0x0

    .line 1218
    :goto_7
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_9

    goto :goto_9

    .line 1219
    :cond_9
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/mail/Address;

    aput-object v8, v3, v4

    add-int/lit8 v1, v1, 0x1

    move v4, v5

    goto :goto_7

    .line 1217
    :cond_a
    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/mail/Address;

    aput-object v9, v5, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v8

    goto :goto_6

    .line 1220
    :cond_b
    iget-boolean v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z

    if-nez v4, :cond_d

    if-eqz v5, :cond_c

    .line 1221
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    if-gtz v4, :cond_d

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_c

    goto :goto_8

    .line 1239
    :cond_c
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    iput-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    goto :goto_9

    .line 1224
    :cond_d
    :goto_8
    iput-boolean v8, v7, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    .line 1225
    iput-object v14, v7, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    .line 1228
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Ljavax/mail/Address;

    iput-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    .line 1229
    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1232
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Ljavax/mail/Address;

    iput-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1233
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1236
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Ljavax/mail/Address;

    iput-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1237
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1244
    :goto_9
    iget-boolean v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v1, :cond_13

    .line 1245
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    if-eqz v1, :cond_f

    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    array-length v1, v1

    if-lez v1, :cond_f

    .line 1246
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG SMTP: Verified Addresses"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1247
    :goto_a
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    array-length v2, v2

    if-lt v1, v2, :cond_e

    goto :goto_b

    .line 1248
    :cond_e
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG SMTP:   "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1251
    :cond_f
    :goto_b
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    if-eqz v1, :cond_11

    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    array-length v1, v1

    if-lez v1, :cond_11

    .line 1252
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG SMTP: Valid Unsent Addresses"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1253
    :goto_c
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    array-length v2, v2

    if-lt v1, v2, :cond_10

    goto :goto_d

    .line 1254
    :cond_10
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG SMTP:   "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1257
    :cond_11
    :goto_d
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    if-eqz v1, :cond_13

    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    array-length v1, v1

    if-lez v1, :cond_13

    .line 1258
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG SMTP: Invalid Addresses"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 1259
    :goto_e
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    array-length v1, v1

    if-lt v6, v1, :cond_12

    goto :goto_f

    .line 1260
    :cond_12
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG SMTP:   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_13
    :goto_f
    if-eqz v11, :cond_16

    .line 1267
    iget-boolean v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v1, :cond_14

    .line 1268
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG SMTP: Sending failed because of invalid destination addresses"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_14
    const/4 v2, 0x2

    .line 1271
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1272
    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object v1, v7

    .line 1270
    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 1275
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1276
    iget v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1278
    :try_start_0
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v3, :cond_15

    const-string v3, "RSET"

    .line 1279
    invoke-virtual {v7, v3, v13}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1290
    :cond_15
    :goto_10
    iput-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1291
    iput v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    goto :goto_11

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_12

    .line 1283
    :catch_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->close()V
    :try_end_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_10

    :catch_1
    move-exception v0

    .line 1286
    :try_start_2
    iget-boolean v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v3, :cond_15

    .line 1287
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    invoke-static {v0, v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_10

    .line 1294
    :goto_11
    new-instance v1, Ljavax/mail/SendFailedException;

    const-string v13, "Invalid Addresses"

    .line 1295
    iget-object v15, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1296
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    move-object v12, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 1294
    invoke-direct/range {v12 .. v17}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw v1

    .line 1290
    :goto_12
    iput-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1291
    iput v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1292
    throw v3

    :cond_16
    return-void

    .line 1113
    :cond_17
    iget-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    aget-object v12, v12, v4

    check-cast v12, Ljavax/mail/internet/InternetAddress;

    .line 1114
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v6, "RCPT TO:"

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Lcom/sun/mail/smtp/SMTPTransport;->normalizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v9, :cond_18

    .line 1116
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " NOTIFY="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1118
    :cond_18
    invoke-virtual {v7, v6}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 1120
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v15

    const/16 v8, 0x1f5

    if-eq v15, v8, :cond_22

    const/16 v8, 0x1f7

    if-eq v15, v8, :cond_22

    packed-switch v15, :pswitch_data_0

    packed-switch v15, :pswitch_data_1

    packed-switch v15, :pswitch_data_2

    const/16 v8, 0x190

    if-lt v15, v8, :cond_19

    const/16 v8, 0x1f3

    if-gt v15, v8, :cond_19

    .line 1171
    invoke-virtual {v2, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_13

    :cond_19
    const/16 v8, 0x1f4

    if-lt v15, v8, :cond_1c

    const/16 v8, 0x257

    if-gt v15, v8, :cond_1c

    .line 1174
    invoke-virtual {v3, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_13
    if-nez v5, :cond_1a

    const/4 v11, 0x1

    .line 1192
    :cond_1a
    new-instance v8, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    .line 1193
    iget-object v13, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1192
    invoke-direct {v8, v12, v6, v15, v13}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    if-nez v14, :cond_1b

    goto :goto_14

    .line 1197
    :cond_1b
    invoke-virtual {v14, v8}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    goto/16 :goto_15

    .line 1177
    :cond_1c
    iget-boolean v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v1, :cond_1d

    .line 1178
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG SMTP: got response code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", with response: "

    .line 1179
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1178
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1180
    :cond_1d
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1181
    iget v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1182
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v3, :cond_1e

    const-string v3, "RSET"

    .line 1183
    invoke-virtual {v7, v3, v13}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    .line 1184
    :cond_1e
    iput-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1185
    iput v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1186
    new-instance v2, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    invoke-direct {v2, v12, v6, v15, v1}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    throw v2

    :pswitch_0
    if-nez v5, :cond_1f

    const/4 v11, 0x1

    .line 1157
    :cond_1f
    invoke-virtual {v2, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1159
    new-instance v8, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    .line 1160
    iget-object v13, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1159
    invoke-direct {v8, v12, v6, v15, v13}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    if-nez v14, :cond_20

    goto :goto_14

    .line 1164
    :cond_20
    invoke-virtual {v14, v8}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    goto :goto_15

    .line 1123
    :pswitch_1
    invoke-virtual {v1, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1124
    iget-boolean v8, v7, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z

    if-eqz v8, :cond_25

    .line 1131
    new-instance v8, Lcom/sun/mail/smtp/SMTPAddressSucceededException;

    .line 1132
    iget-object v13, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1131
    invoke-direct {v8, v12, v6, v15, v13}, Lcom/sun/mail/smtp/SMTPAddressSucceededException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    if-nez v14, :cond_21

    :goto_14
    move-object v14, v8

    goto :goto_15

    .line 1136
    :cond_21
    invoke-virtual {v14, v8}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    goto :goto_15

    :cond_22
    :pswitch_2
    if-nez v5, :cond_23

    const/4 v11, 0x1

    .line 1143
    :cond_23
    invoke-virtual {v3, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1145
    new-instance v8, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    .line 1146
    iget-object v13, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1145
    invoke-direct {v8, v12, v6, v15, v13}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    if-nez v14, :cond_24

    goto :goto_14

    .line 1150
    :cond_24
    invoke-virtual {v14, v8}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    :cond_25
    :goto_15
    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x1

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0xfa
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1c2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x226
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected readServerResponse()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1581
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    :cond_0
    const/4 v1, 0x0

    .line 1589
    :try_start_0
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v2}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-nez v2, :cond_3

    .line 1591
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1592
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "[EOF]"

    .line 1594
    :cond_1
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1595
    iput v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1596
    iget-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v2, :cond_2

    .line 1597
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG SMTP: EOF: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    return v3

    .line 1600
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\n"

    .line 1601
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1602
    invoke-direct {p0, v2}, Lcom/sun/mail/smtp/SMTPTransport;->isNotLastLine(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1604
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v0, :cond_4

    .line 1620
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x3

    if-lt v2, v4, :cond_4

    .line 1622
    :try_start_1
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1635
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->close()V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 1638
    iget-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v2, :cond_4

    .line 1639
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    invoke-static {v1, v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    goto :goto_0

    .line 1625
    :catch_2
    :try_start_3
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->close()V
    :try_end_3
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    .line 1628
    iget-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v2, :cond_4

    .line 1629
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    invoke-static {v1, v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    :cond_4
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-ne v1, v3, :cond_5

    .line 1646
    iget-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v2, :cond_5

    .line 1647
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG SMTP: bad server response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1649
    :cond_5
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1650
    iput v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    return v1

    :catch_4
    move-exception v0

    .line 1606
    iget-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v2, :cond_6

    .line 1607
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG SMTP: exception reading response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    const-string v2, ""

    .line 1609
    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1610
    iput v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1611
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Exception reading response"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected sendCommand(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1551
    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand([B)V

    return-void
.end method

.method public declared-synchronized sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljavax/mail/SendFailedException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    monitor-enter p0

    .line 590
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->checkConnected()V

    .line 594
    instance-of v3, v1, Ljavax/mail/internet/MimeMessage;

    if-nez v3, :cond_1

    .line 595
    iget-boolean v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v1, :cond_0

    .line 596
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG SMTP: Can only send RFC822 msgs"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 597
    :cond_0
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "SMTP can only send RFC822 messages"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 599
    :goto_0
    array-length v4, v2

    if-lt v3, v4, :cond_b

    .line 606
    move-object v3, v1

    check-cast v3, Ljavax/mail/internet/MimeMessage;

    iput-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    .line 607
    iput-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    .line 608
    iput-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 609
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->expandGroups()V

    .line 612
    instance-of v2, v1, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v2, :cond_2

    .line 613
    check-cast v1, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v1}, Lcom/sun/mail/smtp/SMTPMessage;->getAllow8bitMIME()Z

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_4

    .line 616
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".allow8bitmime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "true"

    .line 617
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 619
    :cond_4
    :goto_2
    iget-boolean v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v2, :cond_5

    .line 620
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG SMTP: use8bit "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    if-eqz v1, :cond_6

    const-string v1, "8BITMIME"

    .line 621
    invoke-virtual {v7, v1}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 622
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-direct {v7, v1}, Lcom/sun/mail/smtp/SMTPTransport;->convertTo8Bit(Ljavax/mail/internet/MimePart;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_6

    .line 626
    :try_start_1
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v1}, Ljavax/mail/internet/MimeMessage;->saveChanges()V
    :try_end_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    :cond_6
    const/4 v9, 0x0

    .line 634
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->mailFrom()V

    .line 635
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->rcptTo()V

    .line 636
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->data()Ljava/io/OutputStream;

    move-result-object v2

    sget-object v3, Lcom/sun/mail/smtp/SMTPTransport;->ignoreList:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 637
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->finishData()V

    .line 638
    iget-boolean v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    if-eqz v1, :cond_8

    .line 641
    iget-boolean v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v1, :cond_7

    .line 642
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG SMTP: Sending partially failed because of invalid destination addresses"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    const/4 v2, 0x3

    .line 646
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    .line 647
    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object v1, v7

    .line 644
    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 649
    new-instance v1, Lcom/sun/mail/smtp/SMTPSendFailedException;

    const-string v11, "."

    iget v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 650
    iget-object v13, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iget-object v14, v7, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    .line 651
    iget-object v15, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    move-object v10, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 649
    invoke-direct/range {v10 .. v17}, Lcom/sun/mail/smtp/SMTPSendFailedException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw v1

    :cond_8
    const/4 v2, 0x1

    .line 654
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 655
    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object v1, v7

    .line 653
    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 680
    :try_start_3
    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 681
    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    .line 682
    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    .line 683
    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    .line 684
    iput-boolean v8, v7, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 686
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v10, v0

    .line 665
    :try_start_4
    iget-boolean v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v1, :cond_9

    .line 666
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    invoke-static {v10, v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 670
    :cond_9
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_5
    .catch Ljavax/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_2
    const/4 v2, 0x2

    .line 673
    :try_start_6
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 674
    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object v1, v7

    .line 672
    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 676
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "IOException while sending message"

    invoke-direct {v1, v2, v10}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3
    move-exception v0

    move-object v10, v0

    .line 657
    iget-boolean v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v1, :cond_a

    .line 658
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    invoke-static {v10, v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    :cond_a
    const/4 v2, 0x2

    .line 660
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 661
    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object v1, v7

    .line 659
    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 663
    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 680
    :goto_3
    :try_start_7
    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 681
    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    .line 682
    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    .line 683
    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    .line 684
    iput-boolean v8, v7, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    .line 685
    throw v1

    .line 600
    :cond_b
    aget-object v4, v2, v3

    instance-of v4, v4, Ljavax/mail/internet/InternetAddress;

    if-nez v4, :cond_c

    .line 601
    new-instance v1, Ljavax/mail/MessagingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v2, v3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not an InternetAddress"

    .line 602
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 601
    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 589
    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setLocalHost(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 197
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 196
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setReportSuccess(Z)V
    .locals 0

    monitor-enter p0

    .line 267
    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 266
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSASLRealm(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 238
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 237
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStartTLS(Z)V
    .locals 0

    monitor-enter p0

    .line 290
    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 289
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUseRset(Z)V
    .locals 0

    monitor-enter p0

    .line 314
    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 313
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized simpleCommand(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1528
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 1529
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 1527
    monitor-exit p0

    throw p1
.end method

.method protected simpleCommand([B)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1540
    invoke-direct {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand([B)V

    .line 1541
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result p1

    return p1
.end method

.method protected startTLS()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "STARTTLS"

    const/16 v1, 0xdc

    .line 1331
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    .line 1334
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 1335
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v1}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1334
    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/SocketFetcher;->startTLS(Ljava/net/Socket;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 1336
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->initStreams()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1338
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    .line 1339
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Could not convert socket to TLS"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected supportsAuthentication(Ljava/lang/String;)Z
    .locals 3

    .line 1723
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1725
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    const-string v2, "AUTH"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    return v1

    .line 1728
    :cond_1
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1729
    :cond_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 1730
    :cond_3
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1731
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1
.end method

.method public supportsExtension(Ljava/lang/String;)Z
    .locals 2

    .line 1693
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 1694
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

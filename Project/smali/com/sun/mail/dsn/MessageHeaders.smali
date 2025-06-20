.class public Lcom/sun/mail/dsn/MessageHeaders;
.super Ljavax/mail/internet/MimeMessage;
.source "MessageHeaders.java"


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    const/4 v0, 0x0

    .line 60
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/dsn/MessageHeaders;->content:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;Ljava/io/InputStream;)V

    const/4 p1, 0x0

    .line 70
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/mail/dsn/MessageHeaders;->content:[B

    return-void
.end method

.method public constructor <init>(Ljavax/mail/internet/InternetHeaders;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 80
    iput-object p1, p0, Lcom/sun/mail/dsn/MessageHeaders;->headers:Ljavax/mail/internet/InternetHeaders;

    const/4 p1, 0x0

    .line 81
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/mail/dsn/MessageHeaders;->content:[B

    return-void
.end method


# virtual methods
.method protected getContentStream()Ljava/io/InputStream;
    .locals 2

    .line 97
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/sun/mail/dsn/MessageHeaders;->content:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .line 93
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/sun/mail/dsn/MessageHeaders;->content:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setDataHandler(Ljavax/activation/DataHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 106
    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "Can\'t set content for MessageHeaders"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

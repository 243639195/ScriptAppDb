.class Lorg/apache/commons/mail/HtmlEmail$InlineImage;
.super Ljava/lang/Object;
.source "HtmlEmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/mail/HtmlEmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InlineImage"
.end annotation


# instance fields
.field private final cid:Ljava/lang/String;

.field private final dataSource:Ljavax/activation/DataSource;

.field private final mbp:Ljavax/mail/internet/MimeBodyPart;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/activation/DataSource;Ljavax/mail/internet/MimeBodyPart;)V
    .locals 0

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    iput-object p1, p0, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->cid:Ljava/lang/String;

    .line 650
    iput-object p2, p0, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->dataSource:Ljavax/activation/DataSource;

    .line 651
    iput-object p3, p0, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->mbp:Ljavax/mail/internet/MimeBodyPart;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 696
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/mail/HtmlEmail$InlineImage;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 701
    :cond_1
    check-cast p1, Lorg/apache/commons/mail/HtmlEmail$InlineImage;

    .line 703
    iget-object v0, p0, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->cid:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->cid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .line 660
    iget-object v0, p0, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSource()Ljavax/activation/DataSource;
    .locals 1

    .line 669
    iget-object v0, p0, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->dataSource:Ljavax/activation/DataSource;

    return-object v0
.end method

.method public getMbp()Ljavax/mail/internet/MimeBodyPart;
    .locals 1

    .line 680
    iget-object v0, p0, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->mbp:Ljavax/mail/internet/MimeBodyPart;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 713
    iget-object v0, p0, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->cid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

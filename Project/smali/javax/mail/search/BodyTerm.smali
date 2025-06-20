.class public final Ljavax/mail/search/BodyTerm;
.super Ljavax/mail/search/StringTerm;
.source "BodyTerm.java"


# static fields
.field private static final serialVersionUID:J = -0x43d8ba911c34ab19L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Ljavax/mail/search/StringTerm;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private matchPart(Ljavax/mail/Part;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "text/*"

    .line 85
    invoke-interface {p1, v1}, Ljavax/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    invoke-interface {p1}, Ljavax/mail/Part;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    return v0

    .line 97
    :cond_0
    invoke-super {p0, p1}, Ljavax/mail/search/StringTerm;->match(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const-string v1, "multipart/*"

    .line 98
    invoke-interface {p1, v1}, Ljavax/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 99
    invoke-interface {p1}, Ljavax/mail/Part;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/mail/Multipart;

    .line 100
    invoke-virtual {p1}, Ljavax/mail/Multipart;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_2

    goto :goto_1

    .line 102
    :cond_2
    invoke-virtual {p1, v2}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v3

    invoke-direct {p0, v3}, Ljavax/mail/search/BodyTerm;->matchPart(Ljavax/mail/Part;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const-string v1, "message/rfc822"

    .line 104
    invoke-interface {p1, v1}, Ljavax/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 105
    invoke-interface {p1}, Ljavax/mail/Part;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/mail/Part;

    invoke-direct {p0, p1}, Ljavax/mail/search/BodyTerm;->matchPart(Ljavax/mail/Part;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_5
    :goto_1
    return v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 116
    instance-of v0, p1, Ljavax/mail/search/BodyTerm;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 118
    :cond_0
    invoke-super {p0, p1}, Ljavax/mail/search/StringTerm;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final match(Ljavax/mail/Message;)Z
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Ljavax/mail/search/BodyTerm;->matchPart(Ljavax/mail/Part;)Z

    move-result p1

    return p1
.end method

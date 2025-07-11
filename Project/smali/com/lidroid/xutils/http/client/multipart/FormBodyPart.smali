.class public Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;
.super Ljava/lang/Object;
.source "FormBodyPart.java"


# instance fields
.field private final body:Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;

.field private final header:Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Name may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    .line 40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Body may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_1
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->name:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->body:Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;

    .line 44
    new-instance p1, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;

    invoke-direct {p1}, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;-><init>()V

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->header:Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;

    .line 46
    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->generateContentDisposition(Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V

    .line 47
    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->generateContentType(Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V

    .line 48
    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->generateTransferEncoding(Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 54
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Name may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p2, :cond_1

    .line 57
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Body may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_1
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->name:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->body:Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;

    .line 61
    new-instance p1, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;

    invoke-direct {p1}, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;-><init>()V

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->header:Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;

    if-eqz p3, :cond_2

    const-string p1, "Content-Disposition"

    .line 64
    invoke-virtual {p0, p1, p3}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->generateContentDisposition(Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V

    .line 68
    :goto_0
    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->generateContentType(Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V

    .line 69
    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->generateTransferEncoding(Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V

    return-void
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 86
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field name may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->header:Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;

    new-instance v1, Lcom/lidroid/xutils/http/client/multipart/MinimalField;

    invoke-direct {v1, p1, p2}, Lcom/lidroid/xutils/http/client/multipart/MinimalField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;->addField(Lcom/lidroid/xutils/http/client/multipart/MinimalField;)V

    return-void
.end method

.method protected generateContentDisposition(Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "form-data; name=\""

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p0}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-interface {p1}, Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "; filename=\""

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-interface {p1}, Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, "Content-Disposition"

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected generateContentType(Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    invoke-interface {p1}, Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-interface {p1}, Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;->getCharset()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "; charset="

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-interface {p1}, Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;->getCharset()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, "Content-Type"

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected generateTransferEncoding(Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V
    .locals 1

    const-string v0, "Content-Transfer-Encoding"

    .line 115
    invoke-interface {p1}, Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;->getTransferEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getBody()Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->body:Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;

    return-object v0
.end method

.method public getHeader()Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->header:Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->name:Ljava/lang/String;

    return-object v0
.end method

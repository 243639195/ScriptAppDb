.class public Lcom/androidquery/util/XmlDom;
.super Ljava/lang/Object;
.source "XmlDom.java"


# instance fields
.field private root:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 112
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 113
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 114
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    iput-object p1, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 117
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :catch_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/androidquery/util/XmlDom;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/androidquery/util/XmlDom;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private static convert(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/androidquery/util/XmlDom;
    .locals 3

    .line 278
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return-object v1

    .line 282
    :cond_0
    check-cast p0, Lorg/w3c/dom/Element;

    if-eqz p1, :cond_1

    .line 286
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_1
    if-eqz p2, :cond_2

    .line 287
    invoke-interface {p0, p2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    if-eqz p3, :cond_3

    .line 288
    invoke-interface {p0, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 289
    :cond_3
    new-instance v1, Lcom/androidquery/util/XmlDom;

    invoke-direct {v1, p0}, Lcom/androidquery/util/XmlDom;-><init>(Lorg/w3c/dom/Element;)V

    :cond_4
    return-object v1
.end method

.method private static convert(Lorg/w3c/dom/NodeList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/androidquery/util/XmlDom;",
            ">;"
        }
    .end annotation

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 268
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-object v0

    .line 269
    :cond_0
    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-static {v2, p1, p2, p3}, Lcom/androidquery/util/XmlDom;->convert(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/androidquery/util/XmlDom;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 270
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private serialize(Lorg/w3c/dom/Element;I)Ljava/lang/String;
    .locals 4

    const/4 p1, 0x0

    .line 364
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 365
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 367
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v2, "utf-8"

    .line 368
    invoke-interface {v0, v2, p1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-lez p2, :cond_0

    .line 372
    new-array p2, p2, [C

    const/16 v2, 0x20

    .line 373
    invoke-static {p2, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 374
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 377
    :goto_0
    iget-object p2, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;

    const/4 v3, 0x0

    invoke-direct {p0, p2, v0, v3, v2}, Lcom/androidquery/util/XmlDom;->serialize(Lorg/w3c/dom/Element;Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 378
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 380
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 382
    invoke-static {p2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private serialize(Lorg/w3c/dom/Element;Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 442
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-direct {p0, p2, p3, p4}, Lcom/androidquery/util/XmlDom;->writeSpace(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    const-string v1, ""

    .line 446
    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 448
    invoke-interface {p1}, Lorg/w3c/dom/Element;->hasAttributes()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 449
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const/4 v3, 0x0

    .line 450
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    if-lt v3, v4, :cond_0

    goto :goto_1

    .line 451
    :cond_0
    invoke-interface {v1, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Attr;

    const-string v5, ""

    .line 452
    invoke-interface {v4}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v5, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 456
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->hasChildNodes()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 458
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v1, 0x0

    .line 462
    :goto_2
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lt v2, v3, :cond_2

    if-lez v1, :cond_4

    .line 485
    invoke-direct {p0, p2, p3, p4}, Lcom/androidquery/util/XmlDom;->writeSpace(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    goto :goto_4

    .line 464
    :cond_2
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 466
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    packed-switch v4, :pswitch_data_0

    goto :goto_3

    .line 477
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/androidquery/util/XmlDom;->text(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    goto :goto_3

    .line 474
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/androidquery/util/XmlDom;->text(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    .line 470
    :cond_3
    check-cast v3, Lorg/w3c/dom/Element;

    add-int/lit8 v4, p3, 0x1

    invoke-direct {p0, v3, p2, v4, p4}, Lcom/androidquery/util/XmlDom;->serialize(Lorg/w3c/dom/Element;Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_4
    const-string p1, ""

    .line 489
    invoke-interface {p2, p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private text(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    .line 422
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 428
    :pswitch_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 424
    :pswitch_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 425
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeSpace(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p3, :cond_1

    const-string v0, "\n"

    .line 391
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p2, :cond_0

    goto :goto_1

    .line 393
    :cond_0
    invoke-interface {p1, p3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public attr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public child(Ljava/lang/String;)Lcom/androidquery/util/XmlDom;
    .locals 1

    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0, p1, v0, v0}, Lcom/androidquery/util/XmlDom;->child(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/androidquery/util/XmlDom;

    move-result-object p1

    return-object p1
.end method

.method public child(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/androidquery/util/XmlDom;
    .locals 0

    .line 210
    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/util/XmlDom;->children(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 211
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p2, 0x0

    .line 212
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/util/XmlDom;

    return-object p1
.end method

.method public children(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/androidquery/util/XmlDom;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0, p1, v0, v0}, Lcom/androidquery/util/XmlDom;->children(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public children(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/androidquery/util/XmlDom;",
            ">;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/androidquery/util/XmlDom;->convert(Lorg/w3c/dom/NodeList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getElement()Lorg/w3c/dom/Element;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public tag(Ljava/lang/String;)Lcom/androidquery/util/XmlDom;
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 138
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 139
    new-instance v0, Lcom/androidquery/util/XmlDom;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-direct {v0, p1}, Lcom/androidquery/util/XmlDom;-><init>(Lorg/w3c/dom/Element;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public tag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/androidquery/util/XmlDom;
    .locals 0

    .line 162
    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/util/XmlDom;->tags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 164
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p2, 0x0

    .line 167
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/androidquery/util/XmlDom;

    return-object p1
.end method

.method public tags(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/androidquery/util/XmlDom;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0, p1, v0, v0}, Lcom/androidquery/util/XmlDom;->tags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public tags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/androidquery/util/XmlDom;",
            ">;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 260
    invoke-static {p1, v0, p2, p3}, Lcom/androidquery/util/XmlDom;->convert(Lorg/w3c/dom/NodeList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public text()Ljava/lang/String;
    .locals 4

    .line 407
    iget-object v0, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 408
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 410
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 415
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 412
    :cond_1
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/androidquery/util/XmlDom;->text(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public text(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 310
    invoke-virtual {p0, p1}, Lcom/androidquery/util/XmlDom;->child(Ljava/lang/String;)Lcom/androidquery/util/XmlDom;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 312
    :cond_0
    invoke-virtual {p1}, Lcom/androidquery/util/XmlDom;->text()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 342
    invoke-virtual {p0, v0}, Lcom/androidquery/util/XmlDom;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/androidquery/util/XmlDom;->serialize(Lorg/w3c/dom/Element;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

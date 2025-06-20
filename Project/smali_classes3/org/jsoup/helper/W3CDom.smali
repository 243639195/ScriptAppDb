.class public Lorg/jsoup/helper/W3CDom;
.super Ljava/lang/Object;
.source "W3CDom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/helper/W3CDom$W3CBuilder;
    }
.end annotation


# instance fields
.field protected factory:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/W3CDom;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 45
    iget-object v0, p0, Lorg/jsoup/helper/W3CDom;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 46
    return-void
.end method

.method public static OutputHtml()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    const-string v0, "html"

    invoke-static {v0}, Lorg/jsoup/helper/W3CDom;->methodMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static OutputXml()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    const-string v0, "xml"

    invoke-static {v0}, Lorg/jsoup/helper/W3CDom;->methodMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static asString(Lorg/w3c/dom/Document;Ljava/util/Map;)Ljava/lang/String;
    .locals 9
    .param p0, "doc"    # Lorg/w3c/dom/Document;
    .param p1    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 82
    .local v1, "domSource":Ljavax/xml/transform/dom/DOMSource;
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 83
    .local v6, "writer":Ljava/io/StringWriter;
    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v6}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 84
    .local v3, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v4

    .line 85
    .local v4, "tf":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v4}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v5

    .line 86
    .local v5, "transformer":Ljavax/xml/transform/Transformer;
    if-eqz p1, :cond_0

    .line 87
    invoke-static {p1}, Lorg/jsoup/helper/W3CDom;->propertiesFromMap(Ljava/util/Map;)Ljava/util/Properties;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljavax/xml/transform/Transformer;->setOutputProperties(Ljava/util/Properties;)V

    .line 89
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 90
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v0

    .line 91
    .local v0, "doctype":Lorg/w3c/dom/DocumentType;
    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 92
    const-string v7, "doctype-public"

    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 94
    const-string v7, "doctype-system"

    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .end local v0    # "doctype":Lorg/w3c/dom/DocumentType;
    :cond_2
    :goto_0
    invoke-virtual {v5, v1, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 103
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 96
    .restart local v0    # "doctype":Lorg/w3c/dom/DocumentType;
    :cond_3
    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "html"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 97
    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 98
    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 99
    const-string v7, "doctype-system"

    const-string v8, "about:legacy-compat"

    invoke-virtual {v5, v7, v8}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    .end local v0    # "doctype":Lorg/w3c/dom/DocumentType;
    .end local v1    # "domSource":Ljavax/xml/transform/dom/DOMSource;
    .end local v3    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v4    # "tf":Ljavax/xml/transform/TransformerFactory;
    .end local v5    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v6    # "writer":Ljava/io/StringWriter;
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Ljavax/xml/transform/TransformerException;
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public static convert(Lorg/jsoup/nodes/Document;)Lorg/w3c/dom/Document;
    .locals 1
    .param p0, "in"    # Lorg/jsoup/nodes/Document;

    .prologue
    .line 55
    new-instance v0, Lorg/jsoup/helper/W3CDom;

    invoke-direct {v0}, Lorg/jsoup/helper/W3CDom;-><init>()V

    invoke-virtual {v0, p0}, Lorg/jsoup/helper/W3CDom;->fromJsoup(Lorg/jsoup/nodes/Document;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method private static methodMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .param p0, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 128
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "method"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-object v0
.end method

.method static propertiesFromMap(Ljava/util/Map;)Ljava/util/Properties;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Properties;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 112
    .local v0, "props":Ljava/util/Properties;
    invoke-virtual {v0, p0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 113
    return-object v0
.end method


# virtual methods
.method public asString(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 1
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/jsoup/helper/W3CDom;->asString(Lorg/w3c/dom/Document;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public convert(Lorg/jsoup/nodes/Document;Lorg/w3c/dom/Document;)V
    .locals 2
    .param p1, "in"    # Lorg/jsoup/nodes/Document;
    .param p2, "out"    # Lorg/w3c/dom/Document;

    .prologue
    .line 170
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->location()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->location()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/w3c/dom/Document;->setDocumentURI(Ljava/lang/String;)V

    .line 173
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Document;->child(I)Lorg/jsoup/nodes/Element;

    move-result-object v0

    .line 174
    .local v0, "rootEl":Lorg/jsoup/nodes/Element;
    new-instance v1, Lorg/jsoup/helper/W3CDom$W3CBuilder;

    invoke-direct {v1, p2}, Lorg/jsoup/helper/W3CDom$W3CBuilder;-><init>(Lorg/w3c/dom/Document;)V

    invoke-static {v1, v0}, Lorg/jsoup/select/NodeTraversor;->traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V

    .line 175
    return-void
.end method

.method public fromJsoup(Lorg/jsoup/nodes/Document;)Lorg/w3c/dom/Document;
    .locals 9
    .param p1, "in"    # Lorg/jsoup/nodes/Document;

    .prologue
    .line 139
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 142
    :try_start_0
    iget-object v6, p0, Lorg/jsoup/helper/W3CDom;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 143
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v4

    .line 146
    .local v4, "impl":Lorg/w3c/dom/DOMImplementation;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    .line 147
    .local v5, "out":Lorg/w3c/dom/Document;
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->documentType()Lorg/jsoup/nodes/DocumentType;

    move-result-object v1

    .line 148
    .local v1, "doctype":Lorg/jsoup/nodes/DocumentType;
    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v1}, Lorg/jsoup/nodes/DocumentType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lorg/jsoup/nodes/DocumentType;->publicId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lorg/jsoup/nodes/DocumentType;->systemId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/w3c/dom/DOMImplementation;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;

    move-result-object v2

    .line 150
    .local v2, "documentType":Lorg/w3c/dom/DocumentType;
    invoke-interface {v5, v2}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 152
    .end local v2    # "documentType":Lorg/w3c/dom/DocumentType;
    :cond_0
    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->setXmlStandalone(Z)V

    .line 154
    invoke-virtual {p0, p1, v5}, Lorg/jsoup/helper/W3CDom;->convert(Lorg/jsoup/nodes/Document;Lorg/w3c/dom/Document;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    return-object v5

    .line 156
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "doctype":Lorg/jsoup/nodes/DocumentType;
    .end local v4    # "impl":Lorg/w3c/dom/DOMImplementation;
    .end local v5    # "out":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v3

    .line 157
    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.class public Lorg/jsoup/helper/W3CDom$W3CBuilder;
.super Ljava/lang/Object;
.source "W3CDom.java"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/W3CDom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "W3CBuilder"
.end annotation


# static fields
.field private static final attrKeyReplace:Ljava/util/regex/Pattern;

.field private static final attrKeyValid:Ljava/util/regex/Pattern;

.field private static final xmlnsKey:Ljava/lang/String; = "xmlns"

.field private static final xmlnsPrefix:Ljava/lang/String; = "xmlns:"


# instance fields
.field private dest:Lorg/w3c/dom/Node;

.field private final doc:Lorg/w3c/dom/Document;

.field private final namespacesStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 253
    const-string v0, "[^-a-zA-Z0-9_:.]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->attrKeyReplace:Ljava/util/regex/Pattern;

    .line 254
    const-string v0, "[a-zA-Z_:][-a-zA-Z0-9_:.]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->attrKeyValid:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 2
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->namespacesStack:Ljava/util/Stack;

    .line 200
    iput-object p1, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->doc:Lorg/w3c/dom/Document;

    .line 201
    iget-object v0, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->namespacesStack:Ljava/util/Stack;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iput-object p1, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->dest:Lorg/w3c/dom/Node;

    .line 203
    return-void
.end method

.method private copyAttributes(Lorg/jsoup/nodes/Node;Lorg/w3c/dom/Element;)V
    .locals 5
    .param p1, "source"    # Lorg/jsoup/nodes/Node;
    .param p2, "el"    # Lorg/w3c/dom/Element;

    .prologue
    .line 257
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Attribute;

    .line 259
    .local v0, "attribute":Lorg/jsoup/nodes/Attribute;
    sget-object v3, Lorg/jsoup/helper/W3CDom$W3CBuilder;->attrKeyReplace:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "key":Ljava/lang/String;
    sget-object v3, Lorg/jsoup/helper/W3CDom$W3CBuilder;->attrKeyValid:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    invoke-virtual {v0}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    .end local v0    # "attribute":Lorg/jsoup/nodes/Attribute;
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private updateNamespaces(Lorg/jsoup/nodes/Element;)Ljava/lang/String;
    .locals 8
    .param p1, "el"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 271
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v1

    .line 272
    .local v1, "attributes":Lorg/jsoup/nodes/Attributes;
    invoke-virtual {v1}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Attribute;

    .line 273
    .local v0, "attr":Lorg/jsoup/nodes/Attribute;
    invoke-virtual {v0}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "key":Ljava/lang/String;
    const-string v5, "xmlns"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 276
    const-string v4, ""

    .line 282
    .local v4, "prefix":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->namespacesStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 277
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_1
    const-string v5, "xmlns:"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 278
    const-string v5, "xmlns:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "prefix":Ljava/lang/String;
    goto :goto_1

    .line 286
    .end local v0    # "attr":Lorg/jsoup/nodes/Attribute;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 287
    .local v3, "pos":I
    if-lez v3, :cond_3

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :goto_2
    return-object v5

    :cond_3
    const-string v5, ""

    goto :goto_2
.end method


# virtual methods
.method public head(Lorg/jsoup/nodes/Node;I)V
    .locals 17
    .param p1, "source"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .prologue
    .line 206
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->namespacesStack:Ljava/util/Stack;

    new-instance v15, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->namespacesStack:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    invoke-direct {v15, v13}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v14, v15}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    move-object/from16 v0, p1

    instance-of v13, v0, Lorg/jsoup/nodes/Element;

    if-eqz v13, :cond_2

    move-object/from16 v9, p1

    .line 208
    check-cast v9, Lorg/jsoup/nodes/Element;

    .line 210
    .local v9, "sourceEl":Lorg/jsoup/nodes/Element;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/jsoup/helper/W3CDom$W3CBuilder;->updateNamespaces(Lorg/jsoup/nodes/Element;)Ljava/lang/String;

    move-result-object v6

    .line 211
    .local v6, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->namespacesStack:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 212
    .local v4, "namespace":Ljava/lang/String;
    invoke-virtual {v9}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v11

    .line 219
    .local v11, "tagName":Ljava/lang/String;
    if-nez v4, :cond_1

    :try_start_0
    const-string v13, ":"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 220
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->doc:Lorg/w3c/dom/Document;

    const-string v14, ""

    invoke-interface {v13, v14, v11}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 222
    .local v3, "el":Lorg/w3c/dom/Element;
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v3}, Lorg/jsoup/helper/W3CDom$W3CBuilder;->copyAttributes(Lorg/jsoup/nodes/Node;Lorg/w3c/dom/Element;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->dest:Lorg/w3c/dom/Node;

    invoke-interface {v13, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 224
    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->dest:Lorg/w3c/dom/Node;

    .line 244
    .end local v3    # "el":Lorg/w3c/dom/Element;
    .end local v4    # "namespace":Ljava/lang/String;
    .end local v6    # "prefix":Ljava/lang/String;
    .end local v9    # "sourceEl":Lorg/jsoup/nodes/Element;
    .end local v11    # "tagName":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 221
    .restart local v4    # "namespace":Ljava/lang/String;
    .restart local v6    # "prefix":Ljava/lang/String;
    .restart local v9    # "sourceEl":Lorg/jsoup/nodes/Element;
    .restart local v11    # "tagName":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->doc:Lorg/w3c/dom/Document;

    invoke-interface {v13, v4, v11}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 225
    :catch_0
    move-exception v2

    .line 226
    .local v2, "e":Lorg/w3c/dom/DOMException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->dest:Lorg/w3c/dom/Node;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->doc:Lorg/w3c/dom/Document;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ">"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    .line 228
    .end local v2    # "e":Lorg/w3c/dom/DOMException;
    .end local v4    # "namespace":Ljava/lang/String;
    .end local v6    # "prefix":Ljava/lang/String;
    .end local v9    # "sourceEl":Lorg/jsoup/nodes/Element;
    .end local v11    # "tagName":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p1

    instance-of v13, v0, Lorg/jsoup/nodes/TextNode;

    if-eqz v13, :cond_3

    move-object/from16 v10, p1

    .line 229
    check-cast v10, Lorg/jsoup/nodes/TextNode;

    .line 230
    .local v10, "sourceText":Lorg/jsoup/nodes/TextNode;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->doc:Lorg/w3c/dom/Document;

    invoke-virtual {v10}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v12

    .line 231
    .local v12, "text":Lorg/w3c/dom/Text;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->dest:Lorg/w3c/dom/Node;

    invoke-interface {v13, v12}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    .line 232
    .end local v10    # "sourceText":Lorg/jsoup/nodes/TextNode;
    .end local v12    # "text":Lorg/w3c/dom/Text;
    :cond_3
    move-object/from16 v0, p1

    instance-of v13, v0, Lorg/jsoup/nodes/Comment;

    if-eqz v13, :cond_4

    move-object/from16 v7, p1

    .line 233
    check-cast v7, Lorg/jsoup/nodes/Comment;

    .line 234
    .local v7, "sourceComment":Lorg/jsoup/nodes/Comment;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->doc:Lorg/w3c/dom/Document;

    invoke-virtual {v7}, Lorg/jsoup/nodes/Comment;->getData()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v1

    .line 235
    .local v1, "comment":Lorg/w3c/dom/Comment;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->dest:Lorg/w3c/dom/Node;

    invoke-interface {v13, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    .line 236
    .end local v1    # "comment":Lorg/w3c/dom/Comment;
    .end local v7    # "sourceComment":Lorg/jsoup/nodes/Comment;
    :cond_4
    move-object/from16 v0, p1

    instance-of v13, v0, Lorg/jsoup/nodes/DataNode;

    if-eqz v13, :cond_0

    move-object/from16 v8, p1

    .line 237
    check-cast v8, Lorg/jsoup/nodes/DataNode;

    .line 238
    .local v8, "sourceData":Lorg/jsoup/nodes/DataNode;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->doc:Lorg/w3c/dom/Document;

    invoke-virtual {v8}, Lorg/jsoup/nodes/DataNode;->getWholeData()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    .line 239
    .local v5, "node":Lorg/w3c/dom/Text;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->dest:Lorg/w3c/dom/Node;

    invoke-interface {v13, v5}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_1
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)V
    .locals 1
    .param p1, "source"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .prologue
    .line 247
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->dest:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    instance-of v0, v0, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->dest:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->dest:Lorg/w3c/dom/Node;

    .line 250
    :cond_0
    iget-object v0, p0, Lorg/jsoup/helper/W3CDom$W3CBuilder;->namespacesStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 251
    return-void
.end method

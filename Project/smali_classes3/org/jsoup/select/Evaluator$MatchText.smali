.class public final Lorg/jsoup/select/Evaluator$MatchText;
.super Lorg/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MatchText"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 768
    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 7
    .param p1, "root"    # Lorg/jsoup/nodes/Element;
    .param p2, "element"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 772
    instance-of v3, p2, Lorg/jsoup/nodes/PseudoTextElement;

    if-eqz v3, :cond_0

    .line 773
    const/4 v3, 0x1

    .line 782
    :goto_0
    return v3

    .line 775
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->textNodes()Ljava/util/List;

    move-result-object v2

    .line 776
    .local v2, "textNodes":Ljava/util/List;, "Ljava/util/List<Lorg/jsoup/nodes/TextNode;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/TextNode;

    .line 777
    .local v1, "textNode":Lorg/jsoup/nodes/TextNode;
    new-instance v0, Lorg/jsoup/nodes/PseudoTextElement;

    .line 778
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v4

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v6

    invoke-direct {v0, v4, v5, v6}, Lorg/jsoup/nodes/PseudoTextElement;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 779
    .local v0, "pel":Lorg/jsoup/nodes/PseudoTextElement;
    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/TextNode;->replaceWith(Lorg/jsoup/nodes/Node;)V

    .line 780
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/PseudoTextElement;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_1

    .line 782
    .end local v0    # "pel":Lorg/jsoup/nodes/PseudoTextElement;
    .end local v1    # "textNode":Lorg/jsoup/nodes/TextNode;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 787
    const-string v0, ":matchText"

    return-object v0
.end method

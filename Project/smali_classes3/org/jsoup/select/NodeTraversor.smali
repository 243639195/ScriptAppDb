.class public Lorg/jsoup/select/NodeTraversor;
.super Ljava/lang/Object;
.source "NodeTraversor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lorg/jsoup/select/NodeTraversor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jsoup/select/NodeTraversor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filter(Lorg/jsoup/select/NodeFilter;Lorg/jsoup/nodes/Node;)Lorg/jsoup/select/NodeFilter$FilterResult;
    .locals 5
    .param p0, "filter"    # Lorg/jsoup/select/NodeFilter;
    .param p1, "root"    # Lorg/jsoup/nodes/Node;

    .prologue
    .line 72
    move-object v1, p1

    .line 73
    .local v1, "node":Lorg/jsoup/nodes/Node;
    const/4 v0, 0x0

    .line 75
    .local v0, "depth":I
    :cond_0
    :goto_0
    if-eqz v1, :cond_c

    .line 76
    invoke-interface {p0, v1, v0}, Lorg/jsoup/select/NodeFilter;->head(Lorg/jsoup/nodes/Node;I)Lorg/jsoup/select/NodeFilter$FilterResult;

    move-result-object v3

    .line 77
    .local v3, "result":Lorg/jsoup/select/NodeFilter$FilterResult;
    sget-object v4, Lorg/jsoup/select/NodeFilter$FilterResult;->STOP:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v3, v4, :cond_2

    .line 116
    .end local v3    # "result":Lorg/jsoup/select/NodeFilter$FilterResult;
    :cond_1
    :goto_1
    return-object v3

    .line 80
    .restart local v3    # "result":Lorg/jsoup/select/NodeFilter$FilterResult;
    :cond_2
    sget-object v4, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v3, v4, :cond_5

    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    move-result v4

    if-lez v4, :cond_5

    .line 81
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    move-result-object v1

    .line 82
    add-int/lit8 v0, v0, 0x1

    .line 83
    goto :goto_0

    .line 95
    :cond_3
    move-object v2, v1

    .line 96
    .local v2, "prev":Lorg/jsoup/nodes/Node;
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->parentNode()Lorg/jsoup/nodes/Node;

    move-result-object v1

    .line 97
    add-int/lit8 v0, v0, -0x1

    .line 98
    sget-object v4, Lorg/jsoup/select/NodeFilter$FilterResult;->REMOVE:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v3, v4, :cond_4

    .line 99
    invoke-virtual {v2}, Lorg/jsoup/nodes/Node;->remove()V

    .line 100
    :cond_4
    sget-object v3, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 87
    .end local v2    # "prev":Lorg/jsoup/nodes/Node;
    :cond_5
    sget-boolean v4, Lorg/jsoup/select/NodeTraversor;->$assertionsDisabled:Z

    if-nez v4, :cond_6

    if-nez v1, :cond_6

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 88
    :cond_6
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v4

    if-nez v4, :cond_7

    if-gtz v0, :cond_a

    .line 103
    :cond_7
    sget-object v4, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-eq v3, v4, :cond_8

    sget-object v4, Lorg/jsoup/select/NodeFilter$FilterResult;->SKIP_CHILDREN:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v3, v4, :cond_9

    .line 104
    :cond_8
    invoke-interface {p0, v1, v0}, Lorg/jsoup/select/NodeFilter;->tail(Lorg/jsoup/nodes/Node;I)Lorg/jsoup/select/NodeFilter$FilterResult;

    move-result-object v3

    .line 105
    sget-object v4, Lorg/jsoup/select/NodeFilter$FilterResult;->STOP:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-eq v3, v4, :cond_1

    .line 108
    :cond_9
    if-eq v1, p1, :cond_1

    .line 110
    move-object v2, v1

    .line 111
    .restart local v2    # "prev":Lorg/jsoup/nodes/Node;
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v1

    .line 112
    sget-object v4, Lorg/jsoup/select/NodeFilter$FilterResult;->REMOVE:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v3, v4, :cond_0

    .line 113
    invoke-virtual {v2}, Lorg/jsoup/nodes/Node;->remove()V

    goto :goto_0

    .line 90
    .end local v2    # "prev":Lorg/jsoup/nodes/Node;
    :cond_a
    sget-object v4, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-eq v3, v4, :cond_b

    sget-object v4, Lorg/jsoup/select/NodeFilter$FilterResult;->SKIP_CHILDREN:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v3, v4, :cond_3

    .line 91
    :cond_b
    invoke-interface {p0, v1, v0}, Lorg/jsoup/select/NodeFilter;->tail(Lorg/jsoup/nodes/Node;I)Lorg/jsoup/select/NodeFilter$FilterResult;

    move-result-object v3

    .line 92
    sget-object v4, Lorg/jsoup/select/NodeFilter$FilterResult;->STOP:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v3, v4, :cond_3

    goto :goto_1

    .line 116
    .end local v3    # "result":Lorg/jsoup/select/NodeFilter$FilterResult;
    :cond_c
    sget-object v3, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    goto :goto_1
.end method

.method public static filter(Lorg/jsoup/select/NodeFilter;Lorg/jsoup/select/Elements;)V
    .locals 4
    .param p0, "filter"    # Lorg/jsoup/select/NodeFilter;
    .param p1, "elements"    # Lorg/jsoup/select/Elements;

    .prologue
    .line 125
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 126
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 127
    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 128
    .local v0, "el":Lorg/jsoup/nodes/Element;
    invoke-static {p0, v0}, Lorg/jsoup/select/NodeTraversor;->filter(Lorg/jsoup/select/NodeFilter;Lorg/jsoup/nodes/Node;)Lorg/jsoup/select/NodeFilter$FilterResult;

    move-result-object v2

    sget-object v3, Lorg/jsoup/select/NodeFilter$FilterResult;->STOP:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v2, v3, :cond_0

    .line 130
    .end local v0    # "el":Lorg/jsoup/nodes/Element;
    :cond_1
    return-void
.end method

.method public static traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V
    .locals 4
    .param p0, "visitor"    # Lorg/jsoup/select/NodeVisitor;
    .param p1, "root"    # Lorg/jsoup/nodes/Node;

    .prologue
    .line 21
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 22
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 24
    move-object v1, p1

    .line 26
    .local v1, "node":Lorg/jsoup/nodes/Node;
    const/4 v0, 0x0

    .line 28
    .local v0, "depth":I
    :goto_0
    if-eqz v1, :cond_5

    .line 29
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->parentNode()Lorg/jsoup/nodes/Node;

    move-result-object v2

    .line 30
    .local v2, "parent":Lorg/jsoup/nodes/Node;
    invoke-interface {p0, v1, v0}, Lorg/jsoup/select/NodeVisitor;->head(Lorg/jsoup/nodes/Node;I)V

    .line 31
    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->hasParent()Z

    move-result v3

    if-nez v3, :cond_0

    .line 32
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->siblingIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    move-result-object v1

    .line 34
    :cond_0
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    move-result v3

    if-lez v3, :cond_2

    .line 35
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    move-result-object v1

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_1
    invoke-interface {p0, v1, v0}, Lorg/jsoup/select/NodeVisitor;->tail(Lorg/jsoup/nodes/Node;I)V

    .line 42
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->parentNode()Lorg/jsoup/nodes/Node;

    move-result-object v1

    .line 43
    add-int/lit8 v0, v0, -0x1

    .line 39
    :cond_2
    sget-boolean v3, Lorg/jsoup/select/NodeTraversor;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    if-nez v1, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 40
    :cond_3
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v3

    if-nez v3, :cond_4

    if-gtz v0, :cond_1

    .line 45
    :cond_4
    invoke-interface {p0, v1, v0}, Lorg/jsoup/select/NodeVisitor;->tail(Lorg/jsoup/nodes/Node;I)V

    .line 46
    if-ne v1, p1, :cond_6

    .line 51
    .end local v2    # "parent":Lorg/jsoup/nodes/Node;
    :cond_5
    return-void

    .line 48
    .restart local v2    # "parent":Lorg/jsoup/nodes/Node;
    :cond_6
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v1

    goto :goto_0
.end method

.method public static traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/select/Elements;)V
    .locals 3
    .param p0, "visitor"    # Lorg/jsoup/select/NodeVisitor;
    .param p1, "elements"    # Lorg/jsoup/select/Elements;

    .prologue
    .line 59
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 60
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p1}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 62
    .local v0, "el":Lorg/jsoup/nodes/Element;
    invoke-static {p0, v0}, Lorg/jsoup/select/NodeTraversor;->traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V

    goto :goto_0

    .line 63
    .end local v0    # "el":Lorg/jsoup/nodes/Element;
    :cond_0
    return-void
.end method

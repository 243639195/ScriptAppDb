.class Lorg/jsoup/select/Collector$Accumulator;
.super Ljava/lang/Object;
.source "Collector.java"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Accumulator"
.end annotation


# instance fields
.field private final elements:Lorg/jsoup/select/Elements;

.field private final eval:Lorg/jsoup/select/Evaluator;

.field private final root:Lorg/jsoup/nodes/Element;


# direct methods
.method constructor <init>(Lorg/jsoup/nodes/Element;Lorg/jsoup/select/Elements;Lorg/jsoup/select/Evaluator;)V
    .locals 0
    .param p1, "root"    # Lorg/jsoup/nodes/Element;
    .param p2, "elements"    # Lorg/jsoup/select/Elements;
    .param p3, "eval"    # Lorg/jsoup/select/Evaluator;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/jsoup/select/Collector$Accumulator;->root:Lorg/jsoup/nodes/Element;

    .line 39
    iput-object p2, p0, Lorg/jsoup/select/Collector$Accumulator;->elements:Lorg/jsoup/select/Elements;

    .line 40
    iput-object p3, p0, Lorg/jsoup/select/Collector$Accumulator;->eval:Lorg/jsoup/select/Evaluator;

    .line 41
    return-void
.end method


# virtual methods
.method public head(Lorg/jsoup/nodes/Node;I)V
    .locals 3
    .param p1, "node"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .prologue
    .line 44
    instance-of v1, p1, Lorg/jsoup/nodes/Element;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 45
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 46
    .local v0, "el":Lorg/jsoup/nodes/Element;
    iget-object v1, p0, Lorg/jsoup/select/Collector$Accumulator;->eval:Lorg/jsoup/select/Evaluator;

    iget-object v2, p0, Lorg/jsoup/select/Collector$Accumulator;->root:Lorg/jsoup/nodes/Element;

    invoke-virtual {v1, v2, v0}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lorg/jsoup/select/Collector$Accumulator;->elements:Lorg/jsoup/select/Elements;

    invoke-virtual {v1, v0}, Lorg/jsoup/select/Elements;->add(Ljava/lang/Object;)Z

    .line 49
    .end local v0    # "el":Lorg/jsoup/nodes/Element;
    :cond_0
    return-void
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)V
    .locals 0
    .param p1, "node"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .prologue
    .line 53
    return-void
.end method

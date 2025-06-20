.class Lorg/jsoup/select/Collector$FirstFinder;
.super Ljava/lang/Object;
.source "Collector.java"

# interfaces
.implements Lorg/jsoup/select/NodeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Collector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirstFinder"
.end annotation


# instance fields
.field private final eval:Lorg/jsoup/select/Evaluator;

.field private match:Lorg/jsoup/nodes/Element;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final root:Lorg/jsoup/nodes/Element;


# direct methods
.method constructor <init>(Lorg/jsoup/nodes/Element;Lorg/jsoup/select/Evaluator;)V
    .locals 1
    .param p1, "root"    # Lorg/jsoup/nodes/Element;
    .param p2, "eval"    # Lorg/jsoup/select/Evaluator;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/select/Collector$FirstFinder;->match:Lorg/jsoup/nodes/Element;

    .line 75
    iput-object p1, p0, Lorg/jsoup/select/Collector$FirstFinder;->root:Lorg/jsoup/nodes/Element;

    .line 76
    iput-object p2, p0, Lorg/jsoup/select/Collector$FirstFinder;->eval:Lorg/jsoup/select/Evaluator;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lorg/jsoup/select/Collector$FirstFinder;)Lorg/jsoup/nodes/Element;
    .locals 1
    .param p0, "x0"    # Lorg/jsoup/select/Collector$FirstFinder;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/jsoup/select/Collector$FirstFinder;->match:Lorg/jsoup/nodes/Element;

    return-object v0
.end method


# virtual methods
.method public head(Lorg/jsoup/nodes/Node;I)Lorg/jsoup/select/NodeFilter$FilterResult;
    .locals 3
    .param p1, "node"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .prologue
    .line 81
    instance-of v1, p1, Lorg/jsoup/nodes/Element;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 82
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 83
    .local v0, "el":Lorg/jsoup/nodes/Element;
    iget-object v1, p0, Lorg/jsoup/select/Collector$FirstFinder;->eval:Lorg/jsoup/select/Evaluator;

    iget-object v2, p0, Lorg/jsoup/select/Collector$FirstFinder;->root:Lorg/jsoup/nodes/Element;

    invoke-virtual {v1, v2, v0}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iput-object v0, p0, Lorg/jsoup/select/Collector$FirstFinder;->match:Lorg/jsoup/nodes/Element;

    .line 85
    sget-object v1, Lorg/jsoup/select/NodeFilter$FilterResult;->STOP:Lorg/jsoup/select/NodeFilter$FilterResult;

    .line 88
    .end local v0    # "el":Lorg/jsoup/nodes/Element;
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    goto :goto_0
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)Lorg/jsoup/select/NodeFilter$FilterResult;
    .locals 1
    .param p1, "node"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .prologue
    .line 93
    sget-object v0, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    return-object v0
.end method

.class Lorg/jsoup/nodes/Element$1;
.super Ljava/lang/Object;
.source "Element.java"

# interfaces
.implements Lorg/jsoup/select/NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jsoup/nodes/Element;

.field final synthetic val$accum:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lorg/jsoup/nodes/Element;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jsoup/nodes/Element;

    .prologue
    .line 1212
    iput-object p1, p0, Lorg/jsoup/nodes/Element$1;->this$0:Lorg/jsoup/nodes/Element;

    iput-object p2, p0, Lorg/jsoup/nodes/Element$1;->val$accum:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public head(Lorg/jsoup/nodes/Node;I)V
    .locals 4
    .param p1, "node"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .prologue
    .line 1214
    instance-of v2, p1, Lorg/jsoup/nodes/TextNode;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 1215
    check-cast v1, Lorg/jsoup/nodes/TextNode;

    .line 1216
    .local v1, "textNode":Lorg/jsoup/nodes/TextNode;
    iget-object v2, p0, Lorg/jsoup/nodes/Element$1;->val$accum:Ljava/lang/StringBuilder;

    invoke-static {v2, v1}, Lorg/jsoup/nodes/Element;->access$000(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/TextNode;)V

    .line 1224
    .end local v1    # "textNode":Lorg/jsoup/nodes/TextNode;
    :cond_0
    :goto_0
    return-void

    .line 1217
    :cond_1
    instance-of v2, p1, Lorg/jsoup/nodes/Element;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 1218
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 1219
    .local v0, "element":Lorg/jsoup/nodes/Element;
    iget-object v2, p0, Lorg/jsoup/nodes/Element$1;->val$accum:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1220
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->isBlock()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lorg/jsoup/nodes/Element;->access$100(Lorg/jsoup/nodes/Element;)Lorg/jsoup/parser/Tag;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/parser/Tag;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "br"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lorg/jsoup/nodes/Element$1;->val$accum:Ljava/lang/StringBuilder;

    .line 1221
    invoke-static {v2}, Lorg/jsoup/nodes/TextNode;->lastCharIsWhitespace(Ljava/lang/StringBuilder;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1222
    iget-object v2, p0, Lorg/jsoup/nodes/Element$1;->val$accum:Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public tail(Lorg/jsoup/nodes/Node;I)V
    .locals 3
    .param p1, "node"    # Lorg/jsoup/nodes/Node;
    .param p2, "depth"    # I

    .prologue
    .line 1228
    instance-of v1, p1, Lorg/jsoup/nodes/Element;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1229
    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 1230
    .local v0, "element":Lorg/jsoup/nodes/Element;
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->isBlock()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v1

    instance-of v1, v1, Lorg/jsoup/nodes/TextNode;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jsoup/nodes/Element$1;->val$accum:Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/jsoup/nodes/TextNode;->lastCharIsWhitespace(Ljava/lang/StringBuilder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1231
    iget-object v1, p0, Lorg/jsoup/nodes/Element$1;->val$accum:Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1234
    .end local v0    # "element":Lorg/jsoup/nodes/Element;
    :cond_0
    return-void
.end method

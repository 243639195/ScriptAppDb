.class final Lcom/b/a/a/e/i;
.super Lcom/b/b/j;
.source "Http2Codec.java"


# instance fields
.field final synthetic a:Lcom/b/a/a/e/h;


# direct methods
.method public constructor <init>(Lcom/b/a/a/e/h;Lcom/b/b/x;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/b/a/a/e/i;->a:Lcom/b/a/a/e/h;

    .line 194
    invoke-direct {p0, p2}, Lcom/b/b/j;-><init>(Lcom/b/b/x;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/b/a/a/e/i;->a:Lcom/b/a/a/e/h;

    iget-object v0, v0, Lcom/b/a/a/e/h;->a:Lcom/b/a/a/b/g;

    iget-object v1, p0, Lcom/b/a/a/e/i;->a:Lcom/b/a/a/e/h;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/b/a/a/b/g;->a(ZLcom/b/a/a/c/c;)V

    .line 199
    invoke-super {p0}, Lcom/b/b/j;->close()V

    return-void
.end method

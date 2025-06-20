.class public final Lcom/b/a/a/a/d;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# instance fields
.field public final a:Lcom/b/a/ao;

.field public final b:Lcom/b/a/as;


# direct methods
.method constructor <init>(Lcom/b/a/ao;Lcom/b/a/as;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/b/a/a/a/d;->a:Lcom/b/a/ao;

    .line 58
    iput-object p2, p0, Lcom/b/a/a/a/d;->b:Lcom/b/a/as;

    return-void
.end method

.method public static a(Lcom/b/a/as;Lcom/b/a/ao;)Z
    .locals 3

    .line 65
    invoke-virtual {p0}, Lcom/b/a/as;->b()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "Expires"

    .line 85
    invoke-virtual {p0, v0}, Lcom/b/a/as;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/b/a/as;->g()Lcom/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/e;->c()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/b/a/as;->g()Lcom/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/b/a/as;->g()Lcom/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    :sswitch_1
    invoke-virtual {p0}, Lcom/b/a/as;->g()Lcom/b/a/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/b/a/e;->b()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/b/a/ao;->f()Lcom/b/a/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/b/a/e;->b()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1

    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xcb -> :sswitch_1
        0xcc -> :sswitch_1
        0x12c -> :sswitch_1
        0x12d -> :sswitch_1
        0x12e -> :sswitch_0
        0x133 -> :sswitch_0
        0x134 -> :sswitch_1
        0x194 -> :sswitch_1
        0x195 -> :sswitch_1
        0x19a -> :sswitch_1
        0x19e -> :sswitch_1
        0x1f5 -> :sswitch_1
    .end sparse-switch
.end method

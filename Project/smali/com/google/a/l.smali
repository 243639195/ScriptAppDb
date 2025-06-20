.class public final Lcom/google/a/l;
.super Ljava/lang/Object;
.source "MultiFormatWriter.java"

# interfaces
.implements Lcom/google/a/v;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/a/a;II)Lcom/google/a/c/b;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 49
    invoke-virtual/range {v0 .. v5}, Lcom/google/a/l;->a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/a/a;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/a/g;",
            "*>;)",
            "Lcom/google/a/c/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    .line 59
    sget-object v0, Lcom/google/a/l$1;->a:[I

    invoke-virtual {p2}, Lcom/google/a/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 100
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "No encoder available for format "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :pswitch_0
    new-instance v0, Lcom/google/a/a/c;

    invoke-direct {v0}, Lcom/google/a/a/c;-><init>()V

    goto :goto_0

    .line 94
    :pswitch_1
    new-instance v0, Lcom/google/a/d/b;

    invoke-direct {v0}, Lcom/google/a/d/b;-><init>()V

    goto :goto_0

    .line 91
    :pswitch_2
    new-instance v0, Lcom/google/a/g/b;

    invoke-direct {v0}, Lcom/google/a/g/b;-><init>()V

    goto :goto_0

    .line 88
    :pswitch_3
    new-instance v0, Lcom/google/a/h/d;

    invoke-direct {v0}, Lcom/google/a/h/d;-><init>()V

    goto :goto_0

    .line 85
    :pswitch_4
    new-instance v0, Lcom/google/a/g/o;

    invoke-direct {v0}, Lcom/google/a/g/o;-><init>()V

    goto :goto_0

    .line 82
    :pswitch_5
    new-instance v0, Lcom/google/a/g/d;

    invoke-direct {v0}, Lcom/google/a/g/d;-><init>()V

    goto :goto_0

    .line 79
    :pswitch_6
    new-instance v0, Lcom/google/a/g/h;

    invoke-direct {v0}, Lcom/google/a/g/h;-><init>()V

    goto :goto_0

    .line 76
    :pswitch_7
    new-instance v0, Lcom/google/a/g/f;

    invoke-direct {v0}, Lcom/google/a/g/f;-><init>()V

    goto :goto_0

    .line 73
    :pswitch_8
    new-instance v0, Lcom/google/a/i/b;

    invoke-direct {v0}, Lcom/google/a/i/b;-><init>()V

    goto :goto_0

    .line 70
    :pswitch_9
    new-instance v0, Lcom/google/a/g/u;

    invoke-direct {v0}, Lcom/google/a/g/u;-><init>()V

    goto :goto_0

    .line 67
    :pswitch_a
    new-instance v0, Lcom/google/a/g/j;

    invoke-direct {v0}, Lcom/google/a/g/j;-><init>()V

    goto :goto_0

    .line 64
    :pswitch_b
    new-instance v0, Lcom/google/a/g/ab;

    invoke-direct {v0}, Lcom/google/a/g/ab;-><init>()V

    goto :goto_0

    .line 61
    :pswitch_c
    new-instance v0, Lcom/google/a/g/l;

    invoke-direct {v0}, Lcom/google/a/g/l;-><init>()V

    :goto_0
    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 102
    invoke-interface/range {v1 .. v6}, Lcom/google/a/v;->a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public abstract Lcom/google/a/g/a/a/a/j;
.super Ljava/lang/Object;
.source "AbstractExpandedDecoder.java"


# instance fields
.field final b:Lcom/google/a/c/a;

.field final c:Lcom/google/a/g/a/a/a/s;


# direct methods
.method constructor <init>(Lcom/google/a/c/a;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/a/g/a/a/a/j;->b:Lcom/google/a/c/a;

    .line 44
    new-instance v0, Lcom/google/a/g/a/a/a/s;

    invoke-direct {v0, p1}, Lcom/google/a/g/a/a/a/s;-><init>(Lcom/google/a/c/a;)V

    iput-object v0, p0, Lcom/google/a/g/a/a/a/j;->c:Lcom/google/a/g/a/a/a/s;

    return-void
.end method

.method private static a(Lcom/google/a/c/a;)Lcom/google/a/g/a/a/a/j;
    .locals 3

    const/4 v0, 0x1

    .line 58
    invoke-virtual {p0, v0}, Lcom/google/a/c/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    new-instance v0, Lcom/google/a/g/a/a/a/g;

    invoke-direct {v0, p0}, Lcom/google/a/g/a/a/a/g;-><init>(Lcom/google/a/c/a;)V

    return-object v0

    :cond_0
    const/4 v1, 0x2

    .line 61
    invoke-virtual {p0, v1}, Lcom/google/a/c/a;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    new-instance v0, Lcom/google/a/g/a/a/a/k;

    invoke-direct {v0, p0}, Lcom/google/a/g/a/a/a/k;-><init>(Lcom/google/a/c/a;)V

    return-object v0

    :cond_1
    const/4 v1, 0x4

    .line 65
    invoke-static {p0, v0, v1}, Lcom/google/a/g/a/a/a/s;->a(Lcom/google/a/c/a;II)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x5

    .line 72
    invoke-static {p0, v0, v1}, Lcom/google/a/g/a/a/a/s;->a(Lcom/google/a/c/a;II)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    const/4 v1, 0x7

    .line 78
    invoke-static {p0, v0, v1}, Lcom/google/a/g/a/a/a/s;->a(Lcom/google/a/c/a;II)I

    move-result v0

    packed-switch v0, :pswitch_data_2

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown decoder: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :pswitch_0
    new-instance v0, Lcom/google/a/g/a/a/a/b;

    invoke-direct {v0, p0}, Lcom/google/a/g/a/a/a/b;-><init>(Lcom/google/a/c/a;)V

    return-object v0

    .line 68
    :pswitch_1
    new-instance v0, Lcom/google/a/g/a/a/a/a;

    invoke-direct {v0, p0}, Lcom/google/a/g/a/a/a/a;-><init>(Lcom/google/a/c/a;)V

    return-object v0

    .line 75
    :pswitch_2
    new-instance v0, Lcom/google/a/g/a/a/a/d;

    invoke-direct {v0, p0}, Lcom/google/a/g/a/a/a/d;-><init>(Lcom/google/a/c/a;)V

    return-object v0

    .line 74
    :pswitch_3
    new-instance v0, Lcom/google/a/g/a/a/a/c;

    invoke-direct {v0, p0}, Lcom/google/a/g/a/a/a/c;-><init>(Lcom/google/a/c/a;)V

    return-object v0

    .line 87
    :pswitch_4
    new-instance v0, Lcom/google/a/g/a/a/a/e;

    const-string v1, "320"

    const-string v2, "17"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/a/g/a/a/a/e;-><init>(Lcom/google/a/c/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 86
    :pswitch_5
    new-instance v0, Lcom/google/a/g/a/a/a/e;

    const-string v1, "310"

    const-string v2, "17"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/a/g/a/a/a/e;-><init>(Lcom/google/a/c/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 85
    :pswitch_6
    new-instance v0, Lcom/google/a/g/a/a/a/e;

    const-string v1, "320"

    const-string v2, "15"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/a/g/a/a/a/e;-><init>(Lcom/google/a/c/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 84
    :pswitch_7
    new-instance v0, Lcom/google/a/g/a/a/a/e;

    const-string v1, "310"

    const-string v2, "15"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/a/g/a/a/a/e;-><init>(Lcom/google/a/c/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 83
    :pswitch_8
    new-instance v0, Lcom/google/a/g/a/a/a/e;

    const-string v1, "320"

    const-string v2, "13"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/a/g/a/a/a/e;-><init>(Lcom/google/a/c/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 82
    :pswitch_9
    new-instance v0, Lcom/google/a/g/a/a/a/e;

    const-string v1, "310"

    const-string v2, "13"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/a/g/a/a/a/e;-><init>(Lcom/google/a/c/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 81
    :pswitch_a
    new-instance v0, Lcom/google/a/g/a/a/a/e;

    const-string v1, "320"

    const-string v2, "11"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/a/g/a/a/a/e;-><init>(Lcom/google/a/c/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 80
    :pswitch_b
    new-instance v0, Lcom/google/a/g/a/a/a/e;

    const-string v1, "310"

    const-string v2, "11"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/a/g/a/a/a/e;-><init>(Lcom/google/a/c/a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x38
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private b()Lcom/google/a/c/a;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/a/g/a/a/a/j;->b:Lcom/google/a/c/a;

    return-object v0
.end method

.method private c()Lcom/google/a/g/a/a/a/s;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/a/g/a/a/a/j;->c:Lcom/google/a/g/a/a/a/s;

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/h;
        }
    .end annotation
.end method

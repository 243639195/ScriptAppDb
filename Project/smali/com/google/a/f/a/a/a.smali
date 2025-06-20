.class public final Lcom/google/a/f/a/a/a;
.super Lcom/google/a/i/b/c;
.source "MultiDetector.java"


# static fields
.field private static final b:[Lcom/google/a/c/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 41
    new-array v0, v0, [Lcom/google/a/c/g;

    sput-object v0, Lcom/google/a/f/a/a/a;->b:[Lcom/google/a/c/g;

    return-void
.end method

.method public constructor <init>(Lcom/google/a/c/b;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/google/a/i/b/c;-><init>(Lcom/google/a/c/b;)V

    return-void
.end method


# virtual methods
.method public final a()[Lcom/google/a/c/g;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/google/a/c/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    .line 1049
    iget-object v0, p0, Lcom/google/a/i/b/c;->a:Lcom/google/a/c/b;

    .line 51
    new-instance v1, Lcom/google/a/f/a/a/b;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/a/f/a/a/b;-><init>(Lcom/google/a/c/b;B)V

    .line 52
    invoke-virtual {v1}, Lcom/google/a/f/a/a/b;->a()[Lcom/google/a/i/b/f;

    move-result-object v0

    .line 54
    array-length v1, v0

    if-nez v1, :cond_0

    .line 55
    invoke-static {}, Lcom/google/a/m;->a()Lcom/google/a/m;

    move-result-object v0

    throw v0

    .line 58
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 61
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/google/a/f/a/a/a;->a(Lcom/google/a/i/b/f;)Lcom/google/a/c/g;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/a/q; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    sget-object v0, Lcom/google/a/f/a/a/a;->b:[Lcom/google/a/c/g;

    return-object v0

    .line 69
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/a/c/g;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/c/g;

    return-object v0
.end method

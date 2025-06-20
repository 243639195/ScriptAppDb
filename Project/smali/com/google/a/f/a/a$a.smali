.class final Lcom/google/a/f/a/a$a;
.super Ljava/lang/Object;
.source "QRCodeMultiReader.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/f/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator<",
        "Lcom/google/a/r;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/google/a/f/a/a$a;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/a/r;Lcom/google/a/r;)I
    .locals 1

    .line 1112
    iget-object p0, p0, Lcom/google/a/r;->f:Ljava/util/Map;

    .line 169
    sget-object v0, Lcom/google/a/s;->j:Lcom/google/a/s;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 2112
    iget-object p1, p1, Lcom/google/a/r;->f:Ljava/util/Map;

    .line 170
    sget-object v0, Lcom/google/a/s;->j:Lcom/google/a/s;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 171
    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 166
    check-cast p1, Lcom/google/a/r;

    check-cast p2, Lcom/google/a/r;

    .line 3112
    iget-object p1, p1, Lcom/google/a/r;->f:Ljava/util/Map;

    .line 2169
    sget-object v0, Lcom/google/a/s;->j:Lcom/google/a/s;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4112
    iget-object p2, p2, Lcom/google/a/r;->f:Ljava/util/Map;

    .line 2170
    sget-object v0, Lcom/google/a/s;->j:Lcom/google/a/s;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2171
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

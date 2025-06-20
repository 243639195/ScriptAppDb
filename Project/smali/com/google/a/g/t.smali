.class public final Lcom/google/a/g/t;
.super Lcom/google/a/g/y;
.source "UPCAReader.java"


# instance fields
.field private final a:Lcom/google/a/g/y;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/google/a/g/y;-><init>()V

    .line 38
    new-instance v0, Lcom/google/a/g/i;

    invoke-direct {v0}, Lcom/google/a/g/i;-><init>()V

    iput-object v0, p0, Lcom/google/a/g/t;->a:Lcom/google/a/g/y;

    return-void
.end method

.method private static a(Lcom/google/a/r;)Lcom/google/a/r;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/h;
        }
    .end annotation

    .line 1072
    iget-object v0, p0, Lcom/google/a/r;->a:Ljava/lang/String;

    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1

    .line 80
    new-instance v1, Lcom/google/a/r;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 1096
    iget-object v3, p0, Lcom/google/a/r;->d:[Lcom/google/a/t;

    .line 80
    sget-object v4, Lcom/google/a/a;->o:Lcom/google/a/a;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/a/r;-><init>(Ljava/lang/String;[B[Lcom/google/a/t;Lcom/google/a/a;)V

    .line 1112
    iget-object v0, p0, Lcom/google/a/r;->f:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2112
    iget-object p0, p0, Lcom/google/a/r;->f:Ljava/util/Map;

    .line 82
    invoke-virtual {v1, p0}, Lcom/google/a/r;->a(Ljava/util/Map;)V

    :cond_0
    return-object v1

    .line 86
    :cond_1
    invoke-static {}, Lcom/google/a/h;->a()Lcom/google/a/h;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method protected final a(Lcom/google/a/c/a;[ILjava/lang/StringBuilder;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/google/a/g/t;->a:Lcom/google/a/g/y;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/a/g/y;->a(Lcom/google/a/c/a;[ILjava/lang/StringBuilder;)I

    move-result p1

    return p1
.end method

.method public final a(ILcom/google/a/c/a;Ljava/util/Map;)Lcom/google/a/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/a/c/a;",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;)",
            "Lcom/google/a/r;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/h;,
            Lcom/google/a/d;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/google/a/g/t;->a:Lcom/google/a/g/y;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/a/g/y;->a(ILcom/google/a/c/a;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object p1

    invoke-static {p1}, Lcom/google/a/g/t;->a(Lcom/google/a/r;)Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILcom/google/a/c/a;[ILjava/util/Map;)Lcom/google/a/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/a/c/a;",
            "[I",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;)",
            "Lcom/google/a/r;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/h;,
            Lcom/google/a/d;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/google/a/g/t;->a:Lcom/google/a/g/y;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/a/g/y;->a(ILcom/google/a/c/a;[ILjava/util/Map;)Lcom/google/a/r;

    move-result-object p1

    invoke-static {p1}, Lcom/google/a/g/t;->a(Lcom/google/a/r;)Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/a/c;)Lcom/google/a/r;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/h;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/a/g/t;->a:Lcom/google/a/g/y;

    invoke-virtual {v0, p1}, Lcom/google/a/g/y;->a(Lcom/google/a/c;)Lcom/google/a/r;

    move-result-object p1

    invoke-static {p1}, Lcom/google/a/g/t;->a(Lcom/google/a/r;)Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c;",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;)",
            "Lcom/google/a/r;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/h;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/google/a/g/t;->a:Lcom/google/a/g/y;

    invoke-virtual {v0, p1, p2}, Lcom/google/a/g/y;->a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object p1

    invoke-static {p1}, Lcom/google/a/g/t;->a(Lcom/google/a/r;)Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method final b()Lcom/google/a/a;
    .locals 1

    .line 68
    sget-object v0, Lcom/google/a/a;->o:Lcom/google/a/a;

    return-object v0
.end method

.class public final Lcom/b/a/a/e/c;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field public static final a:Lcom/b/b/i;

.field public static final b:Lcom/b/b/i;

.field public static final c:Lcom/b/b/i;

.field public static final d:Lcom/b/b/i;

.field public static final e:Lcom/b/b/i;

.field public static final f:Lcom/b/b/i;


# instance fields
.field public final g:Lcom/b/b/i;

.field public final h:Lcom/b/b/i;

.field final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ":"

    .line 24
    invoke-static {v0}, Lcom/b/b/i;->a(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/e/c;->a:Lcom/b/b/i;

    const-string v0, ":status"

    .line 25
    invoke-static {v0}, Lcom/b/b/i;->a(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/e/c;->b:Lcom/b/b/i;

    const-string v0, ":method"

    .line 26
    invoke-static {v0}, Lcom/b/b/i;->a(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/e/c;->c:Lcom/b/b/i;

    const-string v0, ":path"

    .line 27
    invoke-static {v0}, Lcom/b/b/i;->a(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/e/c;->d:Lcom/b/b/i;

    const-string v0, ":scheme"

    .line 28
    invoke-static {v0}, Lcom/b/b/i;->a(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/e/c;->e:Lcom/b/b/i;

    const-string v0, ":authority"

    .line 29
    invoke-static {v0}, Lcom/b/b/i;->a(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/e/c;->f:Lcom/b/b/i;

    return-void
.end method

.method public constructor <init>(Lcom/b/b/i;Lcom/b/b/i;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/b/a/a/e/c;->g:Lcom/b/b/i;

    .line 48
    iput-object p2, p0, Lcom/b/a/a/e/c;->h:Lcom/b/b/i;

    .line 49
    invoke-virtual {p1}, Lcom/b/b/i;->g()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Lcom/b/b/i;->g()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/b/a/a/e/c;->i:I

    return-void
.end method

.method public constructor <init>(Lcom/b/b/i;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-static {p2}, Lcom/b/b/i;->a(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/b/a/a/e/c;-><init>(Lcom/b/b/i;Lcom/b/b/i;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-static {p1}, Lcom/b/b/i;->a(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object p1

    invoke-static {p2}, Lcom/b/b/i;->a(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/b/a/a/e/c;-><init>(Lcom/b/b/i;Lcom/b/b/i;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 53
    instance-of v0, p1, Lcom/b/a/a/e/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 54
    check-cast p1, Lcom/b/a/a/e/c;

    .line 55
    iget-object v0, p0, Lcom/b/a/a/e/c;->g:Lcom/b/b/i;

    iget-object v2, p1, Lcom/b/a/a/e/c;->g:Lcom/b/b/i;

    invoke-virtual {v0, v2}, Lcom/b/b/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/e/c;->h:Lcom/b/b/i;

    iget-object p1, p1, Lcom/b/a/a/e/c;->h:Lcom/b/b/i;

    .line 56
    invoke-virtual {v0, p1}, Lcom/b/b/i;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/b/a/a/e/c;->g:Lcom/b/b/i;

    invoke-virtual {v0}, Lcom/b/b/i;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 64
    iget-object v1, p0, Lcom/b/a/a/e/c;->h:Lcom/b/b/i;

    invoke-virtual {v1}, Lcom/b/b/i;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%s: %s"

    const/4 v1, 0x2

    .line 69
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/b/a/a/e/c;->g:Lcom/b/b/i;

    invoke-virtual {v2}, Lcom/b/b/i;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/b/a/a/e/c;->h:Lcom/b/b/i;

    invoke-virtual {v2}, Lcom/b/b/i;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/b/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

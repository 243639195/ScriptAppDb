.class public final Lcom/google/a/b/a/w;
.super Lcom/google/a/b/a/q;
.source "SMSParsedResult.java"


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 36
    sget v0, Lcom/google/a/b/a/r;->h:I

    invoke-direct {p0, v0}, Lcom/google/a/b/a/q;-><init>(I)V

    const/4 v0, 0x1

    .line 37
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iput-object v1, p0, Lcom/google/a/b/a/w;->a:[Ljava/lang/String;

    .line 38
    new-array p1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v0, p1, v2

    iput-object p1, p0, Lcom/google/a/b/a/w;->b:[Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/google/a/b/a/w;->c:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/google/a/b/a/w;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 47
    sget v0, Lcom/google/a/b/a/r;->h:I

    invoke-direct {p0, v0}, Lcom/google/a/b/a/q;-><init>(I)V

    .line 48
    iput-object p1, p0, Lcom/google/a/b/a/w;->a:[Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/google/a/b/a/w;->b:[Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/google/a/b/a/w;->c:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/google/a/b/a/w;->d:Ljava/lang/String;

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 6

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sms:"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 58
    :goto_0
    iget-object v5, p0, Lcom/google/a/b/a/w;->a:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_2

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    const/16 v5, 0x2c

    .line 62
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    :goto_1
    iget-object v5, p0, Lcom/google/a/b/a/w;->a:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v5, p0, Lcom/google/a/b/a/w;->b:[Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/a/b/a/w;->b:[Ljava/lang/String;

    aget-object v5, v5, v3

    if-eqz v5, :cond_1

    const-string v5, ";via="

    .line 66
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v5, p0, Lcom/google/a/b/a/w;->b:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    :cond_2
    iget-object v3, p0, Lcom/google/a/b/a/w;->d:Ljava/lang/String;

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 71
    :goto_2
    iget-object v4, p0, Lcom/google/a/b/a/w;->c:Ljava/lang/String;

    if-eqz v4, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-nez v3, :cond_5

    if-eqz v1, :cond_8

    :cond_5
    const/16 v2, 0x3f

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_6

    const-string v2, "body="

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v2, p0, Lcom/google/a/b/a/w;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    if-eqz v1, :cond_8

    if-eqz v3, :cond_7

    const/16 v1, 0x26

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, "subject="

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Lcom/google/a/b/a/w;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()[Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/google/a/b/a/w;->a:[Ljava/lang/String;

    return-object v0
.end method

.method private d()[Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/a/b/a/w;->b:[Ljava/lang/String;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/google/a/b/a/w;->c:Ljava/lang/String;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/a/b/a/w;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 108
    iget-object v1, p0, Lcom/google/a/b/a/w;->a:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/w;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 109
    iget-object v1, p0, Lcom/google/a/b/a/w;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/w;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 110
    iget-object v1, p0, Lcom/google/a/b/a/w;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/w;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

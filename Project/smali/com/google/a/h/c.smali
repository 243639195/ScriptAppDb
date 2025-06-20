.class public final Lcom/google/a/h/c;
.super Ljava/lang/Object;
.source "PDF417ResultMetadata.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:J

.field public i:J

.field public j:I

.field public k:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/google/a/h/c;->d:I

    const-wide/16 v1, -0x1

    .line 31
    iput-wide v1, p0, Lcom/google/a/h/c;->h:J

    .line 32
    iput-wide v1, p0, Lcom/google/a/h/c;->i:J

    .line 33
    iput v0, p0, Lcom/google/a/h/c;->j:I

    return-void
.end method

.method private a()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/google/a/h/c;->a:I

    return v0
.end method

.method private a(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/google/a/h/c;->a:I

    return-void
.end method

.method private a(J)V
    .locals 0

    .line 142
    iput-wide p1, p0, Lcom/google/a/h/c;->h:J

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/google/a/h/c;->b:Ljava/lang/String;

    return-void
.end method

.method private a([I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/google/a/h/c;->k:[I

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/a/h/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/google/a/h/c;->d:I

    return-void
.end method

.method private b(J)V
    .locals 0

    .line 168
    iput-wide p1, p0, Lcom/google/a/h/c;->i:J

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/google/a/h/c;->e:Ljava/lang/String;

    return-void
.end method

.method private c(I)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/google/a/h/c;->j:I

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/google/a/h/c;->f:Ljava/lang/String;

    return-void
.end method

.method private c()[I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/a/h/c;->k:[I

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/google/a/h/c;->g:Ljava/lang/String;

    return-void
.end method

.method private d()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/google/a/h/c;->c:Z

    return v0
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/google/a/h/c;->c:Z

    return-void
.end method

.method private f()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/google/a/h/c;->d:I

    return v0
.end method

.method private g()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/google/a/h/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/google/a/h/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/a/h/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method private j()J
    .locals 2

    .line 138
    iget-wide v0, p0, Lcom/google/a/h/c;->h:J

    return-wide v0
.end method

.method private k()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/google/a/h/c;->j:I

    return v0
.end method

.method private l()J
    .locals 2

    .line 164
    iget-wide v0, p0, Lcom/google/a/h/c;->i:J

    return-wide v0
.end method

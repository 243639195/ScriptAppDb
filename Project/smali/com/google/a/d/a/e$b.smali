.class final Lcom/google/a/d/a/e$b;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/d/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:I

.field final b:[Lcom/google/a/d/a/e$a;


# direct methods
.method private constructor <init>(ILcom/google/a/d/a/e$a;)V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p1, p0, Lcom/google/a/d/a/e$b;->a:I

    const/4 p1, 0x1

    .line 124
    new-array p1, p1, [Lcom/google/a/d/a/e$a;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    iput-object p1, p0, Lcom/google/a/d/a/e$b;->b:[Lcom/google/a/d/a/e$a;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/a/d/a/e$a;B)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/google/a/d/a/e$b;-><init>(ILcom/google/a/d/a/e$a;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/a/d/a/e$a;Lcom/google/a/d/a/e$a;)V
    .locals 2

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e

    .line 128
    iput v0, p0, Lcom/google/a/d/a/e$b;->a:I

    const/4 v0, 0x2

    .line 129
    new-array v0, v0, [Lcom/google/a/d/a/e$a;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    iput-object v0, p0, Lcom/google/a/d/a/e$b;->b:[Lcom/google/a/d/a/e$a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/a/d/a/e$a;Lcom/google/a/d/a/e$a;B)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/google/a/d/a/e$b;-><init>(Lcom/google/a/d/a/e$a;Lcom/google/a/d/a/e$a;)V

    return-void
.end method

.method private a()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/google/a/d/a/e$b;->a:I

    return v0
.end method

.method private b()[Lcom/google/a/d/a/e$a;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/google/a/d/a/e$b;->b:[Lcom/google/a/d/a/e$a;

    return-object v0
.end method

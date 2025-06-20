.class public final Lcom/google/a/d;
.super Lcom/google/a/q;
.source "ChecksumException.java"


# static fields
.field private static final c:Lcom/google/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/google/a/d;

    invoke-direct {v0}, Lcom/google/a/d;-><init>()V

    .line 29
    sput-object v0, Lcom/google/a/d;->c:Lcom/google/a/d;

    sget-object v1, Lcom/google/a/d;->b:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Lcom/google/a/d;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/google/a/q;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/a/q;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a()Lcom/google/a/d;
    .locals 1

    .line 41
    sget-boolean v0, Lcom/google/a/d;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/a/d;

    invoke-direct {v0}, Lcom/google/a/d;-><init>()V

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/a/d;->c:Lcom/google/a/d;

    return-object v0
.end method

.method private static a(Ljava/lang/Throwable;)Lcom/google/a/d;
    .locals 1

    .line 45
    sget-boolean v0, Lcom/google/a/d;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/a/d;

    invoke-direct {v0, p0}, Lcom/google/a/d;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :cond_0
    sget-object p0, Lcom/google/a/d;->c:Lcom/google/a/d;

    return-object p0
.end method

.class public final Lcom/google/a/h;
.super Lcom/google/a/q;
.source "FormatException.java"


# static fields
.field private static final c:Lcom/google/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/google/a/h;

    invoke-direct {v0}, Lcom/google/a/h;-><init>()V

    .line 30
    sput-object v0, Lcom/google/a/h;->c:Lcom/google/a/h;

    sget-object v1, Lcom/google/a/h;->b:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Lcom/google/a/h;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/google/a/q;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/a/q;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a()Lcom/google/a/h;
    .locals 1

    .line 41
    sget-boolean v0, Lcom/google/a/h;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/a/h;

    invoke-direct {v0}, Lcom/google/a/h;-><init>()V

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/a/h;->c:Lcom/google/a/h;

    return-object v0
.end method

.method public static a(Ljava/lang/Throwable;)Lcom/google/a/h;
    .locals 1

    .line 45
    sget-boolean v0, Lcom/google/a/h;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/a/h;

    invoke-direct {v0, p0}, Lcom/google/a/h;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :cond_0
    sget-object p0, Lcom/google/a/h;->c:Lcom/google/a/h;

    return-object p0
.end method

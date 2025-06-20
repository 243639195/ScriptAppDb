.class public final Lcom/google/a/m;
.super Lcom/google/a/q;
.source "NotFoundException.java"


# static fields
.field private static final c:Lcom/google/a/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/google/a/m;

    invoke-direct {v0}, Lcom/google/a/m;-><init>()V

    .line 29
    sput-object v0, Lcom/google/a/m;->c:Lcom/google/a/m;

    sget-object v1, Lcom/google/a/m;->b:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Lcom/google/a/m;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/google/a/q;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/a/m;
    .locals 1

    .line 37
    sget-object v0, Lcom/google/a/m;->c:Lcom/google/a/m;

    return-object v0
.end method

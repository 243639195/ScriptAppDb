.class final Lcom/google/a/a/c/d$1;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/a/a/c/d;->a()Lcom/google/a/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/a/a/c/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/a/c/d;


# direct methods
.method constructor <init>(Lcom/google/a/a/c/d;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/google/a/a/c/d$1;->a:Lcom/google/a/a/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/a/a/c/f;Lcom/google/a/a/c/f;)I
    .locals 0

    .line 1070
    iget p0, p0, Lcom/google/a/a/c/f;->d:I

    .line 2070
    iget p1, p1, Lcom/google/a/a/c/f;->d:I

    sub-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 192
    check-cast p1, Lcom/google/a/a/c/f;

    check-cast p2, Lcom/google/a/a/c/f;

    .line 3070
    iget p1, p1, Lcom/google/a/a/c/f;->d:I

    .line 4070
    iget p2, p2, Lcom/google/a/a/c/f;->d:I

    sub-int/2addr p1, p2

    return p1
.end method

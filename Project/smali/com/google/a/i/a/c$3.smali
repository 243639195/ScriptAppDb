.class final enum Lcom/google/a/i/a/c$3;
.super Lcom/google/a/i/a/c;
.source "DataMask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/i/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, v0, v1}, Lcom/google/a/i/a/c;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(II)Z
    .locals 0

    .line 62
    rem-int/lit8 p2, p2, 0x3

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.class public final Lcom/umeng/commonsdk/proguard/bd;
.super Ljava/lang/Object;
.source "TSet.java"


# instance fields
.field public final a:B

.field public final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0, v0}, Lcom/umeng/commonsdk/proguard/bd;-><init>(BI)V

    return-void
.end method

.method public constructor <init>(BI)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-byte p1, p0, Lcom/umeng/commonsdk/proguard/bd;->a:B

    .line 33
    iput p2, p0, Lcom/umeng/commonsdk/proguard/bd;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/proguard/av;)V
    .locals 1

    .line 37
    iget-byte v0, p1, Lcom/umeng/commonsdk/proguard/av;->a:B

    iget p1, p1, Lcom/umeng/commonsdk/proguard/av;->b:I

    invoke-direct {p0, v0, p1}, Lcom/umeng/commonsdk/proguard/bd;-><init>(BI)V

    return-void
.end method

.class public Lcom/ds/daisi/entity/ElfinFloatViewEvent;
.super Ljava/lang/Object;
.source "ElfinFloatViewEvent.java"


# instance fields
.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/ds/daisi/entity/ElfinFloatViewEvent;->type:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/ds/daisi/entity/ElfinFloatViewEvent;->type:I

    return v0
.end method

.method public setType(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/ds/daisi/entity/ElfinFloatViewEvent;->type:I

    return-void
.end method

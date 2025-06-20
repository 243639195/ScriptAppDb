.class public Lcom/ds/daisi/entity/TokenBean;
.super Ljava/lang/Object;
.source "TokenBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/entity/TokenBean$TokenInfo;
    }
.end annotation


# instance fields
.field public CheckInfo:Lcom/ds/daisi/entity/TokenBean$TokenInfo;

.field public RCode:Ljava/lang/String;

.field public Sign:Ljava/lang/String;

.field private checkSign:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCheckSign()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/ds/daisi/entity/TokenBean;->checkSign:Z

    return v0
.end method

.method public setCheckSign(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/ds/daisi/entity/TokenBean;->checkSign:Z

    return-void
.end method

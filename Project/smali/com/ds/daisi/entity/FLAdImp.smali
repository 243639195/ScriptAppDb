.class public Lcom/ds/daisi/entity/FLAdImp;
.super Ljava/lang/Object;
.source "FLAdImp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/entity/FLAdImp$Banner;
    }
.end annotation


# instance fields
.field public adPid:Ljava/lang/String;

.field public banner:Lcom/ds/daisi/entity/FLAdImp$Banner;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/ds/daisi/entity/FLAdImp;->adPid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ds/daisi/entity/FLAdImp$Banner;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/ds/daisi/entity/FLAdImp;->adPid:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/ds/daisi/entity/FLAdImp;->banner:Lcom/ds/daisi/entity/FLAdImp$Banner;

    return-void
.end method


# virtual methods
.method public getBanner()Lcom/ds/daisi/entity/FLAdImp$Banner;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/ds/daisi/entity/FLAdImp;->banner:Lcom/ds/daisi/entity/FLAdImp$Banner;

    return-object v0
.end method

.method public setBanner(Lcom/ds/daisi/entity/FLAdImp$Banner;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/ds/daisi/entity/FLAdImp;->banner:Lcom/ds/daisi/entity/FLAdImp$Banner;

    return-void
.end method

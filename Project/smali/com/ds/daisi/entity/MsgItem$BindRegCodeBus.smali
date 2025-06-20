.class public Lcom/ds/daisi/entity/MsgItem$BindRegCodeBus;
.super Ljava/lang/Object;
.source "MsgItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/entity/MsgItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BindRegCodeBus"
.end annotation


# instance fields
.field private expireTime:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Lcom/ds/daisi/entity/MsgItem$BindRegCodeBus;->expireTime:J

    return-void
.end method


# virtual methods
.method public getExpireTime()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/ds/daisi/entity/MsgItem$BindRegCodeBus;->expireTime:J

    return-wide v0
.end method

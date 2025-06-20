.class public Lcom/ds/daisi/entity/MsgItem$WebPageDownButtonEvent;
.super Ljava/lang/Object;
.source "MsgItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/entity/MsgItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebPageDownButtonEvent"
.end annotation


# instance fields
.field private msgType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Lcom/ds/daisi/entity/MsgItem$WebPageDownButtonEvent;->msgType:I

    return-void
.end method


# virtual methods
.method public getMsgType()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/ds/daisi/entity/MsgItem$WebPageDownButtonEvent;->msgType:I

    return v0
.end method

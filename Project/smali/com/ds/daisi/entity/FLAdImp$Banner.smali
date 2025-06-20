.class public Lcom/ds/daisi/entity/FLAdImp$Banner;
.super Ljava/lang/Object;
.source "FLAdImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/entity/FLAdImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Banner"
.end annotation


# instance fields
.field public height:I

.field final synthetic this$0:Lcom/ds/daisi/entity/FLAdImp;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/ds/daisi/entity/FLAdImp;II)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/ds/daisi/entity/FLAdImp$Banner;->this$0:Lcom/ds/daisi/entity/FLAdImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p2, p0, Lcom/ds/daisi/entity/FLAdImp$Banner;->width:I

    .line 20
    iput p3, p0, Lcom/ds/daisi/entity/FLAdImp$Banner;->height:I

    return-void
.end method

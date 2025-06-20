.class public Lcom/cyjh/feedback/lib/entities/PicDataBean;
.super Ljava/lang/Object;
.source "PicDataBean.java"


# instance fields
.field private rdata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/feedback/lib/entities/PicPathBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRdata()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cyjh/feedback/lib/entities/PicPathBean;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/cyjh/feedback/lib/entities/PicDataBean;->rdata:Ljava/util/List;

    return-object v0
.end method

.method public setRdata(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cyjh/feedback/lib/entities/PicPathBean;",
            ">;)V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/cyjh/feedback/lib/entities/PicDataBean;->rdata:Ljava/util/List;

    return-void
.end method

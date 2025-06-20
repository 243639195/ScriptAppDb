.class public Lcom/alibaba/sdk/android/oss/model/PartETag;
.super Ljava/lang/Object;
.source "PartETag.java"


# instance fields
.field private eTag:Ljava/lang/String;

.field private partNumber:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/model/PartETag;->setPartNumber(I)V

    .line 41
    invoke-virtual {p0, p2}, Lcom/alibaba/sdk/android/oss/model/PartETag;->setETag(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getETag()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/PartETag;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getPartNumber()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/alibaba/sdk/android/oss/model/PartETag;->partNumber:I

    return v0
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/PartETag;->eTag:Ljava/lang/String;

    return-void
.end method

.method public setPartNumber(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/alibaba/sdk/android/oss/model/PartETag;->partNumber:I

    return-void
.end method

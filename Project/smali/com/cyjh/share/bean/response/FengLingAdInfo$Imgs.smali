.class public Lcom/cyjh/share/bean/response/FengLingAdInfo$Imgs;
.super Ljava/lang/Object;
.source "FengLingAdInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/share/bean/response/FengLingAdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Imgs"
.end annotation


# instance fields
.field private height:I

.field private src:Ljava/lang/String;

.field final synthetic this$0:Lcom/cyjh/share/bean/response/FengLingAdInfo;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/cyjh/share/bean/response/FengLingAdInfo;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/cyjh/share/bean/response/FengLingAdInfo$Imgs;->this$0:Lcom/cyjh/share/bean/response/FengLingAdInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 231
    iget v0, p0, Lcom/cyjh/share/bean/response/FengLingAdInfo$Imgs;->height:I

    return v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/cyjh/share/bean/response/FengLingAdInfo$Imgs;->src:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 239
    iget v0, p0, Lcom/cyjh/share/bean/response/FengLingAdInfo$Imgs;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .line 235
    iput p1, p0, Lcom/cyjh/share/bean/response/FengLingAdInfo$Imgs;->height:I

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/cyjh/share/bean/response/FengLingAdInfo$Imgs;->src:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 243
    iput p1, p0, Lcom/cyjh/share/bean/response/FengLingAdInfo$Imgs;->width:I

    return-void
.end method

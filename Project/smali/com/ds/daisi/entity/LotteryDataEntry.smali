.class public Lcom/ds/daisi/entity/LotteryDataEntry;
.super Ljava/lang/Object;
.source "LotteryDataEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/entity/LotteryDataEntry$Codes;
    }
.end annotation


# instance fields
.field public Code:Ljava/lang/String;

.field public Codes:Lcom/ds/daisi/entity/LotteryDataEntry$Codes;

.field public Msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStrFromArray(I)Ljava/lang/String;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ds/daisi/entity/LotteryDataEntry;->Codes:Lcom/ds/daisi/entity/LotteryDataEntry$Codes;

    iget-object v1, v1, Lcom/ds/daisi/entity/LotteryDataEntry$Codes;->Code1:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/entity/LotteryDataEntry;->Codes:Lcom/ds/daisi/entity/LotteryDataEntry$Codes;

    iget-object v1, v1, Lcom/ds/daisi/entity/LotteryDataEntry$Codes;->Code2:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/entity/LotteryDataEntry;->Codes:Lcom/ds/daisi/entity/LotteryDataEntry$Codes;

    iget-object v1, v1, Lcom/ds/daisi/entity/LotteryDataEntry$Codes;->Code3:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/entity/LotteryDataEntry;->Codes:Lcom/ds/daisi/entity/LotteryDataEntry$Codes;

    iget-object v1, v1, Lcom/ds/daisi/entity/LotteryDataEntry$Codes;->Code4:Ljava/util/List;

    .line 60
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/entity/LotteryDataEntry;->Codes:Lcom/ds/daisi/entity/LotteryDataEntry$Codes;

    iget-object v1, v1, Lcom/ds/daisi/entity/LotteryDataEntry$Codes;->Code5:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/entity/LotteryDataEntry;->Codes:Lcom/ds/daisi/entity/LotteryDataEntry$Codes;

    iget-object v1, v1, Lcom/ds/daisi/entity/LotteryDataEntry$Codes;->Code6:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/entity/LotteryDataEntry;->Codes:Lcom/ds/daisi/entity/LotteryDataEntry$Codes;

    iget-object v1, v1, Lcom/ds/daisi/entity/LotteryDataEntry$Codes;->Code7:Ljava/util/List;

    .line 61
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/entity/LotteryDataEntry;->Codes:Lcom/ds/daisi/entity/LotteryDataEntry$Codes;

    iget-object v1, v1, Lcom/ds/daisi/entity/LotteryDataEntry$Codes;->Code8:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LotteryDataEntry{Code=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/entity/LotteryDataEntry;->Code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", Msg=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ds/daisi/entity/LotteryDataEntry;->Msg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", Codes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ds/daisi/entity/LotteryDataEntry;->Codes:Lcom/ds/daisi/entity/LotteryDataEntry$Codes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

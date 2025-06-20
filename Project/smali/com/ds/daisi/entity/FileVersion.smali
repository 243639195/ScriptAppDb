.class public Lcom/ds/daisi/entity/FileVersion;
.super Ljava/lang/Object;
.source "FileVersion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ds/daisi/entity/FileVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field atc:I

.field mq:I

.field prop:I

.field rtd:I

.field ui:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 129
    new-instance v0, Lcom/ds/daisi/entity/FileVersion$1;

    invoke-direct {v0}, Lcom/ds/daisi/entity/FileVersion$1;-><init>()V

    sput-object v0, Lcom/ds/daisi/entity/FileVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/ds/daisi/entity/FileVersion;->atc:I

    .line 41
    iput p2, p0, Lcom/ds/daisi/entity/FileVersion;->mq:I

    .line 42
    iput p3, p0, Lcom/ds/daisi/entity/FileVersion;->prop:I

    .line 43
    iput p4, p0, Lcom/ds/daisi/entity/FileVersion;->ui:I

    .line 44
    iput p5, p0, Lcom/ds/daisi/entity/FileVersion;->rtd:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAtc()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/ds/daisi/entity/FileVersion;->atc:I

    return v0
.end method

.method public getMq()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/ds/daisi/entity/FileVersion;->mq:I

    return v0
.end method

.method public getProp()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/ds/daisi/entity/FileVersion;->prop:I

    return v0
.end method

.method public getRtd()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/ds/daisi/entity/FileVersion;->rtd:I

    return v0
.end method

.method public getUi()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/ds/daisi/entity/FileVersion;->ui:I

    return v0
.end method

.method public setAtc(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/ds/daisi/entity/FileVersion;->atc:I

    return-void
.end method

.method public setMq(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/ds/daisi/entity/FileVersion;->mq:I

    return-void
.end method

.method public setProp(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/ds/daisi/entity/FileVersion;->prop:I

    return-void
.end method

.method public setRtd(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/ds/daisi/entity/FileVersion;->rtd:I

    return-void
.end method

.method public setUI(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/ds/daisi/entity/FileVersion;->ui:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 122
    iget p2, p0, Lcom/ds/daisi/entity/FileVersion;->atc:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget p2, p0, Lcom/ds/daisi/entity/FileVersion;->mq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget p2, p0, Lcom/ds/daisi/entity/FileVersion;->prop:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget p2, p0, Lcom/ds/daisi/entity/FileVersion;->ui:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget p2, p0, Lcom/ds/daisi/entity/FileVersion;->rtd:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

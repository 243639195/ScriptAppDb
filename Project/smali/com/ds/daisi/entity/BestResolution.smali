.class public Lcom/ds/daisi/entity/BestResolution;
.super Ljava/lang/Object;
.source "BestResolution.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ds/daisi/entity/BestResolution;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private X:I

.field private Y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Lcom/ds/daisi/entity/BestResolution$1;

    invoke-direct {v0}, Lcom/ds/daisi/entity/BestResolution$1;-><init>()V

    sput-object v0, Lcom/ds/daisi/entity/BestResolution;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/ds/daisi/entity/BestResolution;->X:I

    .line 41
    iput p2, p0, Lcom/ds/daisi/entity/BestResolution;->Y:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getX()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/ds/daisi/entity/BestResolution;->X:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/ds/daisi/entity/BestResolution;->Y:I

    return v0
.end method

.method public setX(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/ds/daisi/entity/BestResolution;->X:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/ds/daisi/entity/BestResolution;->Y:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/ds/daisi/entity/BestResolution;->X:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ds/daisi/entity/BestResolution;->Y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 81
    iget p2, p0, Lcom/ds/daisi/entity/BestResolution;->X:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget p2, p0, Lcom/ds/daisi/entity/BestResolution;->Y:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.class final Lcom/ds/daisi/entity/BestResolution$1;
.super Ljava/lang/Object;
.source "BestResolution.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/entity/BestResolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ds/daisi/entity/BestResolution;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ds/daisi/entity/BestResolution;
    .locals 2

    .line 94
    new-instance v0, Lcom/ds/daisi/entity/BestResolution;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/ds/daisi/entity/BestResolution;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lcom/ds/daisi/entity/BestResolution$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ds/daisi/entity/BestResolution;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/ds/daisi/entity/BestResolution;
    .locals 0

    .line 89
    new-array p1, p1, [Lcom/ds/daisi/entity/BestResolution;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lcom/ds/daisi/entity/BestResolution$1;->newArray(I)[Lcom/ds/daisi/entity/BestResolution;

    move-result-object p1

    return-object p1
.end method

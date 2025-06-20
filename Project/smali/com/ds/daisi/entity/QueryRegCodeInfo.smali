.class public Lcom/ds/daisi/entity/QueryRegCodeInfo;
.super Ljava/lang/Object;
.source "QueryRegCodeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ds/daisi/entity/QueryRegCodeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ClientTimestamp:J

.field public IsSuperposeConfirm:I

.field public ServerTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/ds/daisi/entity/QueryRegCodeInfo$1;

    invoke-direct {v0}, Lcom/ds/daisi/entity/QueryRegCodeInfo$1;-><init>()V

    sput-object v0, Lcom/ds/daisi/entity/QueryRegCodeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ds/daisi/entity/QueryRegCodeInfo;->IsSuperposeConfirm:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ds/daisi/entity/QueryRegCodeInfo;->ClientTimestamp:J

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ds/daisi/entity/QueryRegCodeInfo;->ServerTimestamp:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 54
    iget p2, p0, Lcom/ds/daisi/entity/QueryRegCodeInfo;->IsSuperposeConfirm:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-wide v0, p0, Lcom/ds/daisi/entity/QueryRegCodeInfo;->ClientTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 57
    iget-wide v0, p0, Lcom/ds/daisi/entity/QueryRegCodeInfo;->ServerTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

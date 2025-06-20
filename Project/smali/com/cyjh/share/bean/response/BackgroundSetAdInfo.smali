.class public Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;
.super Ljava/lang/Object;
.source "BackgroundSetAdInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public AdType:I

.field public Id:J

.field public ImageUrl:Ljava/lang/String;

.field public LinkUrl:Ljava/lang/String;

.field public OpenMethod:I

.field public Probability:D

.field public Sequence:I

.field public Title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo$1;

    invoke-direct {v0}, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo$1;-><init>()V

    sput-object v0, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->Title:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->AdType:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->Id:J

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->ImageUrl:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->LinkUrl:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->OpenMethod:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->Sequence:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->Probability:D

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

    .line 86
    iget-object p2, p0, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->Title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget p2, p0, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->AdType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-wide v0, p0, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->Id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 89
    iget-object p2, p0, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->ImageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->LinkUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget p2, p0, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->OpenMethod:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget p2, p0, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->Sequence:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-wide v0, p0, Lcom/cyjh/share/bean/response/BackgroundSetAdInfo;->Probability:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method

.class public Lcom/cyjh/share/bean/response/RecommendGameImageUrlInfo;
.super Ljava/lang/Object;
.source "RecommendGameImageUrlInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/share/bean/response/RecommendGameImageUrlInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Id:J

.field public ImageTitle:Ljava/lang/String;

.field public ImageUrl:Ljava/lang/String;

.field public Sequence:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/cyjh/share/bean/response/RecommendGameImageUrlInfo$1;

    invoke-direct {v0}, Lcom/cyjh/share/bean/response/RecommendGameImageUrlInfo$1;-><init>()V

    sput-object v0, Lcom/cyjh/share/bean/response/RecommendGameImageUrlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cyjh/share/bean/response/RecommendGameImageUrlInfo;->Id:J

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/RecommendGameImageUrlInfo;->ImageTitle:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/RecommendGameImageUrlInfo;->ImageUrl:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cyjh/share/bean/response/RecommendGameImageUrlInfo;->Sequence:I

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

    .line 31
    iget-wide v0, p0, Lcom/cyjh/share/bean/response/RecommendGameImageUrlInfo;->Id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 32
    iget-object p2, p0, Lcom/cyjh/share/bean/response/RecommendGameImageUrlInfo;->ImageTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lcom/cyjh/share/bean/response/RecommendGameImageUrlInfo;->ImageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget p2, p0, Lcom/cyjh/share/bean/response/RecommendGameImageUrlInfo;->Sequence:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

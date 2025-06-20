.class public Lcom/cyjh/share/bean/response/FlySettingInfo;
.super Ljava/lang/Object;
.source "FlySettingInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/share/bean/response/FlySettingInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Active:I

.field public AdType:I

.field public FlyKey:Ljava/lang/String;

.field public Probability:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/cyjh/share/bean/response/FlySettingInfo$1;

    invoke-direct {v0}, Lcom/cyjh/share/bean/response/FlySettingInfo$1;-><init>()V

    sput-object v0, Lcom/cyjh/share/bean/response/FlySettingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/share/bean/response/FlySettingInfo;->AdType:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/FlySettingInfo;->FlyKey:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/share/bean/response/FlySettingInfo;->Active:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/cyjh/share/bean/response/FlySettingInfo;->Probability:D

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

    .line 40
    iget p2, p0, Lcom/cyjh/share/bean/response/FlySettingInfo;->AdType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object p2, p0, Lcom/cyjh/share/bean/response/FlySettingInfo;->FlyKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget p2, p0, Lcom/cyjh/share/bean/response/FlySettingInfo;->Active:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-wide v0, p0, Lcom/cyjh/share/bean/response/FlySettingInfo;->Probability:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method

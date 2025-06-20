.class public Lcom/cyjh/share/bean/response/PhoneConfig;
.super Ljava/lang/Object;
.source "PhoneConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/share/bean/response/PhoneConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Active:I

.field private CloudPhoneType:I

.field private DisableMsg:Ljava/lang/String;

.field private ImageUrl:Ljava/lang/String;

.field private JudgeMode:I

.field private LinkUrl:Ljava/lang/String;

.field private Package:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/cyjh/share/bean/response/PhoneConfig$1;

    invoke-direct {v0}, Lcom/cyjh/share/bean/response/PhoneConfig$1;-><init>()V

    sput-object v0, Lcom/cyjh/share/bean/response/PhoneConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/share/bean/response/PhoneConfig;->Active:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/PhoneConfig;->DisableMsg:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/PhoneConfig;->Package:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/share/bean/response/PhoneConfig;->JudgeMode:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/share/bean/response/PhoneConfig;->CloudPhoneType:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/PhoneConfig;->ImageUrl:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/share/bean/response/PhoneConfig;->LinkUrl:Ljava/lang/String;

    return-void
.end method

.method public static getCREATOR()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/share/bean/response/PhoneConfig;",
            ">;"
        }
    .end annotation

    .line 120
    sget-object v0, Lcom/cyjh/share/bean/response/PhoneConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActive()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/cyjh/share/bean/response/PhoneConfig;->Active:I

    return v0
.end method

.method public getCloudPhoneType()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/cyjh/share/bean/response/PhoneConfig;->CloudPhoneType:I

    return v0
.end method

.method public getDisableMsg()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/cyjh/share/bean/response/PhoneConfig;->DisableMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/cyjh/share/bean/response/PhoneConfig;->ImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getJudgeMode()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/cyjh/share/bean/response/PhoneConfig;->JudgeMode:I

    return v0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/cyjh/share/bean/response/PhoneConfig;->LinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/cyjh/share/bean/response/PhoneConfig;->Package:Ljava/lang/String;

    return-object v0
.end method

.method public setActive(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/cyjh/share/bean/response/PhoneConfig;->Active:I

    return-void
.end method

.method public setCloudPhoneType(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/cyjh/share/bean/response/PhoneConfig;->CloudPhoneType:I

    return-void
.end method

.method public setDisableMsg(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/cyjh/share/bean/response/PhoneConfig;->DisableMsg:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/cyjh/share/bean/response/PhoneConfig;->ImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setJudgeMode(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/cyjh/share/bean/response/PhoneConfig;->JudgeMode:I

    return-void
.end method

.method public setLinkUrl(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/cyjh/share/bean/response/PhoneConfig;->LinkUrl:Ljava/lang/String;

    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/cyjh/share/bean/response/PhoneConfig;->Package:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 37
    iget p2, p0, Lcom/cyjh/share/bean/response/PhoneConfig;->Active:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-object p2, p0, Lcom/cyjh/share/bean/response/PhoneConfig;->DisableMsg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lcom/cyjh/share/bean/response/PhoneConfig;->Package:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget p2, p0, Lcom/cyjh/share/bean/response/PhoneConfig;->JudgeMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget p2, p0, Lcom/cyjh/share/bean/response/PhoneConfig;->CloudPhoneType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-object p2, p0, Lcom/cyjh/share/bean/response/PhoneConfig;->ImageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object p2, p0, Lcom/cyjh/share/bean/response/PhoneConfig;->LinkUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

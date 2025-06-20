.class public Lcom/cyjh/share/bean/response/DomainResult;
.super Ljava/lang/Object;
.source "DomainResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/share/bean/response/DomainResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private App2DomainName:Ljava/lang/String;

.field private App3DomainName:Ljava/lang/String;

.field private AppDomainName:Ljava/lang/String;

.field private PhoneConfig:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/share/bean/response/PhoneConfig;",
            ">;"
        }
    .end annotation
.end field

.field private RedFingerSwitch:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/cyjh/share/bean/response/DomainResult$1;

    invoke-direct {v0}, Lcom/cyjh/share/bean/response/DomainResult$1;-><init>()V

    sput-object v0, Lcom/cyjh/share/bean/response/DomainResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/DomainResult;->AppDomainName:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/DomainResult;->App2DomainName:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/DomainResult;->App3DomainName:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/share/bean/response/DomainResult;->RedFingerSwitch:I

    .line 30
    sget-object v0, Lcom/cyjh/share/bean/response/PhoneConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/share/bean/response/DomainResult;->PhoneConfig:Ljava/util/List;

    return-void
.end method

.method public static getCREATOR()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/share/bean/response/DomainResult;",
            ">;"
        }
    .end annotation

    .line 92
    sget-object v0, Lcom/cyjh/share/bean/response/DomainResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getApp2DomainName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/cyjh/share/bean/response/DomainResult;->App2DomainName:Ljava/lang/String;

    return-object v0
.end method

.method public getApp3DomainName()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/cyjh/share/bean/response/DomainResult;->App3DomainName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppDomainName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/cyjh/share/bean/response/DomainResult;->AppDomainName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneConfig()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cyjh/share/bean/response/PhoneConfig;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/cyjh/share/bean/response/DomainResult;->PhoneConfig:Ljava/util/List;

    return-object v0
.end method

.method public getRedFingerSwitch()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/cyjh/share/bean/response/DomainResult;->RedFingerSwitch:I

    return v0
.end method

.method public setApp2DomainName(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/cyjh/share/bean/response/DomainResult;->App2DomainName:Ljava/lang/String;

    return-void
.end method

.method public setApp3DomainName(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/cyjh/share/bean/response/DomainResult;->App3DomainName:Ljava/lang/String;

    return-void
.end method

.method public setAppDomainName(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/cyjh/share/bean/response/DomainResult;->AppDomainName:Ljava/lang/String;

    return-void
.end method

.method public setPhoneConfig(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cyjh/share/bean/response/PhoneConfig;",
            ">;)V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/cyjh/share/bean/response/DomainResult;->PhoneConfig:Ljava/util/List;

    return-void
.end method

.method public setRedFingerSwitch(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/cyjh/share/bean/response/DomainResult;->RedFingerSwitch:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 35
    iget-object p2, p0, Lcom/cyjh/share/bean/response/DomainResult;->AppDomainName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/cyjh/share/bean/response/DomainResult;->App2DomainName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object p2, p0, Lcom/cyjh/share/bean/response/DomainResult;->App3DomainName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget p2, p0, Lcom/cyjh/share/bean/response/DomainResult;->RedFingerSwitch:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-object p2, p0, Lcom/cyjh/share/bean/response/DomainResult;->PhoneConfig:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method

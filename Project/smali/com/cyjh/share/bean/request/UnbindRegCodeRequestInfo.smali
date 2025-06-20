.class public Lcom/cyjh/share/bean/request/UnbindRegCodeRequestInfo;
.super Lcom/cyjh/share/bean/request/BaseRequestValueInfo;
.source "UnbindRegCodeRequestInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/share/bean/request/UnbindRegCodeRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public RegCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/cyjh/share/bean/request/UnbindRegCodeRequestInfo$1;

    invoke-direct {v0}, Lcom/cyjh/share/bean/request/UnbindRegCodeRequestInfo$1;-><init>()V

    sput-object v0, Lcom/cyjh/share/bean/request/UnbindRegCodeRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;-><init>(Landroid/os/Parcel;)V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/share/bean/request/UnbindRegCodeRequestInfo;->RegCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;-><init>(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 21
    invoke-super {p0, p1, p2}, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 22
    iget-object p2, p0, Lcom/cyjh/share/bean/request/UnbindRegCodeRequestInfo;->RegCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

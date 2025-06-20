.class public Lcom/ds/daisi/entity/BindRegCodeResponse;
.super Ljava/lang/Object;
.source "BindRegCodeResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/entity/BindRegCodeResponse$RegCodeTimeInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ds/daisi/entity/BindRegCodeResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Code:I

.field public Data:Lcom/ds/daisi/entity/BindRegCodeResponse$RegCodeTimeInfo;

.field public Message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/ds/daisi/entity/BindRegCodeResponse$1;

    invoke-direct {v0}, Lcom/ds/daisi/entity/BindRegCodeResponse$1;-><init>()V

    sput-object v0, Lcom/ds/daisi/entity/BindRegCodeResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ds/daisi/entity/BindRegCodeResponse;->Code:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ds/daisi/entity/BindRegCodeResponse;->Message:Ljava/lang/String;

    .line 20
    const-class v0, Lcom/ds/daisi/entity/BindRegCodeResponse$RegCodeTimeInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ds/daisi/entity/BindRegCodeResponse$RegCodeTimeInfo;

    iput-object p1, p0, Lcom/ds/daisi/entity/BindRegCodeResponse;->Data:Lcom/ds/daisi/entity/BindRegCodeResponse$RegCodeTimeInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 42
    iget v0, p0, Lcom/ds/daisi/entity/BindRegCodeResponse;->Code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v0, p0, Lcom/ds/daisi/entity/BindRegCodeResponse;->Message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/ds/daisi/entity/BindRegCodeResponse;->Data:Lcom/ds/daisi/entity/BindRegCodeResponse$RegCodeTimeInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

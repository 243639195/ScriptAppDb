.class final Lcom/ds/daisi/entity/AccountUser$1;
.super Ljava/lang/Object;
.source "AccountUser.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/entity/AccountUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ds/daisi/entity/AccountUser;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ds/daisi/entity/AccountUser;
    .locals 1

    .line 54
    new-instance v0, Lcom/ds/daisi/entity/AccountUser;

    invoke-direct {v0, p1}, Lcom/ds/daisi/entity/AccountUser;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/ds/daisi/entity/AccountUser$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ds/daisi/entity/AccountUser;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/ds/daisi/entity/AccountUser;
    .locals 0

    .line 59
    new-array p1, p1, [Lcom/ds/daisi/entity/AccountUser;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/ds/daisi/entity/AccountUser$1;->newArray(I)[Lcom/ds/daisi/entity/AccountUser;

    move-result-object p1

    return-object p1
.end method

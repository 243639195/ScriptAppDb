.class final Lcom/cyjh/share/view/SlCustomInputLayout$SavedState$1;
.super Ljava/lang/Object;
.source "SlCustomInputLayout.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/share/view/SlCustomInputLayout$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/cyjh/share/view/SlCustomInputLayout$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/share/view/SlCustomInputLayout$SavedState;
    .locals 2

    .line 473
    new-instance v0, Lcom/cyjh/share/view/SlCustomInputLayout$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/cyjh/share/view/SlCustomInputLayout$SavedState;-><init>(Landroid/os/Parcel;Lcom/cyjh/share/view/SlCustomInputLayout$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 470
    invoke-virtual {p0, p1}, Lcom/cyjh/share/view/SlCustomInputLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/share/view/SlCustomInputLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/cyjh/share/view/SlCustomInputLayout$SavedState;
    .locals 0

    .line 478
    new-array p1, p1, [Lcom/cyjh/share/view/SlCustomInputLayout$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 470
    invoke-virtual {p0, p1}, Lcom/cyjh/share/view/SlCustomInputLayout$SavedState$1;->newArray(I)[Lcom/cyjh/share/view/SlCustomInputLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

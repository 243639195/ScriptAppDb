.class final Lcom/cyjh/share/view/ProcessButton$SavedState$1;
.super Ljava/lang/Object;
.source "ProcessButton.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/share/view/ProcessButton$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/cyjh/share/view/ProcessButton$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/share/view/ProcessButton$SavedState;
    .locals 2

    .line 253
    new-instance v0, Lcom/cyjh/share/view/ProcessButton$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/cyjh/share/view/ProcessButton$SavedState;-><init>(Landroid/os/Parcel;Lcom/cyjh/share/view/ProcessButton$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 249
    invoke-virtual {p0, p1}, Lcom/cyjh/share/view/ProcessButton$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/share/view/ProcessButton$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/cyjh/share/view/ProcessButton$SavedState;
    .locals 0

    .line 258
    new-array p1, p1, [Lcom/cyjh/share/view/ProcessButton$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 249
    invoke-virtual {p0, p1}, Lcom/cyjh/share/view/ProcessButton$SavedState$1;->newArray(I)[Lcom/cyjh/share/view/ProcessButton$SavedState;

    move-result-object p1

    return-object p1
.end method

.class public Lcom/cyjh/share/view/SlCustomInputLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SlCustomInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/share/view/SlCustomInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/share/view/SlCustomInputLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public saveString:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 470
    new-instance v0, Lcom/cyjh/share/view/SlCustomInputLayout$SavedState$1;

    invoke-direct {v0}, Lcom/cyjh/share/view/SlCustomInputLayout$SavedState$1;-><init>()V

    sput-object v0, Lcom/cyjh/share/view/SlCustomInputLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 466
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 467
    iget-object v0, p0, Lcom/cyjh/share/view/SlCustomInputLayout$SavedState;->saveString:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cyjh/share/view/SlCustomInputLayout$1;)V
    .locals 0

    .line 446
    invoke-direct {p0, p1}, Lcom/cyjh/share/view/SlCustomInputLayout$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 450
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

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

    .line 460
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 462
    iget-object p2, p0, Lcom/cyjh/share/view/SlCustomInputLayout$SavedState;->saveString:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method

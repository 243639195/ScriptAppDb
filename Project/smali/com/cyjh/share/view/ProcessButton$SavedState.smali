.class public Lcom/cyjh/share/view/ProcessButton$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ProcessButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/share/view/ProcessButton;
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
            "Lcom/cyjh/share/view/ProcessButton$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 249
    new-instance v0, Lcom/cyjh/share/view/ProcessButton$SavedState$1;

    invoke-direct {v0}, Lcom/cyjh/share/view/ProcessButton$SavedState$1;-><init>()V

    sput-object v0, Lcom/cyjh/share/view/ProcessButton$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 239
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cyjh/share/view/ProcessButton$SavedState;->mProgress:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cyjh/share/view/ProcessButton$1;)V
    .locals 0

    .line 230
    invoke-direct {p0, p1}, Lcom/cyjh/share/view/ProcessButton$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 235
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/cyjh/share/view/ProcessButton$SavedState;)I
    .locals 0

    .line 230
    iget p0, p0, Lcom/cyjh/share/view/ProcessButton$SavedState;->mProgress:I

    return p0
.end method

.method static synthetic access$002(Lcom/cyjh/share/view/ProcessButton$SavedState;I)I
    .locals 0

    .line 230
    iput p1, p0, Lcom/cyjh/share/view/ProcessButton$SavedState;->mProgress:I

    return p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 245
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 246
    iget p2, p0, Lcom/cyjh/share/view/ProcessButton$SavedState;->mProgress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

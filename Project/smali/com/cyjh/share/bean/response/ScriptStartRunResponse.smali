.class public Lcom/cyjh/share/bean/response/ScriptStartRunResponse;
.super Ljava/lang/Object;
.source "ScriptStartRunResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/share/bean/response/ScriptStartRunResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static sClientTime:J


# instance fields
.field public Code:I

.field public Data:Lcom/cyjh/share/bean/response/ScriptStartRunInfo;

.field public Message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/cyjh/share/bean/response/ScriptStartRunResponse$1;

    invoke-direct {v0}, Lcom/cyjh/share/bean/response/ScriptStartRunResponse$1;-><init>()V

    sput-object v0, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;->Code:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;->Message:Ljava/lang/String;

    .line 22
    const-class v0, Lcom/cyjh/share/bean/response/ScriptStartRunInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cyjh/share/bean/response/ScriptStartRunInfo;

    iput-object p1, p0, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;->Data:Lcom/cyjh/share/bean/response/ScriptStartRunInfo;

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

    .line 27
    iget v0, p0, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;->Code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget-object v0, p0, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;->Message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/cyjh/share/bean/response/ScriptStartRunResponse;->Data:Lcom/cyjh/share/bean/response/ScriptStartRunInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

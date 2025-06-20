.class public Lcom/cyjh/share/bean/request/EngineParams;
.super Lcom/cyjh/share/bean/request/BaseRequestValueInfo;
.source "EngineParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/share/bean/request/EngineParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public BaseURL:Ljava/lang/String;

.field public PackageName:Ljava/lang/String;

.field public PayAppId:Ljava/lang/String;

.field public ScriptType:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/cyjh/share/bean/request/EngineParams$1;

    invoke-direct {v0}, Lcom/cyjh/share/bean/request/EngineParams$1;-><init>()V

    sput-object v0, Lcom/cyjh/share/bean/request/EngineParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;-><init>(Landroid/os/Parcel;)V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/request/EngineParams;->PackageName:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/request/EngineParams;->BaseURL:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/share/bean/request/EngineParams;->PayAppId:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/cyjh/share/bean/request/EngineParams;->ScriptType:Z

    return-void
.end method

.method public constructor <init>(Lcom/cyjh/share/bean/request/BaseRequestValueInfo;)V
    .locals 0

    .line 19
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

    .line 35
    invoke-super {p0, p1, p2}, Lcom/cyjh/share/bean/request/BaseRequestValueInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 36
    iget-object p2, p0, Lcom/cyjh/share/bean/request/EngineParams;->PackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object p2, p0, Lcom/cyjh/share/bean/request/EngineParams;->BaseURL:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object p2, p0, Lcom/cyjh/share/bean/request/EngineParams;->PayAppId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-boolean p2, p0, Lcom/cyjh/share/bean/request/EngineParams;->ScriptType:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method

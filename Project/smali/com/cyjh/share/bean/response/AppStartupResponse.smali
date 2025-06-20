.class public Lcom/cyjh/share/bean/response/AppStartupResponse;
.super Ljava/lang/Object;
.source "AppStartupResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/share/bean/response/AppStartupResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public AppInfo:Lcom/cyjh/share/bean/response/AppRelatedInfo;

.field public AuthorInfo:Lcom/cyjh/share/bean/response/AuthorRelatedInfo;

.field public ClientTimestamp:J

.field public ServerTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/cyjh/share/bean/response/AppStartupResponse$1;

    invoke-direct {v0}, Lcom/cyjh/share/bean/response/AppStartupResponse$1;-><init>()V

    sput-object v0, Lcom/cyjh/share/bean/response/AppStartupResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cyjh/share/bean/response/AppStartupResponse;->ClientTimestamp:J

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cyjh/share/bean/response/AppStartupResponse;->ServerTimestamp:J

    .line 21
    const-class v0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cyjh/share/bean/response/AuthorRelatedInfo;

    iput-object v0, p0, Lcom/cyjh/share/bean/response/AppStartupResponse;->AuthorInfo:Lcom/cyjh/share/bean/response/AuthorRelatedInfo;

    .line 22
    const-class v0, Lcom/cyjh/share/bean/response/AppRelatedInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cyjh/share/bean/response/AppRelatedInfo;

    iput-object p1, p0, Lcom/cyjh/share/bean/response/AppStartupResponse;->AppInfo:Lcom/cyjh/share/bean/response/AppRelatedInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/cyjh/share/bean/response/AppStartupResponse;->ClientTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 45
    iget-wide v0, p0, Lcom/cyjh/share/bean/response/AppStartupResponse;->ServerTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 46
    iget-object v0, p0, Lcom/cyjh/share/bean/response/AppStartupResponse;->AuthorInfo:Lcom/cyjh/share/bean/response/AuthorRelatedInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 47
    iget-object v0, p0, Lcom/cyjh/share/bean/response/AppStartupResponse;->AppInfo:Lcom/cyjh/share/bean/response/AppRelatedInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

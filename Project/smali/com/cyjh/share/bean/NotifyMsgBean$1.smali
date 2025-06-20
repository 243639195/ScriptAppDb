.class final Lcom/cyjh/share/bean/NotifyMsgBean$1;
.super Ljava/lang/Object;
.source "NotifyMsgBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/share/bean/NotifyMsgBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/cyjh/share/bean/NotifyMsgBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/share/bean/NotifyMsgBean;
    .locals 1

    .line 43
    new-instance v0, Lcom/cyjh/share/bean/NotifyMsgBean;

    invoke-direct {v0, p1}, Lcom/cyjh/share/bean/NotifyMsgBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/cyjh/share/bean/NotifyMsgBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/share/bean/NotifyMsgBean;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/cyjh/share/bean/NotifyMsgBean;
    .locals 0

    .line 48
    new-array p1, p1, [Lcom/cyjh/share/bean/NotifyMsgBean;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/cyjh/share/bean/NotifyMsgBean$1;->newArray(I)[Lcom/cyjh/share/bean/NotifyMsgBean;

    move-result-object p1

    return-object p1
.end method

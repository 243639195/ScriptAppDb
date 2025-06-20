.class public abstract Lcom/king/sdk/f;
.super Landroid/os/Binder;
.source "IBA2159EDE8B5B1B06F70D35A9630B683.java"

# interfaces
.implements Lcom/king/sdk/e;


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_0

    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "com.king.sdk.IBA2159EDE8B5B1B06F70D35A9630B683"

    .line 42
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_1
    const-string p1, "com.king.sdk.IBA2159EDE8B5B1B06F70D35A9630B683"

    .line 47
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/king/sdk/c;->a(Landroid/os/IBinder;)Lcom/king/sdk/b;

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method

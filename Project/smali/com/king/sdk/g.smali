.class public abstract Lcom/king/sdk/g;
.super Landroid/os/Binder;
.source "IDFEE16B42C8B2890D8FF2860AF5562B1.java"

# interfaces
.implements Lcom/king/sdk/IDFEE16B42C8B2890D8FF2860AF5562B1;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.king.sdk.IDFEE16B42C8B2890D8FF2860AF5562B1"

.field static final TRANSACTION_on088201B3F7D8B2CA1DF5D6AD12CB0C1F:I = 0x4

.field static final TRANSACTION_on0D923A4B87763BA40F853B570EF75D94:I = 0x6

.field static final TRANSACTION_on19C45B0F9674B131C4BF67981B1CC455:I = 0x7

.field static final TRANSACTION_on1DC022CD78BE5580705D060873AAEB16:I = 0x9

.field static final TRANSACTION_on369D7B24CF0870337D9962B9BB11E924:I = 0x3

.field static final TRANSACTION_on46FE18C9ADFE18C2BC0D43B003F41A66:I = 0x2

.field static final TRANSACTION_on96EC25C9716D6EFFB8DD7648F16E4FA2:I = 0x1

.field static final TRANSACTION_onACF4B25418AE4E2D8376A85BD6F0FC17:I = 0x8

.field static final TRANSACTION_onB9504A9B1263E0D14DFE18C2167427BC:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.king.sdk.IDFEE16B42C8B2890D8FF2860AF5562B1"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/king/sdk/g;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/king/sdk/IDFEE16B42C8B2890D8FF2860AF5562B1;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.king.sdk.IDFEE16B42C8B2890D8FF2860AF5562B1"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/king/sdk/IDFEE16B42C8B2890D8FF2860AF5562B1;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/king/sdk/IDFEE16B42C8B2890D8FF2860AF5562B1;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/king/sdk/h;

    invoke-direct {v0, p0}, Lcom/king/sdk/h;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    const-string p1, "com.king.sdk.IDFEE16B42C8B2890D8FF2860AF5562B1"

    .line 146
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 149
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    .line 154
    :cond_0
    invoke-virtual {p0, v0}, Lcom/king/sdk/g;->on1DC022CD78BE5580705D060873AAEB16(Landroid/content/Intent;)Z

    move-result p1

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    invoke-virtual {v0, p3, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    :pswitch_1
    const-string p1, "com.king.sdk.IDFEE16B42C8B2890D8FF2860AF5562B1"

    .line 135
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/king/sdk/g;->onACF4B25418AE4E2D8376A85BD6F0FC17(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2
    const-string p1, "com.king.sdk.IDFEE16B42C8B2890D8FF2860AF5562B1"

    .line 124
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/king/sdk/g;->on19C45B0F9674B131C4BF67981B1CC455(Ljava/lang/String;I)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3
    const-string p1, "com.king.sdk.IDFEE16B42C8B2890D8FF2860AF5562B1"

    .line 113
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/king/sdk/g;->on0D923A4B87763BA40F853B570EF75D94(II)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4
    const-string p1, "com.king.sdk.IDFEE16B42C8B2890D8FF2860AF5562B1"

    .line 98
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 107
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/king/sdk/g;->onB9504A9B1263E0D14DFE18C2167427BC(Ljava/lang/String;Ljava/lang/String;II)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_5
    const-string p1, "com.king.sdk.IDFEE16B42C8B2890D8FF2860AF5562B1"

    .line 87
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/king/sdk/g;->on088201B3F7D8B2CA1DF5D6AD12CB0C1F(Ljava/lang/String;I)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_6
    const-string p1, "com.king.sdk.IDFEE16B42C8B2890D8FF2860AF5562B1"

    .line 80
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/king/sdk/g;->on369D7B24CF0870337D9962B9BB11E924()V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_7
    const-string p1, "com.king.sdk.IDFEE16B42C8B2890D8FF2860AF5562B1"

    .line 69
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    .line 74
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/king/sdk/g;->on46FE18C9ADFE18C2BC0D43B003F41A66(Ljava/lang/String;Z)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_8
    const-string p1, "com.king.sdk.IDFEE16B42C8B2890D8FF2860AF5562B1"

    .line 47
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 50
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    .line 55
    :cond_3
    invoke-virtual {p0, v0}, Lcom/king/sdk/g;->on96EC25C9716D6EFFB8DD7648F16E4FA2(Landroid/content/Intent;)Z

    move-result p1

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v0, :cond_4

    .line 59
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {v0, p3, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 63
    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    :cond_5
    const-string p1, "com.king.sdk.IDFEE16B42C8B2890D8FF2860AF5562B1"

    .line 42
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

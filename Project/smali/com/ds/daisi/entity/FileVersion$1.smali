.class final Lcom/ds/daisi/entity/FileVersion$1;
.super Ljava/lang/Object;
.source "FileVersion.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/entity/FileVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ds/daisi/entity/FileVersion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ds/daisi/entity/FileVersion;
    .locals 7

    .line 138
    new-instance v6, Lcom/ds/daisi/entity/FileVersion;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/ds/daisi/entity/FileVersion;-><init>(IIIII)V

    return-object v6
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lcom/ds/daisi/entity/FileVersion$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ds/daisi/entity/FileVersion;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/ds/daisi/entity/FileVersion;
    .locals 0

    .line 133
    new-array p1, p1, [Lcom/ds/daisi/entity/FileVersion;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lcom/ds/daisi/entity/FileVersion$1;->newArray(I)[Lcom/ds/daisi/entity/FileVersion;

    move-result-object p1

    return-object p1
.end method

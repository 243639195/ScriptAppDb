.class public final Lcom/cyjh/mobileanjian/ipc/utils/c;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 2

    .line 12
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 13
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 14
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result p0

    .line 16
    invoke-static {v0, v1, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

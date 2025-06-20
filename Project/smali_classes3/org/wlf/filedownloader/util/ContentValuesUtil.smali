.class public Lorg/wlf/filedownloader/util/ContentValuesUtil;
.super Ljava/lang/Object;
.source "ContentValuesUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEmpty(Landroid/content/ContentValues;)Z
    .locals 1
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 21
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 24
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

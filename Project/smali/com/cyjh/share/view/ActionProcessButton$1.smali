.class synthetic Lcom/cyjh/share/view/ActionProcessButton$1;
.super Ljava/lang/Object;
.source "ActionProcessButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/share/view/ActionProcessButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$cyjh$share$view$ActionProcessButton$Mode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 102
    invoke-static {}, Lcom/cyjh/share/view/ActionProcessButton$Mode;->values()[Lcom/cyjh/share/view/ActionProcessButton$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/cyjh/share/view/ActionProcessButton$1;->$SwitchMap$com$cyjh$share$view$ActionProcessButton$Mode:[I

    :try_start_0
    sget-object v0, Lcom/cyjh/share/view/ActionProcessButton$1;->$SwitchMap$com$cyjh$share$view$ActionProcessButton$Mode:[I

    sget-object v1, Lcom/cyjh/share/view/ActionProcessButton$Mode;->ENDLESS:Lcom/cyjh/share/view/ActionProcessButton$Mode;

    invoke-virtual {v1}, Lcom/cyjh/share/view/ActionProcessButton$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/cyjh/share/view/ActionProcessButton$1;->$SwitchMap$com$cyjh$share$view$ActionProcessButton$Mode:[I

    sget-object v1, Lcom/cyjh/share/view/ActionProcessButton$Mode;->PROGRESS:Lcom/cyjh/share/view/ActionProcessButton$Mode;

    invoke-virtual {v1}, Lcom/cyjh/share/view/ActionProcessButton$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.class public final enum Lcom/cyjh/share/view/ActionProcessButton$Mode;
.super Ljava/lang/Enum;
.source "ActionProcessButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/share/view/ActionProcessButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cyjh/share/view/ActionProcessButton$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cyjh/share/view/ActionProcessButton$Mode;

.field public static final enum ENDLESS:Lcom/cyjh/share/view/ActionProcessButton$Mode;

.field public static final enum PROGRESS:Lcom/cyjh/share/view/ActionProcessButton$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 56
    new-instance v0, Lcom/cyjh/share/view/ActionProcessButton$Mode;

    const-string v1, "PROGRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cyjh/share/view/ActionProcessButton$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyjh/share/view/ActionProcessButton$Mode;->PROGRESS:Lcom/cyjh/share/view/ActionProcessButton$Mode;

    new-instance v0, Lcom/cyjh/share/view/ActionProcessButton$Mode;

    const-string v1, "ENDLESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/cyjh/share/view/ActionProcessButton$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyjh/share/view/ActionProcessButton$Mode;->ENDLESS:Lcom/cyjh/share/view/ActionProcessButton$Mode;

    const/4 v0, 0x2

    .line 55
    new-array v0, v0, [Lcom/cyjh/share/view/ActionProcessButton$Mode;

    sget-object v1, Lcom/cyjh/share/view/ActionProcessButton$Mode;->PROGRESS:Lcom/cyjh/share/view/ActionProcessButton$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cyjh/share/view/ActionProcessButton$Mode;->ENDLESS:Lcom/cyjh/share/view/ActionProcessButton$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/cyjh/share/view/ActionProcessButton$Mode;->$VALUES:[Lcom/cyjh/share/view/ActionProcessButton$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cyjh/share/view/ActionProcessButton$Mode;
    .locals 1

    .line 55
    const-class v0, Lcom/cyjh/share/view/ActionProcessButton$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cyjh/share/view/ActionProcessButton$Mode;

    return-object p0
.end method

.method public static values()[Lcom/cyjh/share/view/ActionProcessButton$Mode;
    .locals 1

    .line 55
    sget-object v0, Lcom/cyjh/share/view/ActionProcessButton$Mode;->$VALUES:[Lcom/cyjh/share/view/ActionProcessButton$Mode;

    invoke-virtual {v0}, [Lcom/cyjh/share/view/ActionProcessButton$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyjh/share/view/ActionProcessButton$Mode;

    return-object v0
.end method

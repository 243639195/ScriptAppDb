.class public final enum Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;
.super Ljava/lang/Enum;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/feedback/lib/utils/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;

.field public static final enum FIFO:Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;

.field public static final enum FILO:Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 59
    new-instance v0, Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;

    const-string v1, "FIFO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;->FIFO:Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;

    .line 63
    new-instance v0, Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;

    const-string v1, "FILO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;->FILO:Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;

    const/4 v0, 0x2

    .line 55
    new-array v0, v0, [Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;

    sget-object v1, Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;->FIFO:Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;->FILO:Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;->$VALUES:[Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;
    .locals 1

    .line 55
    const-class v0, Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;

    return-object p0
.end method

.method public static values()[Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;
    .locals 1

    .line 55
    sget-object v0, Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;->$VALUES:[Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;

    invoke-virtual {v0}, [Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyjh/feedback/lib/utils/ImageLoader$Type;

    return-object v0
.end method

.class final enum Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;
.super Ljava/lang/Enum;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/zbar/decode/CaptureActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

.field public static final enum DONE:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

.field public static final enum PREVIEW:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

.field public static final enum SUCCESS:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 18
    new-instance v0, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;->PREVIEW:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

    new-instance v0, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

    const-string v1, "SUCCESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;->SUCCESS:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

    new-instance v0, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

    const-string v1, "DONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;->DONE:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

    const/4 v0, 0x3

    .line 17
    new-array v0, v0, [Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

    sget-object v1, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;->PREVIEW:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;->SUCCESS:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;->DONE:Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;->$VALUES:[Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;
    .locals 1

    .line 17
    const-class v0, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

    return-object p0
.end method

.method public static values()[Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;
    .locals 1

    .line 17
    sget-object v0, Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;->$VALUES:[Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

    invoke-virtual {v0}, [Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ds/daisi/zbar/decode/CaptureActivityHandler$State;

    return-object v0
.end method

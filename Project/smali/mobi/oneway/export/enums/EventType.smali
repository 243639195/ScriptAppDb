.class public final enum Lmobi/oneway/export/enums/EventType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmobi/oneway/export/enums/EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobi/oneway/export/enums/EventType;

.field public static final enum adFail:Lmobi/oneway/export/enums/EventType;

.field public static final enum click:Lmobi/oneway/export/enums/EventType;

.field public static final enum close:Lmobi/oneway/export/enums/EventType;

.field public static final enum end:Lmobi/oneway/export/enums/EventType;

.field public static final enum ready:Lmobi/oneway/export/enums/EventType;

.field public static final enum reward:Lmobi/oneway/export/enums/EventType;

.field public static final enum show:Lmobi/oneway/export/enums/EventType;

.field public static final enum skip:Lmobi/oneway/export/enums/EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lmobi/oneway/export/enums/EventType;

    const-string v1, "ready"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmobi/oneway/export/enums/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/EventType;->ready:Lmobi/oneway/export/enums/EventType;

    new-instance v0, Lmobi/oneway/export/enums/EventType;

    const-string v1, "show"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmobi/oneway/export/enums/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/EventType;->show:Lmobi/oneway/export/enums/EventType;

    new-instance v0, Lmobi/oneway/export/enums/EventType;

    const-string v1, "end"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmobi/oneway/export/enums/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/EventType;->end:Lmobi/oneway/export/enums/EventType;

    new-instance v0, Lmobi/oneway/export/enums/EventType;

    const-string v1, "click"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lmobi/oneway/export/enums/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/EventType;->click:Lmobi/oneway/export/enums/EventType;

    new-instance v0, Lmobi/oneway/export/enums/EventType;

    const-string v1, "close"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lmobi/oneway/export/enums/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/EventType;->close:Lmobi/oneway/export/enums/EventType;

    new-instance v0, Lmobi/oneway/export/enums/EventType;

    const-string v1, "adFail"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lmobi/oneway/export/enums/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/EventType;->adFail:Lmobi/oneway/export/enums/EventType;

    new-instance v0, Lmobi/oneway/export/enums/EventType;

    const-string v1, "reward"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lmobi/oneway/export/enums/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/EventType;->reward:Lmobi/oneway/export/enums/EventType;

    new-instance v0, Lmobi/oneway/export/enums/EventType;

    const-string v1, "skip"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lmobi/oneway/export/enums/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/enums/EventType;->skip:Lmobi/oneway/export/enums/EventType;

    const/16 v0, 0x8

    new-array v0, v0, [Lmobi/oneway/export/enums/EventType;

    sget-object v1, Lmobi/oneway/export/enums/EventType;->ready:Lmobi/oneway/export/enums/EventType;

    aput-object v1, v0, v2

    sget-object v1, Lmobi/oneway/export/enums/EventType;->show:Lmobi/oneway/export/enums/EventType;

    aput-object v1, v0, v3

    sget-object v1, Lmobi/oneway/export/enums/EventType;->end:Lmobi/oneway/export/enums/EventType;

    aput-object v1, v0, v4

    sget-object v1, Lmobi/oneway/export/enums/EventType;->click:Lmobi/oneway/export/enums/EventType;

    aput-object v1, v0, v5

    sget-object v1, Lmobi/oneway/export/enums/EventType;->close:Lmobi/oneway/export/enums/EventType;

    aput-object v1, v0, v6

    sget-object v1, Lmobi/oneway/export/enums/EventType;->adFail:Lmobi/oneway/export/enums/EventType;

    aput-object v1, v0, v7

    sget-object v1, Lmobi/oneway/export/enums/EventType;->reward:Lmobi/oneway/export/enums/EventType;

    aput-object v1, v0, v8

    sget-object v1, Lmobi/oneway/export/enums/EventType;->skip:Lmobi/oneway/export/enums/EventType;

    aput-object v1, v0, v9

    sput-object v0, Lmobi/oneway/export/enums/EventType;->$VALUES:[Lmobi/oneway/export/enums/EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmobi/oneway/export/enums/EventType;
    .locals 1

    const-class v0, Lmobi/oneway/export/enums/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmobi/oneway/export/enums/EventType;

    return-object p0
.end method

.method public static values()[Lmobi/oneway/export/enums/EventType;
    .locals 1

    sget-object v0, Lmobi/oneway/export/enums/EventType;->$VALUES:[Lmobi/oneway/export/enums/EventType;

    invoke-virtual {v0}, [Lmobi/oneway/export/enums/EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobi/oneway/export/enums/EventType;

    return-object v0
.end method

.class public final enum Lcom/iflytek/voiceads/utils/a$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/voiceads/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/voiceads/utils/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/iflytek/voiceads/utils/a$b;

.field public static final enum b:Lcom/iflytek/voiceads/utils/a$b;

.field public static final enum c:Lcom/iflytek/voiceads/utils/a$b;

.field public static final enum d:Lcom/iflytek/voiceads/utils/a$b;

.field private static final synthetic e:[Lcom/iflytek/voiceads/utils/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/iflytek/voiceads/utils/a$b;

    const-string v1, "init"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/voiceads/utils/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/voiceads/utils/a$b;->a:Lcom/iflytek/voiceads/utils/a$b;

    new-instance v0, Lcom/iflytek/voiceads/utils/a$b;

    const-string v1, "start"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/voiceads/utils/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/voiceads/utils/a$b;->b:Lcom/iflytek/voiceads/utils/a$b;

    new-instance v0, Lcom/iflytek/voiceads/utils/a$b;

    const-string v1, "timeout"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/voiceads/utils/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/voiceads/utils/a$b;->c:Lcom/iflytek/voiceads/utils/a$b;

    new-instance v0, Lcom/iflytek/voiceads/utils/a$b;

    const-string v1, "success"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/voiceads/utils/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/voiceads/utils/a$b;->d:Lcom/iflytek/voiceads/utils/a$b;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iflytek/voiceads/utils/a$b;

    sget-object v1, Lcom/iflytek/voiceads/utils/a$b;->a:Lcom/iflytek/voiceads/utils/a$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/voiceads/utils/a$b;->b:Lcom/iflytek/voiceads/utils/a$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/voiceads/utils/a$b;->c:Lcom/iflytek/voiceads/utils/a$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/voiceads/utils/a$b;->d:Lcom/iflytek/voiceads/utils/a$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/voiceads/utils/a$b;->e:[Lcom/iflytek/voiceads/utils/a$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/voiceads/utils/a$b;
    .locals 1

    const-class v0, Lcom/iflytek/voiceads/utils/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/voiceads/utils/a$b;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/voiceads/utils/a$b;
    .locals 1

    sget-object v0, Lcom/iflytek/voiceads/utils/a$b;->e:[Lcom/iflytek/voiceads/utils/a$b;

    invoke-virtual {v0}, [Lcom/iflytek/voiceads/utils/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/voiceads/utils/a$b;

    return-object v0
.end method

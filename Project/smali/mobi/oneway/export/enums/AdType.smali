.class public final enum Lmobi/oneway/export/enums/AdType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmobi/oneway/export/enums/AdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmobi/oneway/export/enums/AdType;

.field public static final enum banner:Lmobi/oneway/export/enums/AdType;

.field public static final enum feed:Lmobi/oneway/export/enums/AdType;

.field public static final enum interactive:Lmobi/oneway/export/enums/AdType;

.field public static final enum interstitial:Lmobi/oneway/export/enums/AdType;

.field public static final enum interstitialimage:Lmobi/oneway/export/enums/AdType;

.field public static final enum recommend:Lmobi/oneway/export/enums/AdType;

.field public static final enum rewarded:Lmobi/oneway/export/enums/AdType;

.field public static final enum splash:Lmobi/oneway/export/enums/AdType;

.field public static final enum unknown:Lmobi/oneway/export/enums/AdType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lmobi/oneway/export/enums/AdType;

    const-string v1, "unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lmobi/oneway/export/enums/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmobi/oneway/export/enums/AdType;->unknown:Lmobi/oneway/export/enums/AdType;

    new-instance v0, Lmobi/oneway/export/enums/AdType;

    const-string v1, "rewarded"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lmobi/oneway/export/enums/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmobi/oneway/export/enums/AdType;->rewarded:Lmobi/oneway/export/enums/AdType;

    new-instance v0, Lmobi/oneway/export/enums/AdType;

    const-string v1, "feed"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lmobi/oneway/export/enums/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmobi/oneway/export/enums/AdType;->feed:Lmobi/oneway/export/enums/AdType;

    new-instance v0, Lmobi/oneway/export/enums/AdType;

    const-string v1, "interstitial"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lmobi/oneway/export/enums/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmobi/oneway/export/enums/AdType;->interstitial:Lmobi/oneway/export/enums/AdType;

    new-instance v0, Lmobi/oneway/export/enums/AdType;

    const-string v1, "banner"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lmobi/oneway/export/enums/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmobi/oneway/export/enums/AdType;->banner:Lmobi/oneway/export/enums/AdType;

    new-instance v0, Lmobi/oneway/export/enums/AdType;

    const-string v1, "recommend"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lmobi/oneway/export/enums/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmobi/oneway/export/enums/AdType;->recommend:Lmobi/oneway/export/enums/AdType;

    new-instance v0, Lmobi/oneway/export/enums/AdType;

    const-string v1, "interstitialimage"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lmobi/oneway/export/enums/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmobi/oneway/export/enums/AdType;->interstitialimage:Lmobi/oneway/export/enums/AdType;

    new-instance v0, Lmobi/oneway/export/enums/AdType;

    const-string v1, "splash"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lmobi/oneway/export/enums/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmobi/oneway/export/enums/AdType;->splash:Lmobi/oneway/export/enums/AdType;

    new-instance v0, Lmobi/oneway/export/enums/AdType;

    const-string v1, "interactive"

    const/16 v10, 0x8

    const/16 v11, 0xb

    invoke-direct {v0, v1, v10, v11}, Lmobi/oneway/export/enums/AdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmobi/oneway/export/enums/AdType;->interactive:Lmobi/oneway/export/enums/AdType;

    const/16 v0, 0x9

    new-array v0, v0, [Lmobi/oneway/export/enums/AdType;

    sget-object v1, Lmobi/oneway/export/enums/AdType;->unknown:Lmobi/oneway/export/enums/AdType;

    aput-object v1, v0, v2

    sget-object v1, Lmobi/oneway/export/enums/AdType;->rewarded:Lmobi/oneway/export/enums/AdType;

    aput-object v1, v0, v3

    sget-object v1, Lmobi/oneway/export/enums/AdType;->feed:Lmobi/oneway/export/enums/AdType;

    aput-object v1, v0, v4

    sget-object v1, Lmobi/oneway/export/enums/AdType;->interstitial:Lmobi/oneway/export/enums/AdType;

    aput-object v1, v0, v5

    sget-object v1, Lmobi/oneway/export/enums/AdType;->banner:Lmobi/oneway/export/enums/AdType;

    aput-object v1, v0, v6

    sget-object v1, Lmobi/oneway/export/enums/AdType;->recommend:Lmobi/oneway/export/enums/AdType;

    aput-object v1, v0, v7

    sget-object v1, Lmobi/oneway/export/enums/AdType;->interstitialimage:Lmobi/oneway/export/enums/AdType;

    aput-object v1, v0, v8

    sget-object v1, Lmobi/oneway/export/enums/AdType;->splash:Lmobi/oneway/export/enums/AdType;

    aput-object v1, v0, v9

    sget-object v1, Lmobi/oneway/export/enums/AdType;->interactive:Lmobi/oneway/export/enums/AdType;

    aput-object v1, v0, v10

    sput-object v0, Lmobi/oneway/export/enums/AdType;->$VALUES:[Lmobi/oneway/export/enums/AdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lmobi/oneway/export/enums/AdType;->value:I

    return-void
.end method

.method public static valueOf(I)Lmobi/oneway/export/enums/AdType;
    .locals 5

    invoke-static {}, Lmobi/oneway/export/enums/AdType;->values()[Lmobi/oneway/export/enums/AdType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lmobi/oneway/export/enums/AdType;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lmobi/oneway/export/enums/AdType;->unknown:Lmobi/oneway/export/enums/AdType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmobi/oneway/export/enums/AdType;
    .locals 1

    const-class v0, Lmobi/oneway/export/enums/AdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmobi/oneway/export/enums/AdType;

    return-object p0
.end method

.method public static values()[Lmobi/oneway/export/enums/AdType;
    .locals 1

    sget-object v0, Lmobi/oneway/export/enums/AdType;->$VALUES:[Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v0}, [Lmobi/oneway/export/enums/AdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobi/oneway/export/enums/AdType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lmobi/oneway/export/enums/AdType;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()I
    .locals 1

    iget v0, p0, Lmobi/oneway/export/enums/AdType;->value:I

    return v0
.end method

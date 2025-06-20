.class public final enum Lmobi/oneway/export/b/a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/oneway/export/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmobi/oneway/export/b/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lmobi/oneway/export/b/a$a;

.field public static final enum b:Lmobi/oneway/export/b/a$a;

.field private static final synthetic c:[Lmobi/oneway/export/b/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lmobi/oneway/export/b/a$a;

    const-string v1, "TYPE_REQUEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmobi/oneway/export/b/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/b/a$a;->a:Lmobi/oneway/export/b/a$a;

    new-instance v0, Lmobi/oneway/export/b/a$a;

    const-string v1, "TYPE_SHOW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmobi/oneway/export/b/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/b/a$a;->b:Lmobi/oneway/export/b/a$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lmobi/oneway/export/b/a$a;

    sget-object v1, Lmobi/oneway/export/b/a$a;->a:Lmobi/oneway/export/b/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lmobi/oneway/export/b/a$a;->b:Lmobi/oneway/export/b/a$a;

    aput-object v1, v0, v3

    sput-object v0, Lmobi/oneway/export/b/a$a;->c:[Lmobi/oneway/export/b/a$a;

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

.method public static valueOf(Ljava/lang/String;)Lmobi/oneway/export/b/a$a;
    .locals 1

    const-class v0, Lmobi/oneway/export/b/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmobi/oneway/export/b/a$a;

    return-object p0
.end method

.method public static values()[Lmobi/oneway/export/b/a$a;
    .locals 1

    sget-object v0, Lmobi/oneway/export/b/a$a;->c:[Lmobi/oneway/export/b/a$a;

    invoke-virtual {v0}, [Lmobi/oneway/export/b/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobi/oneway/export/b/a$a;

    return-object v0
.end method

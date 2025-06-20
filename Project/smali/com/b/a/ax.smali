.class public final enum Lcom/b/a/ax;
.super Ljava/lang/Enum;
.source "TlsVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/b/a/ax;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/b/a/ax;

.field public static final enum b:Lcom/b/a/ax;

.field public static final enum c:Lcom/b/a/ax;

.field public static final enum d:Lcom/b/a/ax;

.field public static final enum e:Lcom/b/a/ax;

.field private static final synthetic g:[Lcom/b/a/ax;


# instance fields
.field final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 23
    new-instance v0, Lcom/b/a/ax;

    const-string v1, "TLS_1_3"

    const-string v2, "TLSv1.3"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/b/a/ax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/b/a/ax;->a:Lcom/b/a/ax;

    .line 24
    new-instance v0, Lcom/b/a/ax;

    const-string v1, "TLS_1_2"

    const-string v2, "TLSv1.2"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/b/a/ax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/b/a/ax;->b:Lcom/b/a/ax;

    .line 25
    new-instance v0, Lcom/b/a/ax;

    const-string v1, "TLS_1_1"

    const-string v2, "TLSv1.1"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/b/a/ax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/b/a/ax;->c:Lcom/b/a/ax;

    .line 26
    new-instance v0, Lcom/b/a/ax;

    const-string v1, "TLS_1_0"

    const-string v2, "TLSv1"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/b/a/ax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/b/a/ax;->d:Lcom/b/a/ax;

    .line 27
    new-instance v0, Lcom/b/a/ax;

    const-string v1, "SSL_3_0"

    const-string v2, "SSLv3"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/b/a/ax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/b/a/ax;->e:Lcom/b/a/ax;

    const/4 v0, 0x5

    .line 22
    new-array v0, v0, [Lcom/b/a/ax;

    sget-object v1, Lcom/b/a/ax;->a:Lcom/b/a/ax;

    aput-object v1, v0, v3

    sget-object v1, Lcom/b/a/ax;->b:Lcom/b/a/ax;

    aput-object v1, v0, v4

    sget-object v1, Lcom/b/a/ax;->c:Lcom/b/a/ax;

    aput-object v1, v0, v5

    sget-object v1, Lcom/b/a/ax;->d:Lcom/b/a/ax;

    aput-object v1, v0, v6

    sget-object v1, Lcom/b/a/ax;->e:Lcom/b/a/ax;

    aput-object v1, v0, v7

    sput-object v0, Lcom/b/a/ax;->g:[Lcom/b/a/ax;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/b/a/ax;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/b/a/ax;
    .locals 3

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x4b88569

    if-eq v0, v1, :cond_1

    const v1, 0x4c38896

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "TLSv1.3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_1
    const-string v0, "TLSv1.2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_2
    const-string v0, "TLSv1.1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    const-string v0, "TLSv1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    const-string v0, "SSLv3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected TLS version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :pswitch_3
    sget-object p0, Lcom/b/a/ax;->e:Lcom/b/a/ax;

    return-object p0

    .line 45
    :pswitch_4
    sget-object p0, Lcom/b/a/ax;->d:Lcom/b/a/ax;

    return-object p0

    .line 43
    :pswitch_5
    sget-object p0, Lcom/b/a/ax;->c:Lcom/b/a/ax;

    return-object p0

    .line 41
    :pswitch_6
    sget-object p0, Lcom/b/a/ax;->b:Lcom/b/a/ax;

    return-object p0

    .line 39
    :pswitch_7
    sget-object p0, Lcom/b/a/ax;->a:Lcom/b/a/ax;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1dfc3f27
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/ax;
    .locals 1

    .line 22
    const-class v0, Lcom/b/a/ax;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/b/a/ax;

    return-object p0
.end method

.method public static values()[Lcom/b/a/ax;
    .locals 1

    .line 22
    sget-object v0, Lcom/b/a/ax;->g:[Lcom/b/a/ax;

    invoke-virtual {v0}, [Lcom/b/a/ax;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/ax;

    return-object v0
.end method

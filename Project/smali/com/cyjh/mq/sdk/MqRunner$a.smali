.class final Lcom/cyjh/mq/sdk/MqRunner$a;
.super Ljava/lang/Object;
.source "MqRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mq/sdk/MqRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/cyjh/mq/sdk/MqRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/cyjh/mq/sdk/MqRunner;

    invoke-direct {v0}, Lcom/cyjh/mq/sdk/MqRunner;-><init>()V

    sput-object v0, Lcom/cyjh/mq/sdk/MqRunner$a;->a:Lcom/cyjh/mq/sdk/MqRunner;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/cyjh/mq/sdk/MqRunner;
    .locals 1

    .line 37
    sget-object v0, Lcom/cyjh/mq/sdk/MqRunner$a;->a:Lcom/cyjh/mq/sdk/MqRunner;

    return-object v0
.end method

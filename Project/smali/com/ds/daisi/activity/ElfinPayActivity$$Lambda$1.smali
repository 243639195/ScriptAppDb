.class final synthetic Lcom/ds/daisi/activity/ElfinPayActivity$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final $instance:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ds/daisi/activity/ElfinPayActivity$$Lambda$1;

    invoke-direct {v0}, Lcom/ds/daisi/activity/ElfinPayActivity$$Lambda$1;-><init>()V

    sput-object v0, Lcom/ds/daisi/activity/ElfinPayActivity$$Lambda$1;->$instance:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/ds/daisi/activity/ElfinPayActivity;->lambda$autoStartEngine$1$ElfinPayActivity()V

    return-void
.end method

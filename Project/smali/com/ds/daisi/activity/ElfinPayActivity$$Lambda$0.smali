.class final synthetic Lcom/ds/daisi/activity/ElfinPayActivity$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/ds/daisi/activity/ElfinPayActivity;


# direct methods
.method constructor <init>(Lcom/ds/daisi/activity/ElfinPayActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ds/daisi/activity/ElfinPayActivity$$Lambda$0;->arg$1:Lcom/ds/daisi/activity/ElfinPayActivity;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ds/daisi/activity/ElfinPayActivity$$Lambda$0;->arg$1:Lcom/ds/daisi/activity/ElfinPayActivity;

    invoke-virtual {v0}, Lcom/ds/daisi/activity/ElfinPayActivity;->lambda$autoStartEngine$0$ElfinPayActivity()V

    return-void
.end method

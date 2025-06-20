.class final synthetic Lcom/ds/daisi/floatview/ElfinFloatView$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/ds/daisi/floatview/ElfinFloatView;


# direct methods
.method constructor <init>(Lcom/ds/daisi/floatview/ElfinFloatView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$$Lambda$0;->arg$1:Lcom/ds/daisi/floatview/ElfinFloatView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ds/daisi/floatview/ElfinFloatView$$Lambda$0;->arg$1:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {v0}, Lcom/ds/daisi/floatview/ElfinFloatView;->lambda$runScriptOperate$0$ElfinFloatView()V

    return-void
.end method

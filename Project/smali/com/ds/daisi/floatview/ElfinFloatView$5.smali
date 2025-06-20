.class Lcom/ds/daisi/floatview/ElfinFloatView$5;
.super Ljava/lang/Object;
.source "ElfinFloatView.java"

# interfaces
.implements Lcom/ds/daisi/dialog/HideFWDialog$OnHideOKClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/floatview/ElfinFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/floatview/ElfinFloatView;


# direct methods
.method constructor <init>(Lcom/ds/daisi/floatview/ElfinFloatView;)V
    .locals 0

    .line 822
    iput-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$5;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 826
    iget-object p1, p0, Lcom/ds/daisi/floatview/ElfinFloatView$5;->this$0:Lcom/ds/daisi/floatview/ElfinFloatView;

    invoke-virtual {p1}, Lcom/ds/daisi/floatview/ElfinFloatView;->toggleElfinVisbility()V

    return-void
.end method

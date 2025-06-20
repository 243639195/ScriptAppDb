.class Lcom/ds/daisi/AppContext$9$2;
.super Ljava/lang/Object;
.source "AppContext.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/AppContext$9;->popDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ds/daisi/AppContext$9;

.field final synthetic val$tipsDialog:Lcom/ds/daisi/dialog/TipsDialog;


# direct methods
.method constructor <init>(Lcom/ds/daisi/AppContext$9;Lcom/ds/daisi/dialog/TipsDialog;)V
    .locals 0

    .line 1161
    iput-object p1, p0, Lcom/ds/daisi/AppContext$9$2;->this$1:Lcom/ds/daisi/AppContext$9;

    iput-object p2, p0, Lcom/ds/daisi/AppContext$9$2;->val$tipsDialog:Lcom/ds/daisi/dialog/TipsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1164
    iget-object p1, p0, Lcom/ds/daisi/AppContext$9$2;->val$tipsDialog:Lcom/ds/daisi/dialog/TipsDialog;

    invoke-virtual {p1}, Lcom/ds/daisi/dialog/TipsDialog;->dismiss()V

    return-void
.end method

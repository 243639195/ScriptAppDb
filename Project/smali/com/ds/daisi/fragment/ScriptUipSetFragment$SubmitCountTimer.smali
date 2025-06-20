.class Lcom/ds/daisi/fragment/ScriptUipSetFragment$SubmitCountTimer;
.super Lcom/cyjh/share/counttimer/SecondTimer;
.source "ScriptUipSetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/fragment/ScriptUipSetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubmitCountTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;I)V
    .locals 0

    .line 889
    iput-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SubmitCountTimer;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    .line 890
    invoke-direct {p0, p2}, Lcom/cyjh/share/counttimer/SecondTimer;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;ILcom/ds/daisi/fragment/ScriptUipSetFragment$1;)V
    .locals 0

    .line 888
    invoke-direct {p0, p1, p2}, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SubmitCountTimer;-><init>(Lcom/ds/daisi/fragment/ScriptUipSetFragment;I)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 913
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SubmitCountTimer;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->access$1402(Lcom/ds/daisi/fragment/ScriptUipSetFragment;I)I

    .line 914
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SubmitCountTimer;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-static {v0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->access$1600(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method protected onTick(I)V
    .locals 6

    .line 896
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SubmitCountTimer;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-virtual {v0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SubmitCountTimer;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-static {v0}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->access$1408(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)I

    .line 898
    iget-object v0, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SubmitCountTimer;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    const v1, 0x7f09005a

    invoke-virtual {v0, v1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 899
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string p1, "\u70b9\u51fb\u5173\u95ed"

    .line 901
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string v4, "#ff7900"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 902
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x11

    .line 901
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 903
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string v3, "#999999"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 904
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    .line 903
    invoke-virtual {v0, v2, v3, p1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 905
    iget-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SubmitCountTimer;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-static {p1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->access$1500(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 906
    iget-object p1, p0, Lcom/ds/daisi/fragment/ScriptUipSetFragment$SubmitCountTimer;->this$0:Lcom/ds/daisi/fragment/ScriptUipSetFragment;

    invoke-static {p1}, Lcom/ds/daisi/fragment/ScriptUipSetFragment;->access$1500(Lcom/ds/daisi/fragment/ScriptUipSetFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

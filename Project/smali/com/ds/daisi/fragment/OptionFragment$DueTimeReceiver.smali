.class Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OptionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/fragment/OptionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DueTimeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/fragment/OptionFragment;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/fragment/OptionFragment;)V
    .locals 0

    .line 1021
    iput-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/fragment/OptionFragment;Lcom/ds/daisi/fragment/OptionFragment$1;)V
    .locals 0

    .line 1021
    invoke-direct {p0, p1}, Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;-><init>(Lcom/ds/daisi/fragment/OptionFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1024
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    iget-object p1, p1, Lcom/ds/daisi/fragment/OptionFragment;->commonLog:Lcom/ds/daisi/log/CommonLog;

    const-string v0, "\u8fdb\u5165DueTimeReceiver>>>"

    invoke-virtual {p1, v0}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    const-string p1, "action_com.cyjh.elfin.fragment.OptionFragment_duetime"

    .line 1025
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1026
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    iget-object p1, p1, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget p1, p1, Lcom/ds/daisi/AppContext;->STATE_APP:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 1048
    :pswitch_0
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    iget-object p1, p1, Lcom/ds/daisi/fragment/OptionFragment;->commonLog:Lcom/ds/daisi/log/CommonLog;

    const-string p2, "PAY_CHECKAPP_FREE>>"

    invoke-virtual {p1, p2}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 1049
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-static {p1}, Lcom/ds/daisi/fragment/OptionFragment;->access$800(Lcom/ds/daisi/fragment/OptionFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1050
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    iget-object p1, p1, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iput v0, p1, Lcom/ds/daisi/AppContext;->dueTime:I

    .line 1051
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-static {p1}, Lcom/ds/daisi/fragment/OptionFragment;->access$800(Lcom/ds/daisi/fragment/OptionFragment;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f090111

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 1052
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    iget-object p1, p1, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    const/4 p2, 0x2

    iput p2, p1, Lcom/ds/daisi/AppContext;->payCheckType:I

    goto/16 :goto_1

    .line 1036
    :pswitch_1
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    iget-object p1, p1, Lcom/ds/daisi/fragment/OptionFragment;->commonLog:Lcom/ds/daisi/log/CommonLog;

    const-string v1, "PAY_CHECKAPP_TRIAL>>"

    invoke-virtual {p1, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 1037
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-static {p1}, Lcom/ds/daisi/fragment/OptionFragment;->access$800(Lcom/ds/daisi/fragment/OptionFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p1, "com.cyjh.elfin.fragment.OptionFragment_duetime"

    .line 1038
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1039
    iget-object p2, p0, Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    iget-object p2, p2, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    mul-int/lit8 v1, p1, 0x3c

    iput v1, p2, Lcom/ds/daisi/AppContext;->dueTime:I

    .line 1040
    iget-object p2, p0, Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    iget-object p2, p2, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iget p2, p2, Lcom/ds/daisi/AppContext;->dueTime:I

    const/4 v1, 0x1

    if-gez p2, :cond_0

    .line 1041
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-static {p1}, Lcom/ds/daisi/fragment/OptionFragment;->access$800(Lcom/ds/daisi/fragment/OptionFragment;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f090110

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1043
    :cond_0
    iget-object p2, p0, Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-static {p2}, Lcom/ds/daisi/fragment/OptionFragment;->access$800(Lcom/ds/daisi/fragment/OptionFragment;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v2, p0, Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    const v3, 0x7f090116

    invoke-virtual {v2, v3}, Lcom/ds/daisi/fragment/OptionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1045
    :goto_0
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    iget-object p1, p1, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iput v1, p1, Lcom/ds/daisi/AppContext;->payCheckType:I

    goto :goto_1

    .line 1028
    :pswitch_2
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    iget-object p1, p1, Lcom/ds/daisi/fragment/OptionFragment;->commonLog:Lcom/ds/daisi/log/CommonLog;

    const-string v1, "PAY_CHECKAPP_PAID>>"

    invoke-virtual {p1, v1}, Lcom/ds/daisi/log/CommonLog;->e(Ljava/lang/Object;)V

    .line 1029
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-static {p1}, Lcom/ds/daisi/fragment/OptionFragment;->access$800(Lcom/ds/daisi/fragment/OptionFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p1, "com.cyjh.elfin.fragment.OptionFragment_duetime"

    .line 1030
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1031
    iget-object p2, p0, Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    iget-object p2, p2, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    mul-int/lit8 v1, p1, 0x3c

    iput v1, p2, Lcom/ds/daisi/AppContext;->dueTime:I

    .line 1032
    iget-object p2, p0, Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-static {p2}, Lcom/ds/daisi/fragment/OptionFragment;->access$800(Lcom/ds/daisi/fragment/OptionFragment;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v1, p0, Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-virtual {v1, p1}, Lcom/ds/daisi/fragment/OptionFragment;->getTime(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1033
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    iget-object p1, p1, Lcom/ds/daisi/fragment/OptionFragment;->appContext:Lcom/ds/daisi/AppContext;

    iput v0, p1, Lcom/ds/daisi/AppContext;->payCheckType:I

    goto :goto_1

    :cond_1
    const-string p1, "com.cyjh.elfin.fragment.OptionFragment_is_login"

    .line 1055
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1056
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-static {p1}, Lcom/ds/daisi/fragment/OptionFragment;->access$800(Lcom/ds/daisi/fragment/OptionFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1057
    iget-object p1, p0, Lcom/ds/daisi/fragment/OptionFragment$DueTimeReceiver;->this$0:Lcom/ds/daisi/fragment/OptionFragment;

    invoke-static {p1}, Lcom/ds/daisi/fragment/OptionFragment;->access$900(Lcom/ds/daisi/fragment/OptionFragment;)V

    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

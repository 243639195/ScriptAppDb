.class Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;
.super Ljava/lang/Object;
.source "MsgNotifyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/adpter/MsgNotifyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHold"
.end annotation


# instance fields
.field private mImg:Landroid/widget/ImageView;

.field private mMsgDesc:Landroid/widget/TextView;

.field private mMsgName:Landroid/widget/TextView;

.field private mMsgTime:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/ds/daisi/adpter/MsgNotifyAdapter;


# direct methods
.method constructor <init>(Lcom/ds/daisi/adpter/MsgNotifyAdapter;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;->this$0:Lcom/ds/daisi/adpter/MsgNotifyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;)Landroid/widget/TextView;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;->mMsgName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;->mMsgName:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;)Landroid/widget/TextView;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;->mMsgTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;->mMsgTime:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;)Landroid/widget/TextView;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;->mMsgDesc:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;->mMsgDesc:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;)Landroid/widget/ImageView;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;->mImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/ds/daisi/adpter/MsgNotifyAdapter$ViewHold;->mImg:Landroid/widget/ImageView;

    return-object p1
.end method

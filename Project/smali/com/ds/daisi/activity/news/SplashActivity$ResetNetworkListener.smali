.class Lcom/ds/daisi/activity/news/SplashActivity$ResetNetworkListener;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/news/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetNetworkListener"
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field final synthetic this$0:Lcom/ds/daisi/activity/news/SplashActivity;


# direct methods
.method private constructor <init>(Lcom/ds/daisi/activity/news/SplashActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .line 1329
    iput-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity$ResetNetworkListener;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1330
    iput-object p2, p0, Lcom/ds/daisi/activity/news/SplashActivity$ResetNetworkListener;->mAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ds/daisi/activity/news/SplashActivity;Landroid/app/AlertDialog;Lcom/ds/daisi/activity/news/SplashActivity$1;)V
    .locals 0

    .line 1326
    invoke-direct {p0, p1, p2}, Lcom/ds/daisi/activity/news/SplashActivity$ResetNetworkListener;-><init>(Lcom/ds/daisi/activity/news/SplashActivity;Landroid/app/AlertDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1335
    iget-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity$ResetNetworkListener;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1336
    iget-object p1, p0, Lcom/ds/daisi/activity/news/SplashActivity$ResetNetworkListener;->this$0:Lcom/ds/daisi/activity/news/SplashActivity;

    invoke-static {p1}, Lcom/ds/daisi/activity/news/SplashActivity;->access$2300(Lcom/ds/daisi/activity/news/SplashActivity;)V

    return-void
.end method

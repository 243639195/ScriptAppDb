.class final synthetic Lcom/ds/daisi/util/AppDeviceUtils$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ds/daisi/util/AppDeviceUtils$$Lambda$0;->arg$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/ds/daisi/util/AppDeviceUtils$$Lambda$0;->arg$1:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/ds/daisi/util/AppDeviceUtils;->lambda$installAPK$0$AppDeviceUtils(Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method

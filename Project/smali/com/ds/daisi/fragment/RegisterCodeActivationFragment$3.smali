.class Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$3;
.super Ljava/lang/Object;
.source "RegisterCodeActivationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->onBindSuc(Lcom/ds/daisi/entity/BindRegCodeResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;


# direct methods
.method constructor <init>(Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$3;->this$0:Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 293
    new-instance v0, Lcom/ds/daisi/entity/RegCodeStatusInfo;

    invoke-direct {v0}, Lcom/ds/daisi/entity/RegCodeStatusInfo;-><init>()V

    const/4 v1, 0x1

    .line 294
    iput v1, v0, Lcom/ds/daisi/entity/RegCodeStatusInfo;->status:I

    .line 295
    iget-object v1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$3;->this$0:Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;

    invoke-static {v1}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->access$300(Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ds/daisi/entity/RegCodeStatusInfo;->regCode:Ljava/lang/String;

    .line 296
    invoke-static {v0}, Lcom/cyjh/share/util/GsonExUtil;->class2Data(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment$3;->this$0:Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;

    invoke-virtual {v1}, Lcom/ds/daisi/fragment/RegisterCodeActivationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "regCodeStatus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-static {}, Lcom/cyjh/share/config/MyConfig;->getAppid()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-static {v1, v2, v0}, Lcom/cyjh/share/util/AppUtils;->writeFileContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

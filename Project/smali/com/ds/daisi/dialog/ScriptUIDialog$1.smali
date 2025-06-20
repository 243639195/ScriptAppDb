.class Lcom/ds/daisi/dialog/ScriptUIDialog$1;
.super Ljava/lang/Object;
.source "ScriptUIDialog.java"

# interfaces
.implements Lcom/ds/daisi/AppContext$ScreenOrientationConversion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ds/daisi/dialog/ScriptUIDialog;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/dialog/ScriptUIDialog;


# direct methods
.method constructor <init>(Lcom/ds/daisi/dialog/ScriptUIDialog;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/ds/daisi/dialog/ScriptUIDialog$1;->this$0:Lcom/ds/daisi/dialog/ScriptUIDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLandscapeOrientation()V
    .locals 5

    .line 108
    iget-object v0, p0, Lcom/ds/daisi/dialog/ScriptUIDialog$1;->this$0:Lcom/ds/daisi/dialog/ScriptUIDialog;

    const v1, 0x3f666666    # 0.9f

    const v2, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ds/daisi/dialog/ScriptUIDialog;->access$000(Lcom/ds/daisi/dialog/ScriptUIDialog;FFIZ)V

    return-void
.end method

.method public onPortraitOrientation()V
    .locals 5

    .line 113
    iget-object v0, p0, Lcom/ds/daisi/dialog/ScriptUIDialog$1;->this$0:Lcom/ds/daisi/dialog/ScriptUIDialog;

    const v1, 0x3f666666    # 0.9f

    const v2, 0x3f19999a    # 0.6f

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ds/daisi/dialog/ScriptUIDialog;->access$000(Lcom/ds/daisi/dialog/ScriptUIDialog;FFIZ)V

    return-void
.end method

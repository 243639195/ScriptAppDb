.class Lcom/cyjh/feedback/lib/dialog/FeedBackDialog$1;
.super Ljava/lang/Object;
.source "FeedBackDialog.java"

# interfaces
.implements Lcom/cyjh/share/oss/MyOSSUtils$UploadFileCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;

.field final synthetic val$uploadImageList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;Ljava/util/List;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog$1;->this$0:Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;

    iput-object p2, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog$1;->val$uploadImageList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uploadFail(Ljava/lang/String;)V
    .locals 1

    .line 176
    iget-object p1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog$1;->this$0:Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;

    iget-object v0, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog$1;->val$uploadImageList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->access$000(Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;Ljava/util/List;)V

    return-void
.end method

.method public uploadProgress(JJ)V
    .locals 0

    return-void
.end method

.method public uploadSuc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 164
    iget-object p1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog$1;->val$uploadImageList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object p1, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog$1;->this$0:Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;

    iget-object p2, p0, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog$1;->val$uploadImageList:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;->access$000(Lcom/cyjh/feedback/lib/dialog/FeedBackDialog;Ljava/util/List;)V

    return-void
.end method

.class Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3$1;
.super Ljava/lang/Object;
.source "ImageSelectFragment.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;


# direct methods
.method constructor <init>(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3$1;->this$1:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 188
    iget-object p1, p0, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3$1;->this$1:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;

    iget-object p1, p1, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment$3;->this$0:Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;

    invoke-static {p1, p2}, Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;->access$300(Lcom/cyjh/feedback/lib/fragment/ImageSelectFragment;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

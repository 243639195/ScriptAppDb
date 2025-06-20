.class Lcom/ds/daisi/activity/SweepCodeActivity$2;
.super Ljava/lang/Object;
.source "SweepCodeActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/activity/SweepCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ds/daisi/activity/SweepCodeActivity;


# direct methods
.method constructor <init>(Lcom/ds/daisi/activity/SweepCodeActivity;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/ds/daisi/activity/SweepCodeActivity$2;->this$0:Lcom/ds/daisi/activity/SweepCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x0

    .line 287
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

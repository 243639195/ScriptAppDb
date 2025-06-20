.class final Lcom/cyjh/mobileanjian/ipc/ui/j$2;
.super Ljava/lang/Object;
.source "UiShowFloat.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:J

.field f:J

.field g:Ljava/lang/Runnable;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Lcom/cyjh/mobileanjian/ipc/ui/j;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/ipc/ui/j;Ljava/lang/String;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->i:Lcom/cyjh/mobileanjian/ipc/ui/j;

    iput-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    new-instance p1, Lcom/cyjh/mobileanjian/ipc/ui/j$2$1;

    invoke-direct {p1, p0}, Lcom/cyjh/mobileanjian/ipc/ui/j$2$1;-><init>(Lcom/cyjh/mobileanjian/ipc/ui/j$2;)V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->g:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 291
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const-wide/16 v0, 0x1f5

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 305
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "ACTION_MOVE "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 307
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->i:Lcom/cyjh/mobileanjian/ipc/ui/j;

    .line 1354
    iget-boolean p1, p1, Lcom/cyjh/mobileanjian/ipc/ui/j;->e:Z

    if-eqz p1, :cond_0

    .line 308
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->a:I

    sub-int/2addr p1, v2

    .line 309
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->b:I

    sub-int/2addr v2, v3

    .line 310
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->i:Lcom/cyjh/mobileanjian/ipc/ui/j;

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->c:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 311
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->i:Lcom/cyjh/mobileanjian/ipc/ui/j;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->d:I

    add-int/2addr v3, v2

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 312
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->i:Lcom/cyjh/mobileanjian/ipc/ui/j;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->d(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->i:Lcom/cyjh/mobileanjian/ipc/ui/j;

    invoke-static {v2}, Lcom/cyjh/mobileanjian/ipc/ui/j;->c(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->i:Lcom/cyjh/mobileanjian/ipc/ui/j;

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 315
    iget-wide v4, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->e:J

    sub-long v6, v2, v4

    cmp-long p1, v6, v0

    if-lez p1, :cond_1

    .line 316
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->h:Ljava/lang/String;

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_TOUCH:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-static {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V

    .line 318
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->a:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->b:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_4

    .line 321
    :cond_2
    iget-wide p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->f:J

    sub-long v0, v2, p1

    const-wide/16 p1, 0x32

    cmp-long v4, v0, p1

    if-lez v4, :cond_4

    .line 322
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->h:Ljava/lang/String;

    sget-object p2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_TOUCH_MOVE:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-static {p1, p2}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V

    .line 323
    iput-wide v2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->f:J

    goto/16 :goto_0

    .line 328
    :pswitch_1
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->i:Lcom/cyjh/mobileanjian/ipc/ui/j;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->b(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->g:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 329
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ACTION_UP "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->a:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x41f00000    # 30.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->b:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->e:J

    sub-long v2, p1, v0

    const-wide/16 p1, 0x1f4

    cmp-long v0, v2, p1

    if-gez v0, :cond_3

    .line 332
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->h:Ljava/lang/String;

    sget-object p2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CLICK:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-static {p1, p2}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V

    goto :goto_0

    .line 334
    :cond_3
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->h:Ljava/lang/String;

    sget-object p2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_TOUCH_UP:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-static {p1, p2}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V

    goto :goto_0

    .line 293
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->a:I

    .line 294
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->b:I

    .line 295
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->i:Lcom/cyjh/mobileanjian/ipc/ui/j;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->c:I

    .line 296
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->i:Lcom/cyjh/mobileanjian/ipc/ui/j;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->d:I

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->e:J

    .line 298
    iget-wide p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->e:J

    iput-wide p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->f:J

    .line 299
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->h:Ljava/lang/String;

    sget-object p2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_TOUCH_DOWN:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-static {p1, p2}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V

    .line 300
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ACTION_DOWN "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 301
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->i:Lcom/cyjh/mobileanjian/ipc/ui/j;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->b(Lcom/cyjh/mobileanjian/ipc/ui/j;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$2;->g:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

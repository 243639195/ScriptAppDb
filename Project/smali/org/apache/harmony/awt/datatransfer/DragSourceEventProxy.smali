.class public Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;
.super Ljava/lang/Object;
.source "DragSourceEventProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final DRAG_ACTION_CHANGED:I = 0x3

.field public static final DRAG_DROP_END:I = 0x6

.field public static final DRAG_ENTER:I = 0x1

.field public static final DRAG_EXIT:I = 0x5

.field public static final DRAG_MOUSE_MOVED:I = 0x4

.field public static final DRAG_OVER:I = 0x2


# instance fields
.field private final context:Ljava/awt/dnd/DragSourceContext;

.field private final modifiers:I

.field private final success:Z

.field private final targetActions:I

.field private final type:I

.field private final userAction:I

.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(Ljava/awt/dnd/DragSourceContext;IIILjava/awt/Point;I)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->context:Ljava/awt/dnd/DragSourceContext;

    .line 56
    iput p2, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->type:I

    .line 57
    iput p3, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->userAction:I

    .line 58
    iput p4, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->targetActions:I

    .line 59
    iget p1, p5, Ljava/awt/Point;->x:I

    iput p1, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->x:I

    .line 60
    iget p1, p5, Ljava/awt/Point;->y:I

    iput p1, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->y:I

    .line 61
    iput p6, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->modifiers:I

    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->success:Z

    return-void
.end method

.method public constructor <init>(Ljava/awt/dnd/DragSourceContext;IIZLjava/awt/Point;I)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->context:Ljava/awt/dnd/DragSourceContext;

    .line 69
    iput p2, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->type:I

    .line 70
    iput p3, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->userAction:I

    .line 71
    iput p3, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->targetActions:I

    .line 72
    iget p1, p5, Ljava/awt/Point;->x:I

    iput p1, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->x:I

    .line 73
    iget p1, p5, Ljava/awt/Point;->y:I

    iput p1, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->y:I

    .line 74
    iput p6, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->modifiers:I

    .line 75
    iput-boolean p4, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->success:Z

    return-void
.end method

.method private newDragSourceDragEvent()Ljava/awt/dnd/DragSourceDragEvent;
    .locals 8

    .line 103
    new-instance v7, Ljava/awt/dnd/DragSourceDragEvent;

    .line 104
    iget-object v1, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->context:Ljava/awt/dnd/DragSourceContext;

    iget v2, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->userAction:I

    iget v3, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->targetActions:I

    iget v4, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->modifiers:I

    iget v5, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->x:I

    iget v6, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->y:I

    move-object v0, v7

    .line 103
    invoke-direct/range {v0 .. v6}, Ljava/awt/dnd/DragSourceDragEvent;-><init>(Ljava/awt/dnd/DragSourceContext;IIIII)V

    return-object v7
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 79
    iget v0, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->type:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 96
    :pswitch_0
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->context:Ljava/awt/dnd/DragSourceContext;

    new-instance v7, Ljava/awt/dnd/DragSourceDropEvent;

    .line 97
    iget-object v2, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->context:Ljava/awt/dnd/DragSourceContext;

    iget v3, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->userAction:I

    iget-boolean v4, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->success:Z

    iget v5, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->x:I

    iget v6, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->y:I

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ljava/awt/dnd/DragSourceDropEvent;-><init>(Ljava/awt/dnd/DragSourceContext;IZII)V

    .line 96
    invoke-virtual {v0, v7}, Ljava/awt/dnd/DragSourceContext;->dragExit(Ljava/awt/dnd/DragSourceEvent;)V

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->context:Ljava/awt/dnd/DragSourceContext;

    new-instance v1, Ljava/awt/dnd/DragSourceEvent;

    iget-object v2, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->context:Ljava/awt/dnd/DragSourceContext;

    iget v3, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->x:I

    iget v4, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->y:I

    invoke-direct {v1, v2, v3, v4}, Ljava/awt/dnd/DragSourceEvent;-><init>(Ljava/awt/dnd/DragSourceContext;II)V

    invoke-virtual {v0, v1}, Ljava/awt/dnd/DragSourceContext;->dragExit(Ljava/awt/dnd/DragSourceEvent;)V

    return-void

    .line 90
    :pswitch_2
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->context:Ljava/awt/dnd/DragSourceContext;

    invoke-direct {p0}, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->newDragSourceDragEvent()Ljava/awt/dnd/DragSourceDragEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/awt/dnd/DragSourceContext;->dragMouseMoved(Ljava/awt/dnd/DragSourceDragEvent;)V

    return-void

    .line 87
    :pswitch_3
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->context:Ljava/awt/dnd/DragSourceContext;

    invoke-direct {p0}, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->newDragSourceDragEvent()Ljava/awt/dnd/DragSourceDragEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/awt/dnd/DragSourceContext;->dropActionChanged(Ljava/awt/dnd/DragSourceDragEvent;)V

    return-void

    .line 84
    :pswitch_4
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->context:Ljava/awt/dnd/DragSourceContext;

    invoke-direct {p0}, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->newDragSourceDragEvent()Ljava/awt/dnd/DragSourceDragEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/awt/dnd/DragSourceContext;->dragOver(Ljava/awt/dnd/DragSourceDragEvent;)V

    return-void

    .line 81
    :pswitch_5
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->context:Ljava/awt/dnd/DragSourceContext;

    invoke-direct {p0}, Lorg/apache/harmony/awt/datatransfer/DragSourceEventProxy;->newDragSourceDragEvent()Ljava/awt/dnd/DragSourceDragEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/awt/dnd/DragSourceContext;->dragEnter(Ljava/awt/dnd/DragSourceDragEvent;)V

    return-void

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

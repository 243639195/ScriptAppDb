.class Lcom/ds/daisi/adpter/ScriptLogListViewAdapter$OnCheckedChangeListener;
.super Ljava/lang/Object;
.source "ScriptLogListViewAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCheckedChangeListener"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;


# direct methods
.method public constructor <init>(Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;I)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter$OnCheckedChangeListener;->this$0:Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p2, p0, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter$OnCheckedChangeListener;->position:I

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 110
    iget-object p1, p0, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter$OnCheckedChangeListener;->this$0:Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;

    invoke-static {p1}, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;->access$000(Lcom/ds/daisi/adpter/ScriptLogListViewAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Lcom/ds/daisi/adpter/ScriptLogListViewAdapter$OnCheckedChangeListener;->position:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ds/daisi/entity/ScriptLog;

    invoke-virtual {p1, p2}, Lcom/ds/daisi/entity/ScriptLog;->setSelect(Z)V

    return-void
.end method

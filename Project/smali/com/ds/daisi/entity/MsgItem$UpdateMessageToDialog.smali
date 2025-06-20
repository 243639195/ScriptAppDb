.class public Lcom/ds/daisi/entity/MsgItem$UpdateMessageToDialog;
.super Ljava/lang/Object;
.source "MsgItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/entity/MsgItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateMessageToDialog"
.end annotation


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/ds/daisi/entity/MsgItem$UpdateMessageToDialog;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/ds/daisi/entity/MsgItem$UpdateMessageToDialog;->message:Ljava/lang/String;

    return-object v0
.end method

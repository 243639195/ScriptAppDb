.class public Lcom/ds/daisi/entity/MsgItem;
.super Ljava/lang/Object;
.source "MsgItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ds/daisi/entity/MsgItem$WebPageDownButtonEvent;,
        Lcom/ds/daisi/entity/MsgItem$UpdateMessageToDialog;,
        Lcom/ds/daisi/entity/MsgItem$BindRegCodeBus;
    }
.end annotation


# static fields
.field public static final CLEAR_ALL_MESSAGE:I = 0x3eb

.field public static final CLEAR_INTERFACE_MESSAGE:I = 0x3ea

.field public static final CLEAR_RED_DOT:I = 0x3e9

.field public static final GUIAD_APK_DOWNLOAD_SUC:I = 0x7db

.field public static final MAINAD_APK_DOWNLOAD_SUC:I = 0x7dc

.field public static final NOTIFY_DIALOG_DISMISS_MESSAGE:I = 0x3ee

.field public static final REFRESH_SWITCH_SCRIPT_RUN:I = 0x3ef

.field public static final REFRESH_UI_MESSAGE:I = 0x3ec

.field public static final SCRIPT_NEED_UPGRADE:I = 0x3ed


# instance fields
.field private message:Ljava/lang/String;

.field private msgType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/ds/daisi/entity/MsgItem;->msgType:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/ds/daisi/entity/MsgItem;->msgType:I

    .line 27
    iput-object p2, p0, Lcom/ds/daisi/entity/MsgItem;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/ds/daisi/entity/MsgItem;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/ds/daisi/entity/MsgItem;->msgType:I

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/ds/daisi/entity/MsgItem;->message:Ljava/lang/String;

    return-void
.end method

.method public setMsgType(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/ds/daisi/entity/MsgItem;->msgType:I

    return-void
.end method

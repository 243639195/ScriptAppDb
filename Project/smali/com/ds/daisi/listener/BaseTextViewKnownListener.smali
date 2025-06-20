.class public Lcom/ds/daisi/listener/BaseTextViewKnownListener;
.super Ljava/lang/Object;
.source "BaseTextViewKnownListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private returnCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeApp()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 26
    iget p1, p0, Lcom/ds/daisi/listener/BaseTextViewKnownListener;->returnCode:I

    if-nez p1, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/ds/daisi/listener/BaseTextViewKnownListener;->closeApp()V

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/ds/daisi/listener/BaseTextViewKnownListener;->pass()V

    .line 31
    :goto_0
    iget-object p1, p0, Lcom/ds/daisi/listener/BaseTextViewKnownListener;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public pass()V
    .locals 0

    return-void
.end method

.method public setAlertDialog(Landroid/app/AlertDialog;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/ds/daisi/listener/BaseTextViewKnownListener;->mAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public setReturnCode(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/ds/daisi/listener/BaseTextViewKnownListener;->returnCode:I

    return-void
.end method

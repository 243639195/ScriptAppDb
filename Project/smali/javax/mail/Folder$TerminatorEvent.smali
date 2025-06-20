.class Ljavax/mail/Folder$TerminatorEvent;
.super Ljavax/mail/event/MailEvent;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TerminatorEvent"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3442ac84f29e98b5L


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1618
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, v0}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Object;)V
    .locals 0

    .line 1623
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

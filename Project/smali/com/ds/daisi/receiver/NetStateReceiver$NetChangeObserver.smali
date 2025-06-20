.class public interface abstract Lcom/ds/daisi/receiver/NetStateReceiver$NetChangeObserver;
.super Ljava/lang/Object;
.source "NetStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ds/daisi/receiver/NetStateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetChangeObserver"
.end annotation


# virtual methods
.method public abstract onNetConnected(I)V
.end method

.method public abstract onNetDisConnect()V
.end method

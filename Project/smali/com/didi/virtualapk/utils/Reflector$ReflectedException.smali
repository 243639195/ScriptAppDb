.class public Lcom/didi/virtualapk/utils/Reflector$ReflectedException;
.super Ljava/lang/Exception;
.source "Reflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/virtualapk/utils/Reflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReflectedException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.class public Lcom/ds/daisi/entity/AdEvent;
.super Ljava/lang/Object;
.source "AdEvent.java"


# static fields
.field public static final APK_DOWNLOAD_SUCCESS:I = 0x64

.field public static final APK_INSTALL_SUCCESS:I = 0x65

.field public static final APK_REMOVE_SUCCESS:I = 0x66


# instance fields
.field packageName:Ljava/lang/String;

.field type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/ds/daisi/entity/AdEvent;->type:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/ds/daisi/entity/AdEvent;->type:I

    .line 29
    iput-object p2, p0, Lcom/ds/daisi/entity/AdEvent;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/ds/daisi/entity/AdEvent;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/ds/daisi/entity/AdEvent;->type:I

    return v0
.end method

.method public setType(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/ds/daisi/entity/AdEvent;->type:I

    return-void
.end method

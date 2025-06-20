.class public Lcom/ds/daisi/entity/ScriptUIEvent;
.super Ljava/lang/Object;
.source "ScriptUIEvent.java"


# instance fields
.field type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget v0, Lcom/ds/daisi/util/ScriptDownloadHelper;->HOT_SCRIPT_DOWNLOAD_NEXT_TIME:I

    iput v0, p0, Lcom/ds/daisi/entity/ScriptUIEvent;->type:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget v0, Lcom/ds/daisi/util/ScriptDownloadHelper;->HOT_SCRIPT_DOWNLOAD_NEXT_TIME:I

    iput v0, p0, Lcom/ds/daisi/entity/ScriptUIEvent;->type:I

    .line 13
    iput p1, p0, Lcom/ds/daisi/entity/ScriptUIEvent;->type:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/ds/daisi/entity/ScriptUIEvent;->type:I

    return v0
.end method

.method public setType(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/ds/daisi/entity/ScriptUIEvent;->type:I

    return-void
.end method

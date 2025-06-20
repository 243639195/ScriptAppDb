.class public Lcom/ds/daisi/entity/AccountPhone;
.super Ljava/lang/Object;
.source "AccountPhone.java"


# static fields
.field public static phone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPhone()Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Lcom/ds/daisi/entity/AccountPhone;->phone:Ljava/lang/String;

    return-object v0
.end method

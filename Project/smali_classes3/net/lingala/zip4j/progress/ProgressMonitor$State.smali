.class public final enum Lnet/lingala/zip4j/progress/ProgressMonitor$State;
.super Ljava/lang/Enum;
.source "ProgressMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lingala/zip4j/progress/ProgressMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/lingala/zip4j/progress/ProgressMonitor$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/lingala/zip4j/progress/ProgressMonitor$State;

.field public static final enum BUSY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

.field public static final enum READY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->READY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    new-instance v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    const-string v1, "BUSY"

    invoke-direct {v0, v1, v3}, Lnet/lingala/zip4j/progress/ProgressMonitor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->BUSY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->READY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    aput-object v1, v0, v2

    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->BUSY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    aput-object v1, v0, v3

    sput-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->$VALUES:[Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/progress/ProgressMonitor$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    return-object v0
.end method

.method public static values()[Lnet/lingala/zip4j/progress/ProgressMonitor$State;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->$VALUES:[Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    invoke-virtual {v0}, [Lnet/lingala/zip4j/progress/ProgressMonitor$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    return-object v0
.end method

.class public final enum Lnet/lingala/zip4j/progress/ProgressMonitor$Result;
.super Ljava/lang/Enum;
.source "ProgressMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lingala/zip4j/progress/ProgressMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/lingala/zip4j/progress/ProgressMonitor$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

.field public static final enum CANCELLED:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

.field public static final enum ERROR:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

.field public static final enum SUCCESS:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

.field public static final enum WORK_IN_PROGRESS:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->SUCCESS:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    new-instance v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    const-string v1, "WORK_IN_PROGRESS"

    invoke-direct {v0, v1, v3}, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->WORK_IN_PROGRESS:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    new-instance v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->ERROR:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    new-instance v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1, v5}, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->CANCELLED:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    const/4 v0, 0x4

    new-array v0, v0, [Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->SUCCESS:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    aput-object v1, v0, v2

    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->WORK_IN_PROGRESS:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    aput-object v1, v0, v3

    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->ERROR:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    aput-object v1, v0, v4

    sget-object v1, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->CANCELLED:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    aput-object v1, v0, v5

    sput-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->$VALUES:[Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/lingala/zip4j/progress/ProgressMonitor$Result;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    return-object v0
.end method

.method public static values()[Lnet/lingala/zip4j/progress/ProgressMonitor$Result;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->$VALUES:[Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    invoke-virtual {v0}, [Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    return-object v0
.end method

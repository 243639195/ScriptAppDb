.class public final enum Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;
.super Ljava/lang/Enum;
.source "OnDownloadFileChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

.field public static final enum DOWNLOADED_SIZE:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

.field public static final enum DOWNLOAD_STATUS:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

.field public static final enum OTHER:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

.field public static final enum SAVE_DIR:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

.field public static final enum SAVE_FILE_NAME:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    new-instance v0, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    const-string v1, "DOWNLOAD_STATUS"

    invoke-direct {v0, v1, v2}, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;->DOWNLOAD_STATUS:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    .line 124
    new-instance v0, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    const-string v1, "DOWNLOADED_SIZE"

    invoke-direct {v0, v1, v3}, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;->DOWNLOADED_SIZE:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    .line 128
    new-instance v0, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    const-string v1, "SAVE_DIR"

    invoke-direct {v0, v1, v4}, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;->SAVE_DIR:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    .line 132
    new-instance v0, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    const-string v1, "SAVE_FILE_NAME"

    invoke-direct {v0, v1, v5}, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;->SAVE_FILE_NAME:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    .line 136
    new-instance v0, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v6}, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;->OTHER:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    .line 115
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    sget-object v1, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;->DOWNLOAD_STATUS:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    aput-object v1, v0, v2

    sget-object v1, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;->DOWNLOADED_SIZE:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;->SAVE_DIR:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    aput-object v1, v0, v4

    sget-object v1, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;->SAVE_FILE_NAME:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    aput-object v1, v0, v5

    sget-object v1, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;->OTHER:Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    aput-object v1, v0, v6

    sput-object v0, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;->$VALUES:[Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

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
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 115
    const-class v0, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    return-object v0
.end method

.method public static values()[Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;->$VALUES:[Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    invoke-virtual {v0}, [Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/wlf/filedownloader/listener/OnDownloadFileChangeListener$Type;

    return-object v0
.end method

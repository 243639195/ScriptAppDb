.class Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;
.super Ljava/lang/Object;
.source "Draft_6455.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/java_websocket/drafts/Draft_6455;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranslatedPayloadMetaData"
.end annotation


# instance fields
.field private payloadLength:I

.field private realPackageSize:I

.field final synthetic this$0:Lorg/java_websocket/drafts/Draft_6455;


# direct methods
.method constructor <init>(Lorg/java_websocket/drafts/Draft_6455;II)V
    .locals 0
    .param p2, "newPayloadLength"    # I
    .param p3, "newRealPackageSize"    # I

    .prologue
    .line 1185
    iput-object p1, p0, Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;->this$0:Lorg/java_websocket/drafts/Draft_6455;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1186
    iput p2, p0, Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;->payloadLength:I

    .line 1187
    iput p3, p0, Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;->realPackageSize:I

    .line 1188
    return-void
.end method

.method static synthetic access$000(Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;)I
    .locals 1
    .param p0, "x0"    # Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;

    .prologue
    .line 1172
    invoke-direct {p0}, Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;->getPayloadLength()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;)I
    .locals 1
    .param p0, "x0"    # Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;

    .prologue
    .line 1172
    invoke-direct {p0}, Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;->getRealPackageSize()I

    move-result v0

    return v0
.end method

.method private getPayloadLength()I
    .locals 1

    .prologue
    .line 1178
    iget v0, p0, Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;->payloadLength:I

    return v0
.end method

.method private getRealPackageSize()I
    .locals 1

    .prologue
    .line 1182
    iget v0, p0, Lorg/java_websocket/drafts/Draft_6455$TranslatedPayloadMetaData;->realPackageSize:I

    return v0
.end method

.class final Lcom/google/protobuf/ByteString$CodedBuilder;
.super Ljava/lang/Object;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CodedBuilder"
.end annotation


# instance fields
.field private final buffer:[B

.field private final output:Lcom/google/protobuf/CodedOutputStream;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 907
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/protobuf/ByteString$CodedBuilder;->buffer:[B

    .line 908
    iget-object p1, p0, Lcom/google/protobuf/ByteString$CodedBuilder;->buffer:[B

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->newInstance([B)Lcom/google/protobuf/CodedOutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/ByteString$CodedBuilder;->output:Lcom/google/protobuf/CodedOutputStream;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/protobuf/ByteString$CodedBuilder;)V
    .locals 0

    .line 906
    invoke-direct {p0, p1}, Lcom/google/protobuf/ByteString$CodedBuilder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 912
    iget-object v0, p0, Lcom/google/protobuf/ByteString$CodedBuilder;->output:Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Lcom/google/protobuf/CodedOutputStream;->checkNoSpaceLeft()V

    .line 917
    new-instance v0, Lcom/google/protobuf/LiteralByteString;

    iget-object v1, p0, Lcom/google/protobuf/ByteString$CodedBuilder;->buffer:[B

    invoke-direct {v0, v1}, Lcom/google/protobuf/LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method public final getCodedOutput()Lcom/google/protobuf/CodedOutputStream;
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/google/protobuf/ByteString$CodedBuilder;->output:Lcom/google/protobuf/CodedOutputStream;

    return-object v0
.end method

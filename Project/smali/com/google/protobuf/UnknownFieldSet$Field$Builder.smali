.class public final Lcom/google/protobuf/UnknownFieldSet$Field$Builder;
.super Ljava/lang/Object;
.source "UnknownFieldSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/UnknownFieldSet$Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private result:Lcom/google/protobuf/UnknownFieldSet$Field;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/google/protobuf/UnknownFieldSet$Field$Builder;
    .locals 1

    .line 815
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->create()Lcom/google/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protobuf/UnknownFieldSet$Field$Builder;
    .locals 3

    .line 816
    new-instance v0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;

    invoke-direct {v0}, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;-><init>()V

    .line 817
    new-instance v1, Lcom/google/protobuf/UnknownFieldSet$Field;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/protobuf/UnknownFieldSet$Field;-><init>(Lcom/google/protobuf/UnknownFieldSet$Field;)V

    iput-object v1, v0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    return-object v0
.end method


# virtual methods
.method public final addFixed32(I)Lcom/google/protobuf/UnknownFieldSet$Field$Builder;
    .locals 2

    .line 918
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$3(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$4(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)V

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$3(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addFixed64(J)Lcom/google/protobuf/UnknownFieldSet$Field$Builder;
    .locals 2

    .line 927
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$5(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$6(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)V

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$5(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addGroup(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Field$Builder;
    .locals 2

    .line 945
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$9(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$10(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)V

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$9(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addLengthDelimited(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/UnknownFieldSet$Field$Builder;
    .locals 2

    .line 936
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$7(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$8(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)V

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$7(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addVarint(J)Lcom/google/protobuf/UnknownFieldSet$Field$Builder;
    .locals 2

    .line 909
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$1(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$2(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)V

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$1(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final build()Lcom/google/protobuf/UnknownFieldSet$Field;
    .locals 2

    .line 830
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$1(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$2(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)V

    goto :goto_0

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    iget-object v1, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$1(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$2(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)V

    .line 835
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$3(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 836
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$4(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)V

    goto :goto_1

    .line 838
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    iget-object v1, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$3(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$4(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)V

    .line 840
    :goto_1
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$5(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 841
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$6(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)V

    goto :goto_2

    .line 843
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    iget-object v1, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$5(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$6(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)V

    .line 845
    :goto_2
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$7(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    .line 846
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$8(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)V

    goto :goto_3

    .line 848
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    .line 849
    iget-object v1, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$7(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 848
    invoke-static {v0, v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$8(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)V

    .line 851
    :goto_3
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$9(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    .line 852
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$10(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)V

    goto :goto_4

    .line 854
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    iget-object v1, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$9(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$10(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)V

    .line 857
    :goto_4
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    const/4 v1, 0x0

    .line 858
    iput-object v1, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    return-object v0
.end method

.method public final clear()Lcom/google/protobuf/UnknownFieldSet$Field$Builder;
    .locals 2

    .line 864
    new-instance v0, Lcom/google/protobuf/UnknownFieldSet$Field;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/UnknownFieldSet$Field;-><init>(Lcom/google/protobuf/UnknownFieldSet$Field;)V

    iput-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    return-object p0
.end method

.method public final mergeFrom(Lcom/google/protobuf/UnknownFieldSet$Field;)Lcom/google/protobuf/UnknownFieldSet$Field$Builder;
    .locals 2

    .line 874
    invoke-static {p1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$1(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 875
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$1(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$2(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)V

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$1(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$1(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 880
    :cond_1
    invoke-static {p1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$3(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 881
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$3(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 882
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$4(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)V

    .line 884
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$3(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$3(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 886
    :cond_3
    invoke-static {p1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$5(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 887
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$5(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    .line 888
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$6(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)V

    .line 890
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$5(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$5(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 892
    :cond_5
    invoke-static {p1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$7(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 893
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$7(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_6

    .line 894
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$8(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)V

    .line 896
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$7(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$7(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 898
    :cond_7
    invoke-static {p1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$9(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 899
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$9(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_8

    .line 900
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$10(Lcom/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)V

    .line 902
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/UnknownFieldSet$Field$Builder;->result:Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$9(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/UnknownFieldSet$Field;->access$9(Lcom/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    return-object p0
.end method

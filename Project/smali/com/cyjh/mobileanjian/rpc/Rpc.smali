.class public Lcom/cyjh/mobileanjian/rpc/Rpc;
.super Ljava/lang/Object;
.source "Rpc.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AsynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9

    .line 126
    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Lcom/cyjh/mobileanjian/ipc/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    invoke-static {p3, p4}, Lcom/cyjh/mobileanjian/rpc/Rpc;->checkArgs([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    .line 135
    :cond_1
    invoke-static {p3}, Lcom/cyjh/mobileanjian/rpc/Rpc;->arrayToList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-static {p4}, Lcom/cyjh/mobileanjian/rpc/Rpc;->arrayToList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lcom/cyjh/mobileanjian/ipc/rpc/Invocator;->invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    .line 136
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "retObj = "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "\u5df2\u7ecf\u8c03\u7528\u4e86AsynCall "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static SimpleCallReturnInt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    const-string v5, "int"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 111
    invoke-static/range {v0 .. v5}, Lcom/cyjh/mobileanjian/rpc/Rpc;->SynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 112
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static SimpleCallReturnString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v5, "String"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 90
    invoke-static/range {v0 .. v5}, Lcom/cyjh/mobileanjian/rpc/Rpc;->SynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 91
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static SimpleCallStringParam(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 71
    new-array p0, v1, [Ljava/lang/String;

    const-string v2, "String"

    aput-object v2, p0, v0

    new-array v1, v1, [Ljava/lang/String;

    aput-object p4, v1, v0

    invoke-static {p1, p2, p3, p0, v1}, Lcom/cyjh/mobileanjian/rpc/Rpc;->SynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    .line 73
    :cond_0
    new-array p0, v1, [Ljava/lang/String;

    const-string v2, "String"

    aput-object v2, p0, v0

    new-array v1, v1, [Ljava/lang/String;

    aput-object p4, v1, v0

    invoke-static {p1, p2, p3, p0, v1}, Lcom/cyjh/mobileanjian/rpc/Rpc;->AsynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static SimpleCallStringStringParam(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p0, :cond_0

    .line 81
    new-array p0, v2, [Ljava/lang/String;

    const-string v3, "String"

    aput-object v3, p0, v1

    const-string v3, "String"

    aput-object v3, p0, v0

    new-array v2, v2, [Ljava/lang/String;

    aput-object p4, v2, v1

    aput-object p5, v2, v0

    invoke-static {p1, p2, p3, p0, v2}, Lcom/cyjh/mobileanjian/rpc/Rpc;->SynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    .line 83
    :cond_0
    new-array p0, v2, [Ljava/lang/String;

    const-string v3, "String"

    aput-object v3, p0, v1

    const-string v3, "String"

    aput-object v3, p0, v0

    new-array v2, v2, [Ljava/lang/String;

    aput-object p4, v2, v1

    aput-object p5, v2, v0

    invoke-static {p1, p2, p3, p0, v2}, Lcom/cyjh/mobileanjian/rpc/Rpc;->AsynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static SimpleCallStringStringParamReturnString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    if-nez p3, :cond_0

    const-string p0, "Use SimpleCallReturnString instead."

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p4, :cond_1

    .line 100
    new-array p4, v1, [Ljava/lang/String;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p4, v0

    .line 101
    new-array v1, v1, [Ljava/lang/String;

    aput-object p3, v1, v0

    move-object v7, p4

    move-object v8, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    .line 103
    new-array v3, v2, [Ljava/lang/String;

    const-class v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const-class v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 104
    new-array v2, v2, [Ljava/lang/String;

    aput-object p3, v2, v0

    aput-object p4, v2, v1

    move-object v8, v2

    move-object v7, v3

    :goto_0
    const-string v9, "String"

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .line 106
    invoke-static/range {v4 .. v9}, Lcom/cyjh/mobileanjian/rpc/Rpc;->SynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 107
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static SynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    .line 174
    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p2}, Lcom/cyjh/mobileanjian/ipc/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 177
    :cond_0
    invoke-static {p3, p4}, Lcom/cyjh/mobileanjian/rpc/Rpc;->checkArgs([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 180
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 183
    :cond_1
    invoke-static {p5}, Lcom/cyjh/mobileanjian/ipc/utils/l;->a(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    move-result-object v2

    if-nez v2, :cond_2

    .line 185
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 190
    invoke-static {p3}, Lcom/cyjh/mobileanjian/rpc/Rpc;->arrayToList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 191
    invoke-static {p4}, Lcom/cyjh/mobileanjian/rpc/Rpc;->arrayToList([Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    move-object v6, p3

    move-object v5, v1

    goto :goto_0

    :cond_3
    move-object v5, v1

    move-object v6, v5

    :goto_0
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 195
    invoke-static/range {v2 .. v7}, Lcom/cyjh/mobileanjian/ipc/rpc/Invocator;->invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "retObj = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    invoke-static {p5}, Lcom/cyjh/mobileanjian/ipc/utils/l;->a(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    move-result-object p1

    .line 204
    :try_start_0
    sget-object p2, Lcom/cyjh/mobileanjian/rpc/Rpc$1;->a:[I

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-nez p0, :cond_4

    const-string p0, ""

    return-object p0

    .line 216
    :cond_4
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 214
    :pswitch_1
    check-cast p0, Ljava/lang/Double;

    return-object p0

    .line 212
    :pswitch_2
    check-cast p0, Ljava/lang/Float;

    return-object p0

    .line 210
    :pswitch_3
    check-cast p0, Ljava/lang/Long;

    return-object p0

    .line 208
    :pswitch_4
    check-cast p0, Ljava/lang/Integer;

    return-object p0

    .line 206
    :pswitch_5
    check-cast p0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 220
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    const/4 p0, 0x1

    .line 223
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 175
    :cond_5
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static SynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6

    const-string v5, "void"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 157
    invoke-static/range {v0 .. v5}, Lcom/cyjh/mobileanjian/rpc/Rpc;->SynCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method private static arrayToList([Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 62
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static checkArgs([Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 42
    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/utils/a;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/a;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 44
    :cond_0
    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/utils/a;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/a;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/utils/a;->b([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/utils/a;->b([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    array-length p0, p0

    array-length p1, p1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.class public Lcom/alibaba/fastjson/util/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/alibaba/fastjson/util/FieldInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final alternateNames:[Ljava/lang/String;

.field public final declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final field:Ljava/lang/reflect/Field;

.field public final fieldAccess:Z

.field private final fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

.field public final fieldClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final fieldTransient:Z

.field public final fieldType:Ljava/lang/reflect/Type;

.field public final format:Ljava/lang/String;

.field public final getOnly:Z

.field public final isEnum:Z

.field public final method:Ljava/lang/reflect/Method;

.field private final methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

.field public final name:Ljava/lang/String;

.field public final nameHashCode:J

.field private ordinal:I

.field public final serialzeFeatures:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "field"    # Ljava/lang/reflect/Field;
    .param p6, "ordinal"    # I
    .param p7, "serialzeFeatures"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Field;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v5, 0x0

    iput v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 53
    if-gez p6, :cond_0

    .line 54
    const/4 p6, 0x0

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 59
    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 60
    iput-object p4, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 61
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 62
    iput-object p5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 63
    iput p6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 64
    iput p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .line 66
    invoke-virtual {p3}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    if-eqz v5, :cond_2

    const-class v5, Lcom/alibaba/fastjson/JSONAware;

    invoke-virtual {v5, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    .line 68
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 69
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 71
    if-eqz p5, :cond_4

    .line 72
    invoke-virtual {p5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    .line 73
    .local v4, "modifiers":I
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-nez v5, :cond_3

    :cond_1
    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 74
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    .line 79
    .end local v4    # "modifiers":I
    :goto_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    .line 81
    const-wide v2, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 82
    .local v2, "hashCode":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 83
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 84
    .local v0, "c":C
    int-to-long v6, v0

    xor-long/2addr v2, v6

    .line 85
    const-wide v6, 0x100000001b3L

    mul-long/2addr v2, v6

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 66
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "hashCode":J
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 73
    .restart local v4    # "modifiers":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 76
    .end local v4    # "modifiers":I
    :cond_4
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 77
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    goto :goto_2

    .line 87
    .restart local v1    # "i":I
    .restart local v2    # "hashCode":J
    :cond_5
    iput-wide v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    .line 89
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    .line 90
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V
    .locals 24
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "field"    # Ljava/lang/reflect/Field;
    .param p5, "type"    # Ljava/lang/reflect/Type;
    .param p6, "ordinal"    # I
    .param p7, "serialzeFeatures"    # I
    .param p8, "methodAnnotation"    # Lcom/alibaba/fastjson/annotation/JSONField;
    .param p9, "fieldAnnotation"    # Lcom/alibaba/fastjson/annotation/JSONField;
    .param p10, "fieldGenericSupport"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "II",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 103
    if-gez p6, :cond_0

    .line 104
    const/16 p6, 0x0

    .line 107
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 108
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 109
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 110
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 111
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 112
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 113
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v2

    .line 116
    .local v2, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    const/4 v8, 0x0

    .line 117
    .local v8, "format":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 118
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v8

    .line 120
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-nez v22, :cond_1

    .line 121
    const/4 v8, 0x0

    .line 124
    :cond_1
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->alternateNames()[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    .line 128
    :goto_0
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    .line 130
    if-eqz p3, :cond_6

    .line 131
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v14

    .line 132
    .local v14, "modifiers":I
    if-eqz p2, :cond_2

    and-int/lit8 v22, v14, 0x1

    if-eqz v22, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_4

    :cond_2
    const/16 v22, 0x1

    :goto_1
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 133
    and-int/lit16 v0, v14, 0x80

    move/from16 v22, v0

    if-eqz v22, :cond_5

    const/16 v22, 0x1

    :goto_2
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    .line 139
    .end local v14    # "modifiers":I
    :goto_3
    const-wide v10, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 140
    .local v10, "hashCode":J
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v12, v0, :cond_7

    .line 141
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 142
    .local v4, "c":C
    int-to-long v0, v4

    move-wide/from16 v22, v0

    xor-long v10, v10, v22

    .line 143
    const-wide v22, 0x100000001b3L

    mul-long v10, v10, v22

    .line 140
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 126
    .end local v4    # "c":C
    .end local v10    # "hashCode":J
    .end local v12    # "i":I
    :cond_3
    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    goto :goto_0

    .line 132
    .restart local v14    # "modifiers":I
    :cond_4
    const/16 v22, 0x0

    goto :goto_1

    .line 133
    :cond_5
    const/16 v22, 0x0

    goto :goto_2

    .line 135
    .end local v14    # "modifiers":I
    :cond_6
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 136
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    goto :goto_3

    .line 145
    .restart local v10    # "hashCode":J
    .restart local v12    # "i":I
    :cond_7
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    .line 149
    if-eqz p2, :cond_10

    .line 150
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v17

    .line 151
    .local v17, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 152
    const/16 v22, 0x0

    aget-object v6, v17, v22

    .line 153
    .local v6, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v22, Ljava/lang/Class;

    move-object/from16 v0, v22

    if-eq v6, v0, :cond_8

    const-class v22, Ljava/lang/String;

    move-object/from16 v0, v22

    if-eq v6, v0, :cond_8

    .line 155
    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v22

    if-eqz v22, :cond_b

    .line 156
    :cond_8
    move-object v7, v6

    .line 160
    .local v7, "fieldType":Ljava/lang/reflect/Type;
    :goto_5
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    .line 170
    :goto_6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 185
    .end local v17    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_7
    if-eqz p4, :cond_18

    const-class v22, Ljava/lang/Object;

    move-object/from16 v0, v22

    if-ne v6, v0, :cond_18

    instance-of v0, v7, Ljava/lang/reflect/TypeVariable;

    move/from16 v22, v0

    if-eqz v22, :cond_18

    move-object/from16 v20, v7

    .line 189
    check-cast v20, Ljava/lang/reflect/TypeVariable;

    .line 190
    .local v20, "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v9, 0x0

    .line 192
    .local v9, "genericFieldType":Ljava/lang/reflect/Type;
    const/4 v3, 0x0

    .line 193
    .local v3, "arguments":[Ljava/lang/reflect/Type;
    move-object/from16 v0, p5

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v22, v0

    if-eqz v22, :cond_9

    move-object/from16 v18, p5

    .line 194
    check-cast v18, Ljava/lang/reflect/ParameterizedType;

    .line 195
    .local v18, "ptype":Ljava/lang/reflect/ParameterizedType;
    invoke-interface/range {v18 .. v18}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 198
    .end local v18    # "ptype":Ljava/lang/reflect/ParameterizedType;
    :cond_9
    move-object/from16 v5, p4

    .local v5, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_8
    if-eqz v5, :cond_14

    const-class v22, Ljava/lang/Object;

    move-object/from16 v0, v22

    if-eq v5, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    if-eq v5, v0, :cond_14

    .line 199
    invoke-virtual {v5}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v19

    .line 201
    .local v19, "superType":Ljava/lang/reflect/Type;
    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v22, v0

    if-eqz v22, :cond_a

    move-object/from16 v15, v19

    .line 202
    check-cast v15, Ljava/lang/reflect/ParameterizedType;

    .line 203
    .local v15, "p_superType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v16

    .line 204
    .local v16, "p_superType_args":[Ljava/lang/reflect/Type;
    invoke-virtual {v5}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-static {v0, v1, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getArgument([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z

    .line 205
    move-object/from16 v3, v16

    .line 198
    .end local v15    # "p_superType":Ljava/lang/reflect/ParameterizedType;
    .end local v16    # "p_superType_args":[Ljava/lang/reflect/Type;
    :cond_a
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_8

    .line 158
    .end local v3    # "arguments":[Ljava/lang/reflect/Type;
    .end local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "fieldType":Ljava/lang/reflect/Type;
    .end local v9    # "genericFieldType":Ljava/lang/reflect/Type;
    .end local v19    # "superType":Ljava/lang/reflect/Type;
    .end local v20    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .restart local v17    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_b
    if-eqz p10, :cond_c

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v22

    const/16 v23, 0x0

    aget-object v7, v22, v23

    .restart local v7    # "fieldType":Ljava/lang/reflect/Type;
    :goto_9
    goto :goto_5

    .end local v7    # "fieldType":Ljava/lang/reflect/Type;
    :cond_c
    move-object v7, v6

    goto :goto_9

    .line 162
    .end local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_d
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    .line 163
    .restart local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v22, Ljava/lang/Class;

    move-object/from16 v0, v22

    if-ne v6, v0, :cond_e

    .line 164
    move-object v7, v6

    .line 168
    .restart local v7    # "fieldType":Ljava/lang/reflect/Type;
    :goto_a
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    goto/16 :goto_6

    .line 166
    .end local v7    # "fieldType":Ljava/lang/reflect/Type;
    :cond_e
    if-eqz p10, :cond_f

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v7

    .restart local v7    # "fieldType":Ljava/lang/reflect/Type;
    :goto_b
    goto :goto_a

    .end local v7    # "fieldType":Ljava/lang/reflect/Type;
    :cond_f
    move-object v7, v6

    goto :goto_b

    .line 172
    .end local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_10
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 173
    .restart local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v22

    if-nez v22, :cond_11

    const-class v22, Ljava/lang/String;

    move-object/from16 v0, v22

    if-eq v6, v0, :cond_11

    .line 175
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v22

    if-eqz v22, :cond_12

    .line 176
    :cond_11
    move-object v7, v6

    .line 181
    .restart local v7    # "fieldType":Ljava/lang/reflect/Type;
    :goto_c
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 182
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    goto/16 :goto_7

    .line 178
    .end local v7    # "fieldType":Ljava/lang/reflect/Type;
    :cond_12
    if-eqz p10, :cond_13

    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v7

    .restart local v7    # "fieldType":Ljava/lang/reflect/Type;
    :goto_d
    goto :goto_c

    .end local v7    # "fieldType":Ljava/lang/reflect/Type;
    :cond_13
    move-object v7, v6

    goto :goto_d

    .line 209
    .restart local v3    # "arguments":[Ljava/lang/reflect/Type;
    .restart local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "fieldType":Ljava/lang/reflect/Type;
    .restart local v9    # "genericFieldType":Ljava/lang/reflect/Type;
    .restart local v20    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_14
    if-eqz v3, :cond_15

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v21

    .line 211
    .local v21, "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_e
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v13, v0, :cond_15

    .line 212
    aget-object v22, v21, v13

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 213
    aget-object v9, v3, v13

    .line 220
    .end local v13    # "j":I
    .end local v21    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_15
    if-eqz v9, :cond_18

    .line 221
    invoke-static {v9}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 222
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 224
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v22

    if-eqz v22, :cond_17

    const-class v22, Lcom/alibaba/fastjson/JSONAware;

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-nez v22, :cond_17

    const/16 v22, 0x1

    :goto_f
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    .line 248
    .end local v3    # "arguments":[Ljava/lang/reflect/Type;
    .end local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v20    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local p5    # "type":Ljava/lang/reflect/Type;
    :goto_10
    return-void

    .line 211
    .restart local v3    # "arguments":[Ljava/lang/reflect/Type;
    .restart local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "j":I
    .restart local v20    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .restart local v21    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    .restart local p5    # "type":Ljava/lang/reflect/Type;
    :cond_16
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    .line 224
    .end local v13    # "j":I
    .end local v21    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_17
    const/16 v22, 0x0

    goto :goto_f

    .line 229
    .end local v3    # "arguments":[Ljava/lang/reflect/Type;
    .end local v5    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "genericFieldType":Ljava/lang/reflect/Type;
    .end local v20    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_18
    move-object v9, v7

    .line 231
    .restart local v9    # "genericFieldType":Ljava/lang/reflect/Type;
    instance-of v0, v7, Ljava/lang/Class;

    move/from16 v22, v0

    if-nez v22, :cond_19

    .line 232
    if-eqz p5, :cond_1a

    .end local p5    # "type":Ljava/lang/reflect/Type;
    :goto_11
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v0, v1, v7}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 233
    if-eq v9, v7, :cond_19

    .line 234
    instance-of v0, v9, Ljava/lang/reflect/ParameterizedType;

    move/from16 v22, v0

    if-eqz v22, :cond_1b

    .line 235
    invoke-static {v9}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    .line 242
    :cond_19
    :goto_12
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 243
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 245
    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v22

    if-nez v22, :cond_1c

    .line 246
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v22

    if-eqz v22, :cond_1c

    const-class v22, Lcom/alibaba/fastjson/JSONAware;

    .line 247
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-nez v22, :cond_1c

    const/16 v22, 0x1

    :goto_13
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    goto :goto_10

    .restart local p5    # "type":Ljava/lang/reflect/Type;
    :cond_1a
    move-object/from16 p5, p4

    .line 232
    goto :goto_11

    .line 236
    .end local p5    # "type":Ljava/lang/reflect/Type;
    :cond_1b
    instance-of v0, v9, Ljava/lang/Class;

    move/from16 v22, v0

    if-eqz v22, :cond_19

    .line 237
    invoke-static {v9}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    goto :goto_12

    .line 247
    :cond_1c
    const/16 v22, 0x0

    goto :goto_13
.end method

.method public static getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 20
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object/from16 v9, p2

    .line 324
    :goto_0
    return-object v9

    .line 255
    :cond_1
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v10, p2

    .line 256
    check-cast v10, Ljava/lang/reflect/GenericArrayType;

    .line 257
    .local v10, "genericArrayType":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v10}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 258
    .local v6, "componentType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 259
    .local v7, "componentTypeX":Ljava/lang/reflect/Type;
    if-eq v6, v7, :cond_2

    .line 260
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 261
    .local v9, "fieldTypeX":Ljava/lang/reflect/Type;
    goto :goto_0

    .end local v9    # "fieldTypeX":Ljava/lang/reflect/Type;
    :cond_2
    move-object/from16 v9, p2

    .line 264
    goto :goto_0

    .line 267
    .end local v6    # "componentType":Ljava/lang/reflect/Type;
    .end local v7    # "componentTypeX":Ljava/lang/reflect/Type;
    .end local v10    # "genericArrayType":Ljava/lang/reflect/GenericArrayType;
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isGenericParamType(Ljava/lang/reflect/Type;)Z

    move-result v18

    if-nez v18, :cond_4

    move-object/from16 v9, p2

    .line 268
    goto :goto_0

    .line 271
    :cond_4
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 272
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v13

    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    .line 273
    .local v13, "paramType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v13}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v14

    .local v14, "parameterizedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v16, p2

    .line 274
    check-cast v16, Ljava/lang/reflect/TypeVariable;

    .line 276
    .local v16, "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual {v14}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_6

    .line 277
    invoke-virtual {v14}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v18

    aget-object v18, v18, v11

    invoke-interface/range {v18 .. v18}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 278
    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v18

    aget-object p2, v18, v11

    move-object/from16 v9, p2

    .line 279
    goto :goto_0

    .line 276
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 284
    .end local v11    # "i":I
    .end local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v14    # "parameterizedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_6
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v18, v0

    if-eqz v18, :cond_d

    move-object/from16 v15, p2

    .line 285
    check-cast v15, Ljava/lang/reflect/ParameterizedType;

    .line 287
    .local v15, "parameterizedFieldType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 288
    .local v4, "arguments":[Ljava/lang/reflect/Type;
    const/4 v5, 0x0

    .line 289
    .local v5, "changed":Z
    const/16 v17, 0x0

    .line 290
    .local v17, "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v3, 0x0

    .line 292
    .local v3, "actualTypes":[Ljava/lang/reflect/Type;
    const/4 v13, 0x0

    .line 293
    .restart local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v13, p1

    .line 294
    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    .line 295
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v17

    .line 301
    :cond_7
    :goto_2
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_3
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_c

    if-eqz v13, :cond_c

    .line 302
    aget-object v8, v4, v11

    .line 303
    .local v8, "feildTypeArguement":Ljava/lang/reflect/Type;
    instance-of v0, v8, Ljava/lang/reflect/TypeVariable;

    move/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v16, v8

    .line 304
    check-cast v16, Ljava/lang/reflect/TypeVariable;

    .line 306
    .restart local v16    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_4
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_b

    .line 307
    aget-object v18, v17, v12

    invoke-interface/range {v18 .. v18}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 308
    if-nez v3, :cond_8

    .line 309
    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 311
    :cond_8
    aget-object v18, v3, v12

    aput-object v18, v4, v11

    .line 312
    const/4 v5, 0x1

    .line 306
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 296
    .end local v8    # "feildTypeArguement":Ljava/lang/reflect/Type;
    .end local v11    # "i":I
    .end local v12    # "j":I
    .end local v16    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 297
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v13

    .end local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    .line 298
    .restart local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v17

    goto :goto_2

    .line 301
    .restart local v8    # "feildTypeArguement":Ljava/lang/reflect/Type;
    .restart local v11    # "i":I
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 317
    .end local v8    # "feildTypeArguement":Ljava/lang/reflect/Type;
    :cond_c
    if-eqz v5, :cond_d

    .line 318
    new-instance p2, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    .end local p2    # "fieldType":Ljava/lang/reflect/Type;
    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v18

    .line 319
    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v4, v1, v2}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .restart local p2    # "fieldType":Ljava/lang/reflect/Type;
    move-object/from16 v9, p2

    .line 320
    goto/16 :goto_0

    .end local v3    # "actualTypes":[Ljava/lang/reflect/Type;
    .end local v4    # "arguments":[Ljava/lang/reflect/Type;
    .end local v5    # "changed":Z
    .end local v11    # "i":I
    .end local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v15    # "parameterizedFieldType":Ljava/lang/reflect/ParameterizedType;
    .end local v17    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_d
    move-object/from16 v9, p2

    .line 324
    goto/16 :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I
    .locals 2
    .param p1, "o"    # Lcom/alibaba/fastjson/util/FieldInfo;

    .prologue
    .line 332
    iget v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    iget v1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    if-ge v0, v1, :cond_0

    .line 333
    const/4 v0, -0x1

    .line 340
    :goto_0
    return v0

    .line 336
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    iget v1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    if-le v0, v1, :cond_1

    .line 337
    const/4 v0, 0x1

    goto :goto_0

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Lcom/alibaba/fastjson/util/FieldInfo;)Z
    .locals 2
    .param p1, "o"    # Lcom/alibaba/fastjson/util/FieldInfo;

    .prologue
    const/4 v0, 0x1

    .line 344
    if-ne p1, p0, :cond_1

    .line 347
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "javaObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 359
    iget-boolean v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 364
    :goto_0
    return-object v0

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 364
    .local v0, "value":Ljava/lang/Object;
    goto :goto_0
.end method

.method public getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 355
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "javaObject"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    return-object v0
.end method

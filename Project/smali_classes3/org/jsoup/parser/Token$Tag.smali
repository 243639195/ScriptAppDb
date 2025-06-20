.class abstract Lorg/jsoup/parser/Token$Tag;
.super Lorg/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Tag"
.end annotation


# static fields
.field private static final MaxAttributes:I = 0x200


# instance fields
.field private final attrName:Ljava/lang/StringBuilder;

.field private attrNameS:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final attrValue:Ljava/lang/StringBuilder;

.field private attrValueS:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field attributes:Lorg/jsoup/nodes/Attributes;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private hasAttrName:Z

.field private hasAttrValue:Z

.field private hasEmptyAttrValue:Z

.field protected normalName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field selfClosing:Z

.field protected tagName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$1;)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    .line 83
    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    .line 87
    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrValue:Z

    .line 88
    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttrValue:Z

    .line 90
    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->selfClosing:Z

    return-void
.end method

.method private ensureAttrName()V
    .locals 2

    .prologue
    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    .line 246
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrNameS:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrNameS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrNameS:Ljava/lang/String;

    .line 250
    :cond_0
    return-void
.end method

.method private ensureAttrValue()V
    .locals 2

    .prologue
    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrValue:Z

    .line 255
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValueS:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrValueS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValueS:Ljava/lang/String;

    .line 259
    :cond_0
    return-void
.end method


# virtual methods
.method final appendAttributeName(C)V
    .locals 1
    .param p1, "append"    # C

    .prologue
    .line 209
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttrName()V

    .line 210
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    return-void
.end method

.method final appendAttributeName(Ljava/lang/String;)V
    .locals 2
    .param p1, "append"    # Ljava/lang/String;

    .prologue
    .line 198
    const/4 v0, 0x0

    const v1, 0xfffd

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttrName()V

    .line 201
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->attrNameS:Ljava/lang/String;

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method final appendAttributeValue(C)V
    .locals 1
    .param p1, "append"    # C

    .prologue
    .line 223
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttrValue()V

    .line 224
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    return-void
.end method

.method final appendAttributeValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "append"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttrValue()V

    .line 215
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->attrValueS:Ljava/lang/String;

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method final appendAttributeValue([C)V
    .locals 1
    .param p1, "append"    # [C

    .prologue
    .line 228
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttrValue()V

    .line 229
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 230
    return-void
.end method

.method final appendAttributeValue([I)V
    .locals 4
    .param p1, "appendCodepoints"    # [I

    .prologue
    .line 233
    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttrValue()V

    .line 234
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p1, v1

    .line 235
    .local v0, "codepoint":I
    iget-object v3, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    .end local v0    # "codepoint":I
    :cond_0
    return-void
.end method

.method final appendTagName(C)V
    .locals 1
    .param p1, "append"    # C

    .prologue
    .line 193
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Token$Tag;->appendTagName(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method final appendTagName(Ljava/lang/String;)V
    .locals 2
    .param p1, "append"    # Ljava/lang/String;

    .prologue
    .line 187
    const/4 v0, 0x0

    const v1, 0xfffd

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 188
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    if-nez v0, :cond_0

    .end local p1    # "append":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    invoke-static {v0}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 190
    return-void

    .line 188
    .restart local p1    # "append":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method final finaliseTag()V
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Tag;->newAttribute()V

    .line 157
    :cond_0
    return-void
.end method

.method final hasAttribute(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final hasAttributes()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isSelfClosing()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->selfClosing:Z

    return v0
.end method

.method final name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isFalse(Z)V

    .line 162
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    return-object v0

    .line 161
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    .line 176
    invoke-static {p1}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method final newAttribute()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 115
    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    if-nez v2, :cond_0

    .line 116
    new-instance v2, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v2}, Lorg/jsoup/nodes/Attributes;-><init>()V

    iput-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 118
    :cond_0
    iget-boolean v2, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v2}, Lorg/jsoup/nodes/Attributes;->size()I

    move-result v2

    const/16 v3, 0x200

    if-ge v2, v3, :cond_1

    .line 120
    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "name":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 124
    iget-boolean v2, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrValue:Z

    if-eqz v2, :cond_4

    .line 125
    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "value":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v2, v0, v1}, Lorg/jsoup/nodes/Attributes;->add(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    .line 134
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/jsoup/parser/Token$Tag;->reset(Ljava/lang/StringBuilder;)V

    .line 135
    iput-object v5, p0, Lorg/jsoup/parser/Token$Tag;->attrNameS:Ljava/lang/String;

    .line 136
    iput-boolean v4, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    .line 138
    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/jsoup/parser/Token$Tag;->reset(Ljava/lang/StringBuilder;)V

    .line 139
    iput-object v5, p0, Lorg/jsoup/parser/Token$Tag;->attrValueS:Ljava/lang/String;

    .line 140
    iput-boolean v4, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrValue:Z

    .line 141
    iput-boolean v4, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttrValue:Z

    .line 142
    return-void

    .line 120
    :cond_2
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrNameS:Ljava/lang/String;

    goto :goto_0

    .line 125
    .restart local v0    # "name":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrValueS:Ljava/lang/String;

    goto :goto_1

    .line 126
    :cond_4
    iget-boolean v2, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttrValue:Z

    if-eqz v2, :cond_5

    .line 127
    const-string v1, ""

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_1

    .line 129
    .end local v1    # "value":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_1
.end method

.method final normalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    return-object v0
.end method

.method reset()Lorg/jsoup/parser/Token$Tag;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 95
    iput-object v1, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    .line 96
    iput-object v1, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/parser/Token$Tag;->reset(Ljava/lang/StringBuilder;)V

    .line 98
    iput-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrNameS:Ljava/lang/String;

    .line 99
    iput-boolean v2, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    .line 100
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/parser/Token$Tag;->reset(Ljava/lang/StringBuilder;)V

    .line 101
    iput-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrValueS:Ljava/lang/String;

    .line 102
    iput-boolean v2, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttrValue:Z

    .line 103
    iput-boolean v2, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrValue:Z

    .line 104
    iput-boolean v2, p0, Lorg/jsoup/parser/Token$Tag;->selfClosing:Z

    .line 105
    iput-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    .line 106
    return-object p0
.end method

.method bridge synthetic reset()Lorg/jsoup/parser/Token;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Tag;->reset()Lorg/jsoup/parser/Token$Tag;

    move-result-object v0

    return-object v0
.end method

.method final setEmptyAttributeValue()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttrValue:Z

    .line 241
    return-void
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method final toStringName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "[unset]"

    goto :goto_0
.end method

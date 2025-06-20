.class public final Ljavax/mail/search/FlagTerm;
.super Ljavax/mail/search/SearchTerm;
.source "FlagTerm.java"


# static fields
.field private static final serialVersionUID:J = -0x1fc02030d671737L


# instance fields
.field protected flags:Ljavax/mail/Flags;

.field protected set:Z


# direct methods
.method public constructor <init>(Ljavax/mail/Flags;Z)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 79
    iput-object p1, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    .line 80
    iput-boolean p2, p0, Ljavax/mail/search/FlagTerm;->set:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 147
    instance-of v0, p1, Ljavax/mail/search/FlagTerm;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 149
    :cond_0
    check-cast p1, Ljavax/mail/search/FlagTerm;

    .line 150
    iget-boolean v0, p1, Ljavax/mail/search/FlagTerm;->set:Z

    iget-boolean v2, p0, Ljavax/mail/search/FlagTerm;->set:Z

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    iget-object v0, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {p1, v0}, Ljavax/mail/Flags;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final getFlags()Ljavax/mail/Flags;
    .locals 1

    .line 87
    iget-object v0, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;

    return-object v0
.end method

.method public final getTestSet()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Ljavax/mail/search/FlagTerm;->set:Z

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 157
    iget-boolean v0, p0, Ljavax/mail/search/FlagTerm;->set:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->hashCode()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final match(Ljavax/mail/Message;)Z
    .locals 5

    const/4 v0, 0x0

    .line 106
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;

    move-result-object p1

    .line 107
    iget-boolean v1, p0, Ljavax/mail/search/FlagTerm;->set:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {p1, v1}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v0

    .line 118
    :cond_1
    iget-object v1, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v1}, Ljavax/mail/Flags;->getSystemFlags()[Ljavax/mail/Flags$Flag;

    move-result-object v1

    const/4 v3, 0x0

    .line 121
    :goto_0
    array-length v4, v1

    if-lt v3, v4, :cond_4

    .line 127
    iget-object v1, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v1}, Ljavax/mail/Flags;->getUserFlags()[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 130
    :goto_1
    array-length v4, v1

    if-lt v3, v4, :cond_2

    return v2

    .line 131
    :cond_2
    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljavax/mail/Flags;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 122
    :cond_4
    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags$Flag;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_5

    return v0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    return v0
.end method

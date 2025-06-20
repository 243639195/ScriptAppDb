.class public Lcom/ds/daisi/log/CommonLog;
.super Ljava/lang/Object;
.source "CommonLog.java"


# instance fields
.field private isDebug:Z

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ELFIN"

    .line 11
    iput-object v0, p0, Lcom/ds/daisi/log/CommonLog;->tag:Ljava/lang/String;

    .line 12
    invoke-static {}, Lcom/ds/daisi/net/URL/MyBuildConfig;->isOutputLog()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ds/daisi/log/CommonLog;->isDebug:Z

    return-void
.end method

.method private debug(Ljava/lang/Object;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/ds/daisi/log/CommonLog;->tag:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ds/daisi/log/CommonLog;->getMeg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private error(Ljava/lang/Object;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/ds/daisi/log/CommonLog;->tag:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ds/daisi/log/CommonLog;->getMeg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getFunctionName()Ljava/lang/String;
    .locals 7

    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 22
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 23
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 31
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 35
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v1
.end method

.method private getMeg(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 62
    invoke-direct {p0}, Lcom/ds/daisi/log/CommonLog;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " >>>>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private info(Ljava/lang/Object;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/ds/daisi/log/CommonLog;->tag:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ds/daisi/log/CommonLog;->getMeg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private verbose(Ljava/lang/Object;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/ds/daisi/log/CommonLog;->tag:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ds/daisi/log/CommonLog;->getMeg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private warn(Ljava/lang/Object;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/ds/daisi/log/CommonLog;->tag:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ds/daisi/log/CommonLog;->getMeg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/ds/daisi/log/CommonLog;->isDebug:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0, p1}, Lcom/ds/daisi/log/CommonLog;->debug(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/ds/daisi/log/CommonLog;->tag:Ljava/lang/String;

    .line 91
    iget-boolean p1, p0, Lcom/ds/daisi/log/CommonLog;->isDebug:Z

    if-eqz p1, :cond_0

    .line 92
    invoke-direct {p0, p2}, Lcom/ds/daisi/log/CommonLog;->debug(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/ds/daisi/log/CommonLog;->isDebug:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0, p1}, Lcom/ds/daisi/log/CommonLog;->error(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/ds/daisi/log/CommonLog;->tag:Ljava/lang/String;

    .line 130
    iget-boolean p1, p0, Lcom/ds/daisi/log/CommonLog;->isDebug:Z

    if-eqz p1, :cond_0

    .line 131
    invoke-direct {p0, p2}, Lcom/ds/daisi/log/CommonLog;->error(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/Object;)V
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/ds/daisi/log/CommonLog;->isDebug:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0, p1}, Lcom/ds/daisi/log/CommonLog;->info(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/ds/daisi/log/CommonLog;->tag:Ljava/lang/String;

    .line 104
    iget-boolean p1, p0, Lcom/ds/daisi/log/CommonLog;->isDebug:Z

    if-eqz p1, :cond_0

    .line 105
    invoke-direct {p0, p2}, Lcom/ds/daisi/log/CommonLog;->info(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public v(Ljava/lang/Object;)V
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/ds/daisi/log/CommonLog;->isDebug:Z

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0, p1}, Lcom/ds/daisi/log/CommonLog;->verbose(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/ds/daisi/log/CommonLog;->tag:Ljava/lang/String;

    .line 78
    iget-boolean p1, p0, Lcom/ds/daisi/log/CommonLog;->isDebug:Z

    if-eqz p1, :cond_0

    .line 79
    invoke-direct {p0, p2}, Lcom/ds/daisi/log/CommonLog;->verbose(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public w(Ljava/lang/Object;)V
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/ds/daisi/log/CommonLog;->isDebug:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0, p1}, Lcom/ds/daisi/log/CommonLog;->warn(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/ds/daisi/log/CommonLog;->tag:Ljava/lang/String;

    .line 117
    iget-boolean p1, p0, Lcom/ds/daisi/log/CommonLog;->isDebug:Z

    if-eqz p1, :cond_0

    .line 118
    invoke-direct {p0, p2}, Lcom/ds/daisi/log/CommonLog;->warn(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

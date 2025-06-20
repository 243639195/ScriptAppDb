.class public Lcom/alibaba/fastjson/parser/DefaultJSONParser;
.super Ljava/lang/Object;
.source "DefaultJSONParser.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    }
.end annotation


# static fields
.field public static final NONE:I = 0x0

.field public static final NeedToResolve:I = 0x1

.field public static final TypeNameRedirect:I = 0x2


# instance fields
.field public config:Lcom/alibaba/fastjson/parser/ParserConfig;

.field protected contex:Lcom/alibaba/fastjson/parser/ParseContext;

.field private contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

.field private contextArrayIndex:I

.field private dateFormat:Ljava/text/DateFormat;

.field private dateFormatPattern:Ljava/lang/String;

.field protected extraProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;",
            ">;"
        }
    .end annotation
.end field

.field protected extraTypeProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;",
            ">;"
        }
    .end annotation
.end field

.field public fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

.field public final lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

.field public resolveStatus:I

.field private resolveTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;",
            ">;"
        }
    .end annotation
.end field

.field public final symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/JSONLexer;)V
    .locals 1
    .param p1, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexer;

    .prologue
    .line 134
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 5
    .param p1, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexer;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .prologue
    const/16 v1, 0x1a

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v2, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    .line 82
    iput v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    .line 90
    iput v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 92
    iput-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    .line 93
    iput-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    .line 94
    iput-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    .line 138
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 139
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 140
    iget-object v2, p2, Lcom/alibaba/fastjson/parser/ParserConfig;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 142
    iget-char v2, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_1

    .line 143
    iget v2, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 144
    .local v0, "index":I
    iget v2, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_0

    .line 146
    :goto_0
    iput-char v1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 147
    const/16 v1, 0xc

    iput v1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 157
    .end local v0    # "index":I
    :goto_1
    return-void

    .line 144
    .restart local v0    # "index":I
    :cond_0
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 148
    .end local v0    # "index":I
    :cond_1
    iget-char v2, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_3

    .line 149
    iget v2, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 150
    .restart local v0    # "index":I
    iget v2, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_2

    .line 152
    :goto_2
    iput-char v1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 153
    const/16 v1, 0xe

    iput v1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    .line 150
    :cond_2
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_2

    .line 155
    .end local v0    # "index":I
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 118
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .prologue
    .line 122
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONLexer;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {v0, p1, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "features"    # I

    .prologue
    .line 126
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v0, p1, p3}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 127
    return-void
.end method

.method public constructor <init>([CILcom/alibaba/fastjson/parser/ParserConfig;I)V
    .locals 1
    .param p1, "input"    # [C
    .param p2, "length"    # I
    .param p3, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p4, "features"    # I

    .prologue
    .line 130
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v0, p1, p2, p4}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 131
    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 3
    .param p1, "token"    # I

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v0, p1, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1476
    return-void

    .line 1473
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, expect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1474
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V
    .locals 2
    .param p1, "task"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1322
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    .line 1324
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1325
    return-void
.end method

.method protected checkListResolve(Ljava/util/Collection;)V
    .locals 5
    .param p1, "array"    # Ljava/util/Collection;

    .prologue
    const/4 v4, 0x0

    .line 1074
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1075
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v0

    .line 1076
    .local v0, "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    new-instance v2, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, p0, v1, v3}, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/List;I)V

    iput-object v2, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1077
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1078
    iput v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 1085
    :goto_0
    return-void

    .line 1080
    .end local v0    # "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v0

    .line 1081
    .restart local v0    # "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    new-instance v1, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1082
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1083
    iput v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_0
.end method

.method protected checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/util/Map;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .prologue
    .line 1089
    new-instance v0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 1090
    .local v0, "fieldResolver":Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v1

    .line 1091
    .local v1, "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    iput-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1092
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v2, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1093
    const/4 v2, 0x0

    iput v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 1094
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 1480
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    .line 1481
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not close json text, token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1484
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 1485
    throw v0

    .line 1484
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 1486
    return-void
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 1
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;
    .param p2, "state"    # Z

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->config(Lcom/alibaba/fastjson/parser/Feature;Z)V

    .line 1467
    return-void
.end method

.method public getDateFomartPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getDateFormat()Ljava/text/DateFormat;
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v2, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    .line 103
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public getExtraProcessors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1333
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    .line 1335
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    return-object v0
.end method

.method public getExtraTypeProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1340
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    .line 1342
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    return-object v0
.end method

.method protected getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    .locals 2

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    return-object v0
.end method

.method public handleResovleTask(Ljava/lang/Object;)V
    .locals 9
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1489
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    if-nez v8, :cond_1

    .line 1519
    :cond_0
    return-void

    .line 1493
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "size":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 1494
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    .line 1495
    .local v7, "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1497
    .local v0, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-nez v0, :cond_2

    .line 1493
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1501
    :cond_2
    const/4 v3, 0x0

    .line 1502
    .local v3, "object":Ljava/lang/Object;
    iget-object v8, v7, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v8, :cond_3

    .line 1503
    iget-object v8, v7, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v3, v8, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1506
    .end local v3    # "object":Ljava/lang/Object;
    :cond_3
    invoke-static {v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->access$000(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)Ljava/lang/String;

    move-result-object v4

    .line 1507
    .local v4, "ref":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1508
    .local v5, "refValue":Ljava/lang/Object;
    const-string v8, "$"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1509
    const/4 v2, 0x0

    .end local v5    # "refValue":Ljava/lang/Object;
    .local v2, "j":I
    :goto_2
    iget v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    if-ge v2, v8, :cond_6

    .line 1510
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/ParseContext;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1511
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    aget-object v8, v8, v2

    iget-object v5, v8, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1509
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1515
    .end local v2    # "j":I
    .restart local v5    # "refValue":Ljava/lang/Object;
    :cond_5
    invoke-static {v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->access$100(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v8

    iget-object v5, v8, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1517
    .end local v5    # "refValue":Ljava/lang/Object;
    :cond_6
    invoke-virtual {v0, v3, v5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public parse()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1380
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p1, "fieldName"    # Ljava/lang/Object;

    .prologue
    .line 1384
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v11, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    packed-switch v11, :pswitch_data_0

    .line 1461
    :pswitch_0
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "syntax error, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1386
    :pswitch_1
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1387
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1388
    .local v4, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    invoke-virtual {p0, v4, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1456
    .end local v4    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    :goto_0
    return-object v4

    .line 1391
    :pswitch_2
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1392
    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V

    .line 1393
    .local v8, "treeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Object;>;"
    invoke-virtual {p0, v8, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    move-object v4, v8

    .line 1394
    goto :goto_0

    .line 1396
    .end local v8    # "treeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Object;>;"
    :pswitch_3
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1397
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    move-object v4, v0

    .line 1398
    goto :goto_0

    .line 1400
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    :pswitch_4
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v11, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v12, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v12, v12, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v11, v12

    if-eqz v11, :cond_0

    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v3, v11}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1403
    .local v3, "object":Lcom/alibaba/fastjson/JSONObject;
    :goto_1
    invoke-virtual {p0, v3, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 1400
    .end local v3    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto :goto_1

    .line 1405
    :pswitch_5
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v1

    .line 1406
    .local v1, "intValue":Ljava/lang/Number;
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move-object v4, v1

    .line 1407
    goto :goto_0

    .line 1409
    .end local v1    # "intValue":Ljava/lang/Number;
    :pswitch_6
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v11, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v12, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    iget v12, v12, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v11, v12

    if-eqz v11, :cond_1

    const/4 v9, 0x1

    .line 1410
    .local v9, "useBigDecimal":Z
    :goto_2
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v10

    .line 1411
    .local v10, "value":Ljava/lang/Number;
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move-object v4, v10

    .line 1412
    goto :goto_0

    .line 1409
    .end local v9    # "useBigDecimal":Z
    .end local v10    # "value":Ljava/lang/Number;
    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    .line 1414
    :pswitch_7
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v5

    .line 1415
    .local v5, "stringLiteral":Ljava/lang/String;
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1417
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v11, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v12, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    iget v12, v12, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v11, v12

    if-eqz v11, :cond_3

    .line 1418
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v2, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;)V

    .line 1420
    .local v2, "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    const/4 v11, 0x1

    :try_start_0
    invoke-virtual {v2, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(Z)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1421
    iget-object v11, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1424
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .end local v2    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :cond_3
    move-object v4, v5

    .line 1428
    goto/16 :goto_0

    .line 1424
    .restart local v2    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :catchall_0
    move-exception v11

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 1425
    throw v11

    .line 1431
    .end local v2    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v5    # "stringLiteral":Ljava/lang/String;
    :pswitch_8
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1432
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1434
    :pswitch_9
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1435
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1437
    :pswitch_a
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1438
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1440
    :pswitch_b
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0x12

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1442
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v11, v11, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v12, 0x12

    if-eq v11, v12, :cond_4

    .line 1443
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "syntax error, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1445
    :cond_4
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1447
    const/16 v11, 0xa

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 1448
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 1449
    .local v6, "time":J
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 1451
    const/16 v11, 0xb

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 1453
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0

    .line 1455
    .end local v6    # "time":J
    :pswitch_c
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->isBlankInput()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1456
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1458
    :cond_5
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "syntax error, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1384
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_1
        :pswitch_2
        :pswitch_8
    .end packed-switch
.end method

.method public parseArray(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 713
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 715
    return-object v0
.end method

.method public parseArray(Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 0
    .param p2, "array"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Collection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 719
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 720
    return-void
.end method

.method public parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "array"    # Ljava/util/Collection;

    .prologue
    .line 724
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    .line 725
    return-void
.end method

.method public parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 12
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "array"    # Ljava/util/Collection;
    .param p3, "fieldName"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x4

    const/4 v6, 0x0

    const/16 v10, 0x10

    .line 729
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v7, v7, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v8, 0x15

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v7, v7, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v8, 0x16

    if-ne v7, v8, :cond_1

    .line 730
    :cond_0
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 733
    :cond_1
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v7, v7, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v8, 0xe

    if-eq v7, v8, :cond_2

    .line 734
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exepct \'[\', but "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v8, v8, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-static {v8}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 737
    :cond_2
    const/4 v1, 0x0

    .line 738
    .local v1, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, p1, :cond_4

    .line 739
    sget-object v1, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    .line 740
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 749
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 750
    .local v0, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-boolean v7, v7, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    if-nez v7, :cond_3

    .line 751
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-virtual {p0, v7, p2, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 754
    :cond_3
    const/4 v2, 0x0

    .line 755
    .local v2, "i":I
    :goto_1
    :try_start_0
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v7, v7, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v7, v10, :cond_6

    .line 756
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 800
    :catchall_0
    move-exception v6

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 801
    throw v6

    .line 741
    .end local v0    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v2    # "i":I
    :cond_4
    const-class v7, Ljava/lang/String;

    if-ne v7, p1, :cond_5

    .line 742
    sget-object v1, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    .line 743
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v7, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0

    .line 745
    :cond_5
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v7, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 746
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0

    .line 760
    .restart local v0    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v2    # "i":I
    :cond_6
    :try_start_1
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v7, v7, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v8, 0xf

    if-ne v7, v8, :cond_7

    .line 800
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 803
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v6, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 804
    return-void

    .line 764
    :cond_7
    :try_start_2
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, p1, :cond_a

    .line 765
    sget-object v7, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, p0, v8, v9}, Lcom/alibaba/fastjson/serializer/IntegerCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 766
    .local v4, "val":Ljava/lang/Object;
    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 794
    .end local v4    # "val":Ljava/lang/Object;
    :cond_8
    :goto_2
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v7, v7, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v7, v10, :cond_9

    .line 795
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 754
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 767
    :cond_a
    const-class v7, Ljava/lang/String;

    if-ne v7, p1, :cond_d

    .line 769
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v7, v7, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v7, v11, :cond_b

    .line 770
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v5

    .line 771
    .local v5, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 779
    :goto_3
    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 773
    .end local v5    # "value":Ljava/lang/String;
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v3

    .line 774
    .local v3, "obj":Ljava/lang/Object;
    if-nez v3, :cond_c

    move-object v5, v6

    .line 776
    .restart local v5    # "value":Ljava/lang/String;
    :goto_4
    goto :goto_3

    .end local v5    # "value":Ljava/lang/String;
    :cond_c
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 782
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_d
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v7, v7, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_e

    .line 783
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 784
    const/4 v4, 0x0

    .line 788
    :goto_5
    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 789
    iget v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 790
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    goto :goto_2

    .line 786
    :cond_e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, p0, p1, v7}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .restart local v4    # "val":Ljava/lang/Object;
    goto :goto_5
.end method

.method public final parseArray(Ljava/util/Collection;)V
    .locals 1
    .param p1, "array"    # Ljava/util/Collection;

    .prologue
    .line 1110
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1111
    return-void
.end method

.method public final parseArray(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 18
    .param p1, "array"    # Ljava/util/Collection;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .prologue
    .line 1115
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1116
    .local v13, "token":I
    const/16 v15, 0x15

    if-eq v13, v15, :cond_0

    const/16 v15, 0x16

    if-ne v13, v15, :cond_1

    .line 1117
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1118
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1121
    :cond_1
    const/16 v15, 0xe

    if-eq v13, v15, :cond_2

    .line 1122
    new-instance v15, Lcom/alibaba/fastjson/JSONException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "syntax error, expect [, actual "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v13}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", pos "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1125
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-boolean v5, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    .line 1127
    .local v5, "disableCircularReferenceDetect":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1128
    .local v4, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    if-nez v5, :cond_3

    .line 1129
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1134
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-char v3, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1135
    .local v3, "ch":C
    const/16 v15, 0x22

    if-eq v3, v15, :cond_b

    .line 1136
    const/16 v15, 0x5d

    if-ne v3, v15, :cond_5

    .line 1137
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1138
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1314
    if-nez v5, :cond_4

    .line 1315
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1318
    :cond_4
    :goto_0
    return-void

    .line 1141
    :cond_5
    const/16 v15, 0x7b

    if-ne v3, v15, :cond_9

    .line 1144
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v16, v0

    add-int/lit8 v8, v16, 0x1

    iput v8, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1145
    .local v8, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v15, :cond_8

    const/16 v15, 0x1a

    .line 1147
    :goto_1
    move-object/from16 v0, v16

    iput-char v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1149
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0xc

    move/from16 v0, v16

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1153
    .end local v8    # "index":I
    :goto_2
    const/4 v6, 0x0

    .line 1163
    .local v6, "first_quote":Z
    :goto_3
    const/4 v7, 0x0

    .line 1165
    .local v7, "i":I
    :goto_4
    if-eqz v6, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-char v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v16, 0x22

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 1166
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0x22

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanStringValue(C)Ljava/lang/String;

    move-result-object v14

    .line 1168
    .local v14, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-char v3, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1169
    const/16 v15, 0x2c

    if-ne v3, v15, :cond_10

    .line 1172
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v16, v0

    add-int/lit8 v8, v16, 0x1

    iput v8, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1173
    .restart local v8    # "index":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v8, v0, :cond_d

    const/16 v3, 0x1a

    .line 1175
    .end local v3    # "ch":C
    :goto_5
    iput-char v3, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1177
    .restart local v3    # "ch":C
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1178
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 1179
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 1182
    :cond_6
    const/16 v15, 0x22

    if-ne v3, v15, :cond_e

    .line 1163
    .end local v8    # "index":I
    .end local v14    # "value":Ljava/lang/String;
    :cond_7
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1145
    .end local v6    # "first_quote":Z
    .end local v7    # "i":I
    .restart local v8    # "index":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1147
    invoke-virtual {v15, v8}, Ljava/lang/String;->charAt(I)C

    move-result v15

    goto :goto_1

    .line 1151
    .end local v8    # "index":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0xc

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1314
    .end local v3    # "ch":C
    :catchall_0
    move-exception v15

    if-nez v5, :cond_a

    .line 1315
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1317
    :cond_a
    throw v15

    .line 1155
    .restart local v3    # "ch":C
    :cond_b
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v16, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v16, v0

    and-int v15, v15, v16

    if-nez v15, :cond_c

    .line 1156
    const/4 v6, 0x1

    .restart local v6    # "first_quote":Z
    goto/16 :goto_3

    .line 1158
    .end local v6    # "first_quote":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1159
    const/4 v6, 0x0

    .restart local v6    # "first_quote":Z
    goto/16 :goto_3

    .line 1173
    .restart local v7    # "i":I
    .restart local v8    # "index":I
    .restart local v14    # "value":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1175
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_5

    .line 1185
    :cond_e
    const/4 v6, 0x0

    .line 1188
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1208
    .end local v8    # "index":I
    .end local v14    # "value":Ljava/lang/String;
    :cond_f
    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1209
    :goto_8
    const/16 v15, 0x10

    if-ne v13, v15, :cond_14

    .line 1210
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1211
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v13, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1212
    goto :goto_8

    .line 1189
    .restart local v14    # "value":Ljava/lang/String;
    :cond_10
    const/16 v15, 0x5d

    if-ne v3, v15, :cond_13

    .line 1192
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v16, v0

    add-int/lit8 v8, v16, 0x1

    iput v8, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1193
    .restart local v8    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v15, :cond_12

    const/16 v15, 0x1a

    .line 1195
    :goto_9
    move-object/from16 v0, v16

    iput-char v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1197
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1198
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_11

    .line 1199
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 1201
    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1314
    if-nez v5, :cond_4

    .line 1315
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    goto/16 :goto_0

    .line 1193
    :cond_12
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1195
    invoke-virtual {v15, v8}, Ljava/lang/String;->charAt(I)C

    move-result v15

    goto :goto_9

    .line 1204
    .end local v8    # "index":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_7

    .line 1215
    .end local v14    # "value":Ljava/lang/String;
    :cond_14
    packed-switch v13, :pswitch_data_0

    .line 1281
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v14

    .line 1285
    :goto_a
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1286
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_15

    .line 1287
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 1289
    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v16, 0x10

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 1291
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-char v3, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1292
    const/16 v15, 0x22

    if-ne v3, v15, :cond_1a

    .line 1293
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 1294
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    goto/16 :goto_6

    .line 1217
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v14

    .line 1218
    .local v14, "value":Ljava/lang/Number;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_a

    .line 1221
    .end local v14    # "value":Ljava/lang/Number;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v16, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v16, v0

    and-int v15, v15, v16

    if-eqz v15, :cond_16

    .line 1222
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v14

    .line 1226
    .restart local v14    # "value":Ljava/lang/Number;
    :goto_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_a

    .line 1224
    .end local v14    # "value":Ljava/lang/Number;
    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v14

    .restart local v14    # "value":Ljava/lang/Number;
    goto :goto_b

    .line 1229
    .end local v14    # "value":Ljava/lang/Number;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v12

    .line 1230
    .local v12, "stringLiteral":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1232
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v16, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v16, v0

    and-int v15, v15, v16

    if-eqz v15, :cond_18

    .line 1233
    new-instance v9, Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-direct {v9, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;)V

    .line 1234
    .local v9, "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(Z)Z

    move-result v15

    if-eqz v15, :cond_17

    .line 1235
    iget-object v15, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    .line 1239
    :goto_c
    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    goto/16 :goto_a

    .line 1237
    :cond_17
    move-object v14, v12

    .local v14, "value":Ljava/lang/String;
    goto :goto_c

    .line 1241
    .end local v9    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    .end local v14    # "value":Ljava/lang/String;
    :cond_18
    move-object v14, v12

    .line 1244
    .restart local v14    # "value":Ljava/lang/String;
    goto/16 :goto_a

    .line 1246
    .end local v12    # "stringLiteral":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :pswitch_4
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1247
    .local v14, "value":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_a

    .line 1250
    .end local v14    # "value":Ljava/lang/Boolean;
    :pswitch_5
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1251
    .restart local v14    # "value":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_a

    .line 1255
    .end local v14    # "value":Ljava/lang/Boolean;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v16, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v16, v0

    and-int v15, v15, v16

    if-eqz v15, :cond_19

    .line 1256
    new-instance v11, Lcom/alibaba/fastjson/JSONObject;

    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v11, v15}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1260
    .local v11, "object":Lcom/alibaba/fastjson/JSONObject;
    :goto_d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 1261
    .local v14, "value":Ljava/lang/Object;
    goto/16 :goto_a

    .line 1258
    .end local v11    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v14    # "value":Ljava/lang/Object;
    :cond_19
    new-instance v11, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v11}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .restart local v11    # "object":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_d

    .line 1263
    .end local v11    # "object":Lcom/alibaba/fastjson/JSONObject;
    :pswitch_7
    new-instance v10, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v10}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1264
    .local v10, "items":Ljava/util/Collection;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1265
    move-object v14, v10

    .line 1266
    .local v14, "value":Ljava/util/Collection;
    goto/16 :goto_a

    .line 1268
    .end local v10    # "items":Ljava/util/Collection;
    .end local v14    # "value":Ljava/util/Collection;
    :pswitch_8
    const/4 v14, 0x0

    .line 1269
    .local v14, "value":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_a

    .line 1272
    .end local v14    # "value":Ljava/lang/Object;
    :pswitch_9
    const/4 v14, 0x0

    .line 1273
    .restart local v14    # "value":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_a

    .line 1276
    .end local v14    # "value":Ljava/lang/Object;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1314
    if-nez v5, :cond_4

    .line 1315
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    goto/16 :goto_0

    .line 1279
    :pswitch_b
    :try_start_4
    new-instance v15, Lcom/alibaba/fastjson/JSONException;

    const-string v16, "unclosed jsonArray"

    invoke-direct/range {v15 .. v16}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1295
    :cond_1a
    const/16 v15, 0x30

    if-lt v3, v15, :cond_1b

    const/16 v15, 0x39

    if-gt v3, v15, :cond_1b

    .line 1296
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 1297
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    goto/16 :goto_6

    .line 1298
    :cond_1b
    const/16 v15, 0x7b

    if-ne v3, v15, :cond_1d

    .line 1299
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v16, 0xc

    move/from16 v0, v16

    iput v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1302
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v0, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v16, v0

    add-int/lit8 v8, v16, 0x1

    iput v8, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1303
    .restart local v8    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v15, :cond_1c

    const/16 v15, 0x1a

    .line 1305
    :goto_e
    move-object/from16 v0, v16

    iput-char v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto/16 :goto_6

    .line 1303
    :cond_1c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v15, v15, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1305
    invoke-virtual {v15, v8}, Ljava/lang/String;->charAt(I)C

    move-result v15

    goto :goto_e

    .line 1308
    .end local v8    # "index":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    .line 1215
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public parseArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;
    .locals 12
    .param p1, "types"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 807
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    .line 808
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 809
    const/4 v5, 0x0

    .line 916
    :goto_0
    return-object v5

    .line 812
    :cond_0
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0xe

    if-eq v9, v10, :cond_1

    .line 813
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "syntax error, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 816
    :cond_1
    array-length v9, p1

    new-array v5, v9, [Ljava/lang/Object;

    .line 817
    .local v5, "list":[Ljava/lang/Object;
    array-length v9, p1

    if-nez v9, :cond_3

    .line 818
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v10, 0xf

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 820
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0xf

    if-eq v9, v10, :cond_2

    .line 821
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "syntax error, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 824
    :cond_2
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 825
    const/4 v9, 0x0

    new-array v5, v9, [Ljava/lang/Object;

    goto :goto_0

    .line 828
    :cond_3
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 830
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v9, p1

    if-ge v3, v9, :cond_4

    .line 833
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_5

    .line 834
    const/4 v7, 0x0

    .line 835
    .local v7, "value":Ljava/lang/Object;
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 893
    .end local v7    # "value":Ljava/lang/Object;
    :goto_2
    aput-object v7, v5, v3

    .line 895
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0xf

    if-ne v9, v10, :cond_10

    .line 910
    :cond_4
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0xf

    if-eq v9, v10, :cond_13

    .line 911
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "syntax error, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 837
    :cond_5
    aget-object v6, p1, v3

    .line 838
    .local v6, "type":Ljava/lang/reflect/Type;
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v6, v9, :cond_6

    const-class v9, Ljava/lang/Integer;

    if-ne v6, v9, :cond_8

    .line 839
    :cond_6
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_7

    .line 840
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 841
    .local v7, "value":Ljava/lang/Integer;
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_2

    .line 843
    .end local v7    # "value":Ljava/lang/Integer;
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v7

    .line 844
    .local v7, "value":Ljava/lang/Object;
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v7, v6, v9}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    .line 846
    .end local v7    # "value":Ljava/lang/Object;
    :cond_8
    const-class v9, Ljava/lang/String;

    if-ne v6, v9, :cond_a

    .line 847
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_9

    .line 848
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v7

    .line 849
    .local v7, "value":Ljava/lang/String;
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_2

    .line 851
    .end local v7    # "value":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v7

    .line 852
    .local v7, "value":Ljava/lang/Object;
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v7, v6, v9}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_2

    .line 855
    .end local v7    # "value":Ljava/lang/Object;
    :cond_a
    const/4 v4, 0x0

    .line 856
    .local v4, "isArray":Z
    const/4 v1, 0x0

    .line 857
    .local v1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v9, p1

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_b

    .line 858
    instance-of v9, v6, Ljava/lang/Class;

    if-eqz v9, :cond_b

    move-object v0, v6

    .line 859
    check-cast v0, Ljava/lang/Class;

    .line 860
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v4

    .line 861
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 866
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b
    if-eqz v4, :cond_f

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0xe

    if-eq v9, v10, :cond_f

    .line 867
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 869
    .local v8, "varList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    .line 871
    .local v2, "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0xf

    if-eq v9, v10, :cond_d

    .line 873
    :goto_3
    const/4 v9, 0x0

    .line 874
    invoke-interface {v2, p0, v6, v9}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 873
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0x10

    if-ne v9, v10, :cond_c

    .line 877
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_3

    .line 878
    :cond_c
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0xf

    if-ne v9, v10, :cond_e

    .line 886
    :cond_d
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v8, v6, v9}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v7

    .line 887
    .restart local v7    # "value":Ljava/lang/Object;
    goto/16 :goto_2

    .line 881
    .end local v7    # "value":Ljava/lang/Object;
    :cond_e
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "syntax error, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 888
    .end local v2    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v8    # "varList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_f
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    .line 889
    .restart local v2    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    const/4 v9, 0x0

    invoke-interface {v2, p0, v6, v9}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .restart local v7    # "value":Ljava/lang/Object;
    goto/16 :goto_2

    .line 899
    .end local v1    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v4    # "isArray":Z
    .end local v6    # "type":Ljava/lang/reflect/Type;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_10
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0x10

    if-eq v9, v10, :cond_11

    .line 900
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "syntax error, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 903
    :cond_11
    array-length v9, p1

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_12

    .line 904
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v10, 0xf

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 830
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 906
    :cond_12
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_4

    .line 914
    :cond_13
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_0
.end method

.method public parseArrayWithType(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 13
    .param p1, "collectionType"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1002
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    .line 1003
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1004
    const/4 v2, 0x0

    .line 1066
    :goto_0
    return-object v2

    :cond_0
    move-object v9, p1

    .line 1007
    check-cast v9, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1009
    .local v1, "actualTypes":[Ljava/lang/reflect/Type;
    array-length v9, v1

    if-eq v9, v12, :cond_1

    .line 1010
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "not support type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1013
    :cond_1
    aget-object v0, v1, v11

    .line 1015
    .local v0, "actualTypeArgument":Ljava/lang/reflect/Type;
    instance-of v9, v0, Ljava/lang/Class;

    if-eqz v9, :cond_2

    .line 1016
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1017
    .local v2, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    check-cast v0, Ljava/lang/Class;

    .end local v0    # "actualTypeArgument":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    goto :goto_0

    .line 1021
    .end local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v0    # "actualTypeArgument":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v9, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v9, :cond_5

    move-object v8, v0

    .line 1022
    check-cast v8, Ljava/lang/reflect/WildcardType;

    .line 1025
    .local v8, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v8}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v9

    aget-object v7, v9, v11

    .line 1028
    .local v7, "upperBoundType":Ljava/lang/reflect/Type;
    const-class v9, Ljava/lang/Object;

    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1029
    invoke-interface {v8}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v9

    array-length v9, v9

    if-nez v9, :cond_3

    .line 1031
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1033
    :cond_3
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "not support type : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1037
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    .restart local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    check-cast v7, Ljava/lang/Class;

    .end local v7    # "upperBoundType":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v7, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    goto :goto_0

    .line 1045
    .end local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v8    # "wildcardType":Ljava/lang/reflect/WildcardType;
    :cond_5
    instance-of v9, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v9, :cond_7

    move-object v6, v0

    .line 1046
    check-cast v6, Ljava/lang/reflect/TypeVariable;

    .line 1047
    .local v6, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1049
    .local v4, "bounds":[Ljava/lang/reflect/Type;
    array-length v9, v4

    if-eq v9, v12, :cond_6

    .line 1050
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "not support : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1053
    :cond_6
    aget-object v3, v4, v11

    .line 1054
    .local v3, "boundType":Ljava/lang/reflect/Type;
    instance-of v9, v3, Ljava/lang/Class;

    if-eqz v9, :cond_7

    .line 1055
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1056
    .restart local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    check-cast v3, Ljava/lang/Class;

    .end local v3    # "boundType":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v3, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 1061
    .end local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v4    # "bounds":[Ljava/lang/reflect/Type;
    .end local v6    # "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_7
    instance-of v9, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_8

    move-object v5, v0

    .line 1062
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 1064
    .local v5, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1065
    .restart local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, v5, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 1069
    .end local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v5    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_8
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TODO : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public parseObject()Lcom/alibaba/fastjson/JSONObject;
    .locals 3

    .prologue
    .line 1102
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v1, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1105
    .local v0, "object":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    return-object v1

    .line 1102
    .end local v0    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public parseObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 673
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 677
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 682
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v4, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 683
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 684
    const/4 v0, 0x0

    .line 704
    :goto_0
    return-object v0

    .line 687
    :cond_0
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v4, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 688
    const-class v4, [B

    if-ne p1, v4, :cond_1

    .line 689
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->bytesValue()[B

    move-result-object v0

    .line 690
    .local v0, "bytes":[B
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_0

    .line 694
    .end local v0    # "bytes":[B
    :cond_1
    const-class v4, [C

    if-ne p1, v4, :cond_2

    .line 695
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v3

    .line 696
    .local v3, "strVal":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 697
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    .line 701
    .end local v3    # "strVal":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 704
    .local v1, "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 705
    :catch_0
    move-exception v2

    .line 706
    .local v2, "e":Lcom/alibaba/fastjson/JSONException;
    throw v2

    .line 707
    .end local v2    # "e":Lcom/alibaba/fastjson/JSONException;
    :catch_1
    move-exception v2

    .line 708
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public parseObject(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/util/Map;

    .prologue
    .line 1098
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 55
    .param p1, "object"    # Ljava/util/Map;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .prologue
    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v33, v0

    .line 163
    .local v33, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v48, v0

    .line 164
    .local v48, "token":I
    const/16 v51, 0x8

    move/from16 v0, v48

    move/from16 v1, v51

    if-ne v0, v1, :cond_1

    .line 165
    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 166
    const/16 p1, 0x0

    .line 658
    .end local p1    # "object":Ljava/util/Map;
    :cond_0
    :goto_0
    return-object p1

    .line 169
    .restart local p1    # "object":Ljava/util/Map;
    :cond_1
    const/16 v51, 0xc

    move/from16 v0, v48

    move/from16 v1, v51

    if-eq v0, v1, :cond_2

    const/16 v51, 0x10

    move/from16 v0, v48

    move/from16 v1, v51

    if-eq v0, v1, :cond_2

    .line 170
    new-instance v51, Lcom/alibaba/fastjson/JSONException;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "syntax error, expect {, actual "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-static/range {v48 .. v48}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, ", "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v51

    .line 175
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONObject;

    move/from16 v51, v0

    if-eqz v51, :cond_5

    move-object/from16 v31, p1

    .line 176
    check-cast v31, Lcom/alibaba/fastjson/JSONObject;

    .line 177
    .local v31, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual/range {v31 .. v31}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    move-result-object v24

    .line 178
    .local v24, "innerMap":Ljava/util/Map;
    const/16 v27, 0x1

    .line 185
    .end local v31    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .local v27, "isJSONObject":Z
    :goto_1
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    move/from16 v51, v0

    sget-object v52, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v52

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v52, v0

    and-int v51, v51, v52

    if-eqz v51, :cond_6

    const/4 v5, 0x1

    .line 186
    .local v5, "allowISO8601DateFormat":Z
    :goto_2
    move-object/from16 v0, v33

    iget-boolean v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    .line 188
    .local v14, "disableCircularReferenceDetect":Z
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 190
    .local v9, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    const/16 v44, 0x0

    .line 192
    .local v44, "setContextFlag":Z
    :cond_3
    :goto_3
    :try_start_0
    move-object/from16 v0, v33

    iget-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 193
    .local v7, "ch":C
    const/16 v51, 0x22

    move/from16 v0, v51

    if-eq v7, v0, :cond_4

    const/16 v51, 0x7d

    move/from16 v0, v51

    if-eq v7, v0, :cond_4

    .line 195
    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 196
    move-object/from16 v0, v33

    iget-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 199
    :cond_4
    :goto_4
    const/16 v51, 0x2c

    move/from16 v0, v51

    if-ne v7, v0, :cond_7

    .line 200
    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 201
    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 202
    move-object/from16 v0, v33

    iget-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_4

    .line 180
    .end local v5    # "allowISO8601DateFormat":Z
    .end local v7    # "ch":C
    .end local v9    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v14    # "disableCircularReferenceDetect":Z
    .end local v24    # "innerMap":Ljava/util/Map;
    .end local v27    # "isJSONObject":Z
    .end local v44    # "setContextFlag":Z
    :cond_5
    const/16 v27, 0x0

    .line 181
    .restart local v27    # "isJSONObject":Z
    move-object/from16 v24, p1

    .restart local v24    # "innerMap":Ljava/util/Map;
    goto :goto_1

    .line 185
    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    .line 205
    .restart local v5    # "allowISO8601DateFormat":Z
    .restart local v7    # "ch":C
    .restart local v9    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v14    # "disableCircularReferenceDetect":Z
    .restart local v44    # "setContextFlag":Z
    :cond_7
    const/16 v28, 0x0

    .line 207
    .local v28, "isObjectKey":Z
    const/16 v51, 0x22

    move/from16 v0, v51

    if-ne v7, v0, :cond_9

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v51, v0

    const/16 v52, 0x22

    move-object/from16 v0, v33

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v32

    .line 210
    .local v32, "key":Ljava/lang/String;
    move-object/from16 v0, v33

    iget-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 211
    const/16 v51, 0x3a

    move/from16 v0, v51

    if-eq v7, v0, :cond_67

    .line 212
    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 213
    move-object/from16 v0, v33

    iget-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 215
    const/16 v51, 0x3a

    move/from16 v0, v51

    if-eq v7, v0, :cond_67

    .line 216
    new-instance v51, Lcom/alibaba/fastjson/JSONException;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "expect \':\' at "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, ", name "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v51
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    .end local v7    # "ch":C
    .end local v28    # "isObjectKey":Z
    .end local v32    # "key":Ljava/lang/String;
    .end local p1    # "object":Ljava/util/Map;
    :catchall_0
    move-exception v51

    if-nez v14, :cond_8

    .line 665
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 667
    :cond_8
    throw v51

    .line 219
    .restart local v7    # "ch":C
    .restart local v28    # "isObjectKey":Z
    .restart local p1    # "object":Ljava/util/Map;
    :cond_9
    const/16 v51, 0x7d

    move/from16 v0, v51

    if-ne v7, v0, :cond_b

    .line 222
    :try_start_1
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v51, v0

    add-int/lit8 v23, v51, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v33

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 223
    .local v23, "index":I
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v51, v0

    move/from16 v0, v23

    move/from16 v1, v51

    if-lt v0, v1, :cond_a

    const/16 v51, 0x1a

    .line 225
    :goto_5
    move/from16 v0, v51

    move-object/from16 v1, v33

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 227
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, v33

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 228
    const/16 v51, 0x10

    move-object/from16 v0, v33

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 664
    if-nez v14, :cond_0

    .line 665
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    goto/16 :goto_0

    .line 223
    :cond_a
    :try_start_2
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v51, v0

    .line 225
    move-object/from16 v0, v51

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v51

    goto :goto_5

    .line 230
    .end local v23    # "index":I
    :cond_b
    const/16 v51, 0x27

    move/from16 v0, v51

    if-ne v7, v0, :cond_d

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v51, v0

    const/16 v52, 0x27

    move-object/from16 v0, v33

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v32

    .line 232
    .restart local v32    # "key":Ljava/lang/String;
    move-object/from16 v0, v33

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v51, v0

    const/16 v52, 0x3a

    move/from16 v0, v51

    move/from16 v1, v52

    if-eq v0, v1, :cond_c

    .line 233
    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 235
    :cond_c
    move-object/from16 v0, v33

    iget-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 236
    const/16 v51, 0x3a

    move/from16 v0, v51

    if-eq v7, v0, :cond_67

    .line 237
    new-instance v51, Lcom/alibaba/fastjson/JSONException;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "expect \':\' at "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v51

    .line 239
    .end local v32    # "key":Ljava/lang/String;
    :cond_d
    const/16 v51, 0x1a

    move/from16 v0, v51

    if-ne v7, v0, :cond_e

    .line 240
    new-instance v51, Lcom/alibaba/fastjson/JSONException;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "syntax error, "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v51

    .line 241
    :cond_e
    const/16 v51, 0x2c

    move/from16 v0, v51

    if-ne v7, v0, :cond_f

    .line 242
    new-instance v51, Lcom/alibaba/fastjson/JSONException;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "syntax error, "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v51

    .line 243
    :cond_f
    const/16 v51, 0x30

    move/from16 v0, v51

    if-lt v7, v0, :cond_10

    const/16 v51, 0x39

    move/from16 v0, v51

    if-le v7, v0, :cond_11

    :cond_10
    const/16 v51, 0x2d

    move/from16 v0, v51

    if-ne v7, v0, :cond_14

    .line 244
    :cond_11
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, v33

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 245
    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    :try_start_3
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v51, v0

    const/16 v52, 0x2

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_13

    .line 248
    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v32

    .line 253
    .local v32, "key":Ljava/lang/Number;
    :goto_6
    if-eqz v27, :cond_12

    .line 254
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v32

    .line 259
    .end local v32    # "key":Ljava/lang/Number;
    :cond_12
    :try_start_4
    move-object/from16 v0, v33

    iget-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 260
    const/16 v51, 0x3a

    move/from16 v0, v51

    if-eq v7, v0, :cond_68

    .line 261
    new-instance v51, Lcom/alibaba/fastjson/JSONException;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "parse number key error, "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v51
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 250
    :cond_13
    const/16 v51, 0x1

    :try_start_5
    move-object/from16 v0, v33

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v32

    .restart local v32    # "key":Ljava/lang/Number;
    goto :goto_6

    .line 256
    .end local v32    # "key":Ljava/lang/Number;
    :catch_0
    move-exception v18

    .line 257
    .local v18, "ex":Ljava/lang/NumberFormatException;
    :try_start_6
    new-instance v51, Lcom/alibaba/fastjson/JSONException;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "parse number key error, "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v51

    .line 263
    .end local v18    # "ex":Ljava/lang/NumberFormatException;
    :cond_14
    const/16 v51, 0x7b

    move/from16 v0, v51

    if-eq v7, v0, :cond_15

    const/16 v51, 0x5b

    move/from16 v0, v51

    if-ne v7, v0, :cond_17

    .line 264
    :cond_15
    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v32

    .line 266
    .local v32, "key":Ljava/lang/Object;
    const/16 v28, 0x1

    move-object/from16 v51, v32

    .line 280
    .end local v32    # "key":Ljava/lang/Object;
    :goto_7
    if-nez v28, :cond_1a

    .line 283
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v52, v0

    add-int/lit8 v23, v52, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v33

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 284
    .restart local v23    # "index":I
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v52, v0

    move/from16 v0, v23

    move/from16 v1, v52

    if-lt v0, v1, :cond_19

    const/16 v7, 0x1a

    .line 286
    .end local v7    # "ch":C
    :goto_8
    move-object/from16 v0, v33

    iput-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 291
    .restart local v7    # "ch":C
    :goto_9
    const/16 v52, 0x20

    move/from16 v0, v52

    if-gt v7, v0, :cond_1b

    const/16 v52, 0x20

    move/from16 v0, v52

    if-eq v7, v0, :cond_16

    const/16 v52, 0xa

    move/from16 v0, v52

    if-eq v7, v0, :cond_16

    const/16 v52, 0xd

    move/from16 v0, v52

    if-eq v7, v0, :cond_16

    const/16 v52, 0x9

    move/from16 v0, v52

    if-eq v7, v0, :cond_16

    const/16 v52, 0xc

    move/from16 v0, v52

    if-eq v7, v0, :cond_16

    const/16 v52, 0x8

    move/from16 v0, v52

    if-ne v7, v0, :cond_1b

    .line 299
    :cond_16
    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 300
    move-object/from16 v0, v33

    iget-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_9

    .line 268
    .end local v23    # "index":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v51, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v32

    .line 269
    .local v32, "key":Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 270
    move-object/from16 v0, v33

    iget-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 271
    const/16 v51, 0x3a

    move/from16 v0, v51

    if-eq v7, v0, :cond_18

    .line 272
    new-instance v51, Lcom/alibaba/fastjson/JSONException;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "expect \':\' at "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, ", actual "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v51

    .line 275
    :cond_18
    if-eqz v27, :cond_67

    .line 276
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v51, v32

    goto/16 :goto_7

    .line 284
    .end local v32    # "key":Ljava/lang/String;
    .restart local v23    # "index":I
    :cond_19
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v52, v0

    .line 286
    move-object/from16 v0, v52

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto/16 :goto_8

    .line 306
    .end local v23    # "index":I
    :cond_1a
    move-object/from16 v0, v33

    iget-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 309
    :cond_1b
    const/16 v52, 0x0

    move/from16 v0, v52

    move-object/from16 v1, v33

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 311
    const-string v52, "@type"

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    if-ne v0, v1, :cond_2d

    sget-object v52, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 312
    move-object/from16 v0, v33

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v52

    if-nez v52, :cond_2d

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    move-object/from16 v51, v0

    const/16 v52, 0x22

    move-object/from16 v0, v33

    move-object/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v49

    .line 315
    .local v49, "typeName":Ljava/lang/String;
    const/4 v4, 0x1

    .line 316
    .local v4, "allDigits":Z
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_a
    invoke-virtual/range {v49 .. v49}, Ljava/lang/String;->length()I

    move-result v51

    move/from16 v0, v22

    move/from16 v1, v51

    if-ge v0, v1, :cond_1d

    .line 317
    move-object/from16 v0, v49

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 318
    .local v6, "c":C
    const/16 v51, 0x30

    move/from16 v0, v51

    if-lt v6, v0, :cond_1c

    const/16 v51, 0x39

    move/from16 v0, v51

    if-le v6, v0, :cond_1f

    .line 319
    :cond_1c
    const/4 v4, 0x0

    .line 324
    .end local v6    # "c":C
    :cond_1d
    const/4 v8, 0x0

    .line 326
    .local v8, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v4, :cond_1e

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    move/from16 v53, v0

    move-object/from16 v0, v51

    move-object/from16 v1, v49

    move-object/from16 v2, v52

    move/from16 v3, v53

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v8

    .line 330
    :cond_1e
    if-nez v8, :cond_20

    .line 331
    const-string v51, "@type"

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    move-object/from16 v2, v49

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 316
    .end local v8    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "c":C
    :cond_1f
    add-int/lit8 v22, v22, 0x1

    goto :goto_a

    .line 335
    .end local v6    # "c":C
    .restart local v8    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_20
    const/16 v51, 0x10

    move-object/from16 v0, v33

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 336
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v51, v0

    const/16 v52, 0xd

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_27

    .line 337
    const/16 v51, 0x10

    move-object/from16 v0, v33

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 339
    const/16 v26, 0x0

    .line 340
    .local v26, "instance":Ljava/lang/Object;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v12

    .line 341
    .local v12, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v0, v12, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    move/from16 v51, v0

    if-eqz v51, :cond_22

    .line 342
    move-object v0, v12

    check-cast v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    move-object/from16 v30, v0

    .line 343
    .local v30, "javaBeanDeserializer":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v8}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v26

    .line 345
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v51

    invoke-interface/range {v51 .. v51}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v51

    :cond_21
    :goto_b
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v52

    if-eqz v52, :cond_22

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    .line 346
    .local v36, "o":Ljava/lang/Object;
    move-object/from16 v0, v36

    check-cast v0, Ljava/util/Map$Entry;

    move-object/from16 v16, v0

    .line 347
    .local v16, "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    .line 348
    .local v17, "entryKey":Ljava/lang/Object;
    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v52, v0

    if-eqz v52, :cond_21

    .line 349
    check-cast v17, Ljava/lang/String;

    .end local v17    # "entryKey":Ljava/lang/Object;
    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v20

    .line 350
    .local v20, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v20, :cond_21

    .line 351
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v52

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_b

    .line 368
    .end local v12    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v16    # "entry":Ljava/util/Map$Entry;
    .end local v20    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v26    # "instance":Ljava/lang/Object;
    .end local v30    # "javaBeanDeserializer":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    .end local v36    # "o":Ljava/lang/Object;
    :catch_1
    move-exception v15

    .line 369
    .local v15, "e":Ljava/lang/Exception;
    :try_start_8
    new-instance v51, Lcom/alibaba/fastjson/JSONException;

    const-string v52, "create instance error"

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    invoke-direct {v0, v1, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v51
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 357
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v12    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_22
    if-nez v26, :cond_23

    .line 358
    :try_start_9
    const-class v51, Ljava/lang/Cloneable;

    move-object/from16 v0, v51

    if-ne v8, v0, :cond_25

    .line 359
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 664
    :cond_23
    :goto_c
    if-nez v14, :cond_24

    .line 665
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_24
    move-object/from16 p1, v26

    .line 367
    goto/16 :goto_0

    .line 360
    :cond_25
    :try_start_a
    const-string v51, "java.util.Collections$EmptyMap"

    move-object/from16 v0, v51

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_26

    .line 361
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v26

    .local v26, "instance":Ljava/util/Map;
    goto :goto_c

    .line 363
    .end local v26    # "instance":Ljava/util/Map;
    :cond_26
    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v26

    .local v26, "instance":Ljava/lang/Object;
    goto :goto_c

    .line 373
    .end local v12    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v26    # "instance":Ljava/lang/Object;
    :cond_27
    const/16 v51, 0x2

    :try_start_b
    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v51, v0

    if-eqz v51, :cond_28

    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v51, v0

    if-nez v51, :cond_28

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->popContext()V

    .line 379
    :cond_28
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v51

    if-lez v51, :cond_2a

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v51, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-static {v0, v8, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v35

    .line 381
    .local v35, "newObj":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 664
    if-nez v14, :cond_29

    .line 665
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_29
    move-object/from16 p1, v35

    .line 382
    goto/16 :goto_0

    .line 385
    .end local v35    # "newObj":Ljava/lang/Object;
    :cond_2a
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v12

    .line 386
    .restart local v12    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface {v12, v0, v8, v1}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 387
    .local v13, "deserialzeObject":Ljava/lang/Object;
    instance-of v0, v12, Lcom/alibaba/fastjson/parser/MapDeserializer;

    move/from16 v51, v0

    if-eqz v51, :cond_2b

    .line 388
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 664
    :cond_2b
    if-nez v14, :cond_2c

    .line 665
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_2c
    move-object/from16 p1, v13

    .line 390
    goto/16 :goto_0

    .line 393
    .end local v4    # "allDigits":Z
    .end local v8    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v13    # "deserialzeObject":Ljava/lang/Object;
    .end local v22    # "i":I
    .end local v49    # "typeName":Ljava/lang/String;
    :cond_2d
    :try_start_d
    const-string v52, "$ref"

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    if-ne v0, v1, :cond_39

    if-eqz v9, :cond_39

    sget-object v52, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 395
    move-object/from16 v0, v33

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v52

    if-nez v52, :cond_39

    .line 397
    const/16 v51, 0x4

    move-object/from16 v0, v33

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 398
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v51, v0

    const/16 v52, 0x4

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_38

    .line 399
    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v40

    .line 400
    .local v40, "ref":Ljava/lang/String;
    const/16 v51, 0xd

    move-object/from16 v0, v33

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 402
    const/16 v41, 0x0

    .line 403
    .local v41, "refValue":Ljava/lang/Object;
    const-string v51, "@"

    move-object/from16 v0, v51

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_31

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v46, v0

    .line 405
    .local v46, "thisContext":Lcom/alibaba/fastjson/parser/ParseContext;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 v47, v0

    .line 406
    .local v47, "thisObj":Ljava/lang/Object;
    move-object/from16 v0, v47

    instance-of v0, v0, [Ljava/lang/Object;

    move/from16 v51, v0

    if-nez v51, :cond_2e

    move-object/from16 v0, v47

    instance-of v0, v0, Ljava/util/Collection;

    move/from16 v51, v0

    if-eqz v51, :cond_30

    .line 407
    :cond_2e
    move-object/from16 v41, v47

    .end local v41    # "refValue":Ljava/lang/Object;
    :cond_2f
    :goto_d
    move-object/from16 p1, v41

    .line 435
    .end local v46    # "thisContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v47    # "thisObj":Ljava/lang/Object;
    .end local p1    # "object":Ljava/util/Map;
    :goto_e
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v51, v0

    const/16 v52, 0xd

    move/from16 v0, v51

    move/from16 v1, v52

    if-eq v0, v1, :cond_37

    .line 436
    new-instance v51, Lcom/alibaba/fastjson/JSONException;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "syntax error, "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v51

    .line 408
    .restart local v41    # "refValue":Ljava/lang/Object;
    .restart local v46    # "thisContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v47    # "thisObj":Ljava/lang/Object;
    .restart local p1    # "object":Ljava/util/Map;
    :cond_30
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v51, v0

    if-eqz v51, :cond_2f

    .line 409
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 v41, v0

    goto :goto_d

    .line 411
    .end local v46    # "thisContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v47    # "thisObj":Ljava/lang/Object;
    :cond_31
    const-string v51, ".."

    move-object/from16 v0, v51

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_33

    .line 412
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 v51, v0

    if-eqz v51, :cond_32

    .line 413
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 v41, v0

    move-object/from16 p1, v41

    goto :goto_e

    .line 415
    :cond_32
    new-instance v51, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v51

    move-object/from16 v1, v40

    invoke-direct {v0, v9, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 416
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    move-object/from16 p1, v41

    goto :goto_e

    .line 418
    :cond_33
    const-string v51, "$"

    move-object/from16 v0, v51

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_36

    .line 419
    move-object/from16 v43, v9

    .line 420
    .local v43, "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_f
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v51, v0

    if-eqz v51, :cond_34

    .line 421
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v43, v0

    goto :goto_f

    .line 424
    :cond_34
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 v51, v0

    if-eqz v51, :cond_35

    .line 425
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object/from16 v41, v0

    .end local v41    # "refValue":Ljava/lang/Object;
    :goto_10
    move-object/from16 p1, v41

    .line 430
    goto/16 :goto_e

    .line 427
    .restart local v41    # "refValue":Ljava/lang/Object;
    :cond_35
    new-instance v51, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v51

    move-object/from16 v1, v43

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 428
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_10

    .line 431
    .end local v43    # "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_36
    new-instance v51, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-object/from16 v0, v51

    move-object/from16 v1, v40

    invoke-direct {v0, v9, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 432
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    move-object/from16 p1, v41

    goto/16 :goto_e

    .line 438
    .end local v41    # "refValue":Ljava/lang/Object;
    .end local p1    # "object":Ljava/util/Map;
    :cond_37
    const/16 v51, 0x10

    move-object/from16 v0, v33

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 664
    if-nez v14, :cond_0

    .line 665
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    goto/16 :goto_0

    .line 442
    .end local v40    # "ref":Ljava/lang/String;
    .restart local p1    # "object":Ljava/util/Map;
    :cond_38
    :try_start_e
    new-instance v51, Lcom/alibaba/fastjson/JSONException;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "illegal ref, "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v51

    .line 446
    :cond_39
    if-nez v14, :cond_3b

    if-nez v44, :cond_3b

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v10

    .line 449
    .local v10, "contextR":Lcom/alibaba/fastjson/parser/ParseContext;
    if-nez v9, :cond_3a

    .line 450
    move-object v9, v10

    .line 452
    :cond_3a
    const/16 v44, 0x1

    .line 456
    .end local v10    # "contextR":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_3b
    const/16 v52, 0x22

    move/from16 v0, v52

    if-ne v7, v0, :cond_41

    .line 457
    const/16 v52, 0x22

    move-object/from16 v0, v33

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanStringValue(C)Ljava/lang/String;

    move-result-object v45

    .line 458
    .local v45, "strValue":Ljava/lang/String;
    move-object/from16 v50, v45

    .line 460
    .local v50, "value":Ljava/lang/String;
    if-eqz v5, :cond_3d

    .line 461
    new-instance v29, Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object/from16 v0, v29

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;)V

    .line 462
    .local v29, "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    const/16 v52, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(Z)Z

    move-result v52

    if-eqz v52, :cond_3c

    .line 463
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v50

    .line 465
    .end local v50    # "value":Ljava/lang/String;
    :cond_3c
    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 468
    .end local v29    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :cond_3d
    if-eqz v24, :cond_40

    .line 469
    move-object/from16 v0, v24

    move-object/from16 v1, v51

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    .end local v45    # "strValue":Ljava/lang/String;
    :cond_3e
    :goto_11
    move-object/from16 v0, v33

    iget-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 608
    const/16 v51, 0x2c

    move/from16 v0, v51

    if-eq v7, v0, :cond_3f

    const/16 v51, 0x7d

    move/from16 v0, v51

    if-eq v7, v0, :cond_3f

    .line 609
    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 610
    move-object/from16 v0, v33

    iget-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 613
    :cond_3f
    const/16 v51, 0x2c

    move/from16 v0, v51

    if-ne v7, v0, :cond_5d

    .line 616
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v51, v0

    add-int/lit8 v23, v51, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v33

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 617
    .restart local v23    # "index":I
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v51, v0

    move/from16 v0, v23

    move/from16 v1, v51

    if-lt v0, v1, :cond_5c

    const/16 v51, 0x1a

    .line 619
    :goto_12
    move/from16 v0, v51

    move-object/from16 v1, v33

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto/16 :goto_3

    .line 471
    .end local v23    # "index":I
    .restart local v45    # "strValue":Ljava/lang/String;
    :cond_40
    move-object/from16 v0, p1

    move-object/from16 v1, v51

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 473
    .end local v45    # "strValue":Ljava/lang/String;
    :cond_41
    const/16 v52, 0x30

    move/from16 v0, v52

    if-lt v7, v0, :cond_42

    const/16 v52, 0x39

    move/from16 v0, v52

    if-le v7, v0, :cond_43

    :cond_42
    const/16 v52, 0x2d

    move/from16 v0, v52

    if-ne v7, v0, :cond_44

    .line 474
    :cond_43
    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumberValue()Ljava/lang/Number;

    move-result-object v50

    .line 475
    .local v50, "value":Ljava/lang/Number;
    move-object/from16 v0, v24

    move-object/from16 v1, v51

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 476
    .end local v50    # "value":Ljava/lang/Number;
    :cond_44
    const/16 v52, 0x5b

    move/from16 v0, v52

    if-ne v7, v0, :cond_4a

    .line 477
    const/16 v52, 0xe

    move/from16 v0, v52

    move-object/from16 v1, v33

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 480
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v52, v0

    add-int/lit8 v23, v52, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v33

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 481
    .restart local v23    # "index":I
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v52, v0

    move/from16 v0, v23

    move/from16 v1, v52

    if-lt v0, v1, :cond_46

    const/16 v52, 0x1a

    .line 483
    :goto_13
    move/from16 v0, v52

    move-object/from16 v1, v33

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 485
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v34, "list":Ljava/util/ArrayList;
    if-eqz p2, :cond_47

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v52

    const-class v53, Ljava/lang/Integer;

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    if-ne v0, v1, :cond_47

    const/16 v39, 0x1

    .line 488
    .local v39, "parentIsArray":Z
    :goto_14
    if-nez v39, :cond_45

    .line 489
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 492
    :cond_45
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 493
    new-instance v50, Lcom/alibaba/fastjson/JSONArray;

    move-object/from16 v0, v50

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONArray;-><init>(Ljava/util/List;)V

    .line 494
    .local v50, "value":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v24, :cond_48

    .line 495
    move-object/from16 v0, v24

    move-object/from16 v1, v51

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    :goto_15
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v48, v0

    .line 501
    const/16 v51, 0xd

    move/from16 v0, v48

    move/from16 v1, v51

    if-ne v0, v1, :cond_49

    .line 502
    const/16 v51, 0x10

    move-object/from16 v0, v33

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 664
    if-nez v14, :cond_0

    .line 665
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    goto/16 :goto_0

    .line 481
    .end local v34    # "list":Ljava/util/ArrayList;
    .end local v39    # "parentIsArray":Z
    .end local v50    # "value":Lcom/alibaba/fastjson/JSONArray;
    :cond_46
    :try_start_f
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v52, v0

    .line 483
    move-object/from16 v0, v52

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v52

    goto :goto_13

    .line 487
    .restart local v34    # "list":Ljava/util/ArrayList;
    :cond_47
    const/16 v39, 0x0

    goto :goto_14

    .line 497
    .restart local v39    # "parentIsArray":Z
    .restart local v50    # "value":Lcom/alibaba/fastjson/JSONArray;
    :cond_48
    move-object/from16 v0, p1

    move-object/from16 v1, v51

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 504
    :cond_49
    const/16 v51, 0x10

    move/from16 v0, v48

    move/from16 v1, v51

    if-eq v0, v1, :cond_3

    .line 507
    new-instance v51, Lcom/alibaba/fastjson/JSONException;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "syntax error, "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v51

    .line 509
    .end local v23    # "index":I
    .end local v34    # "list":Ljava/util/ArrayList;
    .end local v39    # "parentIsArray":Z
    .end local v50    # "value":Lcom/alibaba/fastjson/JSONArray;
    :cond_4a
    const/16 v52, 0x7b

    move/from16 v0, v52

    if-ne v7, v0, :cond_57

    .line 511
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v52, v0

    add-int/lit8 v23, v52, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v33

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 512
    .restart local v23    # "index":I
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v52, v0

    move/from16 v0, v23

    move/from16 v1, v52

    if-lt v0, v1, :cond_52

    const/16 v52, 0x1a

    .line 514
    :goto_16
    move/from16 v0, v52

    move-object/from16 v1, v33

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 515
    const/16 v52, 0xc

    move/from16 v0, v52

    move-object/from16 v1, v33

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 518
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v39, v0

    .line 520
    .restart local v39    # "parentIsArray":Z
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    move/from16 v52, v0

    sget-object v53, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v53

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v53, v0

    and-int v52, v52, v53

    if-eqz v52, :cond_53

    new-instance v25, Lcom/alibaba/fastjson/JSONObject;

    new-instance v52, Ljava/util/LinkedHashMap;

    invoke-direct/range {v52 .. v52}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 524
    .local v25, "input":Lcom/alibaba/fastjson/JSONObject;
    :goto_17
    const/4 v11, 0x0

    .line 526
    .local v11, "ctxLocal":Lcom/alibaba/fastjson/parser/ParseContext;
    if-nez v14, :cond_4b

    if-nez v39, :cond_4b

    .line 528
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v51

    invoke-virtual {v0, v9, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v11

    .line 531
    :cond_4b
    const/16 v37, 0x0

    .line 532
    .local v37, "obj":Ljava/lang/Object;
    const/16 v38, 0x0

    .line 533
    .local v38, "objParsed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    move-object/from16 v52, v0

    if-eqz v52, :cond_4c

    .line 534
    if-eqz v51, :cond_54

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v42

    .line 535
    .local v42, "resolveFieldName":Ljava/lang/String;
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, p1

    move-object/from16 v2, v42

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;->resolve(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v21

    .line 536
    .local v21, "fieldType":Ljava/lang/reflect/Type;
    if-eqz v21, :cond_4c

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v19

    .line 538
    .local v19, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, v51

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    .line 539
    const/16 v38, 0x1

    .line 542
    .end local v19    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v21    # "fieldType":Ljava/lang/reflect/Type;
    .end local v37    # "obj":Ljava/lang/Object;
    .end local v42    # "resolveFieldName":Ljava/lang/String;
    :cond_4c
    if-nez v38, :cond_4d

    .line 543
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    .line 545
    :cond_4d
    if-eqz v11, :cond_4e

    move-object/from16 v0, v25

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_4e

    .line 546
    move-object/from16 v0, p1

    iput-object v0, v11, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 549
    :cond_4e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    move/from16 v52, v0

    const/16 v53, 0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_4f

    .line 550
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V

    .line 553
    :cond_4f
    if-eqz v24, :cond_55

    .line 554
    move-object/from16 v0, v24

    move-object/from16 v1, v51

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    :goto_19
    if-eqz v39, :cond_50

    .line 560
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v51

    invoke-virtual {v0, v9, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 563
    :cond_50
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v48, v0

    .line 564
    const/16 v51, 0xd

    move/from16 v0, v48

    move/from16 v1, v51

    if-ne v0, v1, :cond_56

    .line 565
    const/16 v51, 0x10

    move-object/from16 v0, v33

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 567
    if-nez v14, :cond_51

    .line 568
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 664
    :cond_51
    if-nez v14, :cond_0

    .line 665
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    goto/16 :goto_0

    .line 512
    .end local v11    # "ctxLocal":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v25    # "input":Lcom/alibaba/fastjson/JSONObject;
    .end local v38    # "objParsed":Z
    .end local v39    # "parentIsArray":Z
    :cond_52
    :try_start_10
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v52, v0

    .line 514
    move-object/from16 v0, v52

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v52

    goto/16 :goto_16

    .line 520
    .restart local v39    # "parentIsArray":Z
    :cond_53
    new-instance v25, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v25 .. v25}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto/16 :goto_17

    .line 534
    .restart local v11    # "ctxLocal":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v25    # "input":Lcom/alibaba/fastjson/JSONObject;
    .restart local v37    # "obj":Ljava/lang/Object;
    .restart local v38    # "objParsed":Z
    :cond_54
    const/16 v42, 0x0

    goto/16 :goto_18

    .line 556
    .end local v37    # "obj":Ljava/lang/Object;
    :cond_55
    move-object/from16 v0, p1

    move-object/from16 v1, v51

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 571
    :cond_56
    const/16 v51, 0x10

    move/from16 v0, v48

    move/from16 v1, v51

    if-eq v0, v1, :cond_3

    .line 574
    new-instance v51, Lcom/alibaba/fastjson/JSONException;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "syntax error, "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v51

    .line 576
    .end local v11    # "ctxLocal":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v23    # "index":I
    .end local v25    # "input":Lcom/alibaba/fastjson/JSONObject;
    .end local v38    # "objParsed":Z
    .end local v39    # "parentIsArray":Z
    :cond_57
    const/16 v52, 0x74

    move/from16 v0, v52

    if-ne v7, v0, :cond_58

    .line 577
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v52, v0

    const-string v53, "true"

    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v54, v0

    invoke-virtual/range {v52 .. v54}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v52

    if-eqz v52, :cond_3e

    .line 578
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, 0x3

    move/from16 v0, v52

    move-object/from16 v1, v33

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 579
    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 580
    sget-object v52, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 582
    :cond_58
    const/16 v52, 0x66

    move/from16 v0, v52

    if-ne v7, v0, :cond_59

    .line 583
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v52, v0

    const-string v53, "false"

    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v54, v0

    invoke-virtual/range {v52 .. v54}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v52

    if-eqz v52, :cond_3e

    .line 584
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, 0x4

    move/from16 v0, v52

    move-object/from16 v1, v33

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 585
    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 586
    sget-object v52, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 589
    :cond_59
    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 590
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v50

    .line 592
    .local v50, "value":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v52

    const-class v53, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    if-ne v0, v1, :cond_5a

    .line 593
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v51

    .line 592
    :cond_5a
    move-object/from16 v0, p1

    move-object/from16 v1, v51

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v51, v0

    const/16 v52, 0xd

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_5b

    .line 598
    const/16 v51, 0x10

    move-object/from16 v0, v33

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 664
    if-nez v14, :cond_0

    .line 665
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    goto/16 :goto_0

    .line 600
    :cond_5b
    :try_start_11
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move/from16 v51, v0

    const/16 v52, 0x10

    move/from16 v0, v51

    move/from16 v1, v52

    if-eq v0, v1, :cond_3

    .line 603
    new-instance v51, Lcom/alibaba/fastjson/JSONException;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "syntax error, "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v51

    .line 617
    .end local v50    # "value":Ljava/lang/Object;
    .restart local v23    # "index":I
    :cond_5c
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v51, v0

    .line 619
    move-object/from16 v0, v51

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v51

    goto/16 :goto_12

    .line 622
    .end local v23    # "index":I
    :cond_5d
    const/16 v51, 0x7d

    move/from16 v0, v51

    if-ne v7, v0, :cond_66

    .line 625
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v51, v0

    add-int/lit8 v23, v51, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v33

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 626
    .restart local v23    # "index":I
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v51, v0

    move/from16 v0, v23

    move/from16 v1, v51

    if-lt v0, v1, :cond_5f

    const/16 v7, 0x1a

    .line 628
    .end local v7    # "ch":C
    :goto_1a
    move-object/from16 v0, v33

    iput-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 630
    .restart local v7    # "ch":C
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, v33

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 632
    const/16 v51, 0x2c

    move/from16 v0, v51

    if-ne v7, v0, :cond_61

    .line 633
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v51, v0

    add-int/lit8 v23, v51, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v33

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 634
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v51, v0

    move/from16 v0, v23

    move/from16 v1, v51

    if-lt v0, v1, :cond_60

    const/16 v51, 0x1a

    .line 636
    :goto_1b
    move/from16 v0, v51

    move-object/from16 v1, v33

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 637
    const/16 v51, 0x10

    move/from16 v0, v51

    move-object/from16 v1, v33

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 654
    :goto_1c
    if-nez v14, :cond_5e

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 664
    :cond_5e
    if-nez v14, :cond_0

    .line 665
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    goto/16 :goto_0

    .line 626
    :cond_5f
    :try_start_12
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v51, v0

    .line 628
    move-object/from16 v0, v51

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_1a

    .line 634
    :cond_60
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v51, v0

    .line 636
    move-object/from16 v0, v51

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v51

    goto :goto_1b

    .line 638
    :cond_61
    const/16 v51, 0x7d

    move/from16 v0, v51

    if-ne v7, v0, :cond_63

    .line 639
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v51, v0

    add-int/lit8 v23, v51, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v33

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 640
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v51, v0

    move/from16 v0, v23

    move/from16 v1, v51

    if-lt v0, v1, :cond_62

    const/16 v51, 0x1a

    .line 642
    :goto_1d
    move/from16 v0, v51

    move-object/from16 v1, v33

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 643
    const/16 v51, 0xd

    move/from16 v0, v51

    move-object/from16 v1, v33

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1c

    .line 640
    :cond_62
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v51, v0

    .line 642
    move-object/from16 v0, v51

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v51

    goto :goto_1d

    .line 644
    :cond_63
    const/16 v51, 0x5d

    move/from16 v0, v51

    if-ne v7, v0, :cond_65

    .line 645
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v51, v0

    add-int/lit8 v23, v51, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v33

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 646
    move-object/from16 v0, v33

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v51, v0

    move/from16 v0, v23

    move/from16 v1, v51

    if-lt v0, v1, :cond_64

    const/16 v51, 0x1a

    .line 648
    :goto_1e
    move/from16 v0, v51

    move-object/from16 v1, v33

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 649
    const/16 v51, 0xf

    move/from16 v0, v51

    move-object/from16 v1, v33

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1c

    .line 646
    :cond_64
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v51, v0

    .line 648
    move-object/from16 v0, v51

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v51

    goto :goto_1e

    .line 651
    :cond_65
    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_1c

    .line 660
    .end local v23    # "index":I
    :cond_66
    new-instance v51, Lcom/alibaba/fastjson/JSONException;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "syntax error, "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v33 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v51
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .restart local v32    # "key":Ljava/lang/String;
    :cond_67
    move-object/from16 v51, v32

    goto/16 :goto_7

    .end local v32    # "key":Ljava/lang/String;
    :cond_68
    move-object/from16 v51, v32

    goto/16 :goto_7
.end method

.method public parseObject(Ljava/lang/Object;)V
    .locals 13
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 920
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 921
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 922
    .local v0, "beanDeser":Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v10, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    .line 923
    .local v2, "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v10, v2, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    if-eqz v10, :cond_0

    move-object v0, v2

    .line 924
    check-cast v0, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;

    .line 929
    :cond_0
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v9, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 930
    .local v9, "token":I
    const/16 v10, 0xc

    if-eq v9, v10, :cond_2

    const/16 v10, 0x10

    if-eq v9, v10, :cond_2

    .line 931
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "syntax error, expect {, actual "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v9}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 943
    .local v8, "key":Ljava/lang/String;
    :cond_1
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v10, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v11, 0x10

    if-ne v10, v11, :cond_3

    .line 936
    .end local v8    # "key":Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v11, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v8

    .line 938
    .restart local v8    # "key":Ljava/lang/String;
    if-nez v8, :cond_3

    .line 939
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v10, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v11, 0xd

    if-ne v10, v11, :cond_1

    .line 940
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 999
    :goto_0
    return-void

    .line 948
    :cond_3
    const/4 v4, 0x0

    .line 949
    .local v4, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v0, :cond_4

    .line 950
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v4

    .line 953
    :cond_4
    if-nez v4, :cond_6

    .line 954
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v10, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v11, v11, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v10, v11

    if-nez v10, :cond_5

    .line 955
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setter not found, class "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", property "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 958
    :cond_5
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 959
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    .line 961
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v10, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v11, 0xd

    if-ne v10, v11, :cond_2

    .line 962
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_0

    .line 968
    :cond_6
    iget-object v10, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 969
    .local v3, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v10, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 971
    .local v5, "fieldType":Ljava/lang/reflect/Type;
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v10, :cond_7

    .line 972
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 973
    sget-object v10, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    const/4 v11, 0x0

    invoke-virtual {v10, p0, v5, v11}, Lcom/alibaba/fastjson/serializer/IntegerCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 987
    :goto_1
    invoke-virtual {v4, p1, v6}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 990
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v10, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v11, 0x10

    if-eq v10, v11, :cond_2

    .line 994
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v10, v10, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v11, 0xd

    if-ne v10, v11, :cond_2

    .line 995
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_0

    .line 974
    :cond_7
    const-class v10, Ljava/lang/String;

    if-ne v3, v10, :cond_8

    .line 975
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 976
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseString()Ljava/lang/String;

    move-result-object v6

    .local v6, "fieldValue":Ljava/lang/String;
    goto :goto_1

    .line 977
    .end local v6    # "fieldValue":Ljava/lang/String;
    :cond_8
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v10, :cond_9

    .line 978
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 979
    sget-object v10, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    const/4 v11, 0x0

    invoke-virtual {v10, p0, v5, v11}, Lcom/alibaba/fastjson/serializer/IntegerCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .local v6, "fieldValue":Ljava/lang/Object;
    goto :goto_1

    .line 981
    .end local v6    # "fieldValue":Ljava/lang/Object;
    :cond_9
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v10, v3, v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v7

    .line 983
    .local v7, "fieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    .line 984
    const/4 v10, 0x0

    invoke-interface {v7, p0, v5, v10}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "fieldValue":Ljava/lang/Object;
    goto :goto_1
.end method

.method public parseString()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/16 v4, 0x1a

    .line 1522
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v1, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1523
    .local v1, "token":I
    const/4 v5, 0x4

    if-ne v1, v5, :cond_6

    .line 1524
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    .line 1525
    .local v2, "val":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-char v5, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_1

    .line 1526
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v6, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v6, 0x1

    iput v0, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1527
    .local v0, "index":I
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v6, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v6, :cond_0

    .line 1529
    :goto_0
    iput-char v4, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1530
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iput v7, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1561
    .end local v0    # "index":I
    .end local v2    # "val":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 1527
    .restart local v0    # "index":I
    .restart local v2    # "val":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1529
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_0

    .line 1531
    .end local v0    # "index":I
    :cond_1
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-char v5, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v6, 0x5d

    if-ne v5, v6, :cond_3

    .line 1532
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v6, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v6, 0x1

    iput v0, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1533
    .restart local v0    # "index":I
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v6, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v6, :cond_2

    .line 1535
    :goto_2
    iput-char v4, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1536
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v5, 0xf

    iput v5, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    .line 1533
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1535
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_2

    .line 1537
    .end local v0    # "index":I
    :cond_3
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-char v5, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v6, 0x7d

    if-ne v5, v6, :cond_5

    .line 1538
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v6, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v6, 0x1

    iput v0, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1539
    .restart local v0    # "index":I
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget v6, v6, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v6, :cond_4

    .line 1541
    :goto_3
    iput-char v4, v5, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1542
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v5, 0xd

    iput v5, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    .line 1539
    :cond_4
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1541
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_3

    .line 1544
    .end local v0    # "index":I
    :cond_5
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_1

    .line 1549
    .end local v2    # "val":Ljava/lang/String;
    :cond_6
    const/4 v4, 0x2

    if-ne v1, v4, :cond_7

    .line 1550
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v2

    .line 1551
    .restart local v2    # "val":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_1

    .line 1555
    .end local v2    # "val":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v3

    .line 1557
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_8

    .line 1558
    const/4 v2, 0x0

    goto :goto_1

    .line 1561
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method protected popContext()V
    .locals 3

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1354
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    iget v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1355
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    .line 1356
    return-void
.end method

.method protected setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    .locals 6
    .param p1, "parent"    # Lcom/alibaba/fastjson/parser/ParseContext;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 1359
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-boolean v3, v3, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    if-eqz v3, :cond_0

    .line 1360
    const/4 v3, 0x0

    .line 1376
    :goto_0
    return-object v3

    .line 1363
    :cond_0
    new-instance v3, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-direct {v3, p1, p2, p3}, Lcom/alibaba/fastjson/parser/ParseContext;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1365
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    .line 1366
    .local v0, "i":I
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    if-nez v3, :cond_2

    .line 1367
    const/16 v3, 0x8

    new-array v3, v3, [Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1374
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    aput-object v4, v3, v0

    .line 1376
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_0

    .line 1368
    :cond_2
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    .line 1369
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v2, v3, 0x2

    .line 1370
    .local v2, "newLen":I
    new-array v1, v2, [Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1371
    .local v1, "newArray":[Lcom/alibaba/fastjson/parser/ParseContext;
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1372
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_1
.end method

.method public setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
    .locals 1
    .param p1, "context"    # Lcom/alibaba/fastjson/parser/ParseContext;

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-boolean v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    if-eqz v0, :cond_0

    .line 1350
    :goto_0
    return-void

    .line 1349
    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contex:Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_0
.end method

.method public setDateFomrat(Ljava/text/DateFormat;)V
    .locals 0
    .param p1, "dateFormat"    # Ljava/text/DateFormat;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    .line 115
    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "dateFormat"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    .line 111
    return-void
.end method

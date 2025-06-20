.class public Lcom/ds/daisi/util/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# static fields
.field private static final PROPFILE_BESTRESOLUTION:Ljava/lang/String; = "BestResolution"

.field private static final PROPFILE_BESTRESOLUTION_X:Ljava/lang/String; = "X"

.field private static final PROPFILE_BESTRESOLUTION_Y:Ljava/lang/String; = "Y"

.field private static final PROPFILE_CHANGEFILELIST:Ljava/lang/String; = "ChangeFileList"

.field private static final PROPFILE_DESCRIPTION:Ljava/lang/String; = "Description"

.field private static final PROPFILE_FILEVERSION:Ljava/lang/String; = "FileVersion"

.field private static final PROPFILE_SCRIPTID:Ljava/lang/String; = "id"

.field private static final PROPFILE_SCRIPTNAME:Ljava/lang/String; = "Name"

.field private static final PROPFILE_SUFFIX_ATC:Ljava/lang/String; = ".atc"

.field private static final PROPFILE_SUFFIX_MQ:Ljava/lang/String; = ".mq"

.field private static final PROPFILE_SUFFIX_PROP:Ljava/lang/String; = ".prop"

.field private static final PROPFILE_SUFFIX_RTD:Ljava/lang/String; = ".rtd"

.field private static final PROPFILE_SUFFIX_UI:Ljava/lang/String; = ".ui"

.field private static final PROP_FILE_APP_ID:Ljava/lang/String; = "AppID"

.field private static final PROP_SEL_ID:Ljava/lang/String; = "SelID"

.field private static final PROP_VERSION:Ljava/lang/String; = "Version"

.field private static final SCRIPT_VERSION:Ljava/lang/String; = "ScriptVersion"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parBestResolutionJson(Landroid/util/JsonReader;)Lcom/ds/daisi/entity/BestResolution;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    new-instance v0, Lcom/ds/daisi/entity/BestResolution;

    invoke-direct {v0}, Lcom/ds/daisi/entity/BestResolution;-><init>()V

    .line 81
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 82
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X"

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/entity/BestResolution;->setX(I)V

    goto :goto_0

    :cond_0
    const-string v2, "Y"

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/entity/BestResolution;->setY(I)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method private static parFileVersionJson(Landroid/util/JsonReader;)Lcom/ds/daisi/entity/FileVersion;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    new-instance v0, Lcom/ds/daisi/entity/FileVersion;

    invoke-direct {v0}, Lcom/ds/daisi/entity/FileVersion;-><init>()V

    .line 107
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 108
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 109
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".atc"

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/entity/FileVersion;->setAtc(I)V

    goto :goto_0

    :cond_0
    const-string v2, ".mq"

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/entity/FileVersion;->setMq(I)V

    goto :goto_0

    :cond_1
    const-string v2, ".prop"

    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/entity/FileVersion;->setProp(I)V

    goto :goto_0

    :cond_2
    const-string v2, ".ui"

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 117
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/entity/FileVersion;->setUI(I)V

    goto :goto_0

    :cond_3
    const-string v2, ".rtd"

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 119
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/entity/FileVersion;->setRtd(I)V

    goto :goto_0

    .line 121
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 124
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method public static parPropJson(Ljava/io/InputStream;)Lcom/ds/daisi/entity/Script;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "GBK"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 40
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 41
    new-instance p0, Lcom/ds/daisi/entity/Script;

    invoke-direct {p0}, Lcom/ds/daisi/entity/Script;-><init>()V

    .line 42
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 43
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppID"

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ds/daisi/entity/Script;->setAppId(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "BestResolution"

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    invoke-static {v0}, Lcom/ds/daisi/util/JsonUtils;->parBestResolutionJson(Landroid/util/JsonReader;)Lcom/ds/daisi/entity/BestResolution;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ds/daisi/entity/Script;->setBestResolution(Lcom/ds/daisi/entity/BestResolution;)V

    goto :goto_0

    :cond_2
    const-string v2, "ChangeFileList"

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 49
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ds/daisi/entity/Script;->setChangeFileList(I)V

    goto :goto_0

    :cond_3
    const-string v2, "Description"

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 51
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ds/daisi/entity/Script;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v2, "FileVersion"

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 53
    invoke-static {v0}, Lcom/ds/daisi/util/JsonUtils;->parFileVersionJson(Landroid/util/JsonReader;)Lcom/ds/daisi/entity/FileVersion;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ds/daisi/entity/Script;->setFileVersion(Lcom/ds/daisi/entity/FileVersion;)V

    goto :goto_0

    :cond_5
    const-string v2, "Name"

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 55
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ds/daisi/entity/Script;->setName(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v2, "id"

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 57
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ds/daisi/entity/Script;->setId(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v2, "SelID"

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 60
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ds/daisi/entity/Script;->setSelId(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v2, "Version"

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ds/daisi/entity/Script;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 66
    :cond_9
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    return-object p0
.end method

.method public static parseScriptInfoJson(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 129
    new-instance v0, Lcom/ds/daisi/entity/ScriptInfo;

    invoke-direct {v0}, Lcom/ds/daisi/entity/ScriptInfo;-><init>()V

    .line 131
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 132
    new-instance p1, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "GBK"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 133
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 135
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 136
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ScriptVersion"

    .line 137
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 138
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ds/daisi/entity/ScriptInfo;->setScriptVersion(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 145
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 147
    :goto_1
    invoke-virtual {v0}, Lcom/ds/daisi/entity/ScriptInfo;->getScriptVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseScriptInfoJson(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .line 151
    new-instance v0, Lcom/ds/daisi/entity/ScriptInfo;

    invoke-direct {v0}, Lcom/ds/daisi/entity/ScriptInfo;-><init>()V

    .line 153
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 154
    new-instance p0, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "GBK"

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 155
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 157
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScriptVersion"

    .line 159
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ds/daisi/entity/ScriptInfo;->setScriptVersion(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 167
    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 169
    :goto_1
    invoke-virtual {v0}, Lcom/ds/daisi/entity/ScriptInfo;->getScriptVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;
.super Ljava/lang/Object;
.source "DefaultUipJsonParser.java"

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDefaultFlowLayoutChildLayoutParams:Lcom/cyjh/mobileanjian/ipc/uip/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    .line 40
    new-instance p1, Lcom/cyjh/mobileanjian/ipc/uip/b$a;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Lcom/cyjh/mobileanjian/ipc/uip/b$a;-><init>(II)V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mDefaultFlowLayoutChildLayoutParams:Lcom/cyjh/mobileanjian/ipc/uip/b$a;

    .line 44
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mDefaultFlowLayoutChildLayoutParams:Lcom/cyjh/mobileanjian/ipc/uip/b$a;

    const/16 v0, 0x11

    iput v0, p1, Lcom/cyjh/mobileanjian/ipc/uip/b$a;->a:I

    return-void
.end method


# virtual methods
.method public parseButton(Landroid/util/JsonReader;)Landroid/widget/Button;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 141
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    .line 142
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 143
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 144
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cyjh/mqsdk/R$integer;->ui_textSize_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 146
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 147
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 148
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_name:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_textview_textcontent:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 159
    :cond_2
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_onclick:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 161
    sget v1, Lcom/cyjh/mqsdk/R$id;->uip_function_key:I

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 163
    :cond_3
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_textsize:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 164
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    .line 166
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$integer;->ui_textsize_min:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_4

    int-to-float v1, v1

    .line 167
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    goto :goto_0

    .line 168
    :cond_4
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$integer;->ui_textSize_default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 169
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cyjh/mqsdk/R$integer;->ui_textsize_min:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    goto/16 :goto_0

    .line 171
    :cond_5
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_layout_height:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 172
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    .line 174
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$integer;->ui_default_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 175
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHeight(I)V

    goto/16 :goto_0

    .line 177
    :cond_6
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_layout_width:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 178
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    .line 180
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$integer;->ui_default_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 181
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setWidth(I)V

    goto/16 :goto_0

    .line 187
    :cond_7
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 190
    :cond_8
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method public parseCheckBox(Landroid/util/JsonReader;)Landroid/widget/CheckBox;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 297
    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 298
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 299
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cyjh/mqsdk/R$integer;->ui_textSize_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 301
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 302
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 303
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 305
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_name:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 306
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 308
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 310
    :cond_1
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_onclick:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 312
    sget v1, Lcom/cyjh/mqsdk/R$id;->uip_function_key:I

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 314
    :cond_2
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_checkbox_hintcontent:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 315
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 318
    :cond_3
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_checkbox_checked:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 319
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 322
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 324
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 326
    :cond_5
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_textsize:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 327
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    .line 329
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$integer;->ui_textsize_min:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_6

    int-to-float v1, v1

    .line 330
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextSize(F)V

    goto/16 :goto_0

    .line 331
    :cond_6
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$integer;->ui_textSize_default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 332
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cyjh/mqsdk/R$integer;->ui_textsize_min:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextSize(F)V

    goto/16 :goto_0

    .line 334
    :cond_7
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_layout_height:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 335
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    .line 337
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$integer;->ui_default_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 338
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setHeight(I)V

    goto/16 :goto_0

    .line 340
    :cond_8
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_layout_width:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 341
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    .line 343
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$integer;->ui_default_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 344
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setWidth(I)V

    goto/16 :goto_0

    .line 350
    :cond_9
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 353
    :cond_a
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method public parseEditText(Landroid/util/JsonReader;)Landroid/widget/EditText;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 198
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 199
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 200
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cyjh/mqsdk/R$integer;->ui_textSize_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    const/4 v1, 0x1

    .line 202
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 203
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 204
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 205
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 207
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_name:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 211
    :cond_1
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_edittext_hintcontent:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 212
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_textsize:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 216
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    .line 218
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/cyjh/mqsdk/R$integer;->ui_textsize_min:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-le v2, v3, :cond_3

    int-to-float v2, v2

    .line 219
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextSize(F)V

    goto :goto_0

    .line 220
    :cond_3
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/cyjh/mqsdk/R$integer;->ui_textSize_default:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 221
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$integer;->ui_textsize_min:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextSize(F)V

    goto :goto_0

    .line 223
    :cond_4
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_layout_height:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 224
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    .line 226
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/cyjh/mqsdk/R$integer;->ui_default_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-le v2, v3, :cond_0

    .line 227
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHeight(I)V

    goto/16 :goto_0

    .line 229
    :cond_5
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_layout_width:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 230
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    .line 232
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/cyjh/mqsdk/R$integer;->ui_default_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-le v2, v3, :cond_0

    .line 233
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setWidth(I)V

    goto/16 :goto_0

    .line 235
    :cond_6
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_edittext_maxlength:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    .line 236
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    if-lez v2, :cond_0

    .line 239
    new-array v3, v1, [Landroid/text/InputFilter;

    .line 240
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v5, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v3, v4

    .line 241
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_0

    .line 243
    :cond_7
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v5, Lcom/cyjh/mqsdk/R$string;->ui_edittext_inputnumber:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 246
    :try_start_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    const/4 v2, 0x2

    .line 252
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_0

    .line 254
    :cond_8
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_edittext_defaultcontent:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 255
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 259
    :cond_9
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 262
    :cond_a
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 263
    new-instance p1, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser$1;

    invoke-direct {p1, p0}, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser$1;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    new-instance p1, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser$2;

    invoke-direct {p1, p0}, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser$2;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-object v0
.end method

.method public parseHorizontalLinearLayout(Landroid/util/JsonReader;)Lcom/cyjh/mobileanjian/ipc/uip/b;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/b;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/b;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x10

    .line 54
    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/b;->setGravity(I)V

    .line 55
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 56
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 57
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 59
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_linearlayout:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->parseHorizontalLinearLayout(Landroid/util/JsonReader;)Lcom/cyjh/mobileanjian/ipc/uip/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/b;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_textview:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->parseTextView(Landroid/util/JsonReader;)Landroid/widget/TextView;

    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mDefaultFlowLayoutChildLayoutParams:Lcom/cyjh/mobileanjian/ipc/uip/b$a;

    invoke-virtual {v0, v1, v2}, Lcom/cyjh/mobileanjian/ipc/uip/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 64
    :cond_1
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_edittext:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->parseEditText(Landroid/util/JsonReader;)Landroid/widget/EditText;

    move-result-object v1

    .line 66
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mDefaultFlowLayoutChildLayoutParams:Lcom/cyjh/mobileanjian/ipc/uip/b$a;

    invoke-virtual {v0, v1, v2}, Lcom/cyjh/mobileanjian/ipc/uip/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 67
    :cond_2
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_checkbox:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 68
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->parseCheckBox(Landroid/util/JsonReader;)Landroid/widget/CheckBox;

    move-result-object v1

    .line 69
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mDefaultFlowLayoutChildLayoutParams:Lcom/cyjh/mobileanjian/ipc/uip/b$a;

    invoke-virtual {v0, v1, v2}, Lcom/cyjh/mobileanjian/ipc/uip/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 70
    :cond_3
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_spinner:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 71
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->parseSpinner(Landroid/util/JsonReader;)Landroid/widget/Spinner;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mDefaultFlowLayoutChildLayoutParams:Lcom/cyjh/mobileanjian/ipc/uip/b$a;

    invoke-virtual {v0, v1, v2}, Lcom/cyjh/mobileanjian/ipc/uip/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 73
    :cond_4
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_button:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 74
    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->parseButton(Landroid/util/JsonReader;)Landroid/widget/Button;

    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mDefaultFlowLayoutChildLayoutParams:Lcom/cyjh/mobileanjian/ipc/uip/b$a;

    invoke-virtual {v0, v1, v2}, Lcom/cyjh/mobileanjian/ipc/uip/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 78
    :cond_5
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 81
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method public parseSpinner(Landroid/util/JsonReader;)Landroid/widget/Spinner;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 360
    new-instance v0, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 361
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 362
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    sget v1, Lcom/cyjh/mqsdk/R$drawable;->spinner_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 364
    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/Spinner;->setPadding(IIII)V

    const/4 v2, 0x3

    .line 365
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setGravity(I)V

    .line 366
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 367
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 368
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 370
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 371
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v5, Lcom/cyjh/mqsdk/R$string;->ui_name:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 372
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 374
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 376
    :cond_0
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v5, Lcom/cyjh/mqsdk/R$string;->ui_onSelect:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 378
    sget v2, Lcom/cyjh/mqsdk/R$id;->uip_function_key:I

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/Spinner;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 380
    :cond_1
    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v5, Lcom/cyjh/mqsdk/R$string;->ui_spinner_items:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 382
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 383
    :goto_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 384
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 386
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 388
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    .line 389
    new-instance v2, Lcom/cyjh/mobileanjian/ipc/uip/e;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, v3}, Lcom/cyjh/mobileanjian/ipc/uip/e;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const v3, 0x1090009

    .line 390
    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/uip/e;->setDropDownViewResource(I)V

    .line 391
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    .line 393
    :cond_3
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_spinner_defaultitem:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 394
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    .line 395
    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 396
    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    .line 404
    :cond_5
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 407
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method public parseTextView(Landroid/util/JsonReader;)Landroid/widget/TextView;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 89
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 91
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cyjh/mqsdk/R$integer;->ui_textSize_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 94
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 95
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 96
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_name:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_textview_textcontent:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 106
    :cond_2
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_textsize:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 107
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    .line 109
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$integer;->ui_textsize_min:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_3

    int-to-float v1, v1

    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 111
    :cond_3
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$integer;->ui_textSize_default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 112
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cyjh/mqsdk/R$integer;->ui_textsize_min:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 114
    :cond_4
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_layout_height:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 115
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    .line 117
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$integer;->ui_default_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_0

    .line 120
    :cond_5
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_layout_width:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 121
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    .line 123
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cyjh/mqsdk/R$integer;->ui_default_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_0

    .line 130
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 133
    :cond_7
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

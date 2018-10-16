.class public Lcom/amap/api/mapcore2d/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/mapcore2d/aj;


# instance fields
.field private a:Lcom/amap/api/mapcore2d/b;

.field private b:Lcom/amap/api/mapcore2d/at;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Lcom/amap/api/maps2d/model/LatLng;

.field private g:F

.field private h:I

.field private i:Landroid/graphics/Typeface;

.field private j:Z

.field private k:F

.field private l:I

.field private m:I

.field private n:Ljava/lang/Object;

.field private o:I


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/y;Lcom/amap/api/maps2d/model/TextOptions;Lcom/amap/api/mapcore2d/at;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p3, p0, Lcom/amap/api/mapcore2d/bp;->b:Lcom/amap/api/mapcore2d/at;

    .line 56
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getText()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/amap/api/mapcore2d/bp;->c:Ljava/lang/String;

    .line 57
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getFontSize()I

    move-result p3

    iput p3, p0, Lcom/amap/api/mapcore2d/bp;->d:I

    .line 58
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getFontColor()I

    move-result p3

    iput p3, p0, Lcom/amap/api/mapcore2d/bp;->e:I

    .line 59
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object p3

    iput-object p3, p0, Lcom/amap/api/mapcore2d/bp;->f:Lcom/amap/api/maps2d/model/LatLng;

    .line 60
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getRotate()F

    move-result p3

    iput p3, p0, Lcom/amap/api/mapcore2d/bp;->g:F

    .line 61
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getBackgroundColor()I

    move-result p3

    iput p3, p0, Lcom/amap/api/mapcore2d/bp;->h:I

    .line 62
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p3

    iput-object p3, p0, Lcom/amap/api/mapcore2d/bp;->i:Landroid/graphics/Typeface;

    .line 63
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->isVisible()Z

    move-result p3

    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/bp;->j:Z

    .line 64
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getZIndex()F

    move-result p3

    iput p3, p0, Lcom/amap/api/mapcore2d/bp;->k:F

    .line 65
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getAlignX()I

    move-result p3

    iput p3, p0, Lcom/amap/api/mapcore2d/bp;->l:I

    .line 66
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getAlignY()I

    move-result p3

    iput p3, p0, Lcom/amap/api/mapcore2d/bp;->m:I

    .line 67
    invoke-virtual {p2}, Lcom/amap/api/maps2d/model/TextOptions;->getObject()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore2d/bp;->n:Ljava/lang/Object;

    .line 68
    check-cast p1, Lcom/amap/api/mapcore2d/b;

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bp;->a:Lcom/amap/api/mapcore2d/b;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 108
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bp;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bp;->f:Lcom/amap/api/maps2d/model/LatLng;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 111
    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 112
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bp;->i:Landroid/graphics/Typeface;

    if-nez v1, :cond_1

    .line 113
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/bp;->i:Landroid/graphics/Typeface;

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bp;->i:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v1, 0x1

    .line 116
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 117
    iget v2, p0, Lcom/amap/api/mapcore2d/bp;->d:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 119
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bp;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 120
    iget v3, p0, Lcom/amap/api/mapcore2d/bp;->d:I

    int-to-float v3, v3

    .line 122
    iget v4, p0, Lcom/amap/api/mapcore2d/bp;->h:I

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 124
    new-instance v4, Lcom/amap/api/mapcore2d/w;

    iget-object v5, p0, Lcom/amap/api/mapcore2d/bp;->f:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v5, v5, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    const-wide v7, 0x412e848000000000L    # 1000000.0

    mul-double v5, v5, v7

    double-to-int v5, v5

    iget-object v6, p0, Lcom/amap/api/mapcore2d/bp;->f:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v9, v6, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double v9, v9, v7

    double-to-int v6, v9

    invoke-direct {v4, v5, v6}, Lcom/amap/api/mapcore2d/w;-><init>(II)V

    .line 126
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 127
    iget-object v6, p0, Lcom/amap/api/mapcore2d/bp;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v6}, Lcom/amap/api/mapcore2d/b;->d()Lcom/amap/api/mapcore2d/bh;

    move-result-object v6

    invoke-interface {v6, v4, v5}, Lcom/amap/api/mapcore2d/bh;->a(Lcom/amap/api/mapcore2d/w;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 128
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 129
    iget v4, p0, Lcom/amap/api/mapcore2d/bp;->g:F

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float/2addr v4, v6

    neg-float v4, v4

    iget v6, v5, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v5, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {p1, v4, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 130
    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    .line 131
    iget v4, p0, Lcom/amap/api/mapcore2d/bp;->l:I

    const/4 v6, 0x3

    if-lt v4, v1, :cond_2

    iget v1, p0, Lcom/amap/api/mapcore2d/bp;->l:I

    if-le v1, v6, :cond_3

    .line 132
    :cond_2
    iput v6, p0, Lcom/amap/api/mapcore2d/bp;->l:I

    .line 134
    :cond_3
    iget v1, p0, Lcom/amap/api/mapcore2d/bp;->m:I

    const/4 v4, 0x4

    const/4 v6, 0x6

    if-lt v1, v4, :cond_4

    iget v1, p0, Lcom/amap/api/mapcore2d/bp;->m:I

    if-le v1, v6, :cond_5

    .line 135
    :cond_4
    iput v6, p0, Lcom/amap/api/mapcore2d/bp;->m:I

    .line 139
    :cond_5
    iget v1, p0, Lcom/amap/api/mapcore2d/bp;->l:I

    const/4 v4, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    .line 147
    :pswitch_0
    iget v1, v5, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float v8, v2, v6

    sub-float/2addr v1, v8

    float-to-int v1, v1

    goto :goto_0

    .line 144
    :pswitch_1
    iget v1, v5, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0

    .line 141
    :pswitch_2
    iget v1, v5, Landroid/graphics/Point;->x:I

    .line 150
    :goto_0
    iget v8, p0, Lcom/amap/api/mapcore2d/bp;->m:I

    packed-switch v8, :pswitch_data_1

    goto :goto_1

    .line 158
    :pswitch_3
    iget v4, v5, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float v5, v3, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    goto :goto_1

    .line 155
    :pswitch_4
    iget v4, v5, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    sub-float/2addr v4, v3

    float-to-int v4, v4

    goto :goto_1

    .line 152
    :pswitch_5
    iget v4, v5, Landroid/graphics/Point;->y:I

    :goto_1
    add-float/2addr v2, v6

    add-float/2addr v3, v6

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    add-int/lit8 v6, v4, -0x1

    int-to-float v6, v6

    int-to-float v8, v1

    add-float v9, v8, v2

    int-to-float v1, v4

    add-float v10, v1, v3

    move-object v1, p1

    move v2, v5

    move v3, v6

    move v4, v9

    move v5, v10

    move-object v6, v0

    .line 164
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 166
    iget v1, p0, Lcom/amap/api/mapcore2d/bp;->e:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 167
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bp;->c:Ljava/lang/String;

    iget v2, v7, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v10, v2

    invoke-virtual {p1, v1, v8, v10, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public getAddIndex()I
    .locals 1

    .line 303
    iget v0, p0, Lcom/amap/api/mapcore2d/bp;->o:I

    return v0
.end method

.method public getAlignX()I
    .locals 1

    .line 266
    iget v0, p0, Lcom/amap/api/mapcore2d/bp;->l:I

    return v0
.end method

.method public getAlignY()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/amap/api/mapcore2d/bp;->m:I

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 249
    iget v0, p0, Lcom/amap/api/mapcore2d/bp;->h:I

    return v0
.end method

.method public getFonrColor()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/amap/api/mapcore2d/bp;->e:I

    return v0
.end method

.method public getFontSize()I
    .locals 1

    .line 203
    iget v0, p0, Lcom/amap/api/mapcore2d/bp;->d:I

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bp;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public getPosition()Lcom/amap/api/maps2d/model/LatLng;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bp;->f:Lcom/amap/api/maps2d/model/LatLng;

    return-object v0
.end method

.method public getRotate()F
    .locals 1

    .line 237
    iget v0, p0, Lcom/amap/api/mapcore2d/bp;->g:F

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bp;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bp;->i:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    .line 91
    iget v0, p0, Lcom/amap/api/mapcore2d/bp;->k:F

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bp;->j:Z

    return v0
.end method

.method public remove()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bp;->b:Lcom/amap/api/mapcore2d/at;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bp;->b:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/at;->b(Lcom/amap/api/mapcore2d/aj;)V

    :cond_0
    return-void
.end method

.method public setAddIndex(I)V
    .locals 0

    .line 296
    iput p1, p0, Lcom/amap/api/mapcore2d/bp;->o:I

    return-void
.end method

.method public setAlign(II)V
    .locals 0

    .line 276
    iput p1, p0, Lcom/amap/api/mapcore2d/bp;->l:I

    .line 277
    iput p2, p0, Lcom/amap/api/mapcore2d/bp;->m:I

    .line 278
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bp;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 243
    iput p1, p0, Lcom/amap/api/mapcore2d/bp;->h:I

    .line 244
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bp;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void
.end method

.method public setFontColor(I)V
    .locals 0

    .line 209
    iput p1, p0, Lcom/amap/api/mapcore2d/bp;->e:I

    .line 210
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bp;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void
.end method

.method public setFontSize(I)V
    .locals 0

    .line 196
    iput p1, p0, Lcom/amap/api/mapcore2d/bp;->d:I

    .line 197
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bp;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bp;->n:Ljava/lang/Object;

    return-void
.end method

.method public setPosition(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bp;->f:Lcom/amap/api/maps2d/model/LatLng;

    .line 221
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bp;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void
.end method

.method public setRotate(F)V
    .locals 0

    .line 231
    iput p1, p0, Lcom/amap/api/mapcore2d/bp;->g:F

    .line 232
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bp;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bp;->c:Ljava/lang/String;

    .line 185
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bp;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/amap/api/mapcore2d/bp;->i:Landroid/graphics/Typeface;

    .line 255
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bp;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bp;->j:Z

    .line 97
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bp;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    return-void
.end method

.method public setZIndex(F)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/amap/api/mapcore2d/bp;->k:F

    .line 85
    iget-object p1, p0, Lcom/amap/api/mapcore2d/bp;->b:Lcom/amap/api/mapcore2d/at;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/at;->d()V

    return-void
.end method

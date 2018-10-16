.class public final Lcom/amap/api/maps2d/model/Text;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALIGN_BOTTOM:I = 0x5

.field public static final ALIGN_CENTER_HORIZONTAL:I = 0x3

.field public static final ALIGN_CENTER_VERTICAL:I = 0x6

.field public static final ALIGN_LEFT:I = 0x1

.field public static final ALIGN_RIGHT:I = 0x2

.field public static final ALIGN_TOP:I = 0x4


# instance fields
.field private a:Lcom/amap/api/interfaces/IText;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/aj;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/interfaces/IText;

    return-void
.end method


# virtual methods
.method public getAlignX()I
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/interfaces/IText;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IText;->getAlignX()I

    move-result v0

    return v0
.end method

.method public getAlignY()I
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/interfaces/IText;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IText;->getAlignY()I

    move-result v0

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/interfaces/IText;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IText;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getFontColor()I
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/interfaces/IText;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IText;->getFonrColor()I

    move-result v0

    return v0
.end method

.method public getFontSize()I
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/interfaces/IText;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IText;->getFontSize()I

    move-result v0

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/interfaces/IText;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IText;->getObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/amap/api/maps2d/model/LatLng;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/interfaces/IText;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IText;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public getRotate()F
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/interfaces/IText;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IText;->getRotate()F

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/interfaces/IText;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IText;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/interfaces/IText;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/interfaces/IText;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IText;->getZIndex()F

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/interfaces/IText;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IText;->isVisible()Z

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/interfaces/IText;

    invoke-interface {v0}, Lcom/amap/api/interfaces/IText;->remove()V

    return-void
.end method

.method public setAlign(II)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/interfaces/IText;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/interfaces/IText;->setAlign(II)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IText;->setBackgroundColor(I)V

    return-void
.end method

.method public setFontColor(I)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IText;->setFontColor(I)V

    return-void
.end method

.method public setFontSize(I)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IText;->setFontSize(I)V

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IText;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public setPosition(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IText;->setPosition(Lcom/amap/api/maps2d/model/LatLng;)V

    return-void
.end method

.method public setRotate(F)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IText;->setRotate(F)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IText;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IText;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IText;->setVisible(Z)V

    return-void
.end method

.method public setZIndex(F)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Text;->a:Lcom/amap/api/interfaces/IText;

    invoke-interface {v0, p1}, Lcom/amap/api/interfaces/IText;->setZIndex(F)V

    return-void
.end method

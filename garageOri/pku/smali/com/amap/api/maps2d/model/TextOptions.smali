.class public Lcom/amap/api/maps2d/model/TextOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/model/TextOptionsCreator;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/Typeface;

.field private c:Z

.field private d:F

.field private e:Lcom/amap/api/maps2d/model/LatLng;

.field private f:F

.field private g:I

.field private h:Ljava/lang/Object;

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/amap/api/maps2d/model/TextOptionsCreator;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/TextOptionsCreator;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/model/TextOptions;->CREATOR:Lcom/amap/api/maps2d/model/TextOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->b:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->c:Z

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->f:F

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->g:I

    const/high16 v0, -0x1000000

    .line 43
    iput v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->i:I

    const/16 v0, 0x14

    .line 45
    iput v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->j:I

    const/4 v0, 0x3

    .line 47
    iput v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->k:I

    const/4 v0, 0x6

    .line 49
    iput v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->l:I

    return-void
.end method


# virtual methods
.method public align(II)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    .line 125
    iput p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->k:I

    .line 126
    iput p2, p0, Lcom/amap/api/maps2d/model/TextOptions;->l:I

    return-object p0
.end method

.method public backgroundColor(I)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    .line 137
    iput p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->g:I

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public fontColor(I)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    .line 159
    iput p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->i:I

    return-object p0
.end method

.method public fontSize(I)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    .line 170
    iput p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->j:I

    return-object p0
.end method

.method public getAlignX()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->k:I

    return v0
.end method

.method public getAlignY()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->l:I

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 198
    iget v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->g:I

    return v0
.end method

.method public getFontColor()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->i:I

    return v0
.end method

.method public getFontSize()I
    .locals 1

    .line 225
    iget v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->j:I

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public getPosition()Lcom/amap/api/maps2d/model/LatLng;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->e:Lcom/amap/api/maps2d/model/LatLng;

    return-object v0
.end method

.method public getRotate()F
    .locals 1

    .line 243
    iget v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->f:F

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->b:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    .line 270
    iget v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->d:F

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->c:Z

    return v0
.end method

.method public position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->e:Lcom/amap/api/maps2d/model/LatLng;

    return-object p0
.end method

.method public rotate(F)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    .line 113
    iput p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->f:F

    return-object p0
.end method

.method public setObject(Ljava/lang/Object;)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->h:Ljava/lang/Object;

    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->a:Ljava/lang/String;

    return-object p0
.end method

.method public typeface(Landroid/graphics/Typeface;)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->b:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public visible(Z)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->c:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 292
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 293
    iget-object v0, p0, Lcom/amap/api/maps2d/model/TextOptions;->e:Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v0, :cond_0

    const-string v0, "lat"

    .line 294
    iget-object v1, p0, Lcom/amap/api/maps2d/model/TextOptions;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v1, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v0, "lng"

    .line 295
    iget-object v1, p0, Lcom/amap/api/maps2d/model/TextOptions;->e:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v1, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 297
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 298
    iget-object p2, p0, Lcom/amap/api/maps2d/model/TextOptions;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    iget-object p2, p0, Lcom/amap/api/maps2d/model/TextOptions;->b:Landroid/graphics/Typeface;

    invoke-virtual {p2}, Landroid/graphics/Typeface;->getStyle()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget p2, p0, Lcom/amap/api/maps2d/model/TextOptions;->f:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 301
    iget p2, p0, Lcom/amap/api/maps2d/model/TextOptions;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget p2, p0, Lcom/amap/api/maps2d/model/TextOptions;->l:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget p2, p0, Lcom/amap/api/maps2d/model/TextOptions;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget p2, p0, Lcom/amap/api/maps2d/model/TextOptions;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget p2, p0, Lcom/amap/api/maps2d/model/TextOptions;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    iget p2, p0, Lcom/amap/api/maps2d/model/TextOptions;->d:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 307
    iget-boolean p2, p0, Lcom/amap/api/maps2d/model/TextOptions;->c:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 310
    iget-object p2, p0, Lcom/amap/api/maps2d/model/TextOptions;->h:Ljava/lang/Object;

    instance-of p2, p2, Landroid/os/Parcelable;

    if-eqz p2, :cond_1

    .line 311
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "obj"

    .line 312
    iget-object v1, p0, Lcom/amap/api/maps2d/model/TextOptions;->h:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 313
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public zIndex(F)Lcom/amap/api/maps2d/model/TextOptions;
    .locals 0

    .line 91
    iput p1, p0, Lcom/amap/api/maps2d/model/TextOptions;->d:F

    return-object p0
.end method

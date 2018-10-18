.class public Lcom/amap/api/maps2d/model/MyTrafficStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0xff5df7

    .line 16
    iput v0, p0, Lcom/amap/api/maps2d/model/MyTrafficStyle;->a:I

    const v0, -0x8af8

    .line 17
    iput v0, p0, Lcom/amap/api/maps2d/model/MyTrafficStyle;->b:I

    const v0, -0x15fcee

    .line 18
    iput v0, p0, Lcom/amap/api/maps2d/model/MyTrafficStyle;->c:I

    const v0, -0x6dfff6

    .line 19
    iput v0, p0, Lcom/amap/api/maps2d/model/MyTrafficStyle;->d:I

    return-void
.end method


# virtual methods
.method public getCongestedColor()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/amap/api/maps2d/model/MyTrafficStyle;->c:I

    return v0
.end method

.method public getSeriousCongestedColor()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/amap/api/maps2d/model/MyTrafficStyle;->d:I

    return v0
.end method

.method public getSlowColor()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/amap/api/maps2d/model/MyTrafficStyle;->b:I

    return v0
.end method

.method public getSmoothColor()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/amap/api/maps2d/model/MyTrafficStyle;->a:I

    return v0
.end method

.method public setCongestedColor(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/amap/api/maps2d/model/MyTrafficStyle;->c:I

    return-void
.end method

.method public setSeriousCongestedColor(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/amap/api/maps2d/model/MyTrafficStyle;->d:I

    return-void
.end method

.method public setSlowColor(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/amap/api/maps2d/model/MyTrafficStyle;->b:I

    return-void
.end method

.method public setSmoothColor(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/amap/api/maps2d/model/MyTrafficStyle;->a:I

    return-void
.end method

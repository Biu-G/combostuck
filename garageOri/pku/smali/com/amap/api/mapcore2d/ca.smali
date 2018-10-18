.class Lcom/amap/api/mapcore2d/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/mapcore2d/al;


# instance fields
.field private a:Lcom/amap/api/mapcore2d/y;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field private final j:Landroid/os/Handler;

.field private k:Z


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/y;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/ca;->b:Z

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/ca;->c:Z

    .line 13
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/ca;->d:Z

    .line 14
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/ca;->e:Z

    .line 15
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/ca;->f:Z

    .line 16
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/ca;->g:Z

    .line 17
    iput v1, p0, Lcom/amap/api/mapcore2d/ca;->h:I

    .line 18
    iput v1, p0, Lcom/amap/api/mapcore2d/ca;->i:I

    .line 25
    new-instance v0, Lcom/amap/api/mapcore2d/ca$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/ca$1;-><init>(Lcom/amap/api/mapcore2d/ca;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ca;->j:Landroid/os/Handler;

    .line 59
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ca;->a:Lcom/amap/api/mapcore2d/y;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/ca;)Lcom/amap/api/mapcore2d/y;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/amap/api/mapcore2d/ca;->a:Lcom/amap/api/mapcore2d/y;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/ca;)Z
    .locals 0

    .line 9
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/ca;->e:Z

    return p0
.end method

.method static synthetic c(Lcom/amap/api/mapcore2d/ca;)Z
    .locals 0

    .line 9
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/ca;->g:Z

    return p0
.end method

.method static synthetic d(Lcom/amap/api/mapcore2d/ca;)Z
    .locals 0

    .line 9
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/ca;->f:Z

    return p0
.end method

.method static synthetic e(Lcom/amap/api/mapcore2d/ca;)Z
    .locals 0

    .line 9
    iget-boolean p0, p0, Lcom/amap/api/mapcore2d/ca;->c:Z

    return p0
.end method


# virtual methods
.method public getLogoPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    iget v0, p0, Lcom/amap/api/mapcore2d/ca;->h:I

    return v0
.end method

.method public getZoomPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    iget v0, p0, Lcom/amap/api/mapcore2d/ca;->i:I

    return v0
.end method

.method public isCompassEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ca;->f:Z

    return v0
.end method

.method public isMyLocationButtonEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ca;->c:Z

    return v0
.end method

.method public isScaleControlsEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ca;->g:Z

    return v0
.end method

.method public isScrollGesturesEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ca;->b:Z

    return v0
.end method

.method public isZoomControlsEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ca;->e:Z

    return v0
.end method

.method public isZoomGesturesEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ca;->d:Z

    return v0
.end method

.method public isZoomInByScreenCenter()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ca;->k:Z

    return v0
.end method

.method public setAllGesturesEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ca;->setZoomGesturesEnabled(Z)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ca;->setScrollGesturesEnabled(Z)V

    return-void
.end method

.method public setCompassEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/ca;->f:Z

    .line 79
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ca;->j:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setLogoPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    iput p1, p0, Lcom/amap/api/mapcore2d/ca;->h:I

    .line 111
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ca;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/y;->setLogoPosition(I)V

    return-void
.end method

.method public setMyLocationButtonEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/ca;->c:Z

    .line 87
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ca;->j:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setScaleControlsEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/ca;->g:Z

    .line 65
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ca;->j:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setScrollGesturesEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/ca;->b:Z

    return-void
.end method

.method public setZoomControlsEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/ca;->e:Z

    .line 72
    iget-object p1, p0, Lcom/amap/api/mapcore2d/ca;->j:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setZoomGesturesEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/ca;->d:Z

    return-void
.end method

.method public setZoomInByScreenCenter(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/ca;->k:Z

    return-void
.end method

.method public setZoomPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    iput p1, p0, Lcom/amap/api/mapcore2d/ca;->i:I

    .line 117
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ca;->a:Lcom/amap/api/mapcore2d/y;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/y;->setZoomPosition(I)V

    return-void
.end method

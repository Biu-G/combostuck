.class Lcom/amap/api/mapcore2d/ba$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Ljava/lang/String;

.field c:Z

.field d:J

.field e:I

.field f:J

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore2d/bx;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic h:Lcom/amap/api/mapcore2d/ba;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/ba;)V
    .locals 3

    .line 334
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ba$a;->h:Lcom/amap/api/mapcore2d/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 337
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ba$a;->a:Landroid/graphics/Bitmap;

    const-string v0, ""

    .line 338
    iput-object v0, p0, Lcom/amap/api/mapcore2d/ba$a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 340
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/ba$a;->c:Z

    const-wide/16 v0, 0x0

    .line 341
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/ba$a;->d:J

    const/4 v2, -0x1

    .line 343
    iput v2, p0, Lcom/amap/api/mapcore2d/ba$a;->e:I

    .line 344
    iput-wide v0, p0, Lcom/amap/api/mapcore2d/ba$a;->f:J

    .line 345
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ba$a;->g:Ljava/util/List;

    return-void
.end method

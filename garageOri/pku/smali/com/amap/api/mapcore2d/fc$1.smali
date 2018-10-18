.class final Lcom/amap/api/mapcore2d/fc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore2d/fc;->a(Lcom/amap/api/mapcore2d/fb;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/amap/api/mapcore2d/fb;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/fb;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/amap/api/mapcore2d/fc$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/mapcore2d/fc$1;->b:Lcom/amap/api/mapcore2d/fb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/amap/api/mapcore2d/fc$1;->a:Landroid/content/Context;

    sget-object v1, Lcom/amap/api/mapcore2d/de;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/fc$1;->b:Lcom/amap/api/mapcore2d/fb;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/fb;->a()[B

    move-result-object v2

    const v3, 0x4b000

    invoke-static {v0, v1, v3, v2}, Lcom/amap/api/mapcore2d/fd;->a(Landroid/content/Context;Ljava/lang/String;I[B)V

    return-void
.end method

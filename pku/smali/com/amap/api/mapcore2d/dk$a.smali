.class Lcom/amap/api/mapcore2d/dk$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/mapcore2d/em;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/dk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/dk;

.field private b:Lcom/amap/api/mapcore2d/du;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/dk;Lcom/amap/api/mapcore2d/du;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/amap/api/mapcore2d/dk$a;->a:Lcom/amap/api/mapcore2d/dk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-object p2, p0, Lcom/amap/api/mapcore2d/dk$a;->b:Lcom/amap/api/mapcore2d/du;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dk$a;->b:Lcom/amap/api/mapcore2d/du;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/dk$a;->a:Lcom/amap/api/mapcore2d/dk;

    .line 295
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/dk;->c()I

    move-result v1

    invoke-static {v1}, Lcom/amap/api/mapcore2d/de;->a(I)Ljava/lang/Class;

    move-result-object v1

    .line 294
    invoke-virtual {v0, p1, v1}, Lcom/amap/api/mapcore2d/du;->b(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 298
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

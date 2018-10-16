.class Lcom/amap/api/mapcore2d/az$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/mapcore2d/cb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore2d/az$a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/az$a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/az$a;)V
    .locals 0

    .line 727
    iput-object p1, p0, Lcom/amap/api/mapcore2d/az$a$1;->a:Lcom/amap/api/mapcore2d/az$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)Ljava/lang/String;
    .locals 7

    .line 732
    sget-object v0, Lcom/amap/api/mapcore2d/q;->h:Ljava/lang/String;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amap/api/mapcore2d/q;->h:Ljava/lang/String;

    const-string v5, ""

    .line 733
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 743
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v5, Lcom/amap/api/mapcore2d/q;->h:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    .line 744
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    .line 745
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    .line 743
    invoke-static {v0, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 735
    :cond_1
    :goto_0
    invoke-static {}, Lcom/amap/api/mapcore2d/ax;->a()Lcom/amap/api/mapcore2d/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ax;->b()Ljava/lang/String;

    move-result-object v0

    .line 736
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 737
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v6, v4

    .line 738
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    .line 739
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v2

    iget-object p1, p0, Lcom/amap/api/mapcore2d/az$a$1;->a:Lcom/amap/api/mapcore2d/az$a;

    iget-object p1, p1, Lcom/amap/api/mapcore2d/az$a;->d:Ljava/lang/String;

    aput-object p1, v6, v1

    .line 736
    invoke-static {v5, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

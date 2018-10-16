.class public Lcom/amap/api/mapcore2d/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/q$a;
    }
.end annotation


# static fields
.field public static a:F = 0.9f

.field public static b:Ljava/lang/String; = ""

.field public static c:I = 0x13

.field public static d:I = 0x3

.field public static final e:Lcom/amap/api/mapcore2d/q$a;

.field public static final f:[Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:I

.field static m:I

.field static n:I

.field static o:I

.field public static volatile p:Lcom/amap/api/mapcore2d/cy;

.field public static q:I

.field static r:Z

.field static s:Z

.field public static t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    sget-object v0, Lcom/amap/api/mapcore2d/q$a;->a:Lcom/amap/api/mapcore2d/q$a;

    sput-object v0, Lcom/amap/api/mapcore2d/q;->e:Lcom/amap/api/mapcore2d/q$a;

    const-string v0, "com.amap.api.mapcore2d"

    const-string v1, "com.amap.api.maps2d"

    .line 40
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/q;->f:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 52
    sput v0, Lcom/amap/api/mapcore2d/q;->i:I

    const/16 v1, 0x100

    .line 61
    sput v1, Lcom/amap/api/mapcore2d/q;->j:I

    const/16 v1, 0x15

    .line 73
    sput v1, Lcom/amap/api/mapcore2d/q;->k:I

    const/4 v1, 0x0

    .line 79
    sput v1, Lcom/amap/api/mapcore2d/q;->m:I

    .line 92
    sput v1, Lcom/amap/api/mapcore2d/q;->n:I

    .line 93
    sput v1, Lcom/amap/api/mapcore2d/q;->o:I

    const/4 v2, 0x7

    .line 98
    sput v2, Lcom/amap/api/mapcore2d/q;->q:I

    .line 103
    sput-boolean v0, Lcom/amap/api/mapcore2d/q;->r:Z

    .line 108
    sput-boolean v0, Lcom/amap/api/mapcore2d/q;->s:Z

    .line 131
    sput-boolean v1, Lcom/amap/api/mapcore2d/q;->t:Z

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .line 124
    sget v0, Lcom/amap/api/mapcore2d/q;->c:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    const-string v0, "/appmaptile?z=%d&x=%d&y=%d&lang=%s&size=1&scale=1&style=8"

    return-object v0

    :cond_0
    const-string v0, "/appmaptile?z=%d&x=%d&y=%d&lang=%s&size=1&scale=1&style=7"

    return-object v0
.end method

.method public static a(I)V
    .locals 0

    .line 111
    sput p0, Lcom/amap/api/mapcore2d/q;->c:I

    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 138
    sput-boolean p0, Lcom/amap/api/mapcore2d/q;->t:Z

    return-void
.end method

.method public static b(I)V
    .locals 0

    .line 115
    sput p0, Lcom/amap/api/mapcore2d/q;->d:I

    return-void
.end method

.method public static b()Z
    .locals 1

    .line 134
    sget-boolean v0, Lcom/amap/api/mapcore2d/q;->t:Z

    return v0
.end method

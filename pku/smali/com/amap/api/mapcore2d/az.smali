.class Lcom/amap/api/mapcore2d/az;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/az$c;,
        Lcom/amap/api/mapcore2d/az$a;,
        Lcom/amap/api/mapcore2d/az$d;,
        Lcom/amap/api/mapcore2d/az$b;
    }
.end annotation


# static fields
.field static a:D = 0.6499999761581421


# instance fields
.field public b:Lcom/amap/api/mapcore2d/az$d;

.field public c:Lcom/amap/api/mapcore2d/az$c;

.field public d:Lcom/amap/api/mapcore2d/az$b;

.field public e:Lcom/amap/api/mapcore2d/az$a;

.field public f:Lcom/amap/api/mapcore2d/v;

.field public g:Lcom/amap/api/mapcore2d/b;

.field public h:Lcom/amap/api/mapcore2d/av;

.field private i:Lcom/amap/api/mapcore2d/an;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/b;I)V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    .line 54
    iput-object p2, p0, Lcom/amap/api/mapcore2d/az;->g:Lcom/amap/api/mapcore2d/b;

    .line 55
    new-instance v1, Lcom/amap/api/mapcore2d/az$c;

    invoke-direct {v1, p0, p2, v0}, Lcom/amap/api/mapcore2d/az$c;-><init>(Lcom/amap/api/mapcore2d/az;Lcom/amap/api/mapcore2d/b;Lcom/amap/api/mapcore2d/az$1;)V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    .line 56
    new-instance v1, Lcom/amap/api/mapcore2d/av;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    invoke-direct {v1, v2}, Lcom/amap/api/mapcore2d/av;-><init>(Lcom/amap/api/mapcore2d/az$c;)V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    .line 57
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iput p3, v1, Lcom/amap/api/mapcore2d/av;->a:I

    .line 58
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    iput p3, v1, Lcom/amap/api/mapcore2d/av;->b:I

    .line 60
    iget-object p3, p0, Lcom/amap/api/mapcore2d/az;->h:Lcom/amap/api/mapcore2d/av;

    invoke-virtual {p3}, Lcom/amap/api/mapcore2d/av;->a()V

    .line 61
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/az;->a(Landroid/content/Context;)V

    .line 64
    new-instance p3, Lcom/amap/api/mapcore2d/az$a;

    invoke-direct {p3, p0, p1, v0}, Lcom/amap/api/mapcore2d/az$a;-><init>(Lcom/amap/api/mapcore2d/az;Landroid/content/Context;Lcom/amap/api/mapcore2d/az$1;)V

    iput-object p3, p0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    .line 65
    new-instance p1, Lcom/amap/api/mapcore2d/az$d;

    invoke-direct {p1, p0}, Lcom/amap/api/mapcore2d/az$d;-><init>(Lcom/amap/api/mapcore2d/az;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/az;->b:Lcom/amap/api/mapcore2d/az$d;

    .line 66
    new-instance p1, Lcom/amap/api/mapcore2d/az$b;

    invoke-direct {p1, p0}, Lcom/amap/api/mapcore2d/az$b;-><init>(Lcom/amap/api/mapcore2d/az;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/az;->d:Lcom/amap/api/mapcore2d/az$b;

    .line 67
    new-instance p1, Lcom/amap/api/mapcore2d/v;

    invoke-direct {p1, p2}, Lcom/amap/api/mapcore2d/v;-><init>(Lcom/amap/api/mapcore2d/y;)V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/az;->f:Lcom/amap/api/mapcore2d/v;

    .line 68
    iget-object p1, p0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/amap/api/mapcore2d/az$c;->a(ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/az;)Lcom/amap/api/mapcore2d/an;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/amap/api/mapcore2d/az;->i:Lcom/amap/api/mapcore2d/an;

    return-object p0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/az;Lcom/amap/api/mapcore2d/an;)Lcom/amap/api/mapcore2d/an;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/amap/api/mapcore2d/az;->i:Lcom/amap/api/mapcore2d/an;

    return-object p1
.end method

.method private b()V
    .locals 5

    .line 166
    invoke-static {}, Lcom/amap/api/maps2d/MapsInitializer;->getUpdateDataActiveEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    invoke-static {}, Lcom/amap/api/mapcore2d/bg;->a()Lcom/amap/api/mapcore2d/bg;

    const-string v0, "updateDataPeriodDate"

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {}, Lcom/amap/api/mapcore2d/t;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/t;->a(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    .line 172
    invoke-static {}, Lcom/amap/api/mapcore2d/bg;->a()Lcom/amap/api/mapcore2d/bg;

    move-result-object v2

    const-string v3, "period_day"

    sget v4, Lcom/amap/api/mapcore2d/q;->q:I

    invoke-virtual {v2, v3, v4}, Lcom/amap/api/mapcore2d/bg;->a(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 174
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/az;->c()V

    goto :goto_1

    .line 169
    :cond_1
    :goto_0
    invoke-static {}, Lcom/amap/api/mapcore2d/bg;->a()Lcom/amap/api/mapcore2d/bg;

    move-result-object v0

    const-string v1, "updateDataPeriodDate"

    invoke-static {}, Lcom/amap/api/mapcore2d/t;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/bg;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private c()V
    .locals 3

    .line 185
    invoke-static {}, Lcom/amap/api/mapcore2d/bg;->a()Lcom/amap/api/mapcore2d/bg;

    const-string v0, "cache_path"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/bg;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {v0}, Lcom/amap/api/mapcore2d/u;->a(Ljava/lang/String;)V

    .line 189
    :cond_0
    invoke-static {}, Lcom/amap/api/mapcore2d/bg;->a()Lcom/amap/api/mapcore2d/bg;

    move-result-object v0

    const-string v1, "updateDataPeriodDate"

    invoke-static {}, Lcom/amap/api/mapcore2d/t;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/bg;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/az$a;->a()V

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/amap/api/mapcore2d/az;->b:Lcom/amap/api/mapcore2d/az$d;

    .line 150
    iput-object v0, p0, Lcom/amap/api/mapcore2d/az;->c:Lcom/amap/api/mapcore2d/az$c;

    .line 151
    iput-object v0, p0, Lcom/amap/api/mapcore2d/az;->d:Lcom/amap/api/mapcore2d/az$b;

    .line 152
    iput-object v0, p0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    .line 156
    invoke-static {}, Lcom/amap/api/maps2d/MapsInitializer;->getUpdateDataActiveEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amap/api/mapcore2d/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/az;->c()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 11

    const-string v0, "initialize"

    .line 79
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 83
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "densityDpi"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "Mediator"

    .line 87
    invoke-static {v2, v3, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v3, "Mediator"

    .line 85
    invoke-static {v2, v3, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x0

    :goto_1
    const-wide/32 v3, 0x25800

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v2, :cond_5

    .line 94
    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int v8, v8, v9

    int-to-long v8, v8

    const/16 v10, 0xa0

    .line 96
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    const-string v2, "Mediator"

    .line 100
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception v1

    const-string v2, "Mediator"

    .line 98
    invoke-static {v1, v2, v0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/16 v1, 0xa0

    :goto_3
    const/16 v0, 0x78

    if-gt v1, v0, :cond_0

    .line 103
    sput v6, Lcom/amap/api/mapcore2d/q;->m:I

    goto :goto_4

    :cond_0
    if-gt v1, v10, :cond_1

    .line 105
    sput v5, Lcom/amap/api/mapcore2d/q;->m:I

    goto :goto_4

    :cond_1
    const/16 v0, 0xf0

    if-gt v1, v0, :cond_2

    .line 107
    sput v7, Lcom/amap/api/mapcore2d/q;->m:I

    goto :goto_4

    :cond_2
    cmp-long v0, v8, v3

    if-lez v0, :cond_3

    .line 110
    sput v7, Lcom/amap/api/mapcore2d/q;->m:I

    goto :goto_4

    :cond_3
    if-gez v0, :cond_4

    .line 112
    sput v6, Lcom/amap/api/mapcore2d/q;->m:I

    goto :goto_4

    .line 114
    :cond_4
    sput v5, Lcom/amap/api/mapcore2d/q;->m:I

    goto :goto_4

    .line 118
    :cond_5
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int v0, v0, v1

    int-to-long v0, v0

    cmp-long v0, v0, v3

    if-lez v0, :cond_6

    .line 120
    sput v7, Lcom/amap/api/mapcore2d/q;->m:I

    goto :goto_4

    :cond_6
    if-gez v0, :cond_7

    .line 122
    sput v6, Lcom/amap/api/mapcore2d/q;->m:I

    goto :goto_4

    .line 124
    :cond_7
    sput v5, Lcom/amap/api/mapcore2d/q;->m:I

    .line 128
    :goto_4
    sget v0, Lcom/amap/api/mapcore2d/q;->m:I

    if-eq v0, v7, :cond_8

    const/16 v0, 0x12

    .line 130
    sput v0, Lcom/amap/api/mapcore2d/q;->c:I

    .line 133
    :cond_8
    invoke-static {p1}, Lcom/amap/api/mapcore2d/bg;->a(Landroid/content/Context;)V

    .line 135
    invoke-static {}, Lcom/amap/api/maps2d/MapsInitializer;->getUpdateDataActiveEnable()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 136
    invoke-static {}, Lcom/amap/api/mapcore2d/bg;->a()Lcom/amap/api/mapcore2d/bg;

    const-string p1, "UpdateDataActiveEnable"

    invoke-static {p1, v6}, Lcom/amap/api/mapcore2d/bg;->b(Ljava/lang/String;Z)V

    .line 139
    :cond_9
    invoke-static {}, Lcom/amap/api/mapcore2d/bg;->a()Lcom/amap/api/mapcore2d/bg;

    const-string p1, "UpdateDataActiveEnable"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amap/api/mapcore2d/bg;->a(Ljava/lang/String;Z)Z

    move-result p1

    .line 140
    invoke-static {p1}, Lcom/amap/api/maps2d/MapsInitializer;->setUpdateDataActiveEnable(Z)V

    .line 142
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/az;->b()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->e:Lcom/amap/api/mapcore2d/az$a;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/az$a;->b(Z)V

    return-void
.end method

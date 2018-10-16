.class public Lcom/amap/api/mapcore2d/bg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/amap/api/mapcore2d/bg;

.field private static b:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amap/api/mapcore2d/bg;
    .locals 1

    .line 37
    sget-object v0, Lcom/amap/api/mapcore2d/bg;->a:Lcom/amap/api/mapcore2d/bg;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/amap/api/mapcore2d/bg;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/bg;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore2d/bg;->a:Lcom/amap/api/mapcore2d/bg;

    .line 40
    :cond_0
    sget-object v0, Lcom/amap/api/mapcore2d/bg;->a:Lcom/amap/api/mapcore2d/bg;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 44
    sget-object v0, Lcom/amap/api/mapcore2d/bg;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/amap/api/mapcore2d/bg;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 32
    new-instance v0, Lcom/amap/api/mapcore2d/bg;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/bg;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore2d/bg;->a:Lcom/amap/api/mapcore2d/bg;

    const-string v0, "amap_preferences"

    const/4 v1, 0x0

    .line 33
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/amap/api/mapcore2d/bg;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 1

    .line 59
    sget-object v0, Lcom/amap/api/mapcore2d/bg;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;Z)V
    .locals 1

    .line 64
    sget-object v0, Lcom/amap/api/mapcore2d/bg;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/amap/api/mapcore2d/bg;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 1

    .line 75
    sget-object v0, Lcom/amap/api/mapcore2d/bg;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;I)V
    .locals 1

    .line 99
    sget-object v0, Lcom/amap/api/mapcore2d/bg;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 116
    sget-object v0, Lcom/amap/api/mapcore2d/bg;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 117
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

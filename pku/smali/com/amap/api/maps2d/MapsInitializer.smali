.class public final Lcom/amap/api/maps2d/MapsInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = true

.field private static b:Z = false

.field public static sdcardDir:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkEnable()Z
    .locals 1

    .line 64
    sget-boolean v0, Lcom/amap/api/maps2d/MapsInitializer;->a:Z

    return v0
.end method

.method public static getUpdateDataActiveEnable()Z
    .locals 1

    .line 108
    sget-boolean v0, Lcom/amap/api/maps2d/MapsInitializer;->b:Z

    return v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "5.2.0"

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/amap/api/mapcore2d/ar;->a:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public static loadWorldGridMap(Z)V
    .locals 0

    xor-int/lit8 p0, p0, 0x1

    .line 99
    sput p0, Lcom/amap/api/mapcore2d/q;->i:I

    return-void
.end method

.method public static replaceURL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_2

    const-string v0, ""

    .line 83
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    sput-object p0, Lcom/amap/api/mapcore2d/q;->h:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "DIY"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/amap/api/mapcore2d/q;->g:Ljava/lang/String;

    const-string p1, "openstreetmap"

    .line 88
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x13

    .line 89
    sput p0, Lcom/amap/api/mapcore2d/q;->c:I

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public static setApiKey(Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cr;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static setNetworkEnable(Z)V
    .locals 0

    .line 45
    sput-boolean p0, Lcom/amap/api/maps2d/MapsInitializer;->a:Z

    return-void
.end method

.method public static setUpdateDataActiveEnable(Z)V
    .locals 0

    .line 117
    sput-boolean p0, Lcom/amap/api/maps2d/MapsInitializer;->b:Z

    return-void
.end method

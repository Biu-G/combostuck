.class public Lcom/amap/api/mapcore2d/ct;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/ct$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = ""

.field private static b:Z = false

.field private static c:Ljava/lang/String; = null

.field private static d:Ljava/lang/String; = ""

.field private static e:Ljava/lang/String; = ""

.field private static f:Ljava/lang/String; = ""

.field private static g:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lcom/amap/api/mapcore2d/ct;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 73
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ct;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    sput-object p0, Lcom/amap/api/mapcore2d/ct;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 703
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    sub-int v3, v0, v1

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, -0x1

    .line 707
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget v4, v4, Landroid/net/wifi/ScanResult;->level:I

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget v5, v5, Landroid/net/wifi/ScanResult;->level:I

    if-le v4, v5, :cond_0

    .line 708
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 709
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 710
    invoke-interface {p0, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 231
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 46
    sput-boolean p0, Lcom/amap/api/mapcore2d/ct;->b:Z

    return p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 84
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ct;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 87
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static b()V
    .locals 6

    .line 138
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 139
    const-class v0, Landroid/net/TrafficStats;

    const-string v1, "setThreadStatsTag"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 141
    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0xa004

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DeviceInfo"

    const-string v2, "setTraficTag"

    .line 144
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;)I
    .locals 0

    .line 95
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ct;->y(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method static synthetic c()Z
    .locals 1

    .line 46
    sget-boolean v0, Lcom/amap/api/mapcore2d/ct;->b:Z

    return v0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 0

    .line 106
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ct;->v(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 109
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method private static d()Ljava/lang/String;
    .locals 7

    .line 319
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 320
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 321
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wlan0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 324
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_1

    .line 325
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, ""

    return-object v0

    .line 331
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v2, :cond_4

    aget-byte v5, v0, v3

    and-int/lit16 v5, v5, 0xff

    .line 333
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 334
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v4, :cond_3

    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 338
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 339
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 341
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "DeviceInfo"

    const-string v2, "getMacAddr"

    .line 344
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v0, ""

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 126
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ct;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 128
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 179
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/ct;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/amap/api/mapcore2d/ct;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    sget-object p0, Lcom/amap/api/mapcore2d/ct;->a:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "android.permission.WRITE_SETTINGS"

    .line 183
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/ct;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mqBRboGZkQPcAkyk"

    .line 185
    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amap/api/mapcore2d/ct;->a:Ljava/lang/String;

    .line 188
    :cond_1
    sget-object p0, Lcom/amap/api/mapcore2d/ct;->a:Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string p0, ""

    sget-object v0, Lcom/amap/api/mapcore2d/ct;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 189
    sget-object p0, Lcom/amap/api/mapcore2d/ct;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    :try_start_1
    const-string p0, "mounted"

    .line 201
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 203
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/.UTSystemConfig/Global/Alvin2.xml"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 205
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 208
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object p0

    .line 209
    invoke-virtual {p0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p0

    .line 210
    new-instance v1, Lcom/amap/api/mapcore2d/ct$a;

    invoke-direct {v1}, Lcom/amap/api/mapcore2d/ct$a;-><init>()V

    .line 211
    invoke-virtual {p0, v0, v1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    :catch_1
    :cond_3
    sget-object p0, Lcom/amap/api/mapcore2d/ct;->a:Ljava/lang/String;

    if-nez p0, :cond_4

    const-string p0, ""

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/amap/api/mapcore2d/ct;->a:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_3

    :try_start_0
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    .line 238
    invoke-static {p0, v1}, Lcom/amap/api/mapcore2d/ct;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "wifi"

    .line 244
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-nez p0, :cond_1

    return-object v0

    .line 246
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    .line 248
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "DeviceInfo"

    const-string v2, "getWifiMacs"

    .line 252
    invoke-static {p0, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_5

    :try_start_0
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    .line 261
    invoke-static {p0, v1}, Lcom/amap/api/mapcore2d/ct;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    const-string v1, "wifi"

    .line 267
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-nez p0, :cond_1

    const-string p0, ""

    return-object p0

    .line 269
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 270
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 271
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 274
    :cond_2
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ct;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 276
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    const/4 v4, 0x7

    if-ge v2, v4, :cond_6

    .line 277
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const-string v5, ";"

    .line 281
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :goto_1
    iget-object v4, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 272
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_4

    .line 263
    :cond_5
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_4
    const-string v1, "DeviceInfo"

    const-string v2, "getWifiMacs"

    .line 287
    invoke-static {p0, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 297
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/ct;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/amap/api/mapcore2d/ct;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    sget-object p0, Lcom/amap/api/mapcore2d/ct;->d:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    .line 300
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/ct;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    sget-object p0, Lcom/amap/api/mapcore2d/ct;->d:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string v0, "wifi"

    .line 304
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-nez p0, :cond_2

    const-string p0, ""

    return-object p0

    .line 306
    :cond_2
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amap/api/mapcore2d/ct;->d:Ljava/lang/String;

    const-string p0, "02:00:00:00:00:00"

    .line 307
    sget-object v0, Lcom/amap/api/mapcore2d/ct;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "00:00:00:00:00:00"

    sget-object v0, Lcom/amap/api/mapcore2d/ct;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 308
    :cond_3
    invoke-static {}, Lcom/amap/api/mapcore2d/ct;->d()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amap/api/mapcore2d/ct;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "DeviceInfo"

    const-string v1, "getDeviceMac"

    .line 312
    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_4
    :goto_0
    sget-object p0, Lcom/amap/api/mapcore2d/ct;->d:Ljava/lang/String;

    return-object p0
.end method

.method static j(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 351
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/ct;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 352
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/ct;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "phone"

    .line 357
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_1

    const-string p0, ""

    const-string v0, ""

    .line 358
    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 359
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p0

    .line 360
    instance-of v0, p0, Landroid/telephony/gsm/GsmCellLocation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    .line 361
    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    .line 362
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    .line 363
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result p0

    .line 364
    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "||"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    const-string p0, "gsm"

    aput-object p0, v3, v1

    return-object v3

    .line 367
    :cond_2
    instance-of v0, p0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_4

    .line 368
    check-cast p0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 369
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v0

    .line 370
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v4

    .line 371
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result p0

    .line 376
    new-array v3, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "||"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "||"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    const-string p0, "cdma"

    aput-object p0, v3, v1

    return-object v3

    :cond_3
    :goto_0
    const-string p0, ""

    const-string v0, ""

    .line 354
    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "DeviceInfo"

    const-string v1, "cellInfo"

    .line 384
    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string p0, ""

    const-string v0, ""

    .line 386
    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 395
    invoke-static {p0, v1}, Lcom/amap/api/mapcore2d/ct;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 398
    :cond_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ct;->z(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    return-object p0

    .line 400
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0

    .line 401
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 402
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    goto :goto_0

    .line 405
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    const-string v1, "DeviceInfo"

    const-string v2, "getMNC"

    .line 407
    invoke-static {p0, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public static l(Landroid/content/Context;)I
    .locals 2

    .line 418
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ct;->y(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "DeviceInfo"

    const-string v1, "getNetWorkType"

    .line 422
    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static m(Landroid/content/Context;)I
    .locals 2

    .line 431
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ct;->v(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "DeviceInfo"

    const-string v1, "getActiveNetWorkType"

    .line 434
    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static n(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 445
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/ct;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 449
    :cond_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ct;->w(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 453
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    return-object p0
.end method

.method static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 459
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ct;->n(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 464
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "DeviceInfo"

    const-string v2, "getNetworkExtraInfo"

    .line 467
    invoke-static {p0, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method static p(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 477
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/ct;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/amap/api/mapcore2d/ct;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    sget-object p0, Lcom/amap/api/mapcore2d/ct;->e:Ljava/lang/String;

    return-object p0

    .line 480
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 482
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-nez p0, :cond_1

    const-string p0, ""

    return-object p0

    .line 484
    :cond_1
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 485
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 486
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, p0, :cond_2

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "*"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "*"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :goto_1
    sput-object p0, Lcom/amap/api/mapcore2d/ct;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v0, "DeviceInfo"

    const-string v1, "getReslution"

    .line 491
    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :goto_2
    sget-object p0, Lcom/amap/api/mapcore2d/ct;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static q(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 538
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/ct;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/amap/api/mapcore2d/ct;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 539
    sget-object p0, Lcom/amap/api/mapcore2d/ct;->f:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 541
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/ct;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 542
    sget-object p0, Lcom/amap/api/mapcore2d/ct;->f:Ljava/lang/String;

    return-object p0

    .line 544
    :cond_1
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ct;->z(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, ""

    return-object p0

    .line 546
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amap/api/mapcore2d/ct;->f:Ljava/lang/String;

    .line 547
    sget-object p0, Lcom/amap/api/mapcore2d/ct;->f:Ljava/lang/String;

    if-nez p0, :cond_3

    const-string p0, ""

    .line 548
    sput-object p0, Lcom/amap/api/mapcore2d/ct;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "DeviceInfo"

    const-string v1, "getDeviceID"

    .line 551
    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_3
    :goto_0
    sget-object p0, Lcom/amap/api/mapcore2d/ct;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static r(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 559
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ct;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "DeviceInfo"

    const-string v2, "getSubscriberId"

    .line 562
    invoke-static {p0, v1, v2}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static s(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 569
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ct;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "DeviceInfo"

    const-string v1, "getNetworkOperatorName"

    .line 571
    invoke-static {p0, v0, v1}, Lcom/amap/api/mapcore2d/dd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method private static t(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 584
    sget-object v0, Lcom/amap/api/mapcore2d/ct;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/amap/api/mapcore2d/ct;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    sget-object p0, Lcom/amap/api/mapcore2d/ct;->g:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 588
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/ct;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 590
    sget-object p0, Lcom/amap/api/mapcore2d/ct;->g:Ljava/lang/String;

    return-object p0

    .line 592
    :cond_1
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ct;->z(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, ""

    return-object p0

    .line 594
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amap/api/mapcore2d/ct;->g:Ljava/lang/String;

    .line 595
    sget-object p0, Lcom/amap/api/mapcore2d/ct;->g:Ljava/lang/String;

    if-nez p0, :cond_3

    const-string p0, ""

    .line 596
    sput-object p0, Lcom/amap/api/mapcore2d/ct;->g:Ljava/lang/String;

    .line 598
    :cond_3
    sget-object p0, Lcom/amap/api/mapcore2d/ct;->g:Ljava/lang/String;

    return-object p0
.end method

.method private static u(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 604
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/ct;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 608
    :cond_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ct;->z(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    return-object p0

    .line 610
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 611
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 612
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private static v(Landroid/content/Context;)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p0, :cond_3

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 641
    invoke-static {p0, v1}, Lcom/amap/api/mapcore2d/ct;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 645
    :cond_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ct;->w(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 650
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    .line 655
    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private static w(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1

    const-string v0, "connectivity"

    .line 662
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method private static x(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 669
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ct;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 670
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 673
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static y(Landroid/content/Context;)I
    .locals 2

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 680
    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/ct;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 685
    :cond_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ct;->z(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 687
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    return p0
.end method

.method private static z(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1

    const-string v0, "phone"

    .line 695
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.class public final enum Lcom/amap/api/interfaces/MapCameraMessage$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/interfaces/MapCameraMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amap/api/interfaces/MapCameraMessage$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/amap/api/interfaces/MapCameraMessage$Type;

.field public static final enum changeCenter:Lcom/amap/api/interfaces/MapCameraMessage$Type;

.field public static final enum changeGeoCenterZoom:Lcom/amap/api/interfaces/MapCameraMessage$Type;

.field public static final enum changeGeoCenterZoomTiltBearing:Lcom/amap/api/interfaces/MapCameraMessage$Type;

.field public static final enum newCameraPosition:Lcom/amap/api/interfaces/MapCameraMessage$Type;

.field public static final enum newLatLngBounds:Lcom/amap/api/interfaces/MapCameraMessage$Type;

.field public static final enum newLatLngBoundsWithSize:Lcom/amap/api/interfaces/MapCameraMessage$Type;

.field public static final enum none:Lcom/amap/api/interfaces/MapCameraMessage$Type;

.field public static final enum scrollBy:Lcom/amap/api/interfaces/MapCameraMessage$Type;

.field public static final enum zoomBy:Lcom/amap/api/interfaces/MapCameraMessage$Type;

.field public static final enum zoomIn:Lcom/amap/api/interfaces/MapCameraMessage$Type;

.field public static final enum zoomOut:Lcom/amap/api/interfaces/MapCameraMessage$Type;

.field public static final enum zoomTo:Lcom/amap/api/interfaces/MapCameraMessage$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 23
    new-instance v0, Lcom/amap/api/interfaces/MapCameraMessage$Type;

    const-string v1, "none"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amap/api/interfaces/MapCameraMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/interfaces/MapCameraMessage$Type;->none:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    new-instance v0, Lcom/amap/api/interfaces/MapCameraMessage$Type;

    const-string v1, "zoomIn"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/amap/api/interfaces/MapCameraMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/interfaces/MapCameraMessage$Type;->zoomIn:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    new-instance v0, Lcom/amap/api/interfaces/MapCameraMessage$Type;

    const-string v1, "changeCenter"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/amap/api/interfaces/MapCameraMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/interfaces/MapCameraMessage$Type;->changeCenter:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    new-instance v0, Lcom/amap/api/interfaces/MapCameraMessage$Type;

    const-string v1, "changeGeoCenterZoom"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/amap/api/interfaces/MapCameraMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/interfaces/MapCameraMessage$Type;->changeGeoCenterZoom:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    new-instance v0, Lcom/amap/api/interfaces/MapCameraMessage$Type;

    const-string v1, "zoomOut"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/amap/api/interfaces/MapCameraMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/interfaces/MapCameraMessage$Type;->zoomOut:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    new-instance v0, Lcom/amap/api/interfaces/MapCameraMessage$Type;

    const-string v1, "zoomTo"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/amap/api/interfaces/MapCameraMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/interfaces/MapCameraMessage$Type;->zoomTo:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    new-instance v0, Lcom/amap/api/interfaces/MapCameraMessage$Type;

    const-string v1, "zoomBy"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/amap/api/interfaces/MapCameraMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/interfaces/MapCameraMessage$Type;->zoomBy:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    new-instance v0, Lcom/amap/api/interfaces/MapCameraMessage$Type;

    const-string v1, "scrollBy"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/amap/api/interfaces/MapCameraMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/interfaces/MapCameraMessage$Type;->scrollBy:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    new-instance v0, Lcom/amap/api/interfaces/MapCameraMessage$Type;

    const-string v1, "newCameraPosition"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/amap/api/interfaces/MapCameraMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/interfaces/MapCameraMessage$Type;->newCameraPosition:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    new-instance v0, Lcom/amap/api/interfaces/MapCameraMessage$Type;

    const-string v1, "newLatLngBounds"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/amap/api/interfaces/MapCameraMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/interfaces/MapCameraMessage$Type;->newLatLngBounds:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    new-instance v0, Lcom/amap/api/interfaces/MapCameraMessage$Type;

    const-string v1, "newLatLngBoundsWithSize"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/amap/api/interfaces/MapCameraMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/interfaces/MapCameraMessage$Type;->newLatLngBoundsWithSize:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    new-instance v0, Lcom/amap/api/interfaces/MapCameraMessage$Type;

    const-string v1, "changeGeoCenterZoomTiltBearing"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/amap/api/interfaces/MapCameraMessage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/interfaces/MapCameraMessage$Type;->changeGeoCenterZoomTiltBearing:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    const/16 v0, 0xc

    .line 22
    new-array v0, v0, [Lcom/amap/api/interfaces/MapCameraMessage$Type;

    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->none:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->zoomIn:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->changeCenter:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->changeGeoCenterZoom:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->zoomOut:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->zoomTo:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->zoomBy:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->scrollBy:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    aput-object v1, v0, v9

    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->newCameraPosition:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    aput-object v1, v0, v10

    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->newLatLngBounds:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    aput-object v1, v0, v11

    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->newLatLngBoundsWithSize:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    aput-object v1, v0, v12

    sget-object v1, Lcom/amap/api/interfaces/MapCameraMessage$Type;->changeGeoCenterZoomTiltBearing:Lcom/amap/api/interfaces/MapCameraMessage$Type;

    aput-object v1, v0, v13

    sput-object v0, Lcom/amap/api/interfaces/MapCameraMessage$Type;->a:[Lcom/amap/api/interfaces/MapCameraMessage$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/interfaces/MapCameraMessage$Type;
    .locals 1

    .line 22
    const-class v0, Lcom/amap/api/interfaces/MapCameraMessage$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amap/api/interfaces/MapCameraMessage$Type;

    return-object p0
.end method

.method public static values()[Lcom/amap/api/interfaces/MapCameraMessage$Type;
    .locals 1

    .line 22
    sget-object v0, Lcom/amap/api/interfaces/MapCameraMessage$Type;->a:[Lcom/amap/api/interfaces/MapCameraMessage$Type;

    invoke-virtual {v0}, [Lcom/amap/api/interfaces/MapCameraMessage$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/interfaces/MapCameraMessage$Type;

    return-object v0
.end method

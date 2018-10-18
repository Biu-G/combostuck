.class public final synthetic Lcn/edu/pku/pkurunner/Map/-$$Lambda$GPSManager$1u_WGsa5CfvQVRl3RytKVALkk68;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# static fields
.field public static final synthetic INSTANCE:Lcn/edu/pku/pkurunner/Map/-$$Lambda$GPSManager$1u_WGsa5CfvQVRl3RytKVALkk68;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/edu/pku/pkurunner/Map/-$$Lambda$GPSManager$1u_WGsa5CfvQVRl3RytKVALkk68;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/Map/-$$Lambda$GPSManager$1u_WGsa5CfvQVRl3RytKVALkk68;-><init>()V

    sput-object v0, Lcn/edu/pku/pkurunner/Map/-$$Lambda$GPSManager$1u_WGsa5CfvQVRl3RytKVALkk68;->INSTANCE:Lcn/edu/pku/pkurunner/Map/-$$Lambda$GPSManager$1u_WGsa5CfvQVRl3RytKVALkk68;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGpsStatusChanged(I)V
    .locals 0

    invoke-static {p1}, Lcn/edu/pku/pkurunner/Map/GPSManager;->lambda$1u_WGsa5CfvQVRl3RytKVALkk68(I)V

    return-void
.end method

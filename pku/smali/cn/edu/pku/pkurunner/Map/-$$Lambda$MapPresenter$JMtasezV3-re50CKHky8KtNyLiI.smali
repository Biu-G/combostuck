.class public final synthetic Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$JMtasezV3-re50CKHky8KtNyLiI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcn/edu/pku/pkurunner/Map/GPSManager$GPSStatusListener;


# instance fields
.field private final synthetic f$0:Lcn/edu/pku/pkurunner/Map/MapPresenter;


# direct methods
.method public synthetic constructor <init>(Lcn/edu/pku/pkurunner/Map/MapPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$JMtasezV3-re50CKHky8KtNyLiI;->f$0:Lcn/edu/pku/pkurunner/Map/MapPresenter;

    return-void
.end method


# virtual methods
.method public final onStatusUpdate(Landroid/location/GpsStatus;)V
    .locals 1

    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapPresenter$JMtasezV3-re50CKHky8KtNyLiI;->f$0:Lcn/edu/pku/pkurunner/Map/MapPresenter;

    invoke-static {v0, p1}, Lcn/edu/pku/pkurunner/Map/MapPresenter;->lambda$JMtasezV3-re50CKHky8KtNyLiI(Lcn/edu/pku/pkurunner/Map/MapPresenter;Landroid/location/GpsStatus;)V

    return-void
.end method

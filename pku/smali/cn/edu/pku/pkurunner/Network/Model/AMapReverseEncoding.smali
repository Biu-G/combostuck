.class public Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean;
    }
.end annotation


# instance fields
.field private info:Ljava/lang/String;

.field private infocode:Ljava/lang/String;

.field private regeocode:Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStreetName()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding;->regeocode:Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean;

    invoke-static {v0}, Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean;->access$000(Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean;)Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean$AddressComponentBean;

    move-result-object v0

    invoke-static {v0}, Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean$AddressComponentBean;->access$100(Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean$AddressComponentBean;)Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean$AddressComponentBean$StreetNumberBean;

    move-result-object v0

    invoke-static {v0}, Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean$AddressComponentBean$StreetNumberBean;->access$200(Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean$AddressComponentBean$StreetNumberBean;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

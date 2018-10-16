.class public Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegeocodeBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean$AddressComponentBean;
    }
.end annotation


# instance fields
.field private addressComponent:Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean$AddressComponentBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean;)Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean$AddressComponentBean;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean;->addressComponent:Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean$AddressComponentBean;

    return-object p0
.end method

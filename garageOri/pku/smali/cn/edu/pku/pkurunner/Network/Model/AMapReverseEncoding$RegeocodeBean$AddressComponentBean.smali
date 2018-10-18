.class public Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean$AddressComponentBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddressComponentBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean$AddressComponentBean$StreetNumberBean;
    }
.end annotation


# instance fields
.field private adcode:Ljava/lang/String;

.field private citycode:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private district:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private streetNumber:Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean$AddressComponentBean$StreetNumberBean;

.field private towncode:Ljava/lang/String;

.field private township:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean$AddressComponentBean;)Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean$AddressComponentBean$StreetNumberBean;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean$AddressComponentBean;->streetNumber:Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean$AddressComponentBean$StreetNumberBean;

    return-object p0
.end method

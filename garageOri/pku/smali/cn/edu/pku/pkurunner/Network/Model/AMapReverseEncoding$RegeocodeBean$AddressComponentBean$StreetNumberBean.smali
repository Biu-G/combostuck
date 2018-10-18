.class public Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean$AddressComponentBean$StreetNumberBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean$AddressComponentBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreetNumberBean"
.end annotation


# instance fields
.field private direction:Ljava/lang/String;

.field private distance:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private street:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean$AddressComponentBean$StreetNumberBean;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding$RegeocodeBean$AddressComponentBean$StreetNumberBean;->street:Ljava/lang/String;

    return-object p0
.end method

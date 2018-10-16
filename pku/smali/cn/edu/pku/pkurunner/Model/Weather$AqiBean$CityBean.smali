.class public Lcn/edu/pku/pkurunner/Model/Weather$AqiBean$CityBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/Model/Weather$AqiBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CityBean"
.end annotation


# instance fields
.field private aqi:Ljava/lang/String;

.field private co:Ljava/lang/String;

.field private no2:Ljava/lang/String;

.field private o3:Ljava/lang/String;

.field private pm10:Ljava/lang/String;

.field private pm25:Ljava/lang/String;

.field private qlty:Ljava/lang/String;

.field private so2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcn/edu/pku/pkurunner/Model/Weather$AqiBean$CityBean;)Ljava/lang/String;
    .locals 0

    .line 118
    iget-object p0, p0, Lcn/edu/pku/pkurunner/Model/Weather$AqiBean$CityBean;->aqi:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcn/edu/pku/pkurunner/Model/Weather$AqiBean$CityBean;)Ljava/lang/String;
    .locals 0

    .line 118
    iget-object p0, p0, Lcn/edu/pku/pkurunner/Model/Weather$AqiBean$CityBean;->qlty:Ljava/lang/String;

    return-object p0
.end method

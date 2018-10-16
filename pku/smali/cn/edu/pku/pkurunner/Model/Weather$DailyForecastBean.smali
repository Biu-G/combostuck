.class public Lcn/edu/pku/pkurunner/Model/Weather$DailyForecastBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/Model/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DailyForecastBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/Model/Weather$DailyForecastBean$WindBean;,
        Lcn/edu/pku/pkurunner/Model/Weather$DailyForecastBean$TmpBean;,
        Lcn/edu/pku/pkurunner/Model/Weather$DailyForecastBean$CondBean;,
        Lcn/edu/pku/pkurunner/Model/Weather$DailyForecastBean$AstroBean;
    }
.end annotation


# instance fields
.field private astro:Lcn/edu/pku/pkurunner/Model/Weather$DailyForecastBean$AstroBean;

.field private cond:Lcn/edu/pku/pkurunner/Model/Weather$DailyForecastBean$CondBean;

.field private date:Ljava/lang/String;

.field private hum:Ljava/lang/String;

.field private pcpn:Ljava/lang/String;

.field private pop:Ljava/lang/String;

.field private pres:Ljava/lang/String;

.field private tmp:Lcn/edu/pku/pkurunner/Model/Weather$DailyForecastBean$TmpBean;

.field private vis:Ljava/lang/String;

.field private wind:Lcn/edu/pku/pkurunner/Model/Weather$DailyForecastBean$WindBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/Weather$DailyForecastBean;->date:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/Weather$DailyForecastBean;->date:Ljava/lang/String;

    return-void
.end method

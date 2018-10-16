.class public Lcn/edu/pku/pkurunner/Model/Weather$HourlyForecastBean;
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
    name = "HourlyForecastBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/Model/Weather$HourlyForecastBean$WindBean;
    }
.end annotation


# instance fields
.field private date:Ljava/lang/String;

.field private hum:Ljava/lang/String;

.field private pop:Ljava/lang/String;

.field private pres:Ljava/lang/String;

.field private tmp:Ljava/lang/String;

.field private wind:Lcn/edu/pku/pkurunner/Model/Weather$HourlyForecastBean$WindBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/Weather$HourlyForecastBean;->date:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/Weather$HourlyForecastBean;->date:Ljava/lang/String;

    return-void
.end method

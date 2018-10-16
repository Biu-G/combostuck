.class public Lcn/edu/pku/pkurunner/Model/Weather;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/Model/Weather$HourlyForecastBean;,
        Lcn/edu/pku/pkurunner/Model/Weather$DailyForecastBean;,
        Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean;,
        Lcn/edu/pku/pkurunner/Model/Weather$NowBean;,
        Lcn/edu/pku/pkurunner/Model/Weather$BasicBean;,
        Lcn/edu/pku/pkurunner/Model/Weather$AqiBean;
    }
.end annotation


# instance fields
.field private aqi:Lcn/edu/pku/pkurunner/Model/Weather$AqiBean;

.field private basic:Lcn/edu/pku/pkurunner/Model/Weather$BasicBean;

.field private daily_forecast:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/edu/pku/pkurunner/Model/Weather$DailyForecastBean;",
            ">;"
        }
    .end annotation
.end field

.field private hourly_forecast:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/edu/pku/pkurunner/Model/Weather$HourlyForecastBean;",
            ">;"
        }
    .end annotation
.end field

.field private now:Lcn/edu/pku/pkurunner/Model/Weather$NowBean;

.field private status:Ljava/lang/String;

.field private suggestion:Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAqi()Lcn/edu/pku/pkurunner/Model/Weather$AqiBean;
    .locals 1

    .line 91
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/Weather;->aqi:Lcn/edu/pku/pkurunner/Model/Weather$AqiBean;

    return-object v0
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 99
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/Weather;->aqi:Lcn/edu/pku/pkurunner/Model/Weather$AqiBean;

    invoke-static {v0}, Lcn/edu/pku/pkurunner/Model/Weather$AqiBean;->access$000(Lcn/edu/pku/pkurunner/Model/Weather$AqiBean;)Lcn/edu/pku/pkurunner/Model/Weather$AqiBean$CityBean;

    move-result-object v0

    invoke-static {v0}, Lcn/edu/pku/pkurunner/Model/Weather$AqiBean$CityBean;->access$100(Lcn/edu/pku/pkurunner/Model/Weather$AqiBean$CityBean;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/16 v6, 0x64

    if-le v0, v6, :cond_0

    const v0, 0x7f0f001e

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcn/edu/pku/pkurunner/Model/Weather;->basic:Lcn/edu/pku/pkurunner/Model/Weather$BasicBean;

    .line 101
    invoke-static {v6}, Lcn/edu/pku/pkurunner/Model/Weather$BasicBean;->access$200(Lcn/edu/pku/pkurunner/Model/Weather$BasicBean;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v4, p0, Lcn/edu/pku/pkurunner/Model/Weather;->now:Lcn/edu/pku/pkurunner/Model/Weather$NowBean;

    .line 102
    invoke-static {v4}, Lcn/edu/pku/pkurunner/Model/Weather$NowBean;->access$300(Lcn/edu/pku/pkurunner/Model/Weather$NowBean;)Lcn/edu/pku/pkurunner/Model/Weather$NowBean$CondBean;

    move-result-object v4

    invoke-static {v4}, Lcn/edu/pku/pkurunner/Model/Weather$NowBean$CondBean;->access$400(Lcn/edu/pku/pkurunner/Model/Weather$NowBean$CondBean;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    iget-object v3, p0, Lcn/edu/pku/pkurunner/Model/Weather;->now:Lcn/edu/pku/pkurunner/Model/Weather$NowBean;

    .line 103
    invoke-static {v3}, Lcn/edu/pku/pkurunner/Model/Weather$NowBean;->access$500(Lcn/edu/pku/pkurunner/Model/Weather$NowBean;)Lcn/edu/pku/pkurunner/Model/Weather$NowBean$WindBean;

    move-result-object v3

    invoke-static {v3}, Lcn/edu/pku/pkurunner/Model/Weather$NowBean$WindBean;->access$600(Lcn/edu/pku/pkurunner/Model/Weather$NowBean$WindBean;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    iget-object v2, p0, Lcn/edu/pku/pkurunner/Model/Weather;->aqi:Lcn/edu/pku/pkurunner/Model/Weather$AqiBean;

    .line 104
    invoke-static {v2}, Lcn/edu/pku/pkurunner/Model/Weather$AqiBean;->access$000(Lcn/edu/pku/pkurunner/Model/Weather$AqiBean;)Lcn/edu/pku/pkurunner/Model/Weather$AqiBean$CityBean;

    move-result-object v2

    invoke-static {v2}, Lcn/edu/pku/pkurunner/Model/Weather$AqiBean$CityBean;->access$700(Lcn/edu/pku/pkurunner/Model/Weather$AqiBean$CityBean;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 100
    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const v0, 0x7f0f001f

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcn/edu/pku/pkurunner/Model/Weather;->basic:Lcn/edu/pku/pkurunner/Model/Weather$BasicBean;

    .line 106
    invoke-static {v7}, Lcn/edu/pku/pkurunner/Model/Weather$BasicBean;->access$200(Lcn/edu/pku/pkurunner/Model/Weather$BasicBean;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    iget-object v4, p0, Lcn/edu/pku/pkurunner/Model/Weather;->now:Lcn/edu/pku/pkurunner/Model/Weather$NowBean;

    .line 107
    invoke-static {v4}, Lcn/edu/pku/pkurunner/Model/Weather$NowBean;->access$300(Lcn/edu/pku/pkurunner/Model/Weather$NowBean;)Lcn/edu/pku/pkurunner/Model/Weather$NowBean$CondBean;

    move-result-object v4

    invoke-static {v4}, Lcn/edu/pku/pkurunner/Model/Weather$NowBean$CondBean;->access$400(Lcn/edu/pku/pkurunner/Model/Weather$NowBean$CondBean;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    iget-object v3, p0, Lcn/edu/pku/pkurunner/Model/Weather;->now:Lcn/edu/pku/pkurunner/Model/Weather$NowBean;

    .line 108
    invoke-static {v3}, Lcn/edu/pku/pkurunner/Model/Weather$NowBean;->access$500(Lcn/edu/pku/pkurunner/Model/Weather$NowBean;)Lcn/edu/pku/pkurunner/Model/Weather$NowBean$WindBean;

    move-result-object v3

    invoke-static {v3}, Lcn/edu/pku/pkurunner/Model/Weather$NowBean$WindBean;->access$600(Lcn/edu/pku/pkurunner/Model/Weather$NowBean$WindBean;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    iget-object v2, p0, Lcn/edu/pku/pkurunner/Model/Weather;->aqi:Lcn/edu/pku/pkurunner/Model/Weather$AqiBean;

    .line 109
    invoke-static {v2}, Lcn/edu/pku/pkurunner/Model/Weather$AqiBean;->access$000(Lcn/edu/pku/pkurunner/Model/Weather$AqiBean;)Lcn/edu/pku/pkurunner/Model/Weather$AqiBean$CityBean;

    move-result-object v2

    invoke-static {v2}, Lcn/edu/pku/pkurunner/Model/Weather$AqiBean$CityBean;->access$700(Lcn/edu/pku/pkurunner/Model/Weather$AqiBean$CityBean;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    iget-object v1, p0, Lcn/edu/pku/pkurunner/Model/Weather;->suggestion:Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean;

    .line 110
    invoke-static {v1}, Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean;->access$800(Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean;)Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean$SportBean;

    move-result-object v1

    invoke-static {v1}, Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean$SportBean;->access$900(Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean$SportBean;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v5

    const/4 v1, 0x5

    iget-object v2, p0, Lcn/edu/pku/pkurunner/Model/Weather;->suggestion:Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean;

    .line 111
    invoke-static {v2}, Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean;->access$800(Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean;)Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean$SportBean;

    move-result-object v2

    invoke-static {v2}, Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean$SportBean;->access$1000(Lcn/edu/pku/pkurunner/Model/Weather$SuggestionBean$SportBean;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 105
    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getNow()Lcn/edu/pku/pkurunner/Model/Weather$NowBean;
    .locals 1

    .line 95
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/Weather;->now:Lcn/edu/pku/pkurunner/Model/Weather$NowBean;

    return-object v0
.end method

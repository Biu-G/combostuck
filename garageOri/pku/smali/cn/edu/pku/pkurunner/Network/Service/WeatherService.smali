.class public interface abstract Lcn/edu/pku/pkurunner/Network/Service/WeatherService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getWeather()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcn/edu/pku/pkurunner/Model/Weather;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "weather/all"
    .end annotation
.end method

.class public interface abstract Lcn/edu/pku/pkurunner/Network/Service/LoginService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getLatestVersion()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcn/edu/pku/pkurunner/Network/Model/Version;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "public/client/android/curr_version"
    .end annotation
.end method

.method public abstract getLatestVersionForOffline()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcn/edu/pku/pkurunner/Network/Model/Version;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "https://raw.githubusercontent.com/pku-runner/pku-runner.github.io/android/public/client/android/curr_version"
    .end annotation
.end method

.method public abstract getMinVersion()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcn/edu/pku/pkurunner/Network/Model/Version;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "public/client/android/min_version"
    .end annotation
.end method

.method public abstract login(Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "access_token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcn/edu/pku/pkurunner/Network/DataPack<",
            "Lcn/edu/pku/pkurunner/Model/User$Inner;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "user"
    .end annotation
.end method

.class public interface abstract Lcn/edu/pku/pkurunner/Network/Service/TaskService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getList(Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "userId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcn/edu/pku/pkurunner/Network/DataPack<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/edu/pku/pkurunner/Model/Task;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "badge/user/{userId}"
    .end annotation
.end method

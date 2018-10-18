.class public interface abstract Lcn/edu/pku/pkurunner/Network/Service/GymRecordService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getGymRecords(Ljava/lang/String;)Lio/reactivex/Observable;
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
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "record2/{userId}"
    .end annotation
.end method

.method public abstract verifyGymRecord(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "userId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "recordId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcn/edu/pku/pkurunner/Network/DataPack<",
            "Lcn/edu/pku/pkurunner/Model/GymRecord$Inner;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "record2/{userId}/{recordId}"
    .end annotation
.end method

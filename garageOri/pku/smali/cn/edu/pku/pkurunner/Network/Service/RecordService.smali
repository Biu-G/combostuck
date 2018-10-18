.class public interface abstract Lcn/edu/pku/pkurunner/Network/Service/RecordService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getRecords(Ljava/lang/String;)Lio/reactivex/Observable;
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
            "Lcn/edu/pku/pkurunner/Model/Record$Inner;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "record/{userId}"
    .end annotation
.end method

.method public abstract getSingleRecord(Ljava/lang/String;I)Lio/reactivex/Observable;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lcn/edu/pku/pkurunner/Network/DataPack<",
            "Lcn/edu/pku/pkurunner/Model/Record$Inner;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "record/{userId}/{recordId}"
    .end annotation
.end method

.method public abstract getStatus(Ljava/lang/String;)Lio/reactivex/Observable;
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
            "Lcn/edu/pku/pkurunner/Network/Model/UserStatus;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "record/status/{userId}"
    .end annotation
.end method

.method public abstract reverseEncoding(Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "location"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "key"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "radius"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lcn/edu/pku/pkurunner/Network/Model/AMapReverseEncoding;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "https://restapi.amap.com/v3/geocode/regeo?output=json&extensions=base"
    .end annotation
.end method

.method public abstract uploadRecord(Ljava/lang/String;ILjava/util/Date;Ljava/lang/String;Ljava/lang/String;ILokhttp3/RequestBody;)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "userId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Part;
            value = "duration"
        .end annotation
    .end param
    .param p3    # Ljava/util/Date;
        .annotation runtime Lretrofit2/http/Part;
            value = "date"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Part;
            value = "detail"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Part;
            value = "misc"
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lretrofit2/http/Part;
            value = "step"
        .end annotation
    .end param
    .param p7    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "photo\"; filename=\"image.jpg\" "
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lokhttp3/RequestBody;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcn/edu/pku/pkurunner/Network/DataPack<",
            "Lcn/edu/pku/pkurunner/Model/Record$Inner;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "record/{userId}"
    .end annotation
.end method

.method public abstract uploadRecordWithoutPhoto(Ljava/lang/String;ILjava/util/Date;Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "userId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Part;
            value = "duration"
        .end annotation
    .end param
    .param p3    # Ljava/util/Date;
        .annotation runtime Lretrofit2/http/Part;
            value = "date"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Part;
            value = "detail"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Part;
            value = "misc"
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lretrofit2/http/Part;
            value = "step"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lcn/edu/pku/pkurunner/Network/DataPack<",
            "Lcn/edu/pku/pkurunner/Model/Record$Inner;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "record/{userId}"
    .end annotation
.end method

.class Lcn/edu/pku/pkurunner/Network/Network$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/Network/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcn/edu/pku/pkurunner/Network/DataPack<",
        "TT;>;",
        "Lio/reactivex/Observable<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/edu/pku/pkurunner/Network/Network$1;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/Network/Network$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/edu/pku/pkurunner/Network/DataPack;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/edu/pku/pkurunner/Network/DataPack<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Network/DataPack;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Network/DataPack;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    .line 72
    :cond_0
    new-instance v0, Lcn/edu/pku/pkurunner/Exception/ServerException;

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Network/DataPack;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Network/DataPack;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcn/edu/pku/pkurunner/Exception/ServerException;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->error(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    check-cast p1, Lcn/edu/pku/pkurunner/Network/DataPack;

    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/Network/Network$a;->a(Lcn/edu/pku/pkurunner/Network/DataPack;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

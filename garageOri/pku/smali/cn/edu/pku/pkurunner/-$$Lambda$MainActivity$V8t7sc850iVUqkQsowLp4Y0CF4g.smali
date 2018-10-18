.class public final synthetic Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$V8t7sc850iVUqkQsowLp4Y0CF4g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lcn/edu/pku/pkurunner/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/edu/pku/pkurunner/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$V8t7sc850iVUqkQsowLp4Y0CF4g;->f$0:Lcn/edu/pku/pkurunner/MainActivity;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$V8t7sc850iVUqkQsowLp4Y0CF4g;->f$0:Lcn/edu/pku/pkurunner/MainActivity;

    check-cast p1, Lcn/edu/pku/pkurunner/Network/Model/Version;

    invoke-static {v0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->lambda$V8t7sc850iVUqkQsowLp4Y0CF4g(Lcn/edu/pku/pkurunner/MainActivity;Lcn/edu/pku/pkurunner/Network/Model/Version;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method

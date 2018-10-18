.class public final synthetic Lcn/edu/pku/pkurunner/-$$Lambda$Data$LPjt7TN7L21PD784aCdfgAdu7KQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$LPjt7TN7L21PD784aCdfgAdu7KQ;->f$0:I

    iput-object p2, p0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$LPjt7TN7L21PD784aCdfgAdu7KQ;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget v0, p0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$LPjt7TN7L21PD784aCdfgAdu7KQ;->f$0:I

    iget-object v1, p0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$LPjt7TN7L21PD784aCdfgAdu7KQ;->f$1:Ljava/util/ArrayList;

    invoke-static {v0, v1, p1}, Lcn/edu/pku/pkurunner/Data;->lambda$LPjt7TN7L21PD784aCdfgAdu7KQ(ILjava/util/ArrayList;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

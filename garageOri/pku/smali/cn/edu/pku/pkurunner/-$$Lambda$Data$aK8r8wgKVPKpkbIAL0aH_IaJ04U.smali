.class public final synthetic Lcn/edu/pku/pkurunner/-$$Lambda$Data$aK8r8wgKVPKpkbIAL0aH_IaJ04U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$aK8r8wgKVPKpkbIAL0aH_IaJ04U;->f$0:I

    iput-object p2, p0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$aK8r8wgKVPKpkbIAL0aH_IaJ04U;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget v0, p0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$aK8r8wgKVPKpkbIAL0aH_IaJ04U;->f$0:I

    iget-object v1, p0, Lcn/edu/pku/pkurunner/-$$Lambda$Data$aK8r8wgKVPKpkbIAL0aH_IaJ04U;->f$1:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcn/edu/pku/pkurunner/Data;->lambda$aK8r8wgKVPKpkbIAL0aH_IaJ04U(ILjava/util/List;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

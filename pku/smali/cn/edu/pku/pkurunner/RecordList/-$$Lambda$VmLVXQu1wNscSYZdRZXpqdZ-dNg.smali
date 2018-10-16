.class public final synthetic Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$VmLVXQu1wNscSYZdRZXpqdZ-dNg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lio/reactivex/ObservableEmitter;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$VmLVXQu1wNscSYZdRZXpqdZ-dNg;->f$0:Lio/reactivex/ObservableEmitter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$VmLVXQu1wNscSYZdRZXpqdZ-dNg;->f$0:Lio/reactivex/ObservableEmitter;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

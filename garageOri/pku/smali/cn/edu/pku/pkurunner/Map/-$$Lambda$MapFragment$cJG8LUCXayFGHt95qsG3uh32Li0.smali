.class public final synthetic Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapFragment$cJG8LUCXayFGHt95qsG3uh32Li0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/amap/api/maps2d/AMap$OnMapTouchListener;


# instance fields
.field private final synthetic f$0:Lio/reactivex/ObservableEmitter;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapFragment$cJG8LUCXayFGHt95qsG3uh32Li0;->f$0:Lio/reactivex/ObservableEmitter;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcn/edu/pku/pkurunner/Map/-$$Lambda$MapFragment$cJG8LUCXayFGHt95qsG3uh32Li0;->f$0:Lio/reactivex/ObservableEmitter;

    invoke-static {v0, p1}, Lcn/edu/pku/pkurunner/Map/MapFragment;->lambda$cJG8LUCXayFGHt95qsG3uh32Li0(Lio/reactivex/ObservableEmitter;Landroid/view/MotionEvent;)V

    return-void
.end method

.class public final synthetic Lcn/edu/pku/pkurunner/Offline/-$$Lambda$QuickOfflineSignin$sKOP1sRZnjWl6psFtzzZgQ4f-PU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field private final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Offline/-$$Lambda$QuickOfflineSignin$sKOP1sRZnjWl6psFtzzZgQ4f-PU;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 1

    iget-object v0, p0, Lcn/edu/pku/pkurunner/Offline/-$$Lambda$QuickOfflineSignin$sKOP1sRZnjWl6psFtzzZgQ4f-PU;->f$0:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcn/edu/pku/pkurunner/Offline/QuickOfflineSignin;->lambda$sKOP1sRZnjWl6psFtzzZgQ4f-PU(Landroid/app/Activity;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

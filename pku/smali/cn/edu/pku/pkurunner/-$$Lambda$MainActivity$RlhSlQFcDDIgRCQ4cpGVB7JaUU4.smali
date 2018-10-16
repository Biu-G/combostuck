.class public final synthetic Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$RlhSlQFcDDIgRCQ4cpGVB7JaUU4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcn/edu/pku/pkurunner/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/edu/pku/pkurunner/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$RlhSlQFcDDIgRCQ4cpGVB7JaUU4;->f$0:Lcn/edu/pku/pkurunner/MainActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$RlhSlQFcDDIgRCQ4cpGVB7JaUU4;->f$0:Lcn/edu/pku/pkurunner/MainActivity;

    check-cast p1, Lcn/edu/pku/pkurunner/Network/Model/UserStatus;

    invoke-static {v0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->lambda$RlhSlQFcDDIgRCQ4cpGVB7JaUU4(Lcn/edu/pku/pkurunner/MainActivity;Lcn/edu/pku/pkurunner/Network/Model/UserStatus;)V

    return-void
.end method

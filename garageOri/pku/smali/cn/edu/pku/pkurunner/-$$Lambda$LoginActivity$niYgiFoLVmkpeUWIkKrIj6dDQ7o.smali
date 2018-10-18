.class public final synthetic Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$niYgiFoLVmkpeUWIkKrIj6dDQ7o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Ljava/util/List;

.field private final synthetic f$1:Lio/reactivex/ObservableEmitter;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$niYgiFoLVmkpeUWIkKrIj6dDQ7o;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$niYgiFoLVmkpeUWIkKrIj6dDQ7o;->f$1:Lio/reactivex/ObservableEmitter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$niYgiFoLVmkpeUWIkKrIj6dDQ7o;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/-$$Lambda$LoginActivity$niYgiFoLVmkpeUWIkKrIj6dDQ7o;->f$1:Lio/reactivex/ObservableEmitter;

    invoke-static {v0, v1, p1, p2}, Lcn/edu/pku/pkurunner/LoginActivity;->lambda$niYgiFoLVmkpeUWIkKrIj6dDQ7o(Ljava/util/List;Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V

    return-void
.end method

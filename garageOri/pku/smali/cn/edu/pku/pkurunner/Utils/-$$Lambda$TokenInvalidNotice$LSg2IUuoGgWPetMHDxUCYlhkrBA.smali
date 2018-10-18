.class public final synthetic Lcn/edu/pku/pkurunner/Utils/-$$Lambda$TokenInvalidNotice$LSg2IUuoGgWPetMHDxUCYlhkrBA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Utils/-$$Lambda$TokenInvalidNotice$LSg2IUuoGgWPetMHDxUCYlhkrBA;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 1

    iget-object v0, p0, Lcn/edu/pku/pkurunner/Utils/-$$Lambda$TokenInvalidNotice$LSg2IUuoGgWPetMHDxUCYlhkrBA;->f$0:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/edu/pku/pkurunner/Utils/TokenInvalidNotice;->lambda$LSg2IUuoGgWPetMHDxUCYlhkrBA(Landroid/content/Context;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

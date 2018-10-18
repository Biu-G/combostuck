.class public final synthetic Lcn/edu/pku/pkurunner/Settings/-$$Lambda$Jxp4LOjD5wh7hYvpBAWXzgH0LNY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcn/edu/pku/pkurunner/Settings/-$$Lambda$Jxp4LOjD5wh7hYvpBAWXzgH0LNY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$Jxp4LOjD5wh7hYvpBAWXzgH0LNY;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$Jxp4LOjD5wh7hYvpBAWXzgH0LNY;-><init>()V

    sput-object v0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$Jxp4LOjD5wh7hYvpBAWXzgH0LNY;->INSTANCE:Lcn/edu/pku/pkurunner/Settings/-$$Lambda$Jxp4LOjD5wh7hYvpBAWXzgH0LNY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

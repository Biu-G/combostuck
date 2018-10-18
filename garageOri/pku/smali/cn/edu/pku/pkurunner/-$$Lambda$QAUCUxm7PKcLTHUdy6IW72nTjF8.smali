.class public final synthetic Lcn/edu/pku/pkurunner/-$$Lambda$QAUCUxm7PKcLTHUdy6IW72nTjF8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$QAUCUxm7PKcLTHUdy6IW72nTjF8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/edu/pku/pkurunner/-$$Lambda$QAUCUxm7PKcLTHUdy6IW72nTjF8;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/-$$Lambda$QAUCUxm7PKcLTHUdy6IW72nTjF8;-><init>()V

    sput-object v0, Lcn/edu/pku/pkurunner/-$$Lambda$QAUCUxm7PKcLTHUdy6IW72nTjF8;->INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$QAUCUxm7PKcLTHUdy6IW72nTjF8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

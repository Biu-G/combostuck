.class public final synthetic Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$r7Rm47rNGWiFwC5PKtkj4HsdbfA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field public static final synthetic INSTANCE:Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$r7Rm47rNGWiFwC5PKtkj4HsdbfA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$r7Rm47rNGWiFwC5PKtkj4HsdbfA;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$r7Rm47rNGWiFwC5PKtkj4HsdbfA;-><init>()V

    sput-object v0, Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$r7Rm47rNGWiFwC5PKtkj4HsdbfA;->INSTANCE:Lcn/edu/pku/pkurunner/Network/-$$Lambda$Network$r7Rm47rNGWiFwC5PKtkj4HsdbfA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 0

    invoke-static {p1}, Lcn/edu/pku/pkurunner/Network/Network;->lambda$r7Rm47rNGWiFwC5PKtkj4HsdbfA(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

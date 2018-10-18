.class public Lcn/edu/pku/pkurunner/Model/Weather$NowBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/Model/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NowBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/Model/Weather$NowBean$WindBean;,
        Lcn/edu/pku/pkurunner/Model/Weather$NowBean$CondBean;
    }
.end annotation


# instance fields
.field private cond:Lcn/edu/pku/pkurunner/Model/Weather$NowBean$CondBean;

.field private fl:Ljava/lang/String;

.field private hum:Ljava/lang/String;

.field private pcpn:Ljava/lang/String;

.field private pres:Ljava/lang/String;

.field private tmp:Ljava/lang/String;

.field private vis:Ljava/lang/String;

.field private wind:Lcn/edu/pku/pkurunner/Model/Weather$NowBean$WindBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcn/edu/pku/pkurunner/Model/Weather$NowBean;)Lcn/edu/pku/pkurunner/Model/Weather$NowBean$CondBean;
    .locals 0

    .line 146
    iget-object p0, p0, Lcn/edu/pku/pkurunner/Model/Weather$NowBean;->cond:Lcn/edu/pku/pkurunner/Model/Weather$NowBean$CondBean;

    return-object p0
.end method

.method static synthetic access$500(Lcn/edu/pku/pkurunner/Model/Weather$NowBean;)Lcn/edu/pku/pkurunner/Model/Weather$NowBean$WindBean;
    .locals 0

    .line 146
    iget-object p0, p0, Lcn/edu/pku/pkurunner/Model/Weather$NowBean;->wind:Lcn/edu/pku/pkurunner/Model/Weather$NowBean$WindBean;

    return-object p0
.end method


# virtual methods
.method public getCond()Lcn/edu/pku/pkurunner/Model/Weather$NowBean$CondBean;
    .locals 1

    .line 159
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/Weather$NowBean;->cond:Lcn/edu/pku/pkurunner/Model/Weather$NowBean$CondBean;

    return-object v0
.end method

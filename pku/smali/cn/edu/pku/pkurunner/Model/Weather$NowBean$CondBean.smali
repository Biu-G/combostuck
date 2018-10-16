.class public Lcn/edu/pku/pkurunner/Model/Weather$NowBean$CondBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/Model/Weather$NowBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CondBean"
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private txt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcn/edu/pku/pkurunner/Model/Weather$NowBean$CondBean;)Ljava/lang/String;
    .locals 0

    .line 162
    iget-object p0, p0, Lcn/edu/pku/pkurunner/Model/Weather$NowBean$CondBean;->txt:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/Weather$NowBean$CondBean;->code:Ljava/lang/String;

    return-object v0
.end method

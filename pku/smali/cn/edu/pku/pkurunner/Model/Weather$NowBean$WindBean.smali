.class public Lcn/edu/pku/pkurunner/Model/Weather$NowBean$WindBean;
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
    name = "WindBean"
.end annotation


# instance fields
.field private deg:Ljava/lang/String;

.field private dir:Ljava/lang/String;

.field private sc:Ljava/lang/String;

.field private spd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lcn/edu/pku/pkurunner/Model/Weather$NowBean$WindBean;)Ljava/lang/String;
    .locals 0

    .line 171
    iget-object p0, p0, Lcn/edu/pku/pkurunner/Model/Weather$NowBean$WindBean;->dir:Ljava/lang/String;

    return-object p0
.end method

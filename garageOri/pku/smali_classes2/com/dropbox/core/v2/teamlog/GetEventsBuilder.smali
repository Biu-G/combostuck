.class public Lcom/dropbox/core/v2/teamlog/GetEventsBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/dropbox/core/v2/teamlog/DbxTeamTeamLogRequests;

.field private final b:Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/teamlog/DbxTeamTeamLogRequests;Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 33
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/GetEventsBuilder;->a:Lcom/dropbox/core/v2/teamlog/DbxTeamTeamLogRequests;

    if-eqz p2, :cond_0

    .line 37
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/GetEventsBuilder;->b:Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;

    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "_builder"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "_client"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/teamlog/GetTeamEventsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/GetEventsBuilder;->b:Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;->build()Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/GetEventsBuilder;->a:Lcom/dropbox/core/v2/teamlog/DbxTeamTeamLogRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/teamlog/DbxTeamTeamLogRequests;->a(Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;)Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;

    move-result-object v0

    return-object v0
.end method

.method public withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/GetEventsBuilder;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/GetEventsBuilder;->b:Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;->withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;

    return-object p0
.end method

.method public withCategory(Lcom/dropbox/core/v2/teamlog/EventCategory;)Lcom/dropbox/core/v2/teamlog/GetEventsBuilder;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/GetEventsBuilder;->b:Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;->withCategory(Lcom/dropbox/core/v2/teamlog/EventCategory;)Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;

    return-object p0
.end method

.method public withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/teamlog/GetEventsBuilder;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/GetEventsBuilder;->b:Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;->withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;

    return-object p0
.end method

.method public withTime(Lcom/dropbox/core/v2/teamcommon/TimeRange;)Lcom/dropbox/core/v2/teamlog/GetEventsBuilder;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/GetEventsBuilder;->b:Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;->withTime(Lcom/dropbox/core/v2/teamcommon/TimeRange;)Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;

    return-object p0
.end method

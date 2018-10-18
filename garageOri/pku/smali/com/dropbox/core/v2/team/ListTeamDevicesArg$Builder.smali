.class public Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/ListTeamDevicesArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected cursor:Ljava/lang/String;

.field protected includeDesktopClients:Z

.field protected includeMobileClients:Z

.field protected includeWebSessions:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->cursor:Ljava/lang/String;

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->includeWebSessions:Z

    .line 123
    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->includeDesktopClients:Z

    .line 124
    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->includeMobileClients:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/team/ListTeamDevicesArg;
    .locals 5

    .line 213
    new-instance v0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->cursor:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->includeWebSessions:Z

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->includeDesktopClients:Z

    iget-boolean v4, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->includeMobileClients:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/core/v2/team/ListTeamDevicesArg;-><init>(Ljava/lang/String;ZZZ)V

    return-object v0
.end method

.method public withCursor(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->cursor:Ljava/lang/String;

    return-object p0
.end method

.method public withIncludeDesktopClients(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->includeDesktopClients:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 180
    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->includeDesktopClients:Z

    :goto_0
    return-object p0
.end method

.method public withIncludeMobileClients(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->includeMobileClients:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 201
    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->includeMobileClients:Z

    :goto_0
    return-object p0
.end method

.method public withIncludeWebSessions(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->includeWebSessions:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 159
    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->includeWebSessions:Z

    :goto_0
    return-object p0
.end method

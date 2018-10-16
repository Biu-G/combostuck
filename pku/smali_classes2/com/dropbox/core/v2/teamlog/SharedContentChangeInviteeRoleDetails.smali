.class public Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$a;
    }
.end annotation


# instance fields
.field protected final invitee:Ljava/lang/String;

.field protected final newAccessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field protected final previousAccessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/AccessLevel;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/AccessLevel;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;->previousAccessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eqz p1, :cond_2

    .line 48
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;->newAccessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eqz p2, :cond_1

    .line 52
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p3, 0xff

    if-gt p1, p3, :cond_0

    .line 55
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;->invitee:Ljava/lang/String;

    return-void

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'invitee\' is longer than 255"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'invitee\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'newAccessLevel\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 121
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 122
    check-cast p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;

    .line 123
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;->newAccessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;->newAccessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;->newAccessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;->newAccessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/AccessLevel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;->invitee:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;->invitee:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;->invitee:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;->invitee:Ljava/lang/String;

    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;->previousAccessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;->previousAccessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;->previousAccessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;->previousAccessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;->previousAccessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 125
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/sharing/AccessLevel;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_0
    return v0

    :cond_6
    return v1
.end method

.method public getInvitee()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;->invitee:Ljava/lang/String;

    return-object v0
.end method

.method public getNewAccessLevel()Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;->newAccessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method public getPreviousAccessLevel()Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;->previousAccessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 104
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;->previousAccessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;->newAccessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;->invitee:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 135
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 147
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$a;->a:Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

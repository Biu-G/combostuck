.class Lcom/dropbox/core/v2/team/GroupCreateArg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/GroupCreateArg$a;,
        Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Ljava/lang/String;

.field protected final c:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0, v0}, Lcom/dropbox/core/v2/team/GroupCreateArg;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 43
    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->a:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->b:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->c:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'groupName\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;
    .locals 1

    .line 102
    new-instance v0, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
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

    .line 179
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 180
    check-cast p1, Lcom/dropbox/core/v2/team/GroupCreateArg;

    .line 181
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupCreateArg;->a:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupCreateArg;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupCreateArg;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupCreateArg;->b:Ljava/lang/String;

    .line 182
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->c:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupCreateArg;->c:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->c:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->c:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/GroupCreateArg;->c:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .line 183
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 162
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/GroupCreateArg;->c:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 193
    sget-object v0, Lcom/dropbox/core/v2/team/GroupCreateArg$a;->a:Lcom/dropbox/core/v2/team/GroupCreateArg$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupCreateArg$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

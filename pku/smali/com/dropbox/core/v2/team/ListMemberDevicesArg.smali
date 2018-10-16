.class Lcom/dropbox/core/v2/team/ListMemberDevicesArg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/ListMemberDevicesArg$a;,
        Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Z

.field protected final c:Z

.field protected final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 62
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;-><init>(Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZ)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 45
    iput-object p1, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->a:Ljava/lang/String;

    .line 46
    iput-boolean p2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->b:Z

    .line 47
    iput-boolean p3, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->c:Z

    .line 48
    iput-boolean p4, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->d:Z

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'teamMemberId\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;
    .locals 1

    .line 115
    new-instance v0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;-><init>(Ljava/lang/String;)V

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

    .line 234
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 235
    check-cast p1, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;

    .line 236
    iget-object v2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->a:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->b:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->b:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->c:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->c:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->d:Z

    iget-boolean p1, p1, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->d:Z

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 216
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->b:Z

    .line 218
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->c:Z

    .line 219
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->d:Z

    .line 220
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 216
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 249
    sget-object v0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$a;->a:Lcom/dropbox/core/v2/team/ListMemberDevicesArg$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

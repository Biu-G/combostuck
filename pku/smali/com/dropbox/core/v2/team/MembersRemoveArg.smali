.class Lcom/dropbox/core/v2/team/MembersRemoveArg;
.super Lcom/dropbox/core/v2/team/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MembersRemoveArg$a;,
        Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;
    }
.end annotation


# instance fields
.field protected final c:Lcom/dropbox/core/v2/team/UserSelectorArg;

.field protected final d:Lcom/dropbox/core/v2/team/UserSelectorArg;

.field protected final e:Z


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/UserSelectorArg;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 66
    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/team/MembersRemoveArg;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;ZLcom/dropbox/core/v2/team/UserSelectorArg;Lcom/dropbox/core/v2/team/UserSelectorArg;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/team/UserSelectorArg;ZLcom/dropbox/core/v2/team/UserSelectorArg;Lcom/dropbox/core/v2/team/UserSelectorArg;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/v2/team/s;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;Z)V

    .line 49
    iput-object p3, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->c:Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 50
    iput-object p4, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->d:Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 51
    iput-boolean p5, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->e:Z

    return-void
.end method

.method public static a(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;
    .locals 1

    .line 135
    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;)V

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

    .line 266
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 267
    check-cast p1, Lcom/dropbox/core/v2/team/MembersRemoveArg;

    .line 268
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->a:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersRemoveArg;->a:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->a:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersRemoveArg;->a:Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/UserSelectorArg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->b:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/team/MembersRemoveArg;->b:Z

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->c:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersRemoveArg;->c:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->c:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->c:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersRemoveArg;->c:Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 270
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/UserSelectorArg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->d:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersRemoveArg;->d:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->d:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->d:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersRemoveArg;->d:Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 271
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/UserSelectorArg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->e:Z

    iget-boolean p1, p1, Lcom/dropbox/core/v2/team/MembersRemoveArg;->e:Z

    if-ne v2, p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_6
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 248
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->c:Lcom/dropbox/core/v2/team/UserSelectorArg;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->d:Lcom/dropbox/core/v2/team/UserSelectorArg;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->e:Z

    .line 251
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 248
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 253
    invoke-super {p0}, Lcom/dropbox/core/v2/team/s;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 282
    sget-object v0, Lcom/dropbox/core/v2/team/MembersRemoveArg$a;->a:Lcom/dropbox/core/v2/team/MembersRemoveArg$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersRemoveArg$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

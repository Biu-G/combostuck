.class Lcom/dropbox/core/v2/team/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/f$a;
    }
.end annotation


# instance fields
.field protected final a:Lcom/dropbox/core/v2/team/GroupSelector;

.field protected final b:Lcom/dropbox/core/v2/team/UserSelectorArg;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/GroupSelector;Lcom/dropbox/core/v2/team/UserSelectorArg;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 43
    iput-object p1, p0, Lcom/dropbox/core/v2/team/f;->a:Lcom/dropbox/core/v2/team/GroupSelector;

    if-eqz p2, :cond_0

    .line 47
    iput-object p2, p0, Lcom/dropbox/core/v2/team/f;->b:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-void

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'user\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'group\' is null"

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

    .line 88
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 89
    check-cast p1, Lcom/dropbox/core/v2/team/f;

    .line 90
    iget-object v2, p0, Lcom/dropbox/core/v2/team/f;->a:Lcom/dropbox/core/v2/team/GroupSelector;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/f;->a:Lcom/dropbox/core/v2/team/GroupSelector;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/f;->a:Lcom/dropbox/core/v2/team/GroupSelector;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/f;->a:Lcom/dropbox/core/v2/team/GroupSelector;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/GroupSelector;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/f;->b:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/f;->b:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/f;->b:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/f;->b:Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 91
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/UserSelectorArg;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    :cond_5
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 72
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/f;->a:Lcom/dropbox/core/v2/team/GroupSelector;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/f;->b:Lcom/dropbox/core/v2/team/UserSelectorArg;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 101
    sget-object v0, Lcom/dropbox/core/v2/team/f$a;->a:Lcom/dropbox/core/v2/team/f$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/f$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

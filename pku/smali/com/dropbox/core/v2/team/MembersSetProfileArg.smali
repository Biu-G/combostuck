.class Lcom/dropbox/core/v2/team/MembersSetProfileArg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MembersSetProfileArg$a;,
        Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;
    }
.end annotation


# instance fields
.field protected final a:Lcom/dropbox/core/v2/team/UserSelectorArg;

.field protected final b:Ljava/lang/String;

.field protected final c:Ljava/lang/String;

.field protected final d:Ljava/lang/String;

.field protected final e:Ljava/lang/String;

.field protected final f:Ljava/lang/String;

.field protected final g:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/UserSelectorArg;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 117
    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/team/MembersSetProfileArg;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/team/UserSelectorArg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_b

    .line 65
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->a:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eqz p2, :cond_2

    .line 67
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_1

    const-string p1, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    .line 70
    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'newEmail\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'newEmail\' is longer than 255"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_2
    :goto_0
    iput-object p2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->b:Ljava/lang/String;

    if-eqz p3, :cond_4

    .line 76
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x40

    if-gt p1, p2, :cond_3

    goto :goto_1

    .line 77
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'newExternalId\' is longer than 64"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_4
    :goto_1
    iput-object p3, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->c:Ljava/lang/String;

    const/16 p1, 0x64

    if-eqz p4, :cond_7

    .line 82
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p2

    if-gt p2, p1, :cond_6

    const-string p2, "[^/:?*<>\"|]*"

    .line 85
    invoke-static {p2, p4}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    .line 86
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'newGivenName\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'newGivenName\' is longer than 100"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_7
    :goto_2
    iput-object p4, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->d:Ljava/lang/String;

    if-eqz p5, :cond_a

    .line 91
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p2

    if-gt p2, p1, :cond_9

    const-string p1, "[^/:?*<>\"|]*"

    .line 94
    invoke-static {p1, p5}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    .line 95
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'newSurname\' does not match pattern"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String \'newSurname\' is longer than 100"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_a
    :goto_3
    iput-object p5, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->e:Ljava/lang/String;

    .line 99
    iput-object p6, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->f:Ljava/lang/String;

    .line 100
    iput-object p7, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->g:Ljava/lang/Boolean;

    return-void

    .line 63
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'user\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;
    .locals 1

    .line 196
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;)V

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

    .line 379
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 380
    check-cast p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;

    .line 381
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->a:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->a:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->a:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->a:Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/UserSelectorArg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->b:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->b:Ljava/lang/String;

    .line 382
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->c:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->c:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->c:Ljava/lang/String;

    .line 383
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->d:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->d:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->d:Ljava/lang/String;

    .line 384
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->e:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->e:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->e:Ljava/lang/String;

    .line 385
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->f:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->f:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->f:Ljava/lang/String;

    .line 386
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->g:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->g:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->g:Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->g:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->g:Ljava/lang/Boolean;

    .line 387
    invoke-virtual {v2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :cond_9
    :goto_0
    return v0

    :cond_a
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    .line 358
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->a:Lcom/dropbox/core/v2/team/UserSelectorArg;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->c:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->d:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->e:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->f:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->g:Ljava/lang/Boolean;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 397
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$a;->a:Lcom/dropbox/core/v2/team/MembersSetProfileArg$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersSetProfileArg$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

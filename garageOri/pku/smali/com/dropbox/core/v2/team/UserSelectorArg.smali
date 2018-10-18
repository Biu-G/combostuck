.class public final Lcom/dropbox/core/v2/team/UserSelectorArg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/UserSelectorArg$a;,
        Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;
    }
.end annotation


# instance fields
.field private a:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 1

    .line 75
    new-instance v0, Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/UserSelectorArg;-><init>()V

    .line 76
    iput-object p1, v0, Lcom/dropbox/core/v2/team/UserSelectorArg;->a:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    .line 77
    iput-object p2, v0, Lcom/dropbox/core/v2/team/UserSelectorArg;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/team/UserSelectorArg;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->b:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 1

    .line 93
    new-instance v0, Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/UserSelectorArg;-><init>()V

    .line 94
    iput-object p1, v0, Lcom/dropbox/core/v2/team/UserSelectorArg;->a:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    .line 95
    iput-object p2, v0, Lcom/dropbox/core/v2/team/UserSelectorArg;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/team/UserSelectorArg;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->c:Ljava/lang/String;

    return-object p0
.end method

.method private c(Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 1

    .line 112
    new-instance v0, Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/UserSelectorArg;-><init>()V

    .line 113
    iput-object p1, v0, Lcom/dropbox/core/v2/team/UserSelectorArg;->a:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    .line 114
    iput-object p2, v0, Lcom/dropbox/core/v2/team/UserSelectorArg;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/dropbox/core/v2/team/UserSelectorArg;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static email(Ljava/lang/String;)Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 2

    if-eqz p0, :cond_2

    .line 261
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    .line 264
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/UserSelectorArg;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->EMAIL:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/UserSelectorArg;->c(Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/UserSelectorArg;

    move-result-object p0

    return-object p0

    .line 265
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 262
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is longer than 255"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 259
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static externalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 2

    if-eqz p0, :cond_1

    .line 209
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    .line 212
    new-instance v0, Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/UserSelectorArg;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->EXTERNAL_ID:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/UserSelectorArg;->b(Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/UserSelectorArg;

    move-result-object p0

    return-object p0

    .line 210
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is longer than 64"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 207
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static teamMemberId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 2

    if-eqz p0, :cond_0

    .line 161
    new-instance v0, Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/UserSelectorArg;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->TEAM_MEMBER_ID:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/UserSelectorArg;->a(Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/UserSelectorArg;

    move-result-object p0

    return-object p0

    .line 159
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
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

    .line 304
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eqz v2, :cond_9

    .line 305
    check-cast p1, Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 306
    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->a:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/UserSelectorArg;->a:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 309
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/team/UserSelectorArg$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->a:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    .line 315
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/UserSelectorArg;->d:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/UserSelectorArg;->d:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 313
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/UserSelectorArg;->c:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/UserSelectorArg;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0

    .line 311
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/UserSelectorArg;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/UserSelectorArg;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_2
    return v0

    :cond_9
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getEmailValue()Ljava/lang/String;
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->a:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->EMAIL:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    if-ne v0, v1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->d:Ljava/lang/String;

    return-object v0

    .line 280
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.EMAIL, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->a:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExternalIdValue()Ljava/lang/String;
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->a:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->EXTERNAL_ID:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    if-ne v0, v1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->c:Ljava/lang/String;

    return-object v0

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.EXTERNAL_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->a:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTeamMemberIdValue()Ljava/lang/String;
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->a:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->TEAM_MEMBER_ID:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    if-ne v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->b:Ljava/lang/String;

    return-object v0

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TEAM_MEMBER_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->a:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 287
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->a:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->c:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->d:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmail()Z
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->a:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->EMAIL:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExternalId()Z
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->a:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->EXTERNAL_ID:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTeamMemberId()Z
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->a:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->TEAM_MEMBER_ID:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->a:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 327
    sget-object v0, Lcom/dropbox/core/v2/team/UserSelectorArg$a;->a:Lcom/dropbox/core/v2/team/UserSelectorArg$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/UserSelectorArg$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 339
    sget-object v0, Lcom/dropbox/core/v2/team/UserSelectorArg$a;->a:Lcom/dropbox/core/v2/team/UserSelectorArg$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/UserSelectorArg$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

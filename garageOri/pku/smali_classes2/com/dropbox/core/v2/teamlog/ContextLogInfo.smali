.class public final Lcom/dropbox/core/v2/teamlog/ContextLogInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/ContextLogInfo$a;,
        Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;
    }
.end annotation


# static fields
.field public static final ANONYMOUS:Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

.field public static final OTHER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

.field public static final TEAM:Lcom/dropbox/core/v2/teamlog/ContextLogInfo;


# instance fields
.field private a:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

.field private b:Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

.field private c:Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->ANONYMOUS:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->a(Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->ANONYMOUS:Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    .line 71
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->TEAM:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->a(Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->TEAM:Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    .line 79
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->a(Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->OTHER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/ContextLogInfo;
    .locals 1

    .line 98
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;-><init>()V

    .line 99
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;)Lcom/dropbox/core/v2/teamlog/ContextLogInfo;
    .locals 1

    .line 131
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;-><init>()V

    .line 132
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    .line 133
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->c:Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;)Lcom/dropbox/core/v2/teamlog/ContextLogInfo;
    .locals 1

    .line 114
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;-><init>()V

    .line 115
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    .line 116
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->b:Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/teamlog/ContextLogInfo;)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->b:Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/teamlog/ContextLogInfo;)Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->c:Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;

    return-object p0
.end method

.method public static nonTeamMember(Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;)Lcom/dropbox/core/v2/teamlog/ContextLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    .line 231
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->NON_TEAM_MEMBER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->a(Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;)Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    move-result-object p0

    return-object p0

    .line 229
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static teamMember(Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;)Lcom/dropbox/core/v2/teamlog/ContextLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    .line 183
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->TEAM_MEMBER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->a(Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;)Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    move-result-object p0

    return-object p0

    .line 181
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

    .line 303
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    if-eqz v2, :cond_7

    .line 304
    check-cast p1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    .line 305
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 308
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :pswitch_1
    return v0

    :pswitch_2
    return v0

    .line 312
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->c:Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->c:Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->c:Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->c:Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 310
    :pswitch_4
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->b:Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->b:Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->b:Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->b:Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0

    :cond_7
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNonTeamMemberValue()Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->NON_TEAM_MEMBER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    if-ne v0, v1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->c:Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;

    return-object v0

    .line 247
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.NON_TEAM_MEMBER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTeamMemberValue()Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->TEAM_MEMBER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    if-ne v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->b:Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    return-object v0

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TEAM_MEMBER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 287
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->b:Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->c:Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAnonymous()Z
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->ANONYMOUS:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNonTeamMember()Z
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->NON_TEAM_MEMBER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOther()Z
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTeam()Z
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->TEAM:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTeamMember()Z
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->TEAM_MEMBER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 330
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 342
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

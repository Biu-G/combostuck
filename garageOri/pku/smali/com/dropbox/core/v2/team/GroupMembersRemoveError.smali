.class public final Lcom/dropbox/core/v2/team/GroupMembersRemoveError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/GroupMembersRemoveError$a;,
        Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;
    }
.end annotation


# static fields
.field public static final GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

.field public static final GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

.field public static final MEMBER_NOT_IN_GROUP:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

.field public static final OTHER:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

.field public static final SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;


# instance fields
.field private a:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->a(Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    .line 79
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->OTHER:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->a(Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->OTHER:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    .line 83
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->a(Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    .line 87
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->MEMBER_NOT_IN_GROUP:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->a(Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->MEMBER_NOT_IN_GROUP:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    .line 92
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->a(Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;
    .locals 1

    .line 110
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;-><init>()V

    .line 111
    iput-object p1, v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->a:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupMembersRemoveError;"
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;-><init>()V

    .line 126
    iput-object p1, v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->a:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    .line 127
    iput-object p2, v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/team/GroupMembersRemoveError;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->b:Ljava/util/List;

    return-object p0
.end method

.method private b(Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupMembersRemoveError;"
        }
    .end annotation

    .line 141
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;-><init>()V

    .line 142
    iput-object p1, v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->a:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    .line 143
    iput-object p2, v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/team/GroupMembersRemoveError;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->c:Ljava/util/List;

    return-object p0
.end method

.method public static membersNotInTeam(Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupMembersRemoveError;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 246
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "An item in list is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 251
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->MEMBERS_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->a(Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    move-result-object p0

    return-object p0

    .line 244
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static usersNotFound(Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupMembersRemoveError;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 301
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "An item in list is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 306
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->USERS_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->b(Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    move-result-object p0

    return-object p0

    .line 299
    :cond_2
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

    .line 346
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    if-eqz v2, :cond_7

    .line 347
    check-cast p1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    .line 348
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->a:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->a:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 351
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->a:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    .line 365
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->c:Ljava/util/List;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->c:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 363
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->b:Ljava/util/List;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->b:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0

    :pswitch_2
    return v0

    :pswitch_3
    return v0

    :pswitch_4
    return v0

    :pswitch_5
    return v0

    :pswitch_6
    return v0

    :cond_7
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMembersNotInTeamValue()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->a:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->MEMBERS_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    if-ne v0, v1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->b:Ljava/util/List;

    return-object v0

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.MEMBERS_NOT_IN_TEAM, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->a:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUsersNotFoundValue()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->a:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->USERS_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    if-ne v0, v1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->c:Ljava/util/List;

    return-object v0

    .line 322
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.USERS_NOT_FOUND, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->a:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->name()Ljava/lang/String;

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

    .line 329
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->a:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->b:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->c:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 334
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isGroupNotFound()Z
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->a:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGroupNotInTeam()Z
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->a:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMemberNotInGroup()Z
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->a:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->MEMBER_NOT_IN_GROUP:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMembersNotInTeam()Z
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->a:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->MEMBERS_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

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

    .line 181
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->a:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->OTHER:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSystemManagedGroupDisallowed()Z
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->a:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUsersNotFound()Z
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->a:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->USERS_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->a:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 377
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$a;->a:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 389
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$a;->a:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

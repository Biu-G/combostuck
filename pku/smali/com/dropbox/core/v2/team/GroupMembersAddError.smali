.class public final Lcom/dropbox/core/v2/team/GroupMembersAddError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/GroupMembersAddError$a;,
        Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;
    }
.end annotation


# static fields
.field public static final DUPLICATE_USER:Lcom/dropbox/core/v2/team/GroupMembersAddError;

.field public static final GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersAddError;

.field public static final GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersAddError;

.field public static final OTHER:Lcom/dropbox/core/v2/team/GroupMembersAddError;

.field public static final SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersAddError;

.field public static final USER_MUST_BE_ACTIVE_TO_BE_OWNER:Lcom/dropbox/core/v2/team/GroupMembersAddError;


# instance fields
.field private a:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

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

.field private d:Ljava/util/List;
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

    .line 85
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;)Lcom/dropbox/core/v2/team/GroupMembersAddError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersAddError;

    .line 93
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->OTHER:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;)Lcom/dropbox/core/v2/team/GroupMembersAddError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->OTHER:Lcom/dropbox/core/v2/team/GroupMembersAddError;

    .line 97
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;)Lcom/dropbox/core/v2/team/GroupMembersAddError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersAddError;

    .line 102
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->DUPLICATE_USER:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;)Lcom/dropbox/core/v2/team/GroupMembersAddError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->DUPLICATE_USER:Lcom/dropbox/core/v2/team/GroupMembersAddError;

    .line 107
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;)Lcom/dropbox/core/v2/team/GroupMembersAddError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersAddError;

    .line 112
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->USER_MUST_BE_ACTIVE_TO_BE_OWNER:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;)Lcom/dropbox/core/v2/team/GroupMembersAddError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->USER_MUST_BE_ACTIVE_TO_BE_OWNER:Lcom/dropbox/core/v2/team/GroupMembersAddError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;)Lcom/dropbox/core/v2/team/GroupMembersAddError;
    .locals 1

    .line 131
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>()V

    .line 132
    iput-object p1, v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersAddError;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupMembersAddError;"
        }
    .end annotation

    .line 150
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>()V

    .line 151
    iput-object p1, v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    .line 152
    iput-object p2, v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/team/GroupMembersAddError;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->b:Ljava/util/List;

    return-object p0
.end method

.method private b(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersAddError;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupMembersAddError;"
        }
    .end annotation

    .line 166
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>()V

    .line 167
    iput-object p1, v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    .line 168
    iput-object p2, v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/team/GroupMembersAddError;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->c:Ljava/util/List;

    return-object p0
.end method

.method private c(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersAddError;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupMembersAddError;"
        }
    .end annotation

    .line 183
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>()V

    .line 184
    iput-object p1, v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    .line 185
    iput-object p2, v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/dropbox/core/v2/team/GroupMembersAddError;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->d:Ljava/util/List;

    return-object p0
.end method

.method public static membersNotInTeam(Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersAddError;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupMembersAddError;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 292
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

    .line 294
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "An item in list is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 297
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->MEMBERS_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersAddError;

    move-result-object p0

    return-object p0

    .line 290
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static userCannotBeManagerOfCompanyManagedGroup(Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersAddError;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupMembersAddError;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 419
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

    .line 421
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "An item in list is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 424
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;->c(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersAddError;

    move-result-object p0

    return-object p0

    .line 417
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static usersNotFound(Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersAddError;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupMembersAddError;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 351
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

    .line 353
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "An item in list is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 356
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->USERS_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;->b(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersAddError;

    move-result-object p0

    return-object p0

    .line 349
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

    .line 466
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    if-eqz v2, :cond_9

    .line 467
    check-cast p1, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    .line 468
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 471
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/team/GroupMembersAddError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    .line 489
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupMembersAddError;->d:Ljava/util/List;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->d:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/GroupMembersAddError;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    :pswitch_1
    return v0

    .line 485
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupMembersAddError;->c:Ljava/util/List;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->c:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/GroupMembersAddError;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0

    .line 483
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupMembersAddError;->b:Ljava/util/List;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->b:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/GroupMembersAddError;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_2
    return v0

    :pswitch_4
    return v0

    :pswitch_5
    return v0

    :pswitch_6
    return v0

    :pswitch_7
    return v0

    :pswitch_8
    return v0

    :cond_9
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
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

    .line 316
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->MEMBERS_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    if-ne v0, v1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->b:Ljava/util/List;

    return-object v0

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.MEMBERS_NOT_IN_TEAM, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserCannotBeManagerOfCompanyManagedGroupValue()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    if-ne v0, v1, :cond_0

    .line 443
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->d:Ljava/util/List;

    return-object v0

    .line 441
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->name()Ljava/lang/String;

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

    .line 371
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->USERS_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    if-ne v0, v1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->c:Ljava/util/List;

    return-object v0

    .line 372
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.USERS_NOT_FOUND, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->name()Ljava/lang/String;

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

    .line 448
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->b:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->c:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->d:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 454
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isDuplicateUser()Z
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->DUPLICATE_USER:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGroupNotFound()Z
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

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

    .line 256
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

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

    .line 267
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->MEMBERS_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

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

    .line 223
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->OTHER:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

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

    .line 234
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserCannotBeManagerOfCompanyManagedGroup()Z
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserMustBeActiveToBeOwner()Z
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->USER_MUST_BE_ACTIVE_TO_BE_OWNER:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

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

    .line 330
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->USERS_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->a:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 501
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError$a;->a:Lcom/dropbox/core/v2/team/GroupMembersAddError$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupMembersAddError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 513
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError$a;->a:Lcom/dropbox/core/v2/team/GroupMembersAddError$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupMembersAddError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

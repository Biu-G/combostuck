.class public final Lcom/dropbox/core/v2/team/GroupsGetInfoItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/GroupsGetInfoItem$a;,
        Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;
    }
.end annotation


# instance fields
.field private a:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

.field private b:Ljava/lang/String;

.field private c:Lcom/dropbox/core/v2/team/GroupFullInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;Lcom/dropbox/core/v2/team/GroupFullInfo;)Lcom/dropbox/core/v2/team/GroupsGetInfoItem;
    .locals 1

    .line 92
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;-><init>()V

    .line 93
    iput-object p1, v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->a:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    .line 94
    iput-object p2, v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->c:Lcom/dropbox/core/v2/team/GroupFullInfo;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupsGetInfoItem;
    .locals 1

    .line 77
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;-><init>()V

    .line 78
    iput-object p1, v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->a:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    .line 79
    iput-object p2, v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/team/GroupsGetInfoItem;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/team/GroupsGetInfoItem;)Lcom/dropbox/core/v2/team/GroupFullInfo;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->c:Lcom/dropbox/core/v2/team/GroupFullInfo;

    return-object p0
.end method

.method public static groupInfo(Lcom/dropbox/core/v2/team/GroupFullInfo;)Lcom/dropbox/core/v2/team/GroupsGetInfoItem;
    .locals 2

    if-eqz p0, :cond_0

    .line 195
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;->GROUP_INFO:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->a(Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;Lcom/dropbox/core/v2/team/GroupFullInfo;)Lcom/dropbox/core/v2/team/GroupsGetInfoItem;

    move-result-object p0

    return-object p0

    .line 193
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static idNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupsGetInfoItem;
    .locals 2

    if-eqz p0, :cond_0

    .line 144
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;->ID_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->a(Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupsGetInfoItem;

    move-result-object p0

    return-object p0

    .line 142
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

    .line 233
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;

    if-eqz v2, :cond_7

    .line 234
    check-cast p1, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;

    .line 235
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->a:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->a:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 238
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->a:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    .line 242
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->c:Lcom/dropbox/core/v2/team/GroupFullInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->c:Lcom/dropbox/core/v2/team/GroupFullInfo;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->c:Lcom/dropbox/core/v2/team/GroupFullInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->c:Lcom/dropbox/core/v2/team/GroupFullInfo;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/GroupFullInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 240
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getGroupInfoValue()Lcom/dropbox/core/v2/team/GroupFullInfo;
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->a:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;->GROUP_INFO:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    if-ne v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->c:Lcom/dropbox/core/v2/team/GroupFullInfo;

    return-object v0

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.GROUP_INFO, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->a:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIdNotFoundValue()Ljava/lang/String;
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->a:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;->ID_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    if-ne v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->b:Ljava/lang/String;

    return-object v0

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ID_NOT_FOUND, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->a:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;->name()Ljava/lang/String;

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

    .line 217
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->a:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->c:Lcom/dropbox/core/v2/team/GroupFullInfo;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isGroupInfo()Z
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->a:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;->GROUP_INFO:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIdNotFound()Z
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->a:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;->ID_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->a:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 254
    sget-object v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$a;->a:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 266
    sget-object v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$a;->a:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

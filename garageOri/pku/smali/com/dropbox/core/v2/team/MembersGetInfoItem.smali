.class public final Lcom/dropbox/core/v2/team/MembersGetInfoItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MembersGetInfoItem$a;,
        Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;
    }
.end annotation


# instance fields
.field private a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

.field private b:Ljava/lang/String;

.field private c:Lcom/dropbox/core/v2/team/TeamMemberInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;Lcom/dropbox/core/v2/team/TeamMemberInfo;)Lcom/dropbox/core/v2/team/MembersGetInfoItem;
    .locals 1

    .line 106
    new-instance v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersGetInfoItem;-><init>()V

    .line 107
    iput-object p1, v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    .line 108
    iput-object p2, v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->c:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersGetInfoItem;
    .locals 1

    .line 87
    new-instance v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersGetInfoItem;-><init>()V

    .line 88
    iput-object p1, v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    .line 89
    iput-object p2, v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/team/MembersGetInfoItem;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/team/MembersGetInfoItem;)Lcom/dropbox/core/v2/team/TeamMemberInfo;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->c:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    return-object p0
.end method

.method public static idNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersGetInfoItem;
    .locals 2

    if-eqz p0, :cond_0

    .line 158
    new-instance v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersGetInfoItem;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;->ID_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->a(Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersGetInfoItem;

    move-result-object p0

    return-object p0

    .line 156
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static memberInfo(Lcom/dropbox/core/v2/team/TeamMemberInfo;)Lcom/dropbox/core/v2/team/MembersGetInfoItem;
    .locals 2

    if-eqz p0, :cond_0

    .line 209
    new-instance v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersGetInfoItem;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;->MEMBER_INFO:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->a(Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;Lcom/dropbox/core/v2/team/TeamMemberInfo;)Lcom/dropbox/core/v2/team/MembersGetInfoItem;

    move-result-object p0

    return-object p0

    .line 207
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

    .line 247
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/team/MembersGetInfoItem;

    if-eqz v2, :cond_7

    .line 248
    check-cast p1, Lcom/dropbox/core/v2/team/MembersGetInfoItem;

    .line 249
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 252
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/team/MembersGetInfoItem$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    .line 256
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->c:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->c:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->c:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->c:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/TeamMemberInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 254
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->b:Ljava/lang/String;

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

.method public getIdNotFoundValue()Ljava/lang/String;
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;->ID_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    if-ne v0, v1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->b:Ljava/lang/String;

    return-object v0

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ID_NOT_FOUND, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMemberInfoValue()Lcom/dropbox/core/v2/team/TeamMemberInfo;
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;->MEMBER_INFO:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    if-ne v0, v1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->c:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    return-object v0

    .line 224
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.MEMBER_INFO, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;->name()Ljava/lang/String;

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

    .line 231
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->c:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isIdNotFound()Z
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;->ID_NOT_FOUND:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMemberInfo()Z
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;->MEMBER_INFO:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersGetInfoItem;->a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 268
    sget-object v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem$a;->a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersGetInfoItem$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 280
    sget-object v0, Lcom/dropbox/core/v2/team/MembersGetInfoItem$a;->a:Lcom/dropbox/core/v2/team/MembersGetInfoItem$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersGetInfoItem$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

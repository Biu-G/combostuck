.class public final Lcom/dropbox/core/v2/team/GroupsSelector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/GroupsSelector$a;,
        Lcom/dropbox/core/v2/team/GroupsSelector$Tag;
    }
.end annotation


# instance fields
.field private a:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

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
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/team/GroupsSelector$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupsSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupsSelector$Tag;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupsSelector;"
        }
    .end annotation

    .line 80
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsSelector;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupsSelector;-><init>()V

    .line 81
    iput-object p1, v0, Lcom/dropbox/core/v2/team/GroupsSelector;->a:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    .line 82
    iput-object p2, v0, Lcom/dropbox/core/v2/team/GroupsSelector;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/team/GroupsSelector;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->b:Ljava/util/List;

    return-object p0
.end method

.method private b(Lcom/dropbox/core/v2/team/GroupsSelector$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupsSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupsSelector$Tag;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupsSelector;"
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsSelector;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupsSelector;-><init>()V

    .line 99
    iput-object p1, v0, Lcom/dropbox/core/v2/team/GroupsSelector;->a:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    .line 100
    iput-object p2, v0, Lcom/dropbox/core/v2/team/GroupsSelector;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/team/GroupsSelector;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->c:Ljava/util/List;

    return-object p0
.end method

.method public static groupExternalIds(Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupsSelector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupsSelector;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 202
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

    .line 204
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "An item in list is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 207
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsSelector;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupsSelector;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupsSelector$Tag;->GROUP_EXTERNAL_IDS:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/GroupsSelector;->b(Lcom/dropbox/core/v2/team/GroupsSelector$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupsSelector;

    move-result-object p0

    return-object p0

    .line 200
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static groupIds(Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupsSelector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupsSelector;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 148
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

    .line 150
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "An item in list is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 153
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsSelector;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupsSelector;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupsSelector$Tag;->GROUP_IDS:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/GroupsSelector;->a(Lcom/dropbox/core/v2/team/GroupsSelector$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupsSelector;

    move-result-object p0

    return-object p0

    .line 146
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

    .line 246
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/team/GroupsSelector;

    if-eqz v2, :cond_7

    .line 247
    check-cast p1, Lcom/dropbox/core/v2/team/GroupsSelector;

    .line 248
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->a:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupsSelector;->a:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 251
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/team/GroupsSelector$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->a:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/GroupsSelector$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    .line 255
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupsSelector;->c:Ljava/util/List;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->c:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/GroupsSelector;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 253
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupsSelector;->b:Ljava/util/List;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->b:Ljava/util/List;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/GroupsSelector;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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

.method public getGroupExternalIdsValue()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->a:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupsSelector$Tag;->GROUP_EXTERNAL_IDS:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    if-ne v0, v1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->c:Ljava/util/List;

    return-object v0

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.GROUP_EXTERNAL_IDS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->a:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/GroupsSelector$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGroupIdsValue()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->a:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupsSelector$Tag;->GROUP_IDS:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    if-ne v0, v1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->b:Ljava/util/List;

    return-object v0

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.GROUP_IDS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->a:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/GroupsSelector$Tag;->name()Ljava/lang/String;

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

    .line 230
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->a:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->b:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->c:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isGroupExternalIds()Z
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->a:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupsSelector$Tag;->GROUP_EXTERNAL_IDS:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGroupIds()Z
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->a:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupsSelector$Tag;->GROUP_IDS:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/team/GroupsSelector$Tag;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsSelector;->a:Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 267
    sget-object v0, Lcom/dropbox/core/v2/team/GroupsSelector$a;->a:Lcom/dropbox/core/v2/team/GroupsSelector$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupsSelector$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 279
    sget-object v0, Lcom/dropbox/core/v2/team/GroupsSelector$a;->a:Lcom/dropbox/core/v2/team/GroupsSelector$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupsSelector$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

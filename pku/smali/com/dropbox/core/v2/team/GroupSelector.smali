.class public final Lcom/dropbox/core/v2/team/GroupSelector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/GroupSelector$a;,
        Lcom/dropbox/core/v2/team/GroupSelector$Tag;
    }
.end annotation


# instance fields
.field private a:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/team/GroupSelector$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupSelector;
    .locals 1

    .line 78
    new-instance v0, Lcom/dropbox/core/v2/team/GroupSelector;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupSelector;-><init>()V

    .line 79
    iput-object p1, v0, Lcom/dropbox/core/v2/team/GroupSelector;->a:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    .line 80
    iput-object p2, v0, Lcom/dropbox/core/v2/team/GroupSelector;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/team/GroupSelector;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/dropbox/core/v2/team/GroupSelector;->b:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lcom/dropbox/core/v2/team/GroupSelector$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupSelector;
    .locals 1

    .line 96
    new-instance v0, Lcom/dropbox/core/v2/team/GroupSelector;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupSelector;-><init>()V

    .line 97
    iput-object p1, v0, Lcom/dropbox/core/v2/team/GroupSelector;->a:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    .line 98
    iput-object p2, v0, Lcom/dropbox/core/v2/team/GroupSelector;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/team/GroupSelector;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/dropbox/core/v2/team/GroupSelector;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static groupExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupSelector;
    .locals 2

    if-eqz p0, :cond_0

    .line 193
    new-instance v0, Lcom/dropbox/core/v2/team/GroupSelector;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupSelector;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupSelector$Tag;->GROUP_EXTERNAL_ID:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/GroupSelector;->b(Lcom/dropbox/core/v2/team/GroupSelector$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupSelector;

    move-result-object p0

    return-object p0

    .line 191
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static groupId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupSelector;
    .locals 2

    if-eqz p0, :cond_0

    .line 145
    new-instance v0, Lcom/dropbox/core/v2/team/GroupSelector;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupSelector;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupSelector$Tag;->GROUP_ID:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/GroupSelector;->a(Lcom/dropbox/core/v2/team/GroupSelector$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupSelector;

    move-result-object p0

    return-object p0

    .line 143
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

    .line 232
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/team/GroupSelector;

    if-eqz v2, :cond_7

    .line 233
    check-cast p1, Lcom/dropbox/core/v2/team/GroupSelector;

    .line 234
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupSelector;->a:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupSelector;->a:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 237
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/team/GroupSelector$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupSelector;->a:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/GroupSelector$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    .line 241
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupSelector;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupSelector;->c:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupSelector;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/GroupSelector;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 239
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupSelector;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupSelector;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupSelector;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/GroupSelector;->b:Ljava/lang/String;

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

.method public getGroupExternalIdValue()Ljava/lang/String;
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupSelector;->a:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupSelector$Tag;->GROUP_EXTERNAL_ID:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    if-ne v0, v1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupSelector;->c:Ljava/lang/String;

    return-object v0

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.GROUP_EXTERNAL_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupSelector;->a:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/GroupSelector$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGroupIdValue()Ljava/lang/String;
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupSelector;->a:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupSelector$Tag;->GROUP_ID:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    if-ne v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupSelector;->b:Ljava/lang/String;

    return-object v0

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.GROUP_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupSelector;->a:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/GroupSelector$Tag;->name()Ljava/lang/String;

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

    .line 216
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/GroupSelector;->a:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/GroupSelector;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/GroupSelector;->c:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isGroupExternalId()Z
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupSelector;->a:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupSelector$Tag;->GROUP_EXTERNAL_ID:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGroupId()Z
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupSelector;->a:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupSelector$Tag;->GROUP_ID:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/team/GroupSelector$Tag;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupSelector;->a:Lcom/dropbox/core/v2/team/GroupSelector$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 253
    sget-object v0, Lcom/dropbox/core/v2/team/GroupSelector$a;->a:Lcom/dropbox/core/v2/team/GroupSelector$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupSelector$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 265
    sget-object v0, Lcom/dropbox/core/v2/team/GroupSelector$a;->a:Lcom/dropbox/core/v2/team/GroupSelector$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupSelector$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

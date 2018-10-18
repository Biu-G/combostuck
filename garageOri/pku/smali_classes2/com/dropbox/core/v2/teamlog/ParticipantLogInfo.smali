.class public final Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$a;,
        Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;


# instance fields
.field private a:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

.field private b:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

.field private c:Lcom/dropbox/core/v2/teamlog/GroupLogInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->a(Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->OTHER:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;
    .locals 1

    .line 82
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;-><init>()V

    .line 83
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/GroupLogInfo;)Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;
    .locals 1

    .line 114
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;-><init>()V

    .line 115
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    .line 116
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->c:Lcom/dropbox/core/v2/teamlog/GroupLogInfo;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;
    .locals 1

    .line 98
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;-><init>()V

    .line 99
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    .line 100
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->b:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;)Lcom/dropbox/core/v2/teamlog/UserLogInfo;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->b:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;)Lcom/dropbox/core/v2/teamlog/GroupLogInfo;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->c:Lcom/dropbox/core/v2/teamlog/GroupLogInfo;

    return-object p0
.end method

.method public static group(Lcom/dropbox/core/v2/teamlog/GroupLogInfo;)Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    .line 214
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;->GROUP:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->a(Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/GroupLogInfo;)Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    move-result-object p0

    return-object p0

    .line 212
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static user(Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;
    .locals 2

    if-eqz p0, :cond_0

    .line 166
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;->USER:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->a(Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/UserLogInfo;)Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    move-result-object p0

    return-object p0

    .line 164
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

    .line 263
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    if-eqz v2, :cond_7

    .line 264
    check-cast p1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;

    .line 265
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 268
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 272
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->c:Lcom/dropbox/core/v2/teamlog/GroupLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->c:Lcom/dropbox/core/v2/teamlog/GroupLogInfo;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->c:Lcom/dropbox/core/v2/teamlog/GroupLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->c:Lcom/dropbox/core/v2/teamlog/GroupLogInfo;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/GroupLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 270
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->b:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->b:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->b:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->b:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->equals(Ljava/lang/Object;)Z

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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getGroupValue()Lcom/dropbox/core/v2/teamlog/GroupLogInfo;
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;->GROUP:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    if-ne v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->c:Lcom/dropbox/core/v2/teamlog/GroupLogInfo;

    return-object v0

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.GROUP, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUserValue()Lcom/dropbox/core/v2/teamlog/UserLogInfo;
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;->USER:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    if-ne v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->b:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    return-object v0

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.USER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;->name()Ljava/lang/String;

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

    .line 247
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->b:Lcom/dropbox/core/v2/teamlog/UserLogInfo;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->c:Lcom/dropbox/core/v2/teamlog/GroupLogInfo;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isGroup()Z
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;->GROUP:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

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

    .line 242
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUser()Z
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;->USER:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo;->a:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 286
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 298
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$a;->a:Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/ParticipantLogInfo$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

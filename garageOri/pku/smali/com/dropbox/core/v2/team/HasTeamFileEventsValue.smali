.class public final Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$a;,
        Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;


# instance fields
.field private a:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;

.field private b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;->OTHER:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;->a(Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;)Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;->OTHER:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;)Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;
    .locals 1

    .line 77
    new-instance v0, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;-><init>()V

    .line 78
    iput-object p1, v0, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;->a:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;
    .locals 1

    .line 89
    new-instance v0, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;-><init>()V

    .line 90
    iput-object p1, v0, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;->a:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;

    .line 91
    iput-object p2, v0, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;->b:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;)Ljava/lang/Boolean;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;->b:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static enabled(Z)Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;
    .locals 2

    .line 136
    new-instance v0, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;->ENABLED:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;->a(Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;

    move-result-object p0

    return-object p0
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

    .line 184
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;

    if-eqz v2, :cond_4

    .line 185
    check-cast p1, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;

    .line 186
    iget-object v2, p0, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;->a:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;->a:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 189
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;->a:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 191
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;->b:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;->b:Ljava/lang/Boolean;

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getEnabledValue()Z
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;->a:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;->ENABLED:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;

    if-ne v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ENABLED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;->a:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 169
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;->a:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;->b:Ljava/lang/Boolean;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;->a:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;->ENABLED:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;

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

    .line 164
    iget-object v0, p0, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;->a:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;->OTHER:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;->a:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 205
    sget-object v0, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$a;->a:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 217
    sget-object v0, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$a;->a:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

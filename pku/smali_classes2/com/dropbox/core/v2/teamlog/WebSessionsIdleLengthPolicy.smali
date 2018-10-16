.class public final Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$a;,
        Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

.field public static final UNDEFINED:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;


# instance fields
.field private a:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

.field private b:Lcom/dropbox/core/v2/teamlog/DurationLogInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;->UNDEFINED:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->a(Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;)Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->UNDEFINED:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    .line 67
    new-instance v0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->a(Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;)Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->OTHER:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;)Lcom/dropbox/core/v2/teamlog/DurationLogInfo;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->b:Lcom/dropbox/core/v2/teamlog/DurationLogInfo;

    return-object p0
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;)Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;
    .locals 1

    .line 85
    new-instance v0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;-><init>()V

    .line 86
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->a:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;Lcom/dropbox/core/v2/teamlog/DurationLogInfo;)Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;
    .locals 1

    .line 101
    new-instance v0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;-><init>()V

    .line 102
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->a:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    .line 103
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->b:Lcom/dropbox/core/v2/teamlog/DurationLogInfo;

    return-object v0
.end method

.method public static defined(Lcom/dropbox/core/v2/teamlog/DurationLogInfo;)Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;
    .locals 2

    if-eqz p0, :cond_0

    .line 153
    new-instance v0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;->DEFINED:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->a(Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;Lcom/dropbox/core/v2/teamlog/DurationLogInfo;)Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    move-result-object p0

    return-object p0

    .line 151
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

    .line 212
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    if-eqz v2, :cond_5

    .line 213
    check-cast p1, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;

    .line 214
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->a:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->a:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 217
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->a:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :pswitch_1
    return v0

    .line 219
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->b:Lcom/dropbox/core/v2/teamlog/DurationLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->b:Lcom/dropbox/core/v2/teamlog/DurationLogInfo;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->b:Lcom/dropbox/core/v2/teamlog/DurationLogInfo;

    iget-object p1, p1, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->b:Lcom/dropbox/core/v2/teamlog/DurationLogInfo;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/teamlog/DurationLogInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    :cond_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDefinedValue()Lcom/dropbox/core/v2/teamlog/DurationLogInfo;
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->a:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;->DEFINED:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    if-ne v0, v1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->b:Lcom/dropbox/core/v2/teamlog/DurationLogInfo;

    return-object v0

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.DEFINED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->a:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;->name()Ljava/lang/String;

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

    .line 197
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->a:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->b:Lcom/dropbox/core/v2/teamlog/DurationLogInfo;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDefined()Z
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->a:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;->DEFINED:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

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

    .line 192
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->a:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUndefined()Z
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->a:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;->UNDEFINED:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy;->a:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 235
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$a;->a:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 247
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$a;->a:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

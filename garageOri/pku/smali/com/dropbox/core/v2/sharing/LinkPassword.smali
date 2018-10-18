.class public final Lcom/dropbox/core/v2/sharing/LinkPassword;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/LinkPassword$a;,
        Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/sharing/LinkPassword;

.field public static final REMOVE_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkPassword;


# instance fields
.field private a:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkPassword;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/LinkPassword;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;->REMOVE_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/LinkPassword;->a(Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;)Lcom/dropbox/core/v2/sharing/LinkPassword;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/LinkPassword;->REMOVE_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkPassword;

    .line 65
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkPassword;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/LinkPassword;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/LinkPassword;->a(Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;)Lcom/dropbox/core/v2/sharing/LinkPassword;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/LinkPassword;->OTHER:Lcom/dropbox/core/v2/sharing/LinkPassword;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;)Lcom/dropbox/core/v2/sharing/LinkPassword;
    .locals 1

    .line 82
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkPassword;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/LinkPassword;-><init>()V

    .line 83
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/LinkPassword;->a:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/LinkPassword;
    .locals 1

    .line 97
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkPassword;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/LinkPassword;-><init>()V

    .line 98
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/LinkPassword;->a:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    .line 99
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/LinkPassword;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/LinkPassword;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static setPassword(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/LinkPassword;
    .locals 2

    if-eqz p0, :cond_0

    .line 160
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkPassword;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/LinkPassword;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;->SET_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/LinkPassword;->a(Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/LinkPassword;

    move-result-object p0

    return-object p0

    .line 158
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

    .line 209
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/LinkPassword;

    if-eqz v2, :cond_5

    .line 210
    check-cast p1, Lcom/dropbox/core/v2/sharing/LinkPassword;

    .line 211
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->a:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/LinkPassword;->a:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 214
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/LinkPassword$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->a:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 218
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/LinkPassword;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/LinkPassword;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    :pswitch_2
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

.method public getSetPasswordValue()Ljava/lang/String;
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->a:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;->SET_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    if-ne v0, v1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->b:Ljava/lang/String;

    return-object v0

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.SET_PASSWORD, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->a:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;->name()Ljava/lang/String;

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

    .line 194
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->a:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isOther()Z
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->a:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRemovePassword()Z
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->a:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;->REMOVE_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSetPassword()Z
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->a:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;->SET_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/LinkPassword;->a:Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 232
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkPassword$a;->a:Lcom/dropbox/core/v2/sharing/LinkPassword$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/LinkPassword$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 244
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkPassword$a;->a:Lcom/dropbox/core/v2/sharing/LinkPassword$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/LinkPassword$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

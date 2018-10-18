.class public final Lcom/dropbox/core/v2/sharing/MemberSelector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;,
        Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/sharing/MemberSelector;


# instance fields
.field private a:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberSelector;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MemberSelector;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/MemberSelector;->a(Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;)Lcom/dropbox/core/v2/sharing/MemberSelector;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/MemberSelector;->OTHER:Lcom/dropbox/core/v2/sharing/MemberSelector;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;)Lcom/dropbox/core/v2/sharing/MemberSelector;
    .locals 1

    .line 83
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberSelector;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MemberSelector;-><init>()V

    .line 84
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/MemberSelector;->a:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MemberSelector;
    .locals 1

    .line 99
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberSelector;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MemberSelector;-><init>()V

    .line 100
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/MemberSelector;->a:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    .line 101
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/MemberSelector;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/MemberSelector;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->b:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MemberSelector;
    .locals 1

    .line 118
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberSelector;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MemberSelector;-><init>()V

    .line 119
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/MemberSelector;->a:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    .line 120
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/MemberSelector;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/sharing/MemberSelector;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static dropboxId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MemberSelector;
    .locals 2

    if-eqz p0, :cond_1

    .line 171
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 174
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberSelector;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MemberSelector;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->DROPBOX_ID:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/MemberSelector;->a(Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MemberSelector;

    move-result-object p0

    return-object p0

    .line 172
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is shorter than 1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 169
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static email(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MemberSelector;
    .locals 2

    if-eqz p0, :cond_2

    .line 225
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    .line 228
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberSelector;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MemberSelector;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->EMAIL:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/MemberSelector;->b(Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MemberSelector;

    move-result-object p0

    return-object p0

    .line 229
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 226
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is longer than 255"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 223
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

    .line 280
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/MemberSelector;

    if-eqz v2, :cond_7

    .line 281
    check-cast p1, Lcom/dropbox/core/v2/sharing/MemberSelector;

    .line 282
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->a:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/MemberSelector;->a:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 285
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/MemberSelector$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->a:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 289
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/MemberSelector;->c:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/MemberSelector;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 287
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/MemberSelector;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/MemberSelector;->b:Ljava/lang/String;

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDropboxIdValue()Ljava/lang/String;
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->a:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->DROPBOX_ID:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    if-ne v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->b:Ljava/lang/String;

    return-object v0

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.DROPBOX_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->a:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEmailValue()Ljava/lang/String;
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->a:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->EMAIL:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    if-ne v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->c:Ljava/lang/String;

    return-object v0

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.EMAIL, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->a:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->name()Ljava/lang/String;

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

    .line 264
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->a:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->c:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDropboxId()Z
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->a:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->DROPBOX_ID:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmail()Z
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->a:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->EMAIL:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

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

    .line 259
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->a:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/MemberSelector;->a:Lcom/dropbox/core/v2/sharing/MemberSelector$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 303
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 315
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

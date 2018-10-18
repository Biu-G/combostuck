.class public final Lcom/dropbox/core/v2/auth/AccessError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/auth/AccessError$Serializer;,
        Lcom/dropbox/core/v2/auth/AccessError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/auth/AccessError;


# instance fields
.field private a:Lcom/dropbox/core/v2/auth/AccessError$Tag;

.field private b:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

.field private c:Lcom/dropbox/core/v2/auth/PaperAccessError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Lcom/dropbox/core/v2/auth/AccessError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/AccessError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/auth/AccessError$Tag;->OTHER:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/auth/AccessError;->a(Lcom/dropbox/core/v2/auth/AccessError$Tag;)Lcom/dropbox/core/v2/auth/AccessError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/auth/AccessError;->OTHER:Lcom/dropbox/core/v2/auth/AccessError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/auth/AccessError$Tag;)Lcom/dropbox/core/v2/auth/AccessError;
    .locals 1

    .line 84
    new-instance v0, Lcom/dropbox/core/v2/auth/AccessError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/AccessError;-><init>()V

    .line 85
    iput-object p1, v0, Lcom/dropbox/core/v2/auth/AccessError;->a:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/auth/AccessError$Tag;Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;)Lcom/dropbox/core/v2/auth/AccessError;
    .locals 1

    .line 101
    new-instance v0, Lcom/dropbox/core/v2/auth/AccessError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/AccessError;-><init>()V

    .line 102
    iput-object p1, v0, Lcom/dropbox/core/v2/auth/AccessError;->a:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    .line 103
    iput-object p2, v0, Lcom/dropbox/core/v2/auth/AccessError;->b:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/auth/AccessError$Tag;Lcom/dropbox/core/v2/auth/PaperAccessError;)Lcom/dropbox/core/v2/auth/AccessError;
    .locals 1

    .line 119
    new-instance v0, Lcom/dropbox/core/v2/auth/AccessError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/AccessError;-><init>()V

    .line 120
    iput-object p1, v0, Lcom/dropbox/core/v2/auth/AccessError;->a:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    .line 121
    iput-object p2, v0, Lcom/dropbox/core/v2/auth/AccessError;->c:Lcom/dropbox/core/v2/auth/PaperAccessError;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/auth/AccessError;)Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/dropbox/core/v2/auth/AccessError;->b:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/auth/AccessError;)Lcom/dropbox/core/v2/auth/PaperAccessError;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/dropbox/core/v2/auth/AccessError;->c:Lcom/dropbox/core/v2/auth/PaperAccessError;

    return-object p0
.end method

.method public static invalidAccountType(Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;)Lcom/dropbox/core/v2/auth/AccessError;
    .locals 2

    if-eqz p0, :cond_0

    .line 171
    new-instance v0, Lcom/dropbox/core/v2/auth/AccessError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/AccessError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/auth/AccessError$Tag;->INVALID_ACCOUNT_TYPE:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/auth/AccessError;->a(Lcom/dropbox/core/v2/auth/AccessError$Tag;Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;)Lcom/dropbox/core/v2/auth/AccessError;

    move-result-object p0

    return-object p0

    .line 169
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static paperAccessDenied(Lcom/dropbox/core/v2/auth/PaperAccessError;)Lcom/dropbox/core/v2/auth/AccessError;
    .locals 2

    if-eqz p0, :cond_0

    .line 221
    new-instance v0, Lcom/dropbox/core/v2/auth/AccessError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/AccessError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/auth/AccessError$Tag;->PAPER_ACCESS_DENIED:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/auth/AccessError;->a(Lcom/dropbox/core/v2/auth/AccessError$Tag;Lcom/dropbox/core/v2/auth/PaperAccessError;)Lcom/dropbox/core/v2/auth/AccessError;

    move-result-object p0

    return-object p0

    .line 219
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

    .line 271
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/auth/AccessError;

    if-eqz v2, :cond_7

    .line 272
    check-cast p1, Lcom/dropbox/core/v2/auth/AccessError;

    .line 273
    iget-object v2, p0, Lcom/dropbox/core/v2/auth/AccessError;->a:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/auth/AccessError;->a:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 276
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/auth/AccessError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/auth/AccessError;->a:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/auth/AccessError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    .line 280
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/auth/AccessError;->c:Lcom/dropbox/core/v2/auth/PaperAccessError;

    iget-object v3, p1, Lcom/dropbox/core/v2/auth/AccessError;->c:Lcom/dropbox/core/v2/auth/PaperAccessError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/auth/AccessError;->c:Lcom/dropbox/core/v2/auth/PaperAccessError;

    iget-object p1, p1, Lcom/dropbox/core/v2/auth/AccessError;->c:Lcom/dropbox/core/v2/auth/PaperAccessError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/auth/PaperAccessError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 278
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/auth/AccessError;->b:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    iget-object v3, p1, Lcom/dropbox/core/v2/auth/AccessError;->b:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/auth/AccessError;->b:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    iget-object p1, p1, Lcom/dropbox/core/v2/auth/AccessError;->b:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;->equals(Ljava/lang/Object;)Z

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

.method public getInvalidAccountTypeValue()Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/dropbox/core/v2/auth/AccessError;->a:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/auth/AccessError$Tag;->INVALID_ACCOUNT_TYPE:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    if-ne v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/dropbox/core/v2/auth/AccessError;->b:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    return-object v0

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.INVALID_ACCOUNT_TYPE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/auth/AccessError;->a:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/auth/AccessError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPaperAccessDeniedValue()Lcom/dropbox/core/v2/auth/PaperAccessError;
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/dropbox/core/v2/auth/AccessError;->a:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/auth/AccessError$Tag;->PAPER_ACCESS_DENIED:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    if-ne v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/dropbox/core/v2/auth/AccessError;->c:Lcom/dropbox/core/v2/auth/PaperAccessError;

    return-object v0

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PAPER_ACCESS_DENIED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/auth/AccessError;->a:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/auth/AccessError$Tag;->name()Ljava/lang/String;

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

    .line 255
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/auth/AccessError;->a:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/auth/AccessError;->b:Lcom/dropbox/core/v2/auth/InvalidAccountTypeError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/auth/AccessError;->c:Lcom/dropbox/core/v2/auth/PaperAccessError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isInvalidAccountType()Z
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/dropbox/core/v2/auth/AccessError;->a:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/auth/AccessError$Tag;->INVALID_ACCOUNT_TYPE:Lcom/dropbox/core/v2/auth/AccessError$Tag;

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

    .line 250
    iget-object v0, p0, Lcom/dropbox/core/v2/auth/AccessError;->a:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/auth/AccessError$Tag;->OTHER:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPaperAccessDenied()Z
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/dropbox/core/v2/auth/AccessError;->a:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/auth/AccessError$Tag;->PAPER_ACCESS_DENIED:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/auth/AccessError$Tag;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/dropbox/core/v2/auth/AccessError;->a:Lcom/dropbox/core/v2/auth/AccessError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 294
    sget-object v0, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/AccessError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 306
    sget-object v0, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/AccessError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

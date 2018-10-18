.class public final Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$a;,
        Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;
    }
.end annotation


# static fields
.field public static final AUTOMATIC_GROUP:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

.field public static final GROUP_DELETED:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

.field public static final GROUP_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;


# instance fields
.field private a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->AUTOMATIC_GROUP:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->AUTOMATIC_GROUP:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    .line 82
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->GROUP_DELETED:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->GROUP_DELETED:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    .line 86
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->GROUP_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->GROUP_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    .line 94
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->OTHER:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .locals 1

    .line 113
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    .line 114
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .locals 1

    .line 128
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    .line 129
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    .line 130
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->b:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .locals 1

    .line 146
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    .line 147
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    .line 148
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->c:Ljava/lang/String;

    return-object p0
.end method

.method private c(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .locals 1

    .line 164
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    .line 165
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    .line 166
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static invalidDropboxId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .locals 2

    if-eqz p0, :cond_1

    .line 228
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 231
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    move-result-object p0

    return-object p0

    .line 229
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is shorter than 1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 226
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static invalidEmail(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .locals 2

    if-eqz p0, :cond_2

    .line 283
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    const-string v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    .line 286
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->INVALID_EMAIL:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->b(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    move-result-object p0

    return-object p0

    .line 287
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String does not match pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 284
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is longer than 255"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 281
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static unverifiedDropboxId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;
    .locals 2

    if-eqz p0, :cond_1

    .line 341
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 344
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->UNVERIFIED_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->c(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    move-result-object p0

    return-object p0

    .line 342
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String is shorter than 1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 339
    :cond_1
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

    .line 420
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    if-eqz v2, :cond_9

    .line 421
    check-cast p1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    .line 422
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 425
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :pswitch_1
    return v0

    :pswitch_2
    return v0

    .line 433
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->d:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->d:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 431
    :pswitch_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->c:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0

    .line 429
    :pswitch_5
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_2
    return v0

    :pswitch_6
    return v0

    :cond_9
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getInvalidDropboxIdValue()Ljava/lang/String;
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne v0, v1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->b:Ljava/lang/String;

    return-object v0

    .line 247
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.INVALID_DROPBOX_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInvalidEmailValue()Ljava/lang/String;
    .locals 3

    .line 304
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->INVALID_EMAIL:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne v0, v1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->c:Ljava/lang/String;

    return-object v0

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.INVALID_EMAIL, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUnverifiedDropboxIdValue()Ljava/lang/String;
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->UNVERIFIED_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne v0, v1, :cond_0

    .line 365
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->d:Ljava/lang/String;

    return-object v0

    .line 363
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.UNVERIFIED_DROPBOX_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 403
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->c:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->d:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAutomaticGroup()Z
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->AUTOMATIC_GROUP:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGroupDeleted()Z
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->GROUP_DELETED:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGroupNotOnTeam()Z
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->GROUP_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInvalidDropboxId()Z
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInvalidEmail()Z
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->INVALID_EMAIL:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

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

    .line 398
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnverifiedDropboxId()Z
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;->UNVERIFIED_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 451
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$a;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 463
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$a;->a:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

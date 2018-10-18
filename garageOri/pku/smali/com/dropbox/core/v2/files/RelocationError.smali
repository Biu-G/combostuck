.class public final Lcom/dropbox/core/v2/files/RelocationError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/RelocationError$a;,
        Lcom/dropbox/core/v2/files/RelocationError$Tag;
    }
.end annotation


# static fields
.field public static final CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError;

.field public static final CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationError;

.field public static final CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError;

.field public static final CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationError;

.field public static final DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationError;

.field public static final INSUFFICIENT_QUOTA:Lcom/dropbox/core/v2/files/RelocationError;

.field public static final OTHER:Lcom/dropbox/core/v2/files/RelocationError;

.field public static final TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationError;


# instance fields
.field private a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

.field private b:Lcom/dropbox/core/v2/files/LookupError;

.field private c:Lcom/dropbox/core/v2/files/WriteError;

.field private d:Lcom/dropbox/core/v2/files/WriteError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 85
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationError;->a(Lcom/dropbox/core/v2/files/RelocationError$Tag;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError;

    .line 90
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationError;->a(Lcom/dropbox/core/v2/files/RelocationError$Tag;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError;

    .line 94
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationError;->a(Lcom/dropbox/core/v2/files/RelocationError$Tag;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationError;

    .line 98
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationError;->a(Lcom/dropbox/core/v2/files/RelocationError$Tag;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationError;

    .line 103
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationError;->a(Lcom/dropbox/core/v2/files/RelocationError$Tag;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationError;

    .line 109
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationError;->a(Lcom/dropbox/core/v2/files/RelocationError$Tag;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationError;

    .line 113
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->INSUFFICIENT_QUOTA:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationError;->a(Lcom/dropbox/core/v2/files/RelocationError$Tag;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->INSUFFICIENT_QUOTA:Lcom/dropbox/core/v2/files/RelocationError;

    .line 121
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->OTHER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationError;->a(Lcom/dropbox/core/v2/files/RelocationError$Tag;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError;->OTHER:Lcom/dropbox/core/v2/files/RelocationError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/RelocationError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->b:Lcom/dropbox/core/v2/files/LookupError;

    return-object p0
.end method

.method private a(Lcom/dropbox/core/v2/files/RelocationError$Tag;)Lcom/dropbox/core/v2/files/RelocationError;
    .locals 1

    .line 140
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    .line 141
    iput-object p1, v0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/RelocationError;
    .locals 1

    .line 154
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    .line 155
    iput-object p1, v0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    .line 156
    iput-object p2, v0, Lcom/dropbox/core/v2/files/RelocationError;->b:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationError;
    .locals 1

    .line 169
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    .line 170
    iput-object p1, v0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    .line 171
    iput-object p2, v0, Lcom/dropbox/core/v2/files/RelocationError;->c:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method private b(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationError;
    .locals 1

    .line 184
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    .line 185
    iput-object p1, v0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    .line 186
    iput-object p2, v0, Lcom/dropbox/core/v2/files/RelocationError;->d:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/files/RelocationError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->c:Lcom/dropbox/core/v2/files/WriteError;

    return-object p0
.end method

.method static synthetic c(Lcom/dropbox/core/v2/files/RelocationError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationError;->d:Lcom/dropbox/core/v2/files/WriteError;

    return-object p0
.end method

.method public static fromLookup(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/RelocationError;
    .locals 2

    if-eqz p0, :cond_0

    .line 236
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/RelocationError;->a(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object p0

    return-object p0

    .line 234
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromWrite(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationError;
    .locals 2

    if-eqz p0, :cond_0

    .line 282
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/RelocationError;->a(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object p0

    return-object p0

    .line 280
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static to(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationError;
    .locals 2

    if-eqz p0, :cond_0

    .line 328
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->TO:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/RelocationError;->b(Lcom/dropbox/core/v2/files/RelocationError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object p0

    return-object p0

    .line 326
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

    .line 453
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/RelocationError;

    if-eqz v2, :cond_9

    .line 454
    check-cast p1, Lcom/dropbox/core/v2/files/RelocationError;

    .line 455
    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 458
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/RelocationError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/RelocationError$Tag;->ordinal()I

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

    :pswitch_3
    return v0

    :pswitch_4
    return v0

    :pswitch_5
    return v0

    :pswitch_6
    return v0

    :pswitch_7
    return v0

    .line 464
    :pswitch_8
    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationError;->d:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationError;->d:Lcom/dropbox/core/v2/files/WriteError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationError;->d:Lcom/dropbox/core/v2/files/WriteError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/RelocationError;->d:Lcom/dropbox/core/v2/files/WriteError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/WriteError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 462
    :pswitch_9
    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationError;->c:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationError;->c:Lcom/dropbox/core/v2/files/WriteError;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationError;->c:Lcom/dropbox/core/v2/files/WriteError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/RelocationError;->c:Lcom/dropbox/core/v2/files/WriteError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/WriteError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0

    .line 460
    :pswitch_a
    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationError;->b:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationError;->b:Lcom/dropbox/core/v2/files/LookupError;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationError;->b:Lcom/dropbox/core/v2/files/LookupError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/RelocationError;->b:Lcom/dropbox/core/v2/files/LookupError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/LookupError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_2
    return v0

    :cond_9
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFromLookupValue()Lcom/dropbox/core/v2/files/LookupError;
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->b:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FROM_LOOKUP, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/RelocationError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFromWriteValue()Lcom/dropbox/core/v2/files/WriteError;
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->c:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0

    .line 295
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FROM_WRITE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/RelocationError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getToValue()Lcom/dropbox/core/v2/files/WriteError;
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->TO:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->d:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TO, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/RelocationError$Tag;->name()Ljava/lang/String;

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

    .line 436
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/RelocationError;->b:Lcom/dropbox/core/v2/files/LookupError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/RelocationError;->c:Lcom/dropbox/core/v2/files/WriteError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/RelocationError;->d:Lcom/dropbox/core/v2/files/WriteError;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCantCopySharedFolder()Z
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCantMoveFolderIntoItself()Z
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCantNestSharedFolder()Z
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCantTransferOwnership()Z
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDuplicatedOrNestedPaths()Z
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFromLookup()Z
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFromWrite()Z
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInsufficientQuota()Z
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->INSUFFICIENT_QUOTA:Lcom/dropbox/core/v2/files/RelocationError$Tag;

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

    .line 431
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->OTHER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTo()Z
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->TO:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTooManyFiles()Z
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/files/RelocationError$Tag;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationError;->a:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 492
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError$a;->a:Lcom/dropbox/core/v2/files/RelocationError$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 504
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError$a;->a:Lcom/dropbox/core/v2/files/RelocationError$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

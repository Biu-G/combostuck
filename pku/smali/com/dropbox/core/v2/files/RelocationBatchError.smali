.class public final Lcom/dropbox/core/v2/files/RelocationBatchError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/RelocationBatchError$a;,
        Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;
    }
.end annotation


# static fields
.field public static final CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError;

.field public static final CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationBatchError;

.field public static final CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError;

.field public static final CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationBatchError;

.field public static final DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationBatchError;

.field public static final INSUFFICIENT_QUOTA:Lcom/dropbox/core/v2/files/RelocationBatchError;

.field public static final OTHER:Lcom/dropbox/core/v2/files/RelocationBatchError;

.field public static final TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationBatchError;

.field public static final TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/RelocationBatchError;


# instance fields
.field private a:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

.field private b:Lcom/dropbox/core/v2/files/LookupError;

.field private c:Lcom/dropbox/core/v2/files/WriteError;

.field private d:Lcom/dropbox/core/v2/files/WriteError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 86
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchError;->a(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;)Lcom/dropbox/core/v2/files/RelocationBatchError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .line 91
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchError;->a(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;)Lcom/dropbox/core/v2/files/RelocationBatchError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .line 95
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchError;->a(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;)Lcom/dropbox/core/v2/files/RelocationBatchError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .line 99
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchError;->a(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;)Lcom/dropbox/core/v2/files/RelocationBatchError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .line 104
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchError;->a(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;)Lcom/dropbox/core/v2/files/RelocationBatchError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .line 110
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchError;->a(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;)Lcom/dropbox/core/v2/files/RelocationBatchError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .line 114
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->INSUFFICIENT_QUOTA:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchError;->a(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;)Lcom/dropbox/core/v2/files/RelocationBatchError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->INSUFFICIENT_QUOTA:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .line 122
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->OTHER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchError;->a(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;)Lcom/dropbox/core/v2/files/RelocationBatchError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->OTHER:Lcom/dropbox/core/v2/files/RelocationBatchError;

    .line 127
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchError;->a(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;)Lcom/dropbox/core/v2/files/RelocationBatchError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/RelocationBatchError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/v2/files/RelocationBatchError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->b:Lcom/dropbox/core/v2/files/LookupError;

    return-object p0
.end method

.method private a(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;)Lcom/dropbox/core/v2/files/RelocationBatchError;
    .locals 1

    .line 146
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    .line 147
    iput-object p1, v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->a:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/RelocationBatchError;
    .locals 1

    .line 160
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    .line 161
    iput-object p1, v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->a:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 162
    iput-object p2, v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->b:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method private a(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationBatchError;
    .locals 1

    .line 175
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    .line 176
    iput-object p1, v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->a:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 177
    iput-object p2, v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->c:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method private b(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationBatchError;
    .locals 1

    .line 190
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    .line 191
    iput-object p1, v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->a:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 192
    iput-object p2, v0, Lcom/dropbox/core/v2/files/RelocationBatchError;->d:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/core/v2/files/RelocationBatchError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->c:Lcom/dropbox/core/v2/files/WriteError;

    return-object p0
.end method

.method static synthetic c(Lcom/dropbox/core/v2/files/RelocationBatchError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->d:Lcom/dropbox/core/v2/files/WriteError;

    return-object p0
.end method

.method public static fromLookup(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/RelocationBatchError;
    .locals 2

    if-eqz p0, :cond_0

    .line 239
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/RelocationBatchError;->a(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/RelocationBatchError;

    move-result-object p0

    return-object p0

    .line 237
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromWrite(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationBatchError;
    .locals 2

    if-eqz p0, :cond_0

    .line 285
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/RelocationBatchError;->a(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationBatchError;

    move-result-object p0

    return-object p0

    .line 283
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static to(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationBatchError;
    .locals 2

    if-eqz p0, :cond_0

    .line 331
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TO:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/RelocationBatchError;->b(Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationBatchError;

    move-result-object p0

    return-object p0

    .line 329
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

    .line 468
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/files/RelocationBatchError;

    if-eqz v2, :cond_9

    .line 469
    check-cast p1, Lcom/dropbox/core/v2/files/RelocationBatchError;

    .line 470
    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->a:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationBatchError;->a:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    if-eq v2, v3, :cond_2

    return v1

    .line 473
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/files/RelocationBatchError$1;->a:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->a:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->ordinal()I

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

    :pswitch_8
    return v0

    .line 479
    :pswitch_9
    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->d:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationBatchError;->d:Lcom/dropbox/core/v2/files/WriteError;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->d:Lcom/dropbox/core/v2/files/WriteError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/RelocationBatchError;->d:Lcom/dropbox/core/v2/files/WriteError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/WriteError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0

    .line 477
    :pswitch_a
    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->c:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationBatchError;->c:Lcom/dropbox/core/v2/files/WriteError;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->c:Lcom/dropbox/core/v2/files/WriteError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/RelocationBatchError;->c:Lcom/dropbox/core/v2/files/WriteError;

    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/files/WriteError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    return v0

    .line 475
    :pswitch_b
    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->b:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationBatchError;->b:Lcom/dropbox/core/v2/files/LookupError;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->b:Lcom/dropbox/core/v2/files/LookupError;

    iget-object p1, p1, Lcom/dropbox/core/v2/files/RelocationBatchError;->b:Lcom/dropbox/core/v2/files/LookupError;

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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
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

    .line 251
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->a:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    if-ne v0, v1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->b:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FROM_LOOKUP, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->a:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFromWriteValue()Lcom/dropbox/core/v2/files/WriteError;
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->a:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    if-ne v0, v1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->c:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0

    .line 298
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FROM_WRITE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->a:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getToValue()Lcom/dropbox/core/v2/files/WriteError;
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->a:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TO:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    if-ne v0, v1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->d:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0

    .line 344
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.TO, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->a:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->name()Ljava/lang/String;

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

    .line 450
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->a:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->b:Lcom/dropbox/core/v2/files/LookupError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->c:Lcom/dropbox/core/v2/files/WriteError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->d:Lcom/dropbox/core/v2/files/WriteError;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 456
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isCantCopySharedFolder()Z
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->a:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

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

    .line 379
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->a:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

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

    .line 368
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->a:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

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

    .line 412
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->a:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

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

    .line 401
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->a:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

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

    .line 219
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->a:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

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

    .line 265
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->a:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

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

    .line 423
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->a:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->INSUFFICIENT_QUOTA:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

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

    .line 434
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->a:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->OTHER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

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

    .line 311
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->a:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TO:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

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

    .line 390
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->a:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTooManyWriteOperations()Z
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->a:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tag()Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchError;->a:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 509
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$a;->a:Lcom/dropbox/core/v2/files/RelocationBatchError$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 521
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$a;->a:Lcom/dropbox/core/v2/files/RelocationBatchError$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchError$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

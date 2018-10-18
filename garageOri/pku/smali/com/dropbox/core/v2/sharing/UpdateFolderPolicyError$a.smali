.class Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 335
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$a;->a:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 334
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 379
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 381
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 382
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 386
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 387
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_8

    const-string v2, "access_error"

    .line 392
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "access_error"

    .line 394
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 395
    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v1

    .line 396
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "not_on_team"

    .line 398
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 399
    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    goto :goto_1

    :cond_2
    const-string v2, "team_policy_disallows_member_policy"

    .line 401
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 402
    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->TEAM_POLICY_DISALLOWS_MEMBER_POLICY:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    goto :goto_1

    :cond_3
    const-string v2, "disallowed_shared_link_policy"

    .line 404
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 405
    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->DISALLOWED_SHARED_LINK_POLICY:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    goto :goto_1

    :cond_4
    const-string v2, "no_permission"

    .line 407
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 408
    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    goto :goto_1

    :cond_5
    const-string v2, "team_folder"

    .line 410
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 411
    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    goto :goto_1

    .line 414
    :cond_6
    sget-object v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->OTHER:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    :goto_1
    if-nez v0, :cond_7

    .line 417
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 418
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_7
    return-object v1

    .line 390
    :cond_8
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 339
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->tag()Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 369
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "team_folder"

    .line 365
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "no_permission"

    .line 361
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "disallowed_shared_link_policy"

    .line 357
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "team_policy_disallows_member_policy"

    .line 353
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "not_on_team"

    .line 349
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :pswitch_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_error"

    .line 342
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "access_error"

    .line 343
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 344
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;->a(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$a;->a(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 345
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 334
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    move-result-object p1

    return-object p1
.end method

.method public synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 334
    check-cast p1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$a;->a(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method

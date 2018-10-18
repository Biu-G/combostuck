.class Lcom/dropbox/core/v2/team/FeatureValue$a;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/FeatureValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer<",
        "Lcom/dropbox/core/v2/team/FeatureValue;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/team/FeatureValue$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 438
    new-instance v0, Lcom/dropbox/core/v2/team/FeatureValue$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/FeatureValue$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/FeatureValue$a;->a:Lcom/dropbox/core/v2/team/FeatureValue$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 437
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/FeatureValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 486
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 488
    invoke-static {p1}, Lcom/dropbox/core/v2/team/FeatureValue$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 489
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 493
    invoke-static {p1}, Lcom/dropbox/core/v2/team/FeatureValue$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 494
    invoke-static {p1}, Lcom/dropbox/core/v2/team/FeatureValue$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_6

    const-string v2, "upload_api_rate_limit"

    .line 499
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "upload_api_rate_limit"

    .line 501
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/team/FeatureValue$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 502
    sget-object v1, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$a;->a:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    move-result-object v1

    .line 503
    invoke-static {v1}, Lcom/dropbox/core/v2/team/FeatureValue;->uploadApiRateLimit(Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;)Lcom/dropbox/core/v2/team/FeatureValue;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "has_team_shared_dropbox"

    .line 505
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "has_team_shared_dropbox"

    .line 507
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/team/FeatureValue$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 508
    sget-object v1, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$a;->a:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    move-result-object v1

    .line 509
    invoke-static {v1}, Lcom/dropbox/core/v2/team/FeatureValue;->hasTeamSharedDropbox(Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;)Lcom/dropbox/core/v2/team/FeatureValue;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v2, "has_team_file_events"

    .line 511
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "has_team_file_events"

    .line 513
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/team/FeatureValue$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 514
    sget-object v1, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$a;->a:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;

    move-result-object v1

    .line 515
    invoke-static {v1}, Lcom/dropbox/core/v2/team/FeatureValue;->hasTeamFileEvents(Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;)Lcom/dropbox/core/v2/team/FeatureValue;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v2, "has_team_selective_sync"

    .line 517
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "has_team_selective_sync"

    .line 519
    invoke-static {v1, p1}, Lcom/dropbox/core/v2/team/FeatureValue$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 520
    sget-object v1, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$a;->a:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;

    move-result-object v1

    .line 521
    invoke-static {v1}, Lcom/dropbox/core/v2/team/FeatureValue;->hasTeamSelectiveSync(Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;)Lcom/dropbox/core/v2/team/FeatureValue;

    move-result-object v1

    goto :goto_1

    .line 524
    :cond_4
    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue;->OTHER:Lcom/dropbox/core/v2/team/FeatureValue;

    :goto_1
    if-nez v0, :cond_5

    .line 527
    invoke-static {p1}, Lcom/dropbox/core/v2/team/FeatureValue$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 528
    invoke-static {p1}, Lcom/dropbox/core/v2/team/FeatureValue$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_5
    return-object v1

    .line 497
    :cond_6
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/dropbox/core/v2/team/FeatureValue;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 442
    sget-object v0, Lcom/dropbox/core/v2/team/FeatureValue$1;->a:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/FeatureValue;->tag()Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 476
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "has_team_selective_sync"

    .line 469
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/FeatureValue$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "has_team_selective_sync"

    .line 470
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 471
    sget-object v0, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$a;->a:Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/FeatureValue;->d(Lcom/dropbox/core/v2/team/FeatureValue;)Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue$a;->a(Lcom/dropbox/core/v2/team/HasTeamSelectiveSyncValue;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 472
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 460
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "has_team_file_events"

    .line 461
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/FeatureValue$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "has_team_file_events"

    .line 462
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 463
    sget-object v0, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$a;->a:Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/FeatureValue;->c(Lcom/dropbox/core/v2/team/FeatureValue;)Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/team/HasTeamFileEventsValue$a;->a(Lcom/dropbox/core/v2/team/HasTeamFileEventsValue;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 464
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 452
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "has_team_shared_dropbox"

    .line 453
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/FeatureValue$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "has_team_shared_dropbox"

    .line 454
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 455
    sget-object v0, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$a;->a:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/FeatureValue;->b(Lcom/dropbox/core/v2/team/FeatureValue;)Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$a;->a(Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 456
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 444
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "upload_api_rate_limit"

    .line 445
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/FeatureValue$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "upload_api_rate_limit"

    .line 446
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 447
    sget-object v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$a;->a:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/FeatureValue;->a(Lcom/dropbox/core/v2/team/FeatureValue;)Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$a;->a(Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 448
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 437
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/FeatureValue$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/FeatureValue;

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

    .line 437
    check-cast p1, Lcom/dropbox/core/v2/team/FeatureValue;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/FeatureValue$a;->a(Lcom/dropbox/core/v2/team/FeatureValue;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method

.class public Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected city:Ljava/lang/String;

.field protected country:Ljava/lang/String;

.field protected final ipAddress:Ljava/lang/String;

.field protected region:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 131
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;->ipAddress:Ljava/lang/String;

    const/4 p1, 0x0

    .line 132
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;->city:Ljava/lang/String;

    .line 133
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;->region:Ljava/lang/String;

    .line 134
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;->country:Ljava/lang/String;

    return-void

    .line 129
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value for \'ipAddress\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;
    .locals 5

    .line 180
    new-instance v0, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;->ipAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;->city:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;->region:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;->country:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withCity(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;->city:Ljava/lang/String;

    return-object p0
.end method

.method public withCountry(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;->country:Ljava/lang/String;

    return-object p0
.end method

.method public withRegion(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/GeoLocationLogInfo$Builder;->region:Ljava/lang/String;

    return-object p0
.end method

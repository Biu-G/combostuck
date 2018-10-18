.class public Lcom/dropbox/core/v2/team/GetDevicesReport;
.super Lcom/dropbox/core/v2/team/BaseDfbReport;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/GetDevicesReport$a;
    }
.end annotation


# instance fields
.field protected final active1Day:Lcom/dropbox/core/v2/team/DevicesActive;

.field protected final active28Day:Lcom/dropbox/core/v2/team/DevicesActive;

.field protected final active7Day:Lcom/dropbox/core/v2/team/DevicesActive;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/team/DevicesActive;Lcom/dropbox/core/v2/team/DevicesActive;Lcom/dropbox/core/v2/team/DevicesActive;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/team/BaseDfbReport;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 54
    iput-object p2, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active1Day:Lcom/dropbox/core/v2/team/DevicesActive;

    if-eqz p3, :cond_1

    .line 58
    iput-object p3, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active7Day:Lcom/dropbox/core/v2/team/DevicesActive;

    if-eqz p4, :cond_0

    .line 62
    iput-object p4, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active28Day:Lcom/dropbox/core/v2/team/DevicesActive;

    return-void

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'active28Day\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'active7Day\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value for \'active1Day\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 121
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 122
    check-cast p1, Lcom/dropbox/core/v2/team/GetDevicesReport;

    .line 123
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->startDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetDevicesReport;->startDate:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->startDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetDevicesReport;->startDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active1Day:Lcom/dropbox/core/v2/team/DevicesActive;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetDevicesReport;->active1Day:Lcom/dropbox/core/v2/team/DevicesActive;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active1Day:Lcom/dropbox/core/v2/team/DevicesActive;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetDevicesReport;->active1Day:Lcom/dropbox/core/v2/team/DevicesActive;

    .line 124
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/DevicesActive;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active7Day:Lcom/dropbox/core/v2/team/DevicesActive;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetDevicesReport;->active7Day:Lcom/dropbox/core/v2/team/DevicesActive;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active7Day:Lcom/dropbox/core/v2/team/DevicesActive;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetDevicesReport;->active7Day:Lcom/dropbox/core/v2/team/DevicesActive;

    .line 125
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/DevicesActive;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active28Day:Lcom/dropbox/core/v2/team/DevicesActive;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GetDevicesReport;->active28Day:Lcom/dropbox/core/v2/team/DevicesActive;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active28Day:Lcom/dropbox/core/v2/team/DevicesActive;

    iget-object p1, p1, Lcom/dropbox/core/v2/team/GetDevicesReport;->active28Day:Lcom/dropbox/core/v2/team/DevicesActive;

    .line 126
    invoke-virtual {v2, p1}, Lcom/dropbox/core/v2/team/DevicesActive;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_0
    return v0

    :cond_7
    return v1
.end method

.method public getActive1Day()Lcom/dropbox/core/v2/team/DevicesActive;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active1Day:Lcom/dropbox/core/v2/team/DevicesActive;

    return-object v0
.end method

.method public getActive28Day()Lcom/dropbox/core/v2/team/DevicesActive;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active28Day:Lcom/dropbox/core/v2/team/DevicesActive;

    return-object v0
.end method

.method public getActive7Day()Lcom/dropbox/core/v2/team/DevicesActive;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active7Day:Lcom/dropbox/core/v2/team/DevicesActive;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 103
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active1Day:Lcom/dropbox/core/v2/team/DevicesActive;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active7Day:Lcom/dropbox/core/v2/team/DevicesActive;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/v2/team/GetDevicesReport;->active28Day:Lcom/dropbox/core/v2/team/DevicesActive;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 108
    invoke-super {p0}, Lcom/dropbox/core/v2/team/BaseDfbReport;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 136
    sget-object v0, Lcom/dropbox/core/v2/team/GetDevicesReport$a;->a:Lcom/dropbox/core/v2/team/GetDevicesReport$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GetDevicesReport$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .line 148
    sget-object v0, Lcom/dropbox/core/v2/team/GetDevicesReport$a;->a:Lcom/dropbox/core/v2/team/GetDevicesReport$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GetDevicesReport$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

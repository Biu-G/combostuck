.class public Lcn/edu/pku/pkurunner/Model/User;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/Model/User$Inner;,
        Lcn/edu/pku/pkurunner/Model/User$GENDER;
    }
.end annotation

.annotation runtime Lorg/xutils/db/annotation/Table;
    name = "user"
.end annotation


# static fields
.field public static final FEMALE:I = 0x0

.field public static final FEMALE_STRING:Ljava/lang/String; = "\u5973"

.field public static final MALE:I = 0x1

.field public static final MALE_STRING:Ljava/lang/String; = "\u7537"

.field public static final UNKNOWN_GENDER:I = -0x1

.field public static final UNKNOWN_GENDER_STRING:Ljava/lang/String; = "\u672a\u77e5"


# instance fields
.field private PESpecialty:Ljava/lang/Boolean;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "PESpecialty"
    .end annotation
.end field

.field private department:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "department"
    .end annotation
.end field

.field private gender:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "gender"
    .end annotation
.end field

.field private gymRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/GymRecord;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        isId = true
        name = "id"
        property = "UNIQUE"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "name"
    .end annotation
.end field

.field private offline:Ljava/lang/Boolean;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "offline"
    .end annotation
.end field

.field private records:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/Record;",
            ">;"
        }
    .end annotation
.end field

.field private token:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "token"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Model/User;->offline:Ljava/lang/Boolean;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Model/User;->records:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Model/User;->gymRecords:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcn/edu/pku/pkurunner/Model/User$Inner;)V
    .locals 5

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcn/edu/pku/pkurunner/Model/User;->offline:Ljava/lang/Boolean;

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/edu/pku/pkurunner/Model/User;->records:Ljava/util/ArrayList;

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/edu/pku/pkurunner/Model/User;->gymRecords:Ljava/util/ArrayList;

    .line 160
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Model/User$Inner;->access$000(Lcn/edu/pku/pkurunner/Model/User$Inner;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/edu/pku/pkurunner/Model/User;->token:Ljava/lang/String;

    .line 161
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Model/User$Inner;->access$100(Lcn/edu/pku/pkurunner/Model/User$Inner;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcn/edu/pku/pkurunner/Model/User;->PESpecialty:Ljava/lang/Boolean;

    .line 162
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Model/User$Inner;->access$200(Lcn/edu/pku/pkurunner/Model/User$Inner;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/edu/pku/pkurunner/Model/User;->department:Ljava/lang/String;

    .line 163
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Model/User$Inner;->access$300(Lcn/edu/pku/pkurunner/Model/User$Inner;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/edu/pku/pkurunner/Model/User;->name:Ljava/lang/String;

    .line 164
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Model/User$Inner;->access$400(Lcn/edu/pku/pkurunner/Model/User$Inner;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/edu/pku/pkurunner/Model/User;->id:Ljava/lang/String;

    .line 165
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Model/User$Inner;->access$500(Lcn/edu/pku/pkurunner/Model/User$Inner;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x5973

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7537

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "\u7537"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "\u5973"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 173
    iput v4, p0, Lcn/edu/pku/pkurunner/Model/User;->gender:I

    goto :goto_2

    .line 170
    :pswitch_0
    iput v0, p0, Lcn/edu/pku/pkurunner/Model/User;->gender:I

    goto :goto_2

    .line 167
    :pswitch_1
    iput v3, p0, Lcn/edu/pku/pkurunner/Model/User;->gender:I

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Model/User;->offline:Ljava/lang/Boolean;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Model/User;->records:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Model/User;->gymRecords:Ljava/util/ArrayList;

    .line 191
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/User;->id:Ljava/lang/String;

    .line 192
    iput-object p2, p0, Lcn/edu/pku/pkurunner/Model/User;->token:Ljava/lang/String;

    return-void
.end method

.method public static createOfflineUser(ILjava/lang/String;)Lcn/edu/pku/pkurunner/Model/User;
    .locals 2

    .line 179
    new-instance v0, Lcn/edu/pku/pkurunner/Model/User;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/Model/User;-><init>()V

    const/4 v1, 0x1

    .line 180
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcn/edu/pku/pkurunner/Model/User;->offline:Ljava/lang/Boolean;

    const-string v1, "\u79bb\u7ebf"

    .line 181
    iput-object v1, v0, Lcn/edu/pku/pkurunner/Model/User;->department:Ljava/lang/String;

    .line 182
    iput p0, v0, Lcn/edu/pku/pkurunner/Model/User;->gender:I

    .line 183
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcn/edu/pku/pkurunner/Model/User;->id:Ljava/lang/String;

    .line 184
    iput-object p1, v0, Lcn/edu/pku/pkurunner/Model/User;->name:Ljava/lang/String;

    const/4 p0, 0x0

    .line 185
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v0, Lcn/edu/pku/pkurunner/Model/User;->PESpecialty:Ljava/lang/Boolean;

    .line 186
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcn/edu/pku/pkurunner/Model/User;->token:Ljava/lang/String;

    return-object v0
.end method

.method private getGenderByString()Ljava/lang/String;
    .locals 1

    .line 209
    iget v0, p0, Lcn/edu/pku/pkurunner/Model/User;->gender:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "\u672a\u77e5"

    return-object v0

    :pswitch_0
    const-string v0, "\u7537"

    return-object v0

    :pswitch_1
    const-string v0, "\u5973"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addGymRecord(Lcn/edu/pku/pkurunner/Model/GymRecord;)I
    .locals 1

    .line 255
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/User;->gymRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/GymRecord;->getId()I

    move-result p1

    return p1
.end method

.method public addRecord(Lcn/edu/pku/pkurunner/Model/Record;)I
    .locals 1

    .line 250
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/User;->records:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Record;->getId()I

    move-result p1

    return p1
.end method

.method public deleteGymRecordById(I)Ljava/lang/Boolean;
    .locals 4

    .line 264
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/User;->gymRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/edu/pku/pkurunner/Model/GymRecord;

    .line 265
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/GymRecord;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 266
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/GymRecord;->isUploaded()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 267
    :cond_1
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Model/User;->gymRecords:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 270
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public deleteRecord(Lcn/edu/pku/pkurunner/Model/Record;)Ljava/lang/Boolean;
    .locals 1

    .line 260
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/User;->records:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getDepartment()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/User;->department:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    .line 94
    iget v0, p0, Lcn/edu/pku/pkurunner/Model/User;->gender:I

    return v0
.end method

.method public getGymRecordById(I)Lcn/edu/pku/pkurunner/Model/GymRecord;
    .locals 3

    .line 235
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/User;->gymRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/edu/pku/pkurunner/Model/GymRecord;

    .line 236
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/GymRecord;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGymRecords()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/GymRecord;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/User;->gymRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/User;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/User;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordById(I)Lcn/edu/pku/pkurunner/Model/Record;
    .locals 3

    .line 220
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/User;->records:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/edu/pku/pkurunner/Model/Record;

    .line 221
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/Record;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRecords()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/Record;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/User;->records:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/User;->token:Ljava/lang/String;

    return-object v0
.end method

.method public isOffline()Ljava/lang/Boolean;
    .locals 1

    .line 70
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/User;->offline:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isPESpecialty()Ljava/lang/Boolean;
    .locals 1

    .line 56
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/User;->PESpecialty:Ljava/lang/Boolean;

    return-object v0
.end method

.method public provideTrackForRecord(ILjava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/Point;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 274
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/Model/User;->getRecordById(I)Lcn/edu/pku/pkurunner/Model/Record;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    invoke-static {p1, p2}, Lcn/edu/pku/pkurunner/Model/Point;->assignInfoToTrack(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 277
    invoke-virtual {v0, p1}, Lcn/edu/pku/pkurunner/Model/Record;->setTrack(Ljava/util/ArrayList;)V

    const/4 p1, 0x1

    .line 278
    invoke-virtual {v0, p1}, Lcn/edu/pku/pkurunner/Model/Record;->setDetailed(Z)V

    .line 279
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 281
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public setDepartment(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/User;->department:Ljava/lang/String;

    return-void
.end method

.method public setGender(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcn/edu/pku/pkurunner/Model/User;->gender:I

    return-void
.end method

.method public setGymRecordById(ILcn/edu/pku/pkurunner/Model/GymRecord;)V
    .locals 2

    const/4 v0, 0x0

    .line 242
    :goto_0
    iget-object v1, p0, Lcn/edu/pku/pkurunner/Model/User;->gymRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 243
    iget-object v1, p0, Lcn/edu/pku/pkurunner/Model/User;->gymRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/edu/pku/pkurunner/Model/GymRecord;

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/GymRecord;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 244
    iget-object v1, p0, Lcn/edu/pku/pkurunner/Model/User;->gymRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGymRecords(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/GymRecord;",
            ">;)V"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/User;->gymRecords:Ljava/util/ArrayList;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/User;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/User;->name:Ljava/lang/String;

    return-void
.end method

.method public setPESpecialty(Ljava/lang/Boolean;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/User;->PESpecialty:Ljava/lang/Boolean;

    return-void
.end method

.method public setRecordById(ILcn/edu/pku/pkurunner/Model/Record;)V
    .locals 2

    const/4 v0, 0x0

    .line 227
    :goto_0
    iget-object v1, p0, Lcn/edu/pku/pkurunner/Model/User;->records:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 228
    iget-object v1, p0, Lcn/edu/pku/pkurunner/Model/User;->records:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/edu/pku/pkurunner/Model/Record;

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/Record;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 229
    iget-object v1, p0, Lcn/edu/pku/pkurunner/Model/User;->records:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setRecords(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/Record;",
            ">;)V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/User;->records:Ljava/util/ArrayList;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/User;->token:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/Model/User;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", token=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/edu/pku/pkurunner/Model/User;->token:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", PESpecialty="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/edu/pku/pkurunner/Model/User;->PESpecialty:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/edu/pku/pkurunner/Model/User;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", gender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/Model/User;->getGenderByString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", department="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/Model/User;->department:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", records="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/Model/User;->records:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gymRecords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/Model/User;->gymRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

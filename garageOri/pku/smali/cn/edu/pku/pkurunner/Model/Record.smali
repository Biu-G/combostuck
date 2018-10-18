.class public Lcn/edu/pku/pkurunner/Model/Record;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;,
        Lcn/edu/pku/pkurunner/Model/Record$Inner;
    }
.end annotation

.annotation runtime Lorg/xutils/db/annotation/Table;
    name = "record"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/edu/pku/pkurunner/Model/Record;",
            ">;"
        }
    .end annotation
.end field

.field private static final dateFormatter:Ljava/text/DateFormat;


# instance fields
.field private date:Ljava/util/Date;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "date"
    .end annotation
.end field

.field private detailed:Z
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "detailed"
    .end annotation
.end field

.field private distance:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "distance"
    .end annotation
.end field

.field private duration:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "duration"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        isId = true
        name = "id"
        property = "UNIQUE"
    .end annotation
.end field

.field private invalidReason:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "invalidReason"
    .end annotation
.end field

.field private photoName:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "photoName"
    .end annotation
.end field

.field private photoRemotePath:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "photoRemotePath"
    .end annotation
.end field

.field private placeHint:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "placeHint"
    .end annotation
.end field

.field private recordId:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "recordId"
    .end annotation
.end field

.field private step:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "step"
    .end annotation
.end field

.field private track:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/Point;",
            ">;"
        }
    .end annotation
.end field

.field private uploaded:Z
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "uploaded"
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "userId"
    .end annotation
.end field

.field private verified:Z
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "verified"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcn/edu/pku/pkurunner/Model/Record;->dateFormatter:Ljava/text/DateFormat;

    .line 460
    new-instance v0, Lcn/edu/pku/pkurunner/Model/Record$1;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/Model/Record$1;-><init>()V

    sput-object v0, Lcn/edu/pku/pkurunner/Model/Record;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->track:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->track:Ljava/util/ArrayList;

    .line 443
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->id:I

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->recordId:I

    .line 445
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->userId:Ljava/lang/String;

    .line 446
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->distance:I

    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->duration:I

    .line 448
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 449
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->date:Ljava/util/Date;

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->uploaded:Z

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->verified:Z

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lcn/edu/pku/pkurunner/Model/Record;->detailed:Z

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->step:I

    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->invalidReason:I

    .line 455
    sget-object v0, Lcn/edu/pku/pkurunner/Model/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->track:Ljava/util/ArrayList;

    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->photoName:Ljava/lang/String;

    .line 457
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/Record;->photoRemotePath:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/edu/pku/pkurunner/Model/Record$1;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Model/Record;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcn/edu/pku/pkurunner/Model/Record$Inner;)V
    .locals 13

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->track:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 249
    iput v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->id:I

    .line 250
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Model/Record$Inner;->access$000(Lcn/edu/pku/pkurunner/Model/Record$Inner;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->userId:Ljava/lang/String;

    .line 251
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Model/Record$Inner;->access$100(Lcn/edu/pku/pkurunner/Model/Record$Inner;)I

    move-result v0

    iput v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->recordId:I

    .line 252
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Model/Record$Inner;->access$200(Lcn/edu/pku/pkurunner/Model/Record$Inner;)I

    move-result v0

    iput v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->distance:I

    .line 253
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Model/Record$Inner;->access$300(Lcn/edu/pku/pkurunner/Model/Record$Inner;)I

    move-result v0

    iput v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->duration:I

    .line 254
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Model/Record$Inner;->access$400(Lcn/edu/pku/pkurunner/Model/Record$Inner;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->date:Ljava/util/Date;

    const/4 v0, 0x1

    .line 255
    iput-boolean v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->uploaded:Z

    .line 256
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Model/Record$Inner;->access$500(Lcn/edu/pku/pkurunner/Model/Record$Inner;)I

    move-result v1

    iput v1, p0, Lcn/edu/pku/pkurunner/Model/Record;->step:I

    .line 257
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Model/Record$Inner;->access$600(Lcn/edu/pku/pkurunner/Model/Record$Inner;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcn/edu/pku/pkurunner/Model/Record;->verified:Z

    .line 258
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Model/Record$Inner;->access$700(Lcn/edu/pku/pkurunner/Model/Record$Inner;)I

    move-result v1

    iput v1, p0, Lcn/edu/pku/pkurunner/Model/Record;->invalidReason:I

    .line 259
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Model/Record$Inner;->access$800(Lcn/edu/pku/pkurunner/Model/Record$Inner;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/edu/pku/pkurunner/Model/Record;->photoRemotePath:Ljava/lang/String;

    .line 260
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Model/Record$Inner;->access$900(Lcn/edu/pku/pkurunner/Model/Record$Inner;)[[D

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcn/edu/pku/pkurunner/Model/Record$Inner;->access$900(Lcn/edu/pku/pkurunner/Model/Record$Inner;)[[D

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_2

    .line 261
    iput-boolean v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->detailed:Z

    .line 262
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    .line 263
    :goto_0
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Model/Record$Inner;->access$900(Lcn/edu/pku/pkurunner/Model/Record$Inner;)[[D

    move-result-object v3

    array-length v3, v3

    if-ge v11, v3, :cond_1

    .line 264
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Model/Record$Inner;->access$900(Lcn/edu/pku/pkurunner/Model/Record$Inner;)[[D

    move-result-object v3

    aget-object v3, v3, v11

    array-length v3, v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    const/4 v10, 0x0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcn/edu/pku/pkurunner/Model/Record$Inner;->access$900(Lcn/edu/pku/pkurunner/Model/Record$Inner;)[[D

    move-result-object v3

    aget-object v3, v3, v11

    const/4 v4, 0x2

    aget-wide v4, v3, v4

    double-to-int v3, v4

    move v10, v3

    .line 265
    :goto_1
    new-instance v12, Lcn/edu/pku/pkurunner/Model/Point;

    const/4 v5, -0x1

    invoke-static {p1}, Lcn/edu/pku/pkurunner/Model/Record$Inner;->access$900(Lcn/edu/pku/pkurunner/Model/Record$Inner;)[[D

    move-result-object v3

    aget-object v3, v3, v11

    aget-wide v6, v3, v2

    invoke-static {p1}, Lcn/edu/pku/pkurunner/Model/Record$Inner;->access$900(Lcn/edu/pku/pkurunner/Model/Record$Inner;)[[D

    move-result-object v3

    aget-object v3, v3, v11

    aget-wide v8, v3, v0

    move-object v3, v12

    move v4, v11

    invoke-direct/range {v3 .. v10}, Lcn/edu/pku/pkurunner/Model/Point;-><init>(IIDDI)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 267
    :cond_1
    iput-object v1, p0, Lcn/edu/pku/pkurunner/Model/Record;->track:Ljava/util/ArrayList;

    goto :goto_2

    .line 269
    :cond_2
    iput-boolean v2, p0, Lcn/edu/pku/pkurunner/Model/Record;->detailed:Z

    const/4 p1, 0x0

    .line 270
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/Record;->track:Ljava/util/ArrayList;

    :goto_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/util/Date;I)V
    .locals 1

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->track:Ljava/util/ArrayList;

    .line 284
    iput p2, p0, Lcn/edu/pku/pkurunner/Model/Record;->distance:I

    .line 285
    iput p3, p0, Lcn/edu/pku/pkurunner/Model/Record;->duration:I

    .line 286
    iput-object p4, p0, Lcn/edu/pku/pkurunner/Model/Record;->date:Ljava/util/Date;

    const/4 p2, 0x0

    .line 288
    iput p2, p0, Lcn/edu/pku/pkurunner/Model/Record;->id:I

    const/4 p3, -0x1

    .line 289
    iput p3, p0, Lcn/edu/pku/pkurunner/Model/Record;->recordId:I

    .line 290
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/Record;->userId:Ljava/lang/String;

    .line 291
    iput-boolean p2, p0, Lcn/edu/pku/pkurunner/Model/Record;->verified:Z

    .line 292
    iput-boolean p2, p0, Lcn/edu/pku/pkurunner/Model/Record;->uploaded:Z

    .line 293
    iput-boolean p2, p0, Lcn/edu/pku/pkurunner/Model/Record;->detailed:Z

    .line 294
    iput p5, p0, Lcn/edu/pku/pkurunner/Model/Record;->step:I

    .line 296
    iput p2, p0, Lcn/edu/pku/pkurunner/Model/Record;->invalidReason:I

    return-void
.end method

.method public static getPlaceString(Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;)Ljava/lang/String;
    .locals 1

    .line 382
    sget-object v0, Lcn/edu/pku/pkurunner/Model/Record$2;->$SwitchMap$cn$edu$pku$pkurunner$Model$Record$RecordPlace:[I

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "\u672a\u77e5"

    return-object p0

    :pswitch_0
    const-string p0, "\u672a\u540d\u6e56"

    return-object p0

    :pswitch_1
    const-string p0, "\u4e94\u56db"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccumulateBearing()D
    .locals 22

    move-object/from16 v0, p0

    .line 398
    iget-object v1, v0, Lcn/edu/pku/pkurunner/Model/Record;->track:Ljava/util/ArrayList;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcn/edu/pku/pkurunner/Model/Record;->track:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x3

    if-ge v1, v4, :cond_0

    goto/16 :goto_2

    .line 401
    :cond_0
    iget-object v1, v0, Lcn/edu/pku/pkurunner/Model/Record;->track:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-wide v4, v2

    move-wide v6, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/edu/pku/pkurunner/Model/Point;

    .line 402
    invoke-virtual {v8}, Lcn/edu/pku/pkurunner/Model/Point;->getLongitude()D

    move-result-wide v9

    add-double/2addr v4, v9

    .line 403
    invoke-virtual {v8}, Lcn/edu/pku/pkurunner/Model/Point;->getLatitude()D

    move-result-wide v8

    add-double/2addr v6, v8

    goto :goto_0

    .line 405
    :cond_1
    iget-object v1, v0, Lcn/edu/pku/pkurunner/Model/Record;->track:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v8, v1

    div-double/2addr v4, v8

    .line 406
    iget-object v1, v0, Lcn/edu/pku/pkurunner/Model/Record;->track:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v8, v1

    div-double/2addr v6, v8

    const/4 v1, 0x1

    .line 407
    :goto_1
    iget-object v8, v0, Lcn/edu/pku/pkurunner/Model/Record;->track:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 408
    iget-object v8, v0, Lcn/edu/pku/pkurunner/Model/Record;->track:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/edu/pku/pkurunner/Model/Point;

    .line 409
    iget-object v9, v0, Lcn/edu/pku/pkurunner/Model/Record;->track:Ljava/util/ArrayList;

    add-int/lit8 v10, v1, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/edu/pku/pkurunner/Model/Point;

    .line 410
    invoke-virtual {v8}, Lcn/edu/pku/pkurunner/Model/Point;->getLongitude()D

    move-result-wide v10

    sub-double/2addr v10, v4

    invoke-virtual {v8}, Lcn/edu/pku/pkurunner/Model/Point;->getLatitude()D

    move-result-wide v12

    sub-double/2addr v12, v6

    .line 411
    invoke-virtual {v9}, Lcn/edu/pku/pkurunner/Model/Point;->getLongitude()D

    move-result-wide v14

    sub-double/2addr v14, v4

    invoke-virtual {v9}, Lcn/edu/pku/pkurunner/Model/Point;->getLatitude()D

    move-result-wide v8

    sub-double/2addr v8, v6

    mul-double v16, v12, v14

    mul-double v18, v10, v8

    move-wide/from16 v20, v4

    sub-double v4, v16, v18

    mul-double v10, v10, v14

    mul-double v12, v12, v8

    add-double/2addr v10, v12

    .line 412
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v4, v20

    goto :goto_1

    :cond_2
    return-wide v2

    :cond_3
    :goto_2
    return-wide v2
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 104
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getDistance()I
    .locals 1

    .line 76
    iget v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->distance:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 90
    iget v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->duration:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 34
    iget v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->id:I

    return v0
.end method

.method public getInvalidReason()I
    .locals 1

    .line 202
    iget v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->invalidReason:I

    return v0
.end method

.method public getPhotoName()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->photoName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoRemotePath()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->photoRemotePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPlace()Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;
    .locals 12

    .line 359
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->track:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->track:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x3

    .line 360
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x1e

    const/4 v5, 0x1

    if-ge v3, v4, :cond_3

    .line 363
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    iget-object v4, p0, Lcn/edu/pku/pkurunner/Model/Record;->track:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-double v8, v4

    mul-double v6, v6, v8

    double-to-int v4, v6

    .line 364
    iget-object v6, p0, Lcn/edu/pku/pkurunner/Model/Record;->track:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/edu/pku/pkurunner/Model/Point;

    invoke-virtual {v6}, Lcn/edu/pku/pkurunner/Model/Point;->getLongitude()D

    move-result-wide v6

    .line 365
    iget-object v8, p0, Lcn/edu/pku/pkurunner/Model/Record;->track:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/edu/pku/pkurunner/Model/Point;

    invoke-virtual {v4}, Lcn/edu/pku/pkurunner/Model/Point;->getLatitude()D

    move-result-wide v8

    const-wide v10, 0x405d13fe5c91d14eL    # 116.3124

    cmpl-double v4, v6, v10

    if-lez v4, :cond_1

    const-wide v10, 0x405d1416f0068db9L    # 116.3139

    cmpg-double v4, v6, v10

    if-gez v4, :cond_1

    const-wide v10, 0x4043fe4c2f837b4aL    # 39.9867

    cmpl-double v4, v8, v10

    if-lez v4, :cond_1

    const-wide v10, 0x4043fe872b020c4aL    # 39.9885

    cmpg-double v4, v8, v10

    if-gez v4, :cond_1

    .line 366
    aget v4, v1, v2

    add-int/2addr v4, v5

    aput v4, v1, v2

    goto :goto_1

    :cond_1
    const-wide v10, 0x405d13ac710cb296L    # 116.3074

    cmpl-double v4, v6, v10

    if-lez v4, :cond_2

    const-wide v10, 0x405d13f7ced91687L    # 116.312

    cmpg-double v4, v6, v10

    if-gez v4, :cond_2

    const-wide v6, 0x4043ff318fc50481L    # 39.9937

    cmpl-double v4, v8, v6

    if-lez v4, :cond_2

    const-wide v6, 0x4043ff7ced916873L    # 39.996

    cmpg-double v4, v8, v6

    if-gez v4, :cond_2

    .line 368
    aget v4, v1, v5

    add-int/2addr v4, v5

    aput v4, v1, v5

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    .line 369
    aget v6, v1, v4

    add-int/2addr v6, v5

    aput v6, v1, v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    :goto_2
    if-ge v5, v0, :cond_5

    .line 372
    aget v3, v1, v5

    aget v4, v1, v2

    if-le v3, v4, :cond_4

    move v2, v5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 373
    :cond_5
    invoke-static {}, Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;->values()[Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;

    move-result-object v0

    aget-object v0, v0, v2

    return-object v0

    .line 359
    :cond_6
    :goto_3
    sget-object v0, Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;->UNKNOWN:Lcn/edu/pku/pkurunner/Model/Record$RecordPlace;

    return-object v0
.end method

.method public getPlaceHint()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->placeHint:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordId()I
    .locals 1

    .line 48
    iget v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->recordId:I

    return v0
.end method

.method public getStep()I
    .locals 1

    .line 188
    iget v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->step:I

    return v0
.end method

.method public getTrack()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/Point;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->track:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isDetailed()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->detailed:Z

    return v0
.end method

.method public isPlaceHintAvailable()Z
    .locals 2

    .line 224
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->placeHint:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->placeHint:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUploaded()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->uploaded:Z

    return v0
.end method

.method public isVerified()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcn/edu/pku/pkurunner/Model/Record;->verified:Z

    return v0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/Record;->date:Ljava/util/Date;

    return-void
.end method

.method public setDetailed(Z)V
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcn/edu/pku/pkurunner/Model/Record;->detailed:Z

    return-void
.end method

.method public setDistance(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcn/edu/pku/pkurunner/Model/Record;->distance:I

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcn/edu/pku/pkurunner/Model/Record;->duration:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcn/edu/pku/pkurunner/Model/Record;->id:I

    return-void
.end method

.method public setInvalidReason(I)V
    .locals 0

    .line 206
    iput p1, p0, Lcn/edu/pku/pkurunner/Model/Record;->invalidReason:I

    return-void
.end method

.method public setPhotoName(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/Record;->photoName:Ljava/lang/String;

    return-void
.end method

.method public setPhotoRemotePath(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/Record;->photoRemotePath:Ljava/lang/String;

    return-void
.end method

.method public setPlaceHint(Ljava/lang/String;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/Record;->placeHint:Ljava/lang/String;

    return-void
.end method

.method public setRecordId(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcn/edu/pku/pkurunner/Model/Record;->recordId:I

    return-void
.end method

.method public setStep(I)V
    .locals 0

    .line 192
    iput p1, p0, Lcn/edu/pku/pkurunner/Model/Record;->step:I

    return-void
.end method

.method public setTrack(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/edu/pku/pkurunner/Model/Point;",
            ">;)V"
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/Record;->track:Ljava/util/ArrayList;

    return-void
.end method

.method public setUploaded(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcn/edu/pku/pkurunner/Model/Record;->uploaded:Z

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Model/Record;->userId:Ljava/lang/String;

    return-void
.end method

.method public setVerified(Z)V
    .locals 0

    .line 136
    iput-boolean p1, p0, Lcn/edu/pku/pkurunner/Model/Record;->verified:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Record{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/edu/pku/pkurunner/Model/Record;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", recordId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/edu/pku/pkurunner/Model/Record;->recordId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/Model/Record;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", distance="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/edu/pku/pkurunner/Model/Record;->distance:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", duration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/edu/pku/pkurunner/Model/Record;->duration:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", date="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcn/edu/pku/pkurunner/Model/Record;->dateFormatter:Ljava/text/DateFormat;

    iget-object v3, p0, Lcn/edu/pku/pkurunner/Model/Record;->date:Ljava/util/Date;

    .line 330
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uploaded="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/edu/pku/pkurunner/Model/Record;->uploaded:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", verified="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/edu/pku/pkurunner/Model/Record;->verified:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", detailed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcn/edu/pku/pkurunner/Model/Record;->detailed:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", photoName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/edu/pku/pkurunner/Model/Record;->photoName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", photoRemotePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/edu/pku/pkurunner/Model/Record;->photoRemotePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", step="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/edu/pku/pkurunner/Model/Record;->step:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", invalidReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/edu/pku/pkurunner/Model/Record;->invalidReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", track="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/Model/Record;->track:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 426
    iget p2, p0, Lcn/edu/pku/pkurunner/Model/Record;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    iget p2, p0, Lcn/edu/pku/pkurunner/Model/Record;->recordId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    iget-object p2, p0, Lcn/edu/pku/pkurunner/Model/Record;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 429
    iget p2, p0, Lcn/edu/pku/pkurunner/Model/Record;->distance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    iget p2, p0, Lcn/edu/pku/pkurunner/Model/Record;->duration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    iget-object p2, p0, Lcn/edu/pku/pkurunner/Model/Record;->date:Ljava/util/Date;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcn/edu/pku/pkurunner/Model/Record;->date:Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 432
    iget-boolean p2, p0, Lcn/edu/pku/pkurunner/Model/Record;->uploaded:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 433
    iget-boolean p2, p0, Lcn/edu/pku/pkurunner/Model/Record;->verified:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 434
    iget-boolean p2, p0, Lcn/edu/pku/pkurunner/Model/Record;->detailed:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 435
    iget p2, p0, Lcn/edu/pku/pkurunner/Model/Record;->step:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    iget p2, p0, Lcn/edu/pku/pkurunner/Model/Record;->invalidReason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    iget-object p2, p0, Lcn/edu/pku/pkurunner/Model/Record;->track:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 438
    iget-object p2, p0, Lcn/edu/pku/pkurunner/Model/Record;->photoName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 439
    iget-object p2, p0, Lcn/edu/pku/pkurunner/Model/Record;->photoRemotePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.class public final synthetic Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordCardAdapter$gJmJU-zL1hm4RG_tAJlU73OITJU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordCardAdapter$gJmJU-zL1hm4RG_tAJlU73OITJU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordCardAdapter$gJmJU-zL1hm4RG_tAJlU73OITJU;

    invoke-direct {v0}, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordCardAdapter$gJmJU-zL1hm4RG_tAJlU73OITJU;-><init>()V

    sput-object v0, Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordCardAdapter$gJmJU-zL1hm4RG_tAJlU73OITJU;->INSTANCE:Lcn/edu/pku/pkurunner/RecordList/-$$Lambda$RecordCardAdapter$gJmJU-zL1hm4RG_tAJlU73OITJU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcn/edu/pku/pkurunner/Model/Record;

    check-cast p2, Lcn/edu/pku/pkurunner/Model/Record;

    invoke-static {p1, p2}, Lcn/edu/pku/pkurunner/RecordList/RecordCardAdapter;->lambda$gJmJU-zL1hm4RG_tAJlU73OITJU(Lcn/edu/pku/pkurunner/Model/Record;Lcn/edu/pku/pkurunner/Model/Record;)I

    move-result p1

    return p1
.end method

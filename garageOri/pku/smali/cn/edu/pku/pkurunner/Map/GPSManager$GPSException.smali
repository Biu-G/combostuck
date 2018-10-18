.class Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/edu/pku/pkurunner/Map/GPSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GPSException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;
    }
.end annotation


# instance fields
.field a:Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;


# direct methods
.method constructor <init>(Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;)V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 197
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException;->a:Lcn/edu/pku/pkurunner/Map/GPSManager$GPSException$CAUSE;

    return-void
.end method

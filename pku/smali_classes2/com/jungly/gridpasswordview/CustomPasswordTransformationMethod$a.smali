.class Lcom/jungly/gridpasswordview/CustomPasswordTransformationMethod$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jungly/gridpasswordview/CustomPasswordTransformationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/jungly/gridpasswordview/CustomPasswordTransformationMethod;

.field private b:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/jungly/gridpasswordview/CustomPasswordTransformationMethod;Ljava/lang/CharSequence;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/jungly/gridpasswordview/CustomPasswordTransformationMethod$a;->a:Lcom/jungly/gridpasswordview/CustomPasswordTransformationMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/jungly/gridpasswordview/CustomPasswordTransformationMethod$a;->b:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 1

    .line 39
    iget-object p1, p0, Lcom/jungly/gridpasswordview/CustomPasswordTransformationMethod$a;->a:Lcom/jungly/gridpasswordview/CustomPasswordTransformationMethod;

    iget-object p1, p1, Lcom/jungly/gridpasswordview/CustomPasswordTransformationMethod;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public length()I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/jungly/gridpasswordview/CustomPasswordTransformationMethod$a;->b:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/jungly/gridpasswordview/CustomPasswordTransformationMethod$a;->b:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

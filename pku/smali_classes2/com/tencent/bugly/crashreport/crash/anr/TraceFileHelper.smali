.class public Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;,
        Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 323
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 326
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static varargs a(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 304
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 305
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, p1, v4

    .line 306
    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 307
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 p0, 0x2

    .line 308
    new-array p0, p0, [Ljava/lang/Object;

    aput-object v5, p0, v3

    const/4 p1, 0x1

    aput-object v1, p0, p1

    return-object p0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private static b(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 338
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 345
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readFirstDumpInfo(Ljava/lang/String;Z)Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_0

    const-string p1, "path:%s"

    .line 140
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {p1, v2}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0

    .line 143
    :cond_0
    new-instance v3, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;

    invoke-direct {v3}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;-><init>()V

    .line 144
    new-instance v4, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$2;

    invoke-direct {v4, v3, p1}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$2;-><init>(Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;Z)V

    invoke-static {p0, v4}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper;->readTraceFile(Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$b;)V

    .line 183
    iget-wide p0, v3, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->a:J

    const-wide/16 v4, 0x0

    cmp-long p0, p0, v4

    if-lez p0, :cond_1

    iget-wide p0, v3, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->c:J

    cmp-long p0, p0, v4

    if-lez p0, :cond_1

    iget-object p0, v3, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->b:Ljava/lang/String;

    if-eqz p0, :cond_1

    return-object v3

    :cond_1
    const-string p0, "first dump error %s"

    .line 186
    new-array p1, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v3, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->a:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v3, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->c:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/u;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static readTargetDumpInfo(Ljava/lang/String;Ljava/lang/String;Z)Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    new-instance p0, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;

    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;-><init>()V

    .line 72
    new-instance v1, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$1;

    invoke-direct {v1, p0, p2}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$1;-><init>(Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;Z)V

    invoke-static {p1, v1}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper;->readTraceFile(Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$b;)V

    .line 125
    iget-wide p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->a:J

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-lez p1, :cond_1

    iget-wide p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->c:J

    cmp-long p1, p1, v1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->b:Ljava/lang/String;

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static readTraceFile(Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$b;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    if-eqz v0, :cond_e

    if-nez v6, :cond_0

    goto/16 :goto_4

    .line 199
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 204
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    invoke-virtual {v1}, Ljava/io/File;->length()J

    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 209
    :try_start_0
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "-{5}\\spid\\s\\d+\\sat\\s\\d+-\\d+-\\d+\\s\\d{2}:\\d{2}:\\d{2}\\s-{5}"

    .line 212
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    const-string v0, "-{5}\\send\\s\\d+\\s-{5}"

    .line 213
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    const-string v0, "Cmd\\sline:\\s(\\S+)"

    .line 214
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    const-string v0, "\".+\"\\s(daemon\\s){0,1}prio=\\d+\\stid=\\d+\\s.*"

    .line 215
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 216
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v15, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 217
    :cond_2
    new-array v0, v9, [Ljava/util/regex/Pattern;

    aput-object v11, v0, v8

    invoke-static {v10, v0}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper;->a(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 219
    aget-object v0, v0, v9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 220
    aget-object v1, v0, v7

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x4

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {v15, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 225
    new-array v0, v9, [Ljava/util/regex/Pattern;

    aput-object v13, v0, v8

    invoke-static {v10, v0}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper;->a(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_4

    .line 281
    :try_start_2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 285
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 286
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    return-void

    .line 229
    :cond_4
    :try_start_3
    aget-object v0, v0, v9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 231
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 232
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    .line 235
    invoke-interface/range {v0 .. v5}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$b;->a(JJLjava/lang/String;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_6

    .line 281
    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    return-void

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 285
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 286
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    return-void

    .line 239
    :cond_6
    :goto_0
    :try_start_5
    new-array v0, v7, [Ljava/util/regex/Pattern;

    aput-object v14, v0, v8

    aput-object v12, v0, v9

    invoke-static {v10, v0}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper;->a(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 240
    aget-object v1, v0, v8

    if-ne v1, v14, :cond_7

    .line 242
    aget-object v0, v0, v9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\".+\""

    .line 244
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 245
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 247
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-virtual {v1, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NATIVE"

    .line 250
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    const-string v2, "tid=\\d+"

    .line 252
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 253
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 255
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    const-string v2, "="

    .line 256
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v9

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 259
    invoke-static {v10}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v2

    .line 260
    invoke-static {v10}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper;->b(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v3

    .line 262
    invoke-interface {v6, v1, v0, v2, v3}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$b;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 267
    :cond_7
    aget-object v0, v0, v9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 268
    aget-object v0, v0, v7

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 269
    invoke-interface {v6, v0, v1}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$b;->a(J)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v0, :cond_2

    .line 281
    :try_start_6
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    return-void

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 285
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 286
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    return-void

    .line 281
    :cond_9
    :try_start_7
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    return-void

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 285
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 286
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v2, v10

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v10, v2

    goto :goto_2

    :catch_5
    move-exception v0

    :goto_1
    :try_start_8
    const-string v1, "trace open fail:%s : %s"

    .line 279
    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/u;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v2, :cond_c

    .line 283
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    return-void

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 285
    invoke-static {v1}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 286
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    return-void

    :cond_c
    return-void

    :goto_2
    if-eqz v10, :cond_d

    .line 283
    :try_start_a
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v2, v0

    .line 285
    invoke-static {v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 286
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 287
    :cond_d
    :goto_3
    throw v1

    :cond_e
    :goto_4
    return-void
.end method

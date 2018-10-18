package com.dropbox.core.v1;

import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.json.JsonReader.FieldMapping;
import com.dropbox.core.json.JsonReader.FieldMapping.Builder;
import com.dropbox.core.util.DumpWriter;
import com.dropbox.core.util.Dumpable;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public class DbxAccountInfo
  extends Dumpable
{
  public static final JsonReader<DbxAccountInfo> Reader = new JsonReader()
  {
    public final DbxAccountInfo a(JsonParser paramAnonymousJsonParser)
      throws IOException, JsonReadException
    {
      JsonLocation localJsonLocation = JsonReader.expectObjectStart(paramAnonymousJsonParser);
      Object localObject7 = null;
      Object localObject6 = null;
      Object localObject1 = localObject6;
      Object localObject2 = localObject1;
      Object localObject3 = localObject2;
      Object localObject4 = localObject3;
      Object localObject5 = localObject4;
      long l = -1L;
      String str;
      if (paramAnonymousJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
      {
        str = paramAnonymousJsonParser.getCurrentName();
        paramAnonymousJsonParser.nextToken();
      }
      for (;;)
      {
        try
        {
          int i = DbxAccountInfo.a().get(str);
          switch (i)
          {
          case 7: 
            continue;
            localObject7 = (Boolean)JsonReader.BooleanReader.readField(paramAnonymousJsonParser, str, localObject7);
            break;
          case 6: 
            localObject4 = (String)JsonReader.StringReader.readField(paramAnonymousJsonParser, str, localObject4);
            break;
          case 5: 
            localObject5 = (DbxAccountInfo.NameDetails)DbxAccountInfo.NameDetails.Reader.readField(paramAnonymousJsonParser, str, localObject5);
            break;
          case 4: 
            localObject3 = (DbxAccountInfo.Quota)DbxAccountInfo.Quota.Reader.readField(paramAnonymousJsonParser, str, localObject3);
            break;
          case 3: 
            localObject2 = (String)JsonReader.StringReader.readField(paramAnonymousJsonParser, str, localObject2);
            break;
          case 2: 
            localObject1 = (String)JsonReader.StringReader.readField(paramAnonymousJsonParser, str, localObject1);
            break;
          case 1: 
            localObject6 = (String)JsonReader.StringReader.readField(paramAnonymousJsonParser, str, localObject6);
            break;
          case 0: 
            l = JsonReader.readUnsignedLongField(paramAnonymousJsonParser, str, l);
            break;
          case -1: 
            JsonReader.skipValue(paramAnonymousJsonParser);
            break;
            paramAnonymousJsonParser = new StringBuilder();
            paramAnonymousJsonParser.append("bad index: ");
            paramAnonymousJsonParser.append(i);
            paramAnonymousJsonParser.append(", field = \"");
            paramAnonymousJsonParser.append(str);
            paramAnonymousJsonParser.append("\"");
            throw new AssertionError(paramAnonymousJsonParser.toString());
          }
        }
        catch (JsonReadException paramAnonymousJsonParser)
        {
          throw paramAnonymousJsonParser.addFieldContext(str);
        }
        JsonReader.expectObjectEnd(paramAnonymousJsonParser);
        if (l >= 0L)
        {
          if (localObject6 != null)
          {
            if (localObject1 != null)
            {
              if (localObject2 != null)
              {
                if (localObject3 != null)
                {
                  if (localObject4 != null)
                  {
                    if (localObject5 != null)
                    {
                      if (localObject7 != null) {
                        return new DbxAccountInfo(l, (String)localObject6, (String)localObject1, (String)localObject2, (DbxAccountInfo.Quota)localObject3, (String)localObject4, (DbxAccountInfo.NameDetails)localObject5, ((Boolean)localObject7).booleanValue());
                      }
                      throw new JsonReadException("missing field \"emailVerified\"", localJsonLocation);
                    }
                    throw new JsonReadException("missing field \"nameDetails\"", localJsonLocation);
                  }
                  throw new JsonReadException("missing field \"email\"", localJsonLocation);
                }
                throw new JsonReadException("missing field \"quota_info\"", localJsonLocation);
              }
              throw new JsonReadException("missing field \"referral_link\"", localJsonLocation);
            }
            throw new JsonReadException("missing field \"country\"", localJsonLocation);
          }
          throw new JsonReadException("missing field \"display_name\"", localJsonLocation);
        }
        throw new JsonReadException("missing field \"uid\"", localJsonLocation);
      }
    }
  };
  private static final JsonReader.FieldMapping a;
  public final String country;
  public final String displayName;
  public final String email;
  public final boolean emailVerified;
  public final NameDetails nameDetails;
  public final Quota quota;
  public final String referralLink;
  public final long userId;
  
  static
  {
    JsonReader.FieldMapping.Builder localBuilder = new JsonReader.FieldMapping.Builder();
    localBuilder.add("uid", 0);
    localBuilder.add("display_name", 1);
    localBuilder.add("country", 2);
    localBuilder.add("referral_link", 3);
    localBuilder.add("quota_info", 4);
    localBuilder.add("name_details", 5);
    localBuilder.add("email", 6);
    localBuilder.add("email_verified", 7);
    a = localBuilder.build();
  }
  
  public DbxAccountInfo(long paramLong, String paramString1, String paramString2, String paramString3, Quota paramQuota, String paramString4, NameDetails paramNameDetails, boolean paramBoolean)
  {
    userId = paramLong;
    displayName = paramString1;
    country = paramString2;
    referralLink = paramString3;
    quota = paramQuota;
    email = paramString4;
    nameDetails = paramNameDetails;
    emailVerified = paramBoolean;
  }
  
  protected void dumpFields(DumpWriter paramDumpWriter)
  {
    paramDumpWriter.f("userId").v(userId);
    paramDumpWriter.f("displayName").v(displayName);
    paramDumpWriter.f("country").v(country);
    paramDumpWriter.f("referralLink").v(referralLink);
    paramDumpWriter.f("quota").v(quota);
    paramDumpWriter.f("nameDetails").v(nameDetails);
    paramDumpWriter.f("email").v(email);
    paramDumpWriter.f("emailVerified").v(emailVerified);
  }
  
  public static final class NameDetails
    extends Dumpable
  {
    public static final JsonReader<NameDetails> Reader = new JsonReader()
    {
      public final DbxAccountInfo.NameDetails a(JsonParser paramAnonymousJsonParser)
        throws IOException, JsonReadException
      {
        JsonLocation localJsonLocation = JsonReader.expectObjectStart(paramAnonymousJsonParser);
        Object localObject3 = null;
        Object localObject2 = null;
        Object localObject1 = localObject2;
        String str;
        while (paramAnonymousJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          str = paramAnonymousJsonParser.getCurrentName();
          paramAnonymousJsonParser.nextToken();
          int i = DbxAccountInfo.NameDetails.a().get(str);
          switch (i)
          {
          default: 
            break;
          }
          try
          {
            localObject2 = (String)JsonReader.StringReader.readField(paramAnonymousJsonParser, str, localObject2);
          }
          catch (JsonReadException paramAnonymousJsonParser)
          {
            throw paramAnonymousJsonParser.addFieldContext(str);
          }
          localObject1 = (String)JsonReader.StringReader.readField(paramAnonymousJsonParser, str, localObject1);
          continue;
          localObject3 = (String)JsonReader.StringReader.readField(paramAnonymousJsonParser, str, localObject3);
          continue;
          JsonReader.skipValue(paramAnonymousJsonParser);
          continue;
          paramAnonymousJsonParser = new StringBuilder();
          paramAnonymousJsonParser.append("bad index: ");
          paramAnonymousJsonParser.append(i);
          paramAnonymousJsonParser.append(", field = \"");
          paramAnonymousJsonParser.append(str);
          paramAnonymousJsonParser.append("\"");
          throw new AssertionError(paramAnonymousJsonParser.toString());
        }
        JsonReader.expectObjectEnd(paramAnonymousJsonParser);
        if (localObject3 != null)
        {
          if (localObject2 != null)
          {
            if (localObject1 != null) {
              return new DbxAccountInfo.NameDetails((String)localObject3, (String)localObject1, (String)localObject2);
            }
            throw new JsonReadException("missing field \"givenName\"", localJsonLocation);
          }
          throw new JsonReadException("missing field \"surname\"", localJsonLocation);
        }
        throw new JsonReadException("missing field \"familiarName\"", localJsonLocation);
      }
    };
    private static final JsonReader.FieldMapping a;
    public final String familiarName;
    public final String givenName;
    public final String surname;
    
    static
    {
      JsonReader.FieldMapping.Builder localBuilder = new JsonReader.FieldMapping.Builder();
      localBuilder.add("familiar_name", 0);
      localBuilder.add("given_name", 1);
      localBuilder.add("surname", 2);
      a = localBuilder.build();
    }
    
    public NameDetails(String paramString1, String paramString2, String paramString3)
    {
      familiarName = paramString1;
      givenName = paramString2;
      surname = paramString3;
    }
    
    protected void dumpFields(DumpWriter paramDumpWriter)
    {
      paramDumpWriter.f("familiarName").v(familiarName);
      paramDumpWriter.f("givenName").v(givenName);
      paramDumpWriter.f("surname").v(surname);
    }
  }
  
  public static final class Quota
    extends Dumpable
  {
    public static final JsonReader<Quota> Reader = new JsonReader()
    {
      public final DbxAccountInfo.Quota a(JsonParser paramAnonymousJsonParser)
        throws IOException, JsonReadException
      {
        JsonLocation localJsonLocation = JsonReader.expectObjectStart(paramAnonymousJsonParser);
        long l3 = -1L;
        long l1 = l3;
        long l2 = l1;
        String str;
        while (paramAnonymousJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
        {
          str = paramAnonymousJsonParser.getCurrentName();
          paramAnonymousJsonParser.nextToken();
          int i = DbxAccountInfo.Quota.a().get(str);
          switch (i)
          {
          default: 
            break;
          }
          try
          {
            l2 = JsonReader.readUnsignedLongField(paramAnonymousJsonParser, str, l2);
          }
          catch (JsonReadException paramAnonymousJsonParser)
          {
            throw paramAnonymousJsonParser.addFieldContext(str);
          }
          l1 = JsonReader.readUnsignedLongField(paramAnonymousJsonParser, str, l1);
          continue;
          l3 = JsonReader.readUnsignedLongField(paramAnonymousJsonParser, str, l3);
          continue;
          JsonReader.skipValue(paramAnonymousJsonParser);
          continue;
          paramAnonymousJsonParser = new StringBuilder();
          paramAnonymousJsonParser.append("bad index: ");
          paramAnonymousJsonParser.append(i);
          paramAnonymousJsonParser.append(", field = \"");
          paramAnonymousJsonParser.append(str);
          paramAnonymousJsonParser.append("\"");
          throw new AssertionError(paramAnonymousJsonParser.toString());
        }
        JsonReader.expectObjectEnd(paramAnonymousJsonParser);
        if (l3 >= 0L)
        {
          if (l1 >= 0L)
          {
            if (l2 >= 0L) {
              return new DbxAccountInfo.Quota(l3, l1, l2);
            }
            throw new JsonReadException("missing field \"shared\"", localJsonLocation);
          }
          throw new JsonReadException("missing field \"normal\"", localJsonLocation);
        }
        throw new JsonReadException("missing field \"quota\"", localJsonLocation);
      }
    };
    private static final JsonReader.FieldMapping a;
    public final long normal;
    public final long shared;
    public final long total;
    
    static
    {
      JsonReader.FieldMapping.Builder localBuilder = new JsonReader.FieldMapping.Builder();
      localBuilder.add("quota", 0);
      localBuilder.add("normal", 1);
      localBuilder.add("shared", 2);
      a = localBuilder.build();
    }
    
    public Quota(long paramLong1, long paramLong2, long paramLong3)
    {
      total = paramLong1;
      normal = paramLong2;
      shared = paramLong3;
    }
    
    protected void dumpFields(DumpWriter paramDumpWriter)
    {
      paramDumpWriter.f("total").v(total);
      paramDumpWriter.f("normal").v(normal);
      paramDumpWriter.f("shared").v(shared);
    }
  }
}

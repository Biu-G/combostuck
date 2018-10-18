package com.dropbox.core.v1;

import com.dropbox.core.json.JsonDateReader;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Date;

public final class DbxUrlWithExpiration
{
  public static final JsonReader<DbxUrlWithExpiration> Reader = new JsonReader()
  {
    public DbxUrlWithExpiration a(JsonParser paramAnonymousJsonParser)
      throws IOException, JsonReadException
    {
      JsonLocation localJsonLocation = JsonReader.expectObjectStart(paramAnonymousJsonParser);
      Object localObject2 = null;
      Object localObject1 = null;
      while (paramAnonymousJsonParser.getCurrentToken() == JsonToken.FIELD_NAME)
      {
        String str = paramAnonymousJsonParser.getCurrentName();
        paramAnonymousJsonParser.nextToken();
        try
        {
          if (str.equals("url")) {
            localObject2 = (String)JsonReader.StringReader.readField(paramAnonymousJsonParser, str, localObject2);
          } else if (str.equals("expires")) {
            localObject1 = (Date)JsonDateReader.Dropbox.readField(paramAnonymousJsonParser, str, localObject1);
          } else {
            JsonReader.skipValue(paramAnonymousJsonParser);
          }
        }
        catch (JsonReadException paramAnonymousJsonParser)
        {
          throw paramAnonymousJsonParser.addFieldContext(str);
        }
      }
      JsonReader.expectObjectEnd(paramAnonymousJsonParser);
      if (localObject2 != null)
      {
        if (localObject1 != null) {
          return new DbxUrlWithExpiration((String)localObject2, (Date)localObject1);
        }
        throw new JsonReadException("missing field \"expires\"", localJsonLocation);
      }
      throw new JsonReadException("missing field \"url\"", localJsonLocation);
    }
  };
  public final Date expires;
  public final String url;
  
  public DbxUrlWithExpiration(String paramString, Date paramDate)
  {
    url = paramString;
    expires = paramDate;
  }
}

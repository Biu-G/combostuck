package com.dropbox.core.json;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;

public class JsonDateReader
{
  public static final JsonReader<Date> Dropbox = new JsonReader()
  {
    public Date a(JsonParser paramAnonymousJsonParser)
      throws IOException, JsonReadException
    {
      JsonLocation localJsonLocation = paramAnonymousJsonParser.getCurrentLocation();
      try
      {
        localObject = JsonDateReader.parseDropboxDate(paramAnonymousJsonParser.getTextCharacters(), paramAnonymousJsonParser.getTextOffset(), paramAnonymousJsonParser.getTextLength());
        paramAnonymousJsonParser.nextToken();
        return localObject;
      }
      catch (ParseException paramAnonymousJsonParser)
      {
        Object localObject = new StringBuilder();
        ((StringBuilder)localObject).append("bad date: \"");
        ((StringBuilder)localObject).append(paramAnonymousJsonParser.getMessage());
        ((StringBuilder)localObject).append(" at offset ");
        ((StringBuilder)localObject).append(paramAnonymousJsonParser.getErrorOffset());
        throw new JsonReadException(((StringBuilder)localObject).toString(), localJsonLocation);
      }
      catch (JsonParseException paramAnonymousJsonParser)
      {
        throw JsonReadException.fromJackson(paramAnonymousJsonParser);
      }
    }
  };
  public static final JsonReader<Date> DropboxV2 = new JsonReader()
  {
    public Date a(JsonParser paramAnonymousJsonParser)
      throws IOException, JsonReadException
    {
      JsonLocation localJsonLocation = paramAnonymousJsonParser.getCurrentLocation();
      try
      {
        localObject = JsonDateReader.parseDropbox8601Date(paramAnonymousJsonParser.getTextCharacters(), paramAnonymousJsonParser.getTextOffset(), paramAnonymousJsonParser.getTextLength());
        paramAnonymousJsonParser.nextToken();
        return localObject;
      }
      catch (ParseException paramAnonymousJsonParser)
      {
        Object localObject = new StringBuilder();
        ((StringBuilder)localObject).append("bad date: \"");
        ((StringBuilder)localObject).append(paramAnonymousJsonParser.getMessage());
        ((StringBuilder)localObject).append(" at offset ");
        ((StringBuilder)localObject).append(paramAnonymousJsonParser.getErrorOffset());
        throw new JsonReadException(((StringBuilder)localObject).toString(), localJsonLocation);
      }
      catch (JsonParseException paramAnonymousJsonParser)
      {
        throw JsonReadException.fromJackson(paramAnonymousJsonParser);
      }
    }
  };
  public static final TimeZone UTC = TimeZone.getTimeZone("UTC");
  
  public JsonDateReader() {}
  
  private static boolean a(char paramChar)
  {
    return (paramChar >= '0') && (paramChar <= '9');
  }
  
  public static int getMonthIndex(char paramChar1, char paramChar2, char paramChar3)
  {
    char c3 = '\001';
    char c4 = '\001';
    char c5 = '\001';
    char c6 = '\001';
    char c2 = '\001';
    char c1 = '\001';
    if (paramChar1 != 'A')
    {
      if (paramChar1 != 'D')
      {
        if (paramChar1 != 'F')
        {
          if (paramChar1 != 'J')
          {
            if (paramChar1 != 'S')
            {
              switch (paramChar1)
              {
              default: 
                return -1;
              case 'O': 
                if (paramChar2 == 'c') {
                  paramChar1 = '\001';
                } else {
                  paramChar1 = '\000';
                }
                if (paramChar3 == 't') {
                  paramChar2 = c1;
                } else {
                  paramChar2 = '\000';
                }
                if ((paramChar1 & paramChar2) != 0) {
                  return 9;
                }
                return -1;
              case 'N': 
                if (paramChar2 == 'o') {
                  paramChar1 = '\001';
                } else {
                  paramChar1 = '\000';
                }
                if (paramChar3 == 'v') {
                  paramChar2 = c3;
                } else {
                  paramChar2 = '\000';
                }
                if ((paramChar1 & paramChar2) != 0) {
                  return 10;
                }
                return -1;
              }
              if (paramChar2 == 'a')
              {
                if (paramChar3 == 'r') {
                  return 2;
                }
                if (paramChar3 == 'y') {
                  return 4;
                }
                return -1;
              }
              return -1;
            }
            if (paramChar2 == 'e') {
              paramChar1 = '\001';
            } else {
              paramChar1 = '\000';
            }
            if (paramChar3 == 'p') {
              paramChar2 = c4;
            } else {
              paramChar2 = '\000';
            }
            if ((paramChar1 & paramChar2) != 0) {
              return 8;
            }
            return -1;
          }
          if (paramChar2 == 'a') {
            paramChar1 = '\001';
          } else {
            paramChar1 = '\000';
          }
          if (paramChar3 == 'n') {
            c1 = c5;
          } else {
            c1 = '\000';
          }
          if ((paramChar1 & c1) != 0) {
            return 0;
          }
          if (paramChar2 == 'u')
          {
            if (paramChar3 == 'n') {
              return 5;
            }
            if (paramChar3 == 'l') {
              return 6;
            }
            return -1;
          }
          return -1;
        }
        if (paramChar2 == 'e') {
          paramChar1 = '\001';
        } else {
          paramChar1 = '\000';
        }
        if (paramChar3 == 'b') {
          paramChar2 = '\001';
        } else {
          paramChar2 = '\000';
        }
        if ((paramChar1 & paramChar2) != 0) {
          return 1;
        }
        return 0;
      }
      if (paramChar2 == 'e') {
        paramChar1 = '\001';
      } else {
        paramChar1 = '\000';
      }
      if (paramChar3 == 'c') {
        paramChar2 = c6;
      } else {
        paramChar2 = '\000';
      }
      if ((paramChar1 & paramChar2) != 0) {
        return 11;
      }
      return -1;
    }
    if (paramChar2 == 'p') {
      paramChar1 = '\001';
    } else {
      paramChar1 = '\000';
    }
    if (paramChar3 == 'r') {
      c1 = '\001';
    } else {
      c1 = '\000';
    }
    if ((paramChar1 & c1) != 0) {
      return 3;
    }
    if (paramChar2 == 'u') {
      paramChar1 = '\001';
    } else {
      paramChar1 = '\000';
    }
    if (paramChar3 == 'g') {
      paramChar2 = c2;
    } else {
      paramChar2 = '\000';
    }
    if ((paramChar1 & paramChar2) != 0) {
      return 7;
    }
    return -1;
  }
  
  public static boolean isValidDayOfWeek(char paramChar1, char paramChar2, char paramChar3)
  {
    if (paramChar1 != 'F')
    {
      if (paramChar1 != 'M')
      {
        if (paramChar1 != 'W')
        {
          char c;
          switch (paramChar1)
          {
          default: 
            return false;
          case 'T': 
            if (paramChar2 == 'u') {
              paramChar1 = '\001';
            } else {
              paramChar1 = '\000';
            }
            if (paramChar3 == 'e') {
              c = '\001';
            } else {
              c = '\000';
            }
            if ((paramChar1 & c) != 0) {
              return true;
            }
            if (paramChar2 == 'h') {
              paramChar1 = '\001';
            } else {
              paramChar1 = '\000';
            }
            if (paramChar3 == 'u') {
              paramChar2 = '\001';
            } else {
              paramChar2 = '\000';
            }
            return (paramChar1 & paramChar2) != 0;
          }
          if (paramChar2 == 'u') {
            paramChar1 = '\001';
          } else {
            paramChar1 = '\000';
          }
          if (paramChar3 == 'n') {
            c = '\001';
          } else {
            c = '\000';
          }
          if ((paramChar1 & c) != 0) {
            return true;
          }
          if (paramChar2 == 'a') {
            paramChar1 = '\001';
          } else {
            paramChar1 = '\000';
          }
          if (paramChar3 == 't') {
            paramChar2 = '\001';
          } else {
            paramChar2 = '\000';
          }
          return (paramChar1 & paramChar2) != 0;
        }
        if (paramChar2 == 'e') {
          paramChar1 = '\001';
        } else {
          paramChar1 = '\000';
        }
        if (paramChar3 == 'd') {
          paramChar2 = '\001';
        } else {
          paramChar2 = '\000';
        }
        return (paramChar1 & paramChar2) != 0;
      }
      if (paramChar2 == 'o') {
        paramChar1 = '\001';
      } else {
        paramChar1 = '\000';
      }
      if (paramChar3 == 'n') {
        paramChar2 = '\001';
      } else {
        paramChar2 = '\000';
      }
      return (paramChar1 & paramChar2) != 0;
    }
    if (paramChar2 == 'r') {
      paramChar1 = '\001';
    } else {
      paramChar1 = '\000';
    }
    if (paramChar3 == 'i') {
      paramChar2 = '\001';
    } else {
      paramChar2 = '\000';
    }
    return (paramChar1 & paramChar2) != 0;
  }
  
  public static Date parseDropbox8601Date(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws ParseException
  {
    if ((paramInt2 != 20) && (paramInt2 != 24))
    {
      paramArrayOfChar = new StringBuilder();
      paramArrayOfChar.append("expecting date to be 20 or 24 characters, got ");
      paramArrayOfChar.append(paramInt2);
      throw new ParseException(paramArrayOfChar.toString(), 0);
    }
    String str = new String(paramArrayOfChar, paramInt1, paramInt2);
    if (paramInt2 == 20) {
      paramArrayOfChar = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
    } else {
      paramArrayOfChar = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
    }
    paramArrayOfChar.setTimeZone(TimeZone.getTimeZone("UTC"));
    try
    {
      paramArrayOfChar = paramArrayOfChar.parse(str);
      if (paramArrayOfChar != null) {
        return paramArrayOfChar;
      }
      paramArrayOfChar = new StringBuilder();
      paramArrayOfChar.append("invalid date");
      paramArrayOfChar.append(str);
      throw new ParseException(paramArrayOfChar.toString(), 0);
    }
    catch (IllegalArgumentException paramArrayOfChar)
    {
      for (;;) {}
    }
    paramArrayOfChar = new StringBuilder();
    paramArrayOfChar.append("invalid characters in date");
    paramArrayOfChar.append(str);
    throw new ParseException(paramArrayOfChar.toString(), 0);
  }
  
  public static Date parseDropboxDate(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws ParseException
  {
    if (paramInt2 == 31)
    {
      if ((paramArrayOfChar.length >= paramInt1 + 31) && (paramInt1 >= 0))
      {
        int i13 = paramInt1 + 3;
        if (paramArrayOfChar[i13] != ',') {
          paramInt2 = 1;
        } else {
          paramInt2 = 0;
        }
        int i14 = paramInt1 + 4;
        int i1;
        if (paramArrayOfChar[i14] != ' ') {
          i1 = 1;
        } else {
          i1 = 0;
        }
        int i15 = paramInt1 + 7;
        int i2;
        if (paramArrayOfChar[i15] != ' ') {
          i2 = 1;
        } else {
          i2 = 0;
        }
        int i16 = paramInt1 + 11;
        int i3;
        if (paramArrayOfChar[i16] != ' ') {
          i3 = 1;
        } else {
          i3 = 0;
        }
        int i17 = paramInt1 + 16;
        int i4;
        if (paramArrayOfChar[i17] != ' ') {
          i4 = 1;
        } else {
          i4 = 0;
        }
        int i18 = paramInt1 + 19;
        int i5;
        if (paramArrayOfChar[i18] != ':') {
          i5 = 1;
        } else {
          i5 = 0;
        }
        int i19 = paramInt1 + 22;
        int i6;
        if (paramArrayOfChar[i19] != ':') {
          i6 = 1;
        } else {
          i6 = 0;
        }
        int i20 = paramInt1 + 25;
        int i7;
        if (paramArrayOfChar[i20] != ' ') {
          i7 = 1;
        } else {
          i7 = 0;
        }
        int i21 = paramInt1 + 26;
        int i8;
        if (paramArrayOfChar[i21] != '+') {
          i8 = 1;
        } else {
          i8 = 0;
        }
        int i22 = paramInt1 + 27;
        int i9;
        if (paramArrayOfChar[i22] != '0') {
          i9 = 1;
        } else {
          i9 = 0;
        }
        int i23 = paramInt1 + 28;
        int i10;
        if (paramArrayOfChar[i23] != '0') {
          i10 = 1;
        } else {
          i10 = 0;
        }
        int i24 = paramInt1 + 29;
        int i11;
        if (paramArrayOfChar[i24] != '0') {
          i11 = 1;
        } else {
          i11 = 0;
        }
        int i25 = paramInt1 + 30;
        int i12;
        if (paramArrayOfChar[i25] != '0') {
          i12 = 1;
        } else {
          i12 = 0;
        }
        if ((paramInt2 | i1 | i2 | i3 | i4 | i5 | i6 | i7 | i8 | i9 | i10 | i11 | i12) != 0)
        {
          if (paramArrayOfChar[i13] == ',')
          {
            if (paramArrayOfChar[i14] == ' ')
            {
              if (paramArrayOfChar[i15] == ' ')
              {
                if (paramArrayOfChar[i16] == ' ')
                {
                  if (paramArrayOfChar[i17] == ' ')
                  {
                    if (paramArrayOfChar[i18] == ':')
                    {
                      if (paramArrayOfChar[i19] == ':')
                      {
                        if (paramArrayOfChar[i20] == ' ')
                        {
                          if (paramArrayOfChar[i21] == '+')
                          {
                            if (paramArrayOfChar[i22] == '0')
                            {
                              if (paramArrayOfChar[i23] == '0')
                              {
                                if (paramArrayOfChar[i24] == '0')
                                {
                                  if (paramArrayOfChar[i25] != '0') {
                                    throw new ParseException("expecting '0'", 30);
                                  }
                                  throw new AssertionError("unreachable");
                                }
                                throw new ParseException("expecting '0'", 29);
                              }
                              throw new ParseException("expecting '0'", 28);
                            }
                            throw new ParseException("expecting '0'", 27);
                          }
                          throw new ParseException("expecting '+'", 26);
                        }
                        throw new ParseException("expecting ' '", 25);
                      }
                      throw new ParseException("expecting ':'", 22);
                    }
                    throw new ParseException("expecting ':'", 19);
                  }
                  throw new ParseException("expecting ' '", 16);
                }
                throw new ParseException("expecting ' '", 11);
              }
              throw new ParseException("expecting ' '", 7);
            }
            throw new ParseException("expecting ' '", 4);
          }
          throw new ParseException("expecting ','", 3);
        }
        if (isValidDayOfWeek(paramArrayOfChar[paramInt1], paramArrayOfChar[(paramInt1 + 1)], paramArrayOfChar[(paramInt1 + 2)]))
        {
          paramInt2 = getMonthIndex(paramArrayOfChar[(paramInt1 + 8)], paramArrayOfChar[(paramInt1 + 9)], paramArrayOfChar[(paramInt1 + 10)]);
          if (paramInt2 != -1)
          {
            char c1 = paramArrayOfChar[(paramInt1 + 5)];
            int i = paramArrayOfChar[(paramInt1 + 6)];
            if ((a(c1)) && (a(i)))
            {
              char c2 = paramArrayOfChar[(paramInt1 + 12)];
              char c3 = paramArrayOfChar[(paramInt1 + 13)];
              char c4 = paramArrayOfChar[(paramInt1 + 14)];
              int j = paramArrayOfChar[(paramInt1 + 15)];
              if (!(a(c2) ^ true | a(c3) ^ true | a(c4) ^ true | a(j) ^ true))
              {
                char c5 = paramArrayOfChar[(paramInt1 + 17)];
                int k = paramArrayOfChar[(paramInt1 + 18)];
                if (!(a(c5) ^ true | a(k) ^ true))
                {
                  char c6 = paramArrayOfChar[(paramInt1 + 20)];
                  int m = paramArrayOfChar[(paramInt1 + 21)];
                  if (!(a(c6) ^ true | a(m) ^ true))
                  {
                    char c7 = paramArrayOfChar[(paramInt1 + 23)];
                    int n = paramArrayOfChar[(paramInt1 + 24)];
                    if (!(a(c7) ^ true | true ^ a(n)))
                    {
                      paramArrayOfChar = new GregorianCalendar(c2 * 'Ϩ' + c3 * 'd' + c4 * '\n' + j - 53328, paramInt2, c1 * '\n' + i - 528, c5 * '\n' + k - 528, c6 * '\n' + m - 528, c7 * '\n' + n - 528);
                      paramArrayOfChar.setTimeZone(UTC);
                      return paramArrayOfChar.getTime();
                    }
                    throw new ParseException("invalid second", 23);
                  }
                  throw new ParseException("invalid minute", 20);
                }
                throw new ParseException("invalid hour", 17);
              }
              throw new ParseException("invalid year", 12);
            }
            throw new ParseException("invalid day of month", 5);
          }
          throw new ParseException("invalid month", 8);
        }
        throw new ParseException("invalid day of week", paramInt1);
      }
      throw new IllegalArgumentException("range is not within 'b'");
    }
    paramArrayOfChar = new StringBuilder();
    paramArrayOfChar.append("expecting date to be 31 characters, got ");
    paramArrayOfChar.append(paramInt2);
    throw new ParseException(paramArrayOfChar.toString(), 0);
  }
}

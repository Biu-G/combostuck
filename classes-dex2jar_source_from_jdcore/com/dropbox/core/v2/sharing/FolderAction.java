package com.dropbox.core.v2.sharing;

import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

public enum FolderAction
{
  static
  {
    LEAVE_A_COPY = new FolderAction("LEAVE_A_COPY", 10);
    SHARE_LINK = new FolderAction("SHARE_LINK", 11);
    CREATE_LINK = new FolderAction("CREATE_LINK", 12);
    SET_ACCESS_INHERITANCE = new FolderAction("SET_ACCESS_INHERITANCE", 13);
  }
  
  private FolderAction() {}
  
  static class a
    extends UnionSerializer<FolderAction>
  {
    public static final a a = new a();
    
    a() {}
    
    public FolderAction a(JsonParser paramJsonParser)
      throws IOException, JsonParseException
    {
      int i;
      Object localObject;
      if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING)
      {
        i = 1;
        localObject = getStringValue(paramJsonParser);
        paramJsonParser.nextToken();
      }
      else
      {
        i = 0;
        expectStartObject(paramJsonParser);
        localObject = readTag(paramJsonParser);
      }
      if (localObject != null)
      {
        if ("change_options".equals(localObject)) {
          localObject = FolderAction.CHANGE_OPTIONS;
        } else if ("disable_viewer_info".equals(localObject)) {
          localObject = FolderAction.DISABLE_VIEWER_INFO;
        } else if ("edit_contents".equals(localObject)) {
          localObject = FolderAction.EDIT_CONTENTS;
        } else if ("enable_viewer_info".equals(localObject)) {
          localObject = FolderAction.ENABLE_VIEWER_INFO;
        } else if ("invite_editor".equals(localObject)) {
          localObject = FolderAction.INVITE_EDITOR;
        } else if ("invite_viewer".equals(localObject)) {
          localObject = FolderAction.INVITE_VIEWER;
        } else if ("invite_viewer_no_comment".equals(localObject)) {
          localObject = FolderAction.INVITE_VIEWER_NO_COMMENT;
        } else if ("relinquish_membership".equals(localObject)) {
          localObject = FolderAction.RELINQUISH_MEMBERSHIP;
        } else if ("unmount".equals(localObject)) {
          localObject = FolderAction.UNMOUNT;
        } else if ("unshare".equals(localObject)) {
          localObject = FolderAction.UNSHARE;
        } else if ("leave_a_copy".equals(localObject)) {
          localObject = FolderAction.LEAVE_A_COPY;
        } else if ("share_link".equals(localObject)) {
          localObject = FolderAction.SHARE_LINK;
        } else if ("create_link".equals(localObject)) {
          localObject = FolderAction.CREATE_LINK;
        } else if ("set_access_inheritance".equals(localObject)) {
          localObject = FolderAction.SET_ACCESS_INHERITANCE;
        } else {
          localObject = FolderAction.OTHER;
        }
        if (i == 0)
        {
          skipFields(paramJsonParser);
          expectEndObject(paramJsonParser);
        }
        return localObject;
      }
      throw new JsonParseException(paramJsonParser, "Required field missing: .tag");
    }
    
    public void a(FolderAction paramFolderAction, JsonGenerator paramJsonGenerator)
      throws IOException, JsonGenerationException
    {
      switch (FolderAction.1.a[paramFolderAction.ordinal()])
      {
      default: 
        paramJsonGenerator.writeString("other");
        return;
      case 14: 
        paramJsonGenerator.writeString("set_access_inheritance");
        return;
      case 13: 
        paramJsonGenerator.writeString("create_link");
        return;
      case 12: 
        paramJsonGenerator.writeString("share_link");
        return;
      case 11: 
        paramJsonGenerator.writeString("leave_a_copy");
        return;
      case 10: 
        paramJsonGenerator.writeString("unshare");
        return;
      case 9: 
        paramJsonGenerator.writeString("unmount");
        return;
      case 8: 
        paramJsonGenerator.writeString("relinquish_membership");
        return;
      case 7: 
        paramJsonGenerator.writeString("invite_viewer_no_comment");
        return;
      case 6: 
        paramJsonGenerator.writeString("invite_viewer");
        return;
      case 5: 
        paramJsonGenerator.writeString("invite_editor");
        return;
      case 4: 
        paramJsonGenerator.writeString("enable_viewer_info");
        return;
      case 3: 
        paramJsonGenerator.writeString("edit_contents");
        return;
      case 2: 
        paramJsonGenerator.writeString("disable_viewer_info");
        return;
      }
      paramJsonGenerator.writeString("change_options");
    }
  }
}

package com.hackerone.mobile.challenge5;

import android.webkit.JavascriptInterface;
import org.json.JSONArray;
import org.json.JSONException;

public class PetHandler
{
  public PetHandler() {}
  
  public native byte[] censorCats(byte[] paramArrayOfByte);
  
  public native byte[] censorDogs(int paramInt, String paramString);
  
  @JavascriptInterface
  public String censorMyCats(String paramString)
  {
    try
    {
      JSONArray localJSONArray = new org/json/JSONArray;
      localJSONArray.<init>(paramString);
      paramString = new byte[localJSONArray.length()];
      for (int i = 0; i < localJSONArray.length(); i++)
      {
        Integer localInteger = Integer.valueOf(localJSONArray.getInt(i));
        if (localInteger.intValue() > 255) {
          return null;
        }
        paramString[i] = ((byte)(byte)localInteger.intValue());
      }
      try
      {
        paramString = new JSONArray(censorCats(paramString));
        paramString = paramString.toString();
        return paramString;
      }
      catch (JSONException paramString)
      {
        return null;
      }
      return null;
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  @JavascriptInterface
  public String censorMyDogs(int paramInt, String paramString)
  {
    paramString = censorDogs(paramInt, paramString);
    try
    {
      paramString = new JSONArray(paramString);
      return paramString.toString();
    }
    catch (JSONException paramString) {}
    return null;
  }
  
  @JavascriptInterface
  public String getMySomething()
  {
    return String.valueOf(getSomething());
  }
  
  public native long getSomething();
  
  @JavascriptInterface
  public String toString()
  {
    return "Pets :)";
  }
}
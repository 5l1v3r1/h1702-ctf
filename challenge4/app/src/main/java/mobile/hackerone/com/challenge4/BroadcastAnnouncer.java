package mobile.hackerone.com.challenge4;

import android.content.Context;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Serializable;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

public class BroadcastAnnouncer extends StateController implements Serializable {
    private static final long serialVersionUID = 1;
    private String destUrl;
    private String stringRef;
    private String stringVal;

    public BroadcastAnnouncer(String str, String str2, String str3) {
        super(str);
        this.stringRef = str2;
        this.destUrl = str3;
    }

    public void save(Context context, Object obj) {
        new Thread() {
            public void run() {
                HttpURLConnection httpURLConnection = null;
                try {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(BroadcastAnnouncer.this.destUrl);
                    stringBuilder.append("/announce?val=");
                    stringBuilder.append(BroadcastAnnouncer.this.stringVal);
                    httpURLConnection = (HttpURLConnection) new URL(stringBuilder.toString()).openConnection();
                    new BufferedInputStream(httpURLConnection.getInputStream()).read();
                    httpURLConnection.disconnect();
                } catch (MalformedURLException e) {
                    e.printStackTrace();
                } catch (IOException e2) {
                    e2.printStackTrace();
                } catch (Throwable th) {
                    httpURLConnection.disconnect();
                }
            }
        }.start();
    }

    public Object load(Context context) {
        this.stringVal = "";
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(new File(this.stringRef)));
            while (true) {
                String x = bufferedReader.readLine();
                if (x == null) {
                    break;
                }
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(this.stringVal);
                stringBuilder.append(x);
                this.stringVal = stringBuilder.toString();
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        return null;
    }

    public void setStringRef(String str) {
        this.stringRef = str;
    }

    public String getStringRef() {
        return this.stringRef;
    }
}

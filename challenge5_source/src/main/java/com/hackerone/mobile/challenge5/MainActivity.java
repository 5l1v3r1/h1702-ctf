package com.hackerone.mobile.challenge5;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class MainActivity extends AppCompatActivity {
    private WebView mWebView;

    static {
        System.loadLibrary("native-lib");
    }

    public String generateString(char c, int i) {
        String str = "";
        for (int i2 = 0; i2 < i; i2++) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append(c);
            str = stringBuilder.toString();
        }
        return str;
    }

    public String generateString(String str, int i) {
        String str2 = "";
        for (int i2 = 0; i2 < i; i2++) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(str2);
            stringBuilder.append(str);
            str2 = stringBuilder.toString();
        }
        return str2;
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_main);
        bundle = getIntent().getExtras();
        bundle = bundle != null ? bundle.getString("url") : null;
        this.mWebView = (WebView) findViewById(R.id.activity_main_webview);
        this.mWebView.setWebViewClient(new WebViewClient());
        this.mWebView.clearCache(true);
        this.mWebView.getSettings().setJavaScriptEnabled(true);
        if (bundle == null) {
            this.mWebView.loadUrl("http://10.0.2.2:8001");
        } else {
            this.mWebView.loadUrl(bundle);
        }
        this.mWebView.setWebViewClient(new CoolWebViewClient());
        this.mWebView.addJavascriptInterface(new PetHandler(), "PetHandler");
    }

    public void onBackPressed() {
        if (this.mWebView.canGoBack()) {
            this.mWebView.goBack();
        } else {
            super.onBackPressed();
        }
    }
}

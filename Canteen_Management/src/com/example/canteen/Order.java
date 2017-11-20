package com.example.canteen;

import android.os.Bundle;
import android.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;

import com.example.canteenmgmt.R;

public class Order extends Fragment{
public Order(){}
WebView web;
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		
		View v=inflater.inflate(R.layout.order, container,false);
		web=(WebView) v.findViewById(R.id.weborder);
		web.loadUrl("http://canteen.nevontech.com/Menu.aspx");
		web.setWebViewClient(new viewclient());
        web.getSettings().setUseWideViewPort(false);
        web.getSettings().setBuiltInZoomControls(false);
        
		return v;
	}
}

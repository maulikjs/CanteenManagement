package com.example.canteen;

import android.app.Fragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;


import com.example.canteenmgmt.R;

public class Receipt extends Fragment{
public Receipt(){}
	WebView web;
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		
		View v=inflater.inflate(R.layout.receipt, container,false);
		web=(WebView) v.findViewById(R.id.weblocate);
		
		web.loadUrl("http://canteen.nevontech.com/UserBill.aspx");
		web.setWebViewClient(new viewclient());
        web.getSettings().setUseWideViewPort(false);
        web.getSettings().setBuiltInZoomControls(false);
		return v;
	}
}

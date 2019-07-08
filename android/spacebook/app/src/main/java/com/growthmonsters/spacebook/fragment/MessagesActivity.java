/**
 *  Created by [Author].
 */

package com.growthmonsters.spacebook.fragment;

import android.view.LayoutInflater;
import android.widget.ImageView;
import android.support.v4.app.Fragment;
import java.util.*;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.ViewGroup;
import com.growthmonsters.spacebook.R;
import android.view.View;
import com.growthmonsters.spacebook.activity.*;
import android.support.constraint.ConstraintLayout;
import android.widget.TextView;


public class MessagesActivity extends Fragment {
	
	public static MessagesActivity newInstance() {
	
		MessagesActivity fragment = new MessagesActivity();
		Bundle arguments = new Bundle();
		fragment.setArguments(arguments);
		return fragment;
	}
	
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
	
		return inflater.inflate(R.layout.messages_activity, container, false);
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
	
		super.onViewCreated(view, savedInstanceState);
		init();
	}
	
	public void init() {
	
	}
}

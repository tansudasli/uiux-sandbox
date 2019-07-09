/**
 *  Created by [Author].
 */

package com.growthmonsters.spacebook.fragment;

import android.os.Bundle;
import android.support.constraint.ConstraintLayout;
import android.support.v7.app.AppCompatActivity;
import android.support.v4.app.Fragment;
import android.view.View;
import android.view.ViewGroup;
import com.growthmonsters.spacebook.activity.*;
import com.growthmonsters.spacebook.adapter.TimelineActivityTimelineRecyclerViewAdapter;
import android.view.LayoutInflater;
import java.util.*;
import com.growthmonsters.spacebook.R;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;


public class TimelineActivity extends Fragment {
	
	public static TimelineActivity newInstance() {
	
		TimelineActivity fragment = new TimelineActivity();
		Bundle arguments = new Bundle();
		fragment.setArguments(arguments);
		return fragment;
	}
	
	private RecyclerView timelineRecyclerView;
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
	
		return inflater.inflate(R.layout.timeline_activity, container, false);
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
	
		super.onViewCreated(view, savedInstanceState);
		init();
	}
	
	public void init() {
	
		// Configure Timeline component
		timelineRecyclerView = this.getView().findViewById(R.id.timeline_recycler_view);
		timelineRecyclerView.setLayoutManager(new LinearLayoutManager(this.getContext(), LinearLayoutManager.VERTICAL, false));
		timelineRecyclerView.setAdapter(new TimelineActivityTimelineRecyclerViewAdapter());
	}
}

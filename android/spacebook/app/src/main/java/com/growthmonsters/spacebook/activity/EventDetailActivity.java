/**
 *  Created by [Author].
 */

package com.growthmonsters.spacebook.activity;

import android.support.v7.app.AppCompatActivity;
import com.growthmonsters.spacebook.R;
import android.content.Context;
import android.view.MenuItem;
import android.view.Menu;
import android.view.View;
import android.support.constraint.ConstraintLayout;
import android.widget.ImageView;
import android.support.v7.widget.Toolbar;
import android.os.Bundle;
import android.content.Intent;
import android.view.MenuInflater;
import android.widget.TextView;


public class EventDetailActivity extends AppCompatActivity {
	
	public static Intent newIntent(Context context) {
	
		// Fill the created intent with the data you want to be passed to this Activity when it's opened.
		return new Intent(context, EventDetailActivity.class);
	}
	
	private Toolbar toolbar;
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
	
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.event_detail_activity);
		this.init();
	}
	
	@Override
	public boolean onOptionsItemSelected(MenuItem menuItem) {
	
		switch (menuItem.getItemId()) {
			case android.R.id.home: 
				this.onGroupPressed();
				return true;
			default:
				return super.onOptionsItemSelected(menuItem);
		}
	}
	
	private void init() {
	
		// Configure Navigation Bar #1 component
		toolbar = this.findViewById(R.id.toolbar);
		
		this.setupToolbar();
	}
	
	public void setupToolbar() {
	
		setSupportActionBar(toolbar);
		getSupportActionBar().setDisplayHomeAsUpEnabled(true);
		
		// Additional Toolbar setup code can go here.
	}
	
	public void onGroupPressed() {
	
		this.finish();
	}
}

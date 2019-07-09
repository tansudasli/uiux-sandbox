/**
 *  Created by [Author].
 */

package com.growthmonsters.spacebook.activity;

import android.view.MenuItem;
import android.graphics.PointF;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuInflater;
import android.support.v7.widget.Toolbar;
import android.content.Context;
import android.os.Bundle;
import android.support.constraint.ConstraintLayout;
import android.graphics.Color;
import io.supernova.uitoolkit.drawable.LinearGradientDrawable;
import android.widget.ImageView;
import android.content.Intent;
import com.growthmonsters.spacebook.R;
import android.view.View;
import android.view.Menu;
import android.widget.TextView;


public class ProfilePhotosActivity extends AppCompatActivity {
	
	public static Intent newIntent(Context context) {
	
		// Fill the created intent with the data you want to be passed to this Activity when it's opened.
		return new Intent(context, ProfilePhotosActivity.class);
	}
	
	private Toolbar toolbar;
	private TextView todayTextView;
	private TextView tomorrowTextView;
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
	
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.profile_photos_activity);
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
	
		// Configure Navigation Bar #2 component
		toolbar = this.findViewById(R.id.toolbar);
		toolbar.setBackground(new LinearGradientDrawable.Builder(this, new PointF(-0.01f, 0.51f), new PointF(1.01f, 0.49f)).addStop(0f, Color.argb(255, 247, 132, 98)).addStop(1f, Color.argb(255, 138, 27, 139)).build());
		
		// Configure Today component
		todayTextView = this.findViewById(R.id.today_text_view);
		
		// Configure Tomorrow component
		tomorrowTextView = this.findViewById(R.id.tomorrow_text_view);
		
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

/**
 *  Created by [Author].
 */

package com.growthmonsters.spacebook.activity;

import android.support.v7.app.AppCompatActivity;
import android.widget.TextView;
import com.growthmonsters.spacebook.R;
import android.content.Context;
import android.view.MenuItem;
import android.view.Menu;
import android.view.View;
import android.widget.Switch;
import android.support.constraint.ConstraintLayout;
import android.widget.ImageView;
import android.graphics.PointF;
import android.support.v7.widget.Toolbar;
import io.supernova.uitoolkit.drawable.LinearGradientDrawable;
import android.os.Bundle;
import android.content.Intent;
import android.view.MenuInflater;
import android.graphics.Color;


public class ProfileSettingsActivity extends AppCompatActivity {
	
	public static Intent newIntent(Context context) {
	
		// Fill the created intent with the data you want to be passed to this Activity when it's opened.
		return new Intent(context, ProfileSettingsActivity.class);
	}
	
	private Toolbar toolbar;
	private TextView detailsTextView;
	private TextView informationTextView;
	private Switch slideSwitch;
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
	
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.profile_settings_activity);
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
		
		// Configure Details component
		detailsTextView = this.findViewById(R.id.details_text_view);
		
		// Configure Information component
		informationTextView = this.findViewById(R.id.information_text_view);
		
		// Configure Slide component
		slideSwitch = this.findViewById(R.id.slide_switch);
		slideSwitch.setOnClickListener((view) -> {
	this.onSlideValueChanged();
});
		
		this.setupToolbar();
	}
	
	public void setupToolbar() {
	
		setSupportActionBar(toolbar);
		getSupportActionBar().setDisplayHomeAsUpEnabled(true);
		
		// Additional Toolbar setup code can go here.
	}
	
	public void onSlideValueChanged() {
	
	}
	
	public void onGroupPressed() {
	
		this.finish();
	}
}

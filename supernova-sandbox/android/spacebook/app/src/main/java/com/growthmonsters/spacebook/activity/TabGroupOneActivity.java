/**
 *  Created by [Author].
 */

package com.growthmonsters.spacebook.activity;

import com.growthmonsters.spacebook.fragment.MessagesActivity;
import com.growthmonsters.spacebook.adapter.TabGroupOneActivityPagerAdapter;
import android.support.v4.view.ViewPager;
import android.content.Context;
import android.os.Bundle;
import java.util.Arrays;
import android.view.MenuItem;
import android.support.v4.app.Fragment;
import android.support.v7.app.AppCompatActivity;
import java.util.List;
import com.growthmonsters.spacebook.fragment.ProfileActivity;
import com.growthmonsters.spacebook.R;
import com.growthmonsters.spacebook.fragment.TimelineActivity;
import android.content.Intent;
import android.support.design.widget.BottomNavigationView;


public class TabGroupOneActivity extends AppCompatActivity {
	
	public static Intent newIntent(Context context) {
	
		// Fill the created intent with the data you want to be passed to this Activity when it's opened.
		return new Intent(context, TabGroupOneActivity.class);
	}
	
	private BottomNavigationView bottomNavigationBar;
	private ViewPager viewPager;
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
	
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.tab_group_one_activity);
		init();
	}
	
	public void init() {
	
		// Configure Tab Bar #1 component
		bottomNavigationBar = this.findViewById(R.id.bottom_navigation_bar);
		
		// Configure View Pager
		viewPager = findViewById(R.id.view_pager);
		
		// Configure View Pager Adapter
		List<Fragment> fragments = Arrays.asList(TimelineActivity.newInstance(), ProfileActivity.newInstance(), MessagesActivity.newInstance());
		viewPager.setAdapter(new TabGroupOneActivityPagerAdapter(getSupportFragmentManager(), fragments));
		bottomNavigationBar.setOnNavigationItemSelectedListener((menuItem) -> {
	onTabSelected(menuItem);
	return true;
});
	}
	
	public void onTabSelected(MenuItem menuItem) {
	
		switch (menuItem.getItemId()) {
			case R.id.timeline_activity_menu_item: 
				viewPager.setCurrentItem(0, true);
				break;
			case R.id.profile_activity_menu_item: 
				viewPager.setCurrentItem(1, true);
				break;
			case R.id.messages_activity_menu_item: 
				viewPager.setCurrentItem(2, true);
				break;
		}
	}
}

/**
 *  Created by [Author].
 */

package com.growthmonsters.spacebook.fragment;

import android.os.Bundle;
import android.support.constraint.ConstraintLayout;
import android.support.v7.app.AppCompatActivity;
import android.support.v4.app.Fragment;
import android.view.View;
import android.widget.TextView;
import android.view.ViewGroup;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.GridLayoutManager;
import android.view.MenuItem;
import com.growthmonsters.spacebook.activity.*;
import android.widget.Button;
import android.view.LayoutInflater;
import java.util.*;
import android.view.Menu;
import com.growthmonsters.spacebook.R;
import android.view.MenuInflater;
import com.growthmonsters.spacebook.adapter.ProfileActivityGalleryRecyclerViewAdapter;
import android.support.v7.widget.RecyclerView;
import io.supernova.uitoolkit.recycler.GridSpacingItemDecoration;
import android.support.v7.widget.LinearLayoutManager;


public class ProfileActivity extends Fragment {
	
	public static ProfileActivity newInstance() {
	
		ProfileActivity fragment = new ProfileActivity();
		Bundle arguments = new Bundle();
		fragment.setArguments(arguments);
		return fragment;
	}
	
	private Button avatarTempButton;
	private TextView drWhatTextView;
	private TextView travelerDreamerTextView;
	private RecyclerView galleryRecyclerView;
	protected ProfileActivity() {
		super();
		setHasOptionsMenu(true);
	}
	
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
	
		return inflater.inflate(R.layout.profile_activity, container, false);
	}
	
	@Override
	public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
	
		inflater.inflate(R.menu.profile_activity_menu, menu);
	}
	
	@Override
	public boolean onOptionsItemSelected(MenuItem menuItem) {
	
		switch (menuItem.getItemId()) {
			case R.id.settings_menu_item: 
				this.onLeftItemPressed();
				return true;
			default:
				return super.onOptionsItemSelected(menuItem);
		}
	}
	
	@Override
	public void onViewCreated(View view, Bundle savedInstanceState) {
	
		super.onViewCreated(view, savedInstanceState);
		init();
	}
	
	public void onAvatarTempPressed() {
	
		this.startProfilePhotosActivity();
	}
	
	public void onLeftItemPressed() {
	
		this.startProfileSettingsActivity();
	}
	
	public void init() {
	
		// Configure avatar-temp component
		avatarTempButton = this.getView().findViewById(R.id.avatar_temp_button);
		avatarTempButton.setOnClickListener((view) -> {
	this.onAvatarTempPressed();
});
		
		// Configure Dr. What component
		drWhatTextView = this.getView().findViewById(R.id.dr_what_text_view);
		
		// Configure Traveler, dreamer component
		travelerDreamerTextView = this.getView().findViewById(R.id.traveler_dreamer_text_view);
		
		// Configure Gallery component
		galleryRecyclerView = this.getView().findViewById(R.id.gallery_recycler_view);
		galleryRecyclerView.setLayoutManager(new GridLayoutManager(this.getContext(), 1, LinearLayoutManager.HORIZONTAL, false));
		galleryRecyclerView.setAdapter(new ProfileActivityGalleryRecyclerViewAdapter());
		galleryRecyclerView.addItemDecoration(new GridSpacingItemDecoration(this.getContext().getResources().getDimension(R.dimen.profile_activity_gallery_recycler_view_spacing)));
	}
	
	private void startProfileSettingsActivity() {
	
		this.getActivity().startActivity(ProfileSettingsActivity.newIntent(this.getContext()));
	}
	
	private void startProfilePhotosActivity() {
	
		this.getActivity().startActivity(ProfilePhotosActivity.newIntent(this.getContext()));
	}
}

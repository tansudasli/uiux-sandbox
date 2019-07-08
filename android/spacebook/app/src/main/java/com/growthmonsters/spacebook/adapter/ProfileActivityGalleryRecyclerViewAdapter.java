/**
 *  Created by [Author].
 */

package com.growthmonsters.spacebook.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import java.util.*;
import android.support.v7.widget.RecyclerView;
import com.growthmonsters.spacebook.R;
import android.view.ViewGroup;


public class ProfileActivityGalleryRecyclerViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
	public static final int CELL_VIEW_HOLDER_VIEW_TYPE = 1;
	public static final int CELL_TWO_VIEW_HOLDER_VIEW_TYPE = 2;
	public static final int CELL_THREE_VIEW_HOLDER_VIEW_TYPE = 3;
	
	public static final List<Integer> MOCK_DATA = Arrays.asList(CELL_VIEW_HOLDER_VIEW_TYPE, CELL_TWO_VIEW_HOLDER_VIEW_TYPE, CELL_THREE_VIEW_HOLDER_VIEW_TYPE, CELL_VIEW_HOLDER_VIEW_TYPE, CELL_TWO_VIEW_HOLDER_VIEW_TYPE, CELL_THREE_VIEW_HOLDER_VIEW_TYPE, CELL_VIEW_HOLDER_VIEW_TYPE, CELL_TWO_VIEW_HOLDER_VIEW_TYPE, CELL_THREE_VIEW_HOLDER_VIEW_TYPE);
	
	@Override
	public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
	
		switch (viewType) {
			case CELL_VIEW_HOLDER_VIEW_TYPE: 
				return new CellViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.cell_view_holder, parent, false));
			case CELL_TWO_VIEW_HOLDER_VIEW_TYPE: 
				return new CellTwoViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.cell_two_view_holder, parent, false));
			case CELL_THREE_VIEW_HOLDER_VIEW_TYPE: 
				return new CellThreeViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.cell_three_view_holder, parent, false));
		}
		
		throw new RuntimeException("Unsupported view type");
	}
	
	@Override
	public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int position) {
	
		// Here you can bind RecyclerView item data.
	}
	
	@Override
	public int getItemViewType(int position) {
	
		return MOCK_DATA.get(position);
	}
	
	@Override
	public int getItemCount() {
	
		return MOCK_DATA.size();
	}
	
	
	public static class CellViewHolder extends RecyclerView.ViewHolder {
		public CellViewHolder(View itemView) {
			super(itemView);
			init();
		}
		
		public void init() {
		
		}
	}
	
	
	public static class CellTwoViewHolder extends RecyclerView.ViewHolder {
		public CellTwoViewHolder(View itemView) {
			super(itemView);
			init();
		}
		
		public void init() {
		
		}
	}
	
	
	public static class CellThreeViewHolder extends RecyclerView.ViewHolder {
		public CellThreeViewHolder(View itemView) {
			super(itemView);
			init();
		}
		
		public void init() {
		
		}
	}
}

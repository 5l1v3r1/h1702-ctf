package com.andrognito.pinlockview;

import android.content.Context;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;

public class PinLockAdapter extends Adapter<ViewHolder> {
    private static final int VIEW_TYPE_DELETE = 1;
    private static final int VIEW_TYPE_NUMBER = 0;
    private Context mContext;
    private CustomizationOptionsBundle mCustomizationOptionsBundle;
    private int[] mKeyValues = getAdjustKeyValues(new int[]{1, 2, 3, 4, 5, 6, 7, 8, 9, 0});
    private OnDeleteClickListener mOnDeleteClickListener;
    private OnNumberClickListener mOnNumberClickListener;
    private int mPinLength;

    public interface OnDeleteClickListener {
        void onDeleteClicked();

        void onDeleteLongClicked();
    }

    public interface OnNumberClickListener {
        void onNumberClicked(int i);
    }

    public class DeleteViewHolder extends ViewHolder {
        ImageView mButtonImage;
        LinearLayout mDeleteButton;

        public DeleteViewHolder(View view) {
            super(view);
            this.mDeleteButton = (LinearLayout) view.findViewById(R.id.button);
            this.mButtonImage = (ImageView) view.findViewById(R.id.buttonImage);
            if (PinLockAdapter.this.mCustomizationOptionsBundle.isShowDeleteButton() != null && PinLockAdapter.this.mPinLength > null) {
                this.mDeleteButton.setOnClickListener(new OnClickListener(PinLockAdapter.this) {
                    public void onClick(View view) {
                        if (PinLockAdapter.this.mOnDeleteClickListener != null) {
                            PinLockAdapter.this.mOnDeleteClickListener.onDeleteClicked();
                        }
                    }
                });
                this.mDeleteButton.setOnLongClickListener(new OnLongClickListener(PinLockAdapter.this) {
                    public boolean onLongClick(View view) {
                        if (PinLockAdapter.this.mOnDeleteClickListener != null) {
                            PinLockAdapter.this.mOnDeleteClickListener.onDeleteLongClicked();
                        }
                        return true;
                    }
                });
                this.mDeleteButton.setOnTouchListener(new OnTouchListener(PinLockAdapter.this) {
                    private Rect rect;

                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        if (motionEvent.getAction() == 0) {
                            DeleteViewHolder.this.mButtonImage.setColorFilter(PinLockAdapter.this.mCustomizationOptionsBundle.getDeleteButtonPressesColor());
                            this.rect = new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
                        }
                        if (motionEvent.getAction() == 1) {
                            DeleteViewHolder.this.mButtonImage.clearColorFilter();
                        }
                        if (motionEvent.getAction() == 2 && this.rect.contains(view.getLeft() + ((int) motionEvent.getX()), view.getTop() + ((int) motionEvent.getY())) == null) {
                            DeleteViewHolder.this.mButtonImage.clearColorFilter();
                        }
                        return false;
                    }
                });
            }
        }
    }

    public class NumberViewHolder extends ViewHolder {
        Button mNumberButton;

        public NumberViewHolder(View view) {
            super(view);
            this.mNumberButton = (Button) view.findViewById(R.id.button);
            this.mNumberButton.setOnClickListener(new OnClickListener(PinLockAdapter.this) {
                public void onClick(View view) {
                    if (PinLockAdapter.this.mOnNumberClickListener != null) {
                        PinLockAdapter.this.mOnNumberClickListener.onNumberClicked(((Integer) view.getTag()).intValue());
                    }
                }
            });
        }
    }

    public int getItemCount() {
        return 12;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public PinLockAdapter(android.content.Context r1) {
        /*
        r0 = this;
        r0.<init>();
        r0.mContext = r1;
        r1 = 10;
        r1 = new int[r1];
        r1 = {1, 2, 3, 4, 5, 6, 7, 8, 9, 0};
        r1 = r0.getAdjustKeyValues(r1);
        r0.mKeyValues = r1;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.andrognito.pinlockview.PinLockAdapter.<init>(android.content.Context):void");
    }

    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        if (i == 0) {
            return new NumberViewHolder(from.inflate(R.layout.layout_number_item, viewGroup, false));
        }
        return new DeleteViewHolder(from.inflate(R.layout.layout_delete_item, viewGroup, false));
    }

    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        if (viewHolder.getItemViewType() == 0) {
            configureNumberButtonHolder((NumberViewHolder) viewHolder, i);
        } else if (viewHolder.getItemViewType() == 1) {
            configureDeleteButtonHolder((DeleteViewHolder) viewHolder);
        }
    }

    private void configureNumberButtonHolder(NumberViewHolder numberViewHolder, int i) {
        if (numberViewHolder != null) {
            if (i == 9) {
                numberViewHolder.mNumberButton.setVisibility(8);
            } else {
                numberViewHolder.mNumberButton.setText(String.valueOf(this.mKeyValues[i]));
                numberViewHolder.mNumberButton.setVisibility(0);
                numberViewHolder.mNumberButton.setTag(Integer.valueOf(this.mKeyValues[i]));
            }
            if (this.mCustomizationOptionsBundle != 0) {
                numberViewHolder.mNumberButton.setTextColor(this.mCustomizationOptionsBundle.getTextColor());
                if (this.mCustomizationOptionsBundle.getButtonBackgroundDrawable() != 0) {
                    if (VERSION.SDK_INT < 16) {
                        numberViewHolder.mNumberButton.setBackgroundDrawable(this.mCustomizationOptionsBundle.getButtonBackgroundDrawable());
                    } else {
                        numberViewHolder.mNumberButton.setBackground(this.mCustomizationOptionsBundle.getButtonBackgroundDrawable());
                    }
                }
                numberViewHolder.mNumberButton.setTextSize(0, (float) this.mCustomizationOptionsBundle.getTextSize());
                numberViewHolder.mNumberButton.setLayoutParams(new LayoutParams(this.mCustomizationOptionsBundle.getButtonSize(), this.mCustomizationOptionsBundle.getButtonSize()));
            }
        }
    }

    private void configureDeleteButtonHolder(DeleteViewHolder deleteViewHolder) {
        if (deleteViewHolder == null) {
            return;
        }
        if (!this.mCustomizationOptionsBundle.isShowDeleteButton() || this.mPinLength <= 0) {
            deleteViewHolder.mButtonImage.setVisibility(8);
            return;
        }
        deleteViewHolder.mButtonImage.setVisibility(0);
        if (this.mCustomizationOptionsBundle.getDeleteButtonDrawable() != null) {
            deleteViewHolder.mButtonImage.setImageDrawable(this.mCustomizationOptionsBundle.getDeleteButtonDrawable());
        }
        deleteViewHolder.mButtonImage.setColorFilter(this.mCustomizationOptionsBundle.getTextColor(), Mode.SRC_ATOP);
        deleteViewHolder.mButtonImage.setLayoutParams(new LayoutParams(this.mCustomizationOptionsBundle.getDeleteButtonSize(), this.mCustomizationOptionsBundle.getDeleteButtonSize()));
    }

    public int getItemViewType(int i) {
        return i == getItemCount() - 1 ? 1 : 0;
    }

    public int getPinLength() {
        return this.mPinLength;
    }

    public void setPinLength(int i) {
        this.mPinLength = i;
    }

    public int[] getKeyValues() {
        return this.mKeyValues;
    }

    public void setKeyValues(int[] iArr) {
        this.mKeyValues = getAdjustKeyValues(iArr);
        notifyDataSetChanged();
    }

    private int[] getAdjustKeyValues(int[] iArr) {
        int[] iArr2 = new int[(iArr.length + 1)];
        for (int i = 0; i < iArr.length; i++) {
            if (i < 9) {
                iArr2[i] = iArr[i];
            } else {
                iArr2[i] = -1;
                iArr2[i + 1] = iArr[i];
            }
        }
        return iArr2;
    }

    public OnNumberClickListener getOnItemClickListener() {
        return this.mOnNumberClickListener;
    }

    public void setOnItemClickListener(OnNumberClickListener onNumberClickListener) {
        this.mOnNumberClickListener = onNumberClickListener;
    }

    public OnDeleteClickListener getOnDeleteClickListener() {
        return this.mOnDeleteClickListener;
    }

    public void setOnDeleteClickListener(OnDeleteClickListener onDeleteClickListener) {
        this.mOnDeleteClickListener = onDeleteClickListener;
    }

    public CustomizationOptionsBundle getCustomizationOptions() {
        return this.mCustomizationOptionsBundle;
    }

    public void setCustomizationOptions(CustomizationOptionsBundle customizationOptionsBundle) {
        this.mCustomizationOptionsBundle = customizationOptionsBundle;
    }
}

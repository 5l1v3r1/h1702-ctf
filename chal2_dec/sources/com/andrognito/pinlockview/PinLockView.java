package com.andrognito.pinlockview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import com.andrognito.pinlockview.PinLockAdapter.OnDeleteClickListener;
import com.andrognito.pinlockview.PinLockAdapter.OnNumberClickListener;

public class PinLockView extends RecyclerView {
    private static final int[] DEFAULT_KEY_SET = new int[]{1, 2, 3, 4, 5, 6, 7, 8, 9, 0};
    private static final int DEFAULT_PIN_LENGTH = 4;
    private PinLockAdapter mAdapter;
    private Drawable mButtonBackgroundDrawable;
    private int mButtonSize;
    private int[] mCustomKeySet;
    private CustomizationOptionsBundle mCustomizationOptionsBundle;
    private Drawable mDeleteButtonDrawable;
    private int mDeleteButtonPressedColor;
    private int mDeleteButtonSize;
    private int mHorizontalSpacing;
    private IndicatorDots mIndicatorDots;
    private OnDeleteClickListener mOnDeleteClickListener = new OnDeleteClickListener() {
        public void onDeleteClicked() {
            if (PinLockView.this.mPin.length() > 0) {
                PinLockView.this.mPin = PinLockView.this.mPin.substring(0, PinLockView.this.mPin.length() - 1);
                if (PinLockView.this.isIndicatorDotsAttached()) {
                    PinLockView.this.mIndicatorDots.updateDot(PinLockView.this.mPin.length());
                }
                if (PinLockView.this.mPin.length() == 0) {
                    PinLockView.this.mAdapter.setPinLength(PinLockView.this.mPin.length());
                    PinLockView.this.mAdapter.notifyItemChanged(PinLockView.this.mAdapter.getItemCount() - 1);
                }
                if (PinLockView.this.mPinLockListener == null) {
                    return;
                }
                if (PinLockView.this.mPin.length() == 0) {
                    PinLockView.this.mPinLockListener.onEmpty();
                    PinLockView.this.clearInternalPin();
                    return;
                }
                PinLockView.this.mPinLockListener.onPinChange(PinLockView.this.mPin.length(), PinLockView.this.mPin);
            } else if (PinLockView.this.mPinLockListener != null) {
                PinLockView.this.mPinLockListener.onEmpty();
            }
        }

        public void onDeleteLongClicked() {
            PinLockView.this.resetPinLockView();
            if (PinLockView.this.mPinLockListener != null) {
                PinLockView.this.mPinLockListener.onEmpty();
            }
        }
    };
    private OnNumberClickListener mOnNumberClickListener = new OnNumberClickListener() {
        public void onNumberClicked(int i) {
            if (PinLockView.this.mPin.length() < PinLockView.this.getPinLength()) {
                PinLockView.this.mPin = PinLockView.this.mPin.concat(String.valueOf(i));
                if (PinLockView.this.isIndicatorDotsAttached() != 0) {
                    PinLockView.this.mIndicatorDots.updateDot(PinLockView.this.mPin.length());
                }
                if (PinLockView.this.mPin.length() == 1) {
                    PinLockView.this.mAdapter.setPinLength(PinLockView.this.mPin.length());
                    PinLockView.this.mAdapter.notifyItemChanged(PinLockView.this.mAdapter.getItemCount() - 1);
                }
                if (PinLockView.this.mPinLockListener == 0) {
                    return;
                }
                if (PinLockView.this.mPin.length() == PinLockView.this.mPinLength) {
                    PinLockView.this.mPinLockListener.onComplete(PinLockView.this.mPin);
                } else {
                    PinLockView.this.mPinLockListener.onPinChange(PinLockView.this.mPin.length(), PinLockView.this.mPin);
                }
            } else if (!PinLockView.this.isShowDeleteButton()) {
                PinLockView.this.resetPinLockView();
                PinLockView.this.mPin = PinLockView.this.mPin.concat(String.valueOf(i));
                if (PinLockView.this.isIndicatorDotsAttached() != 0) {
                    PinLockView.this.mIndicatorDots.updateDot(PinLockView.this.mPin.length());
                }
                if (PinLockView.this.mPinLockListener != 0) {
                    PinLockView.this.mPinLockListener.onPinChange(PinLockView.this.mPin.length(), PinLockView.this.mPin);
                }
            } else if (PinLockView.this.mPinLockListener != 0) {
                PinLockView.this.mPinLockListener.onComplete(PinLockView.this.mPin);
            }
        }
    };
    private String mPin = "";
    private int mPinLength;
    private PinLockListener mPinLockListener;
    private boolean mShowDeleteButton;
    private int mTextColor;
    private int mTextSize;
    private int mVerticalSpacing;

    public PinLockView(Context context) {
        super(context);
        init(null, 0);
    }

    public PinLockView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init(attributeSet, null);
    }

    public PinLockView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(attributeSet, i);
    }

    private void init(AttributeSet attributeSet, int i) {
        attributeSet = getContext().obtainStyledAttributes(attributeSet, R.styleable.PinLockView);
        try {
            this.mPinLength = attributeSet.getInt(R.styleable.PinLockView_pinLength, 4);
            this.mHorizontalSpacing = (int) attributeSet.getDimension(R.styleable.PinLockView_keypadHorizontalSpacing, ResourceUtils.getDimensionInPx(getContext(), R.dimen.default_horizontal_spacing));
            this.mVerticalSpacing = (int) attributeSet.getDimension(R.styleable.PinLockView_keypadVerticalSpacing, ResourceUtils.getDimensionInPx(getContext(), R.dimen.default_vertical_spacing));
            this.mTextColor = attributeSet.getColor(R.styleable.PinLockView_keypadTextColor, ResourceUtils.getColor(getContext(), R.color.white));
            this.mTextSize = (int) attributeSet.getDimension(R.styleable.PinLockView_keypadTextSize, ResourceUtils.getDimensionInPx(getContext(), R.dimen.default_text_size));
            this.mButtonSize = (int) attributeSet.getDimension(R.styleable.PinLockView_keypadButtonSize, ResourceUtils.getDimensionInPx(getContext(), R.dimen.default_button_size));
            this.mDeleteButtonSize = (int) attributeSet.getDimension(R.styleable.PinLockView_keypadDeleteButtonSize, ResourceUtils.getDimensionInPx(getContext(), R.dimen.default_delete_button_size));
            this.mButtonBackgroundDrawable = attributeSet.getDrawable(R.styleable.PinLockView_keypadButtonBackgroundDrawable);
            this.mDeleteButtonDrawable = attributeSet.getDrawable(R.styleable.PinLockView_keypadDeleteButtonDrawable);
            this.mShowDeleteButton = attributeSet.getBoolean(R.styleable.PinLockView_keypadShowDeleteButton, true);
            this.mDeleteButtonPressedColor = attributeSet.getColor(R.styleable.PinLockView_keypadDeleteButtonPressedColor, ResourceUtils.getColor(getContext(), R.color.greyish));
            this.mCustomizationOptionsBundle = new CustomizationOptionsBundle();
            this.mCustomizationOptionsBundle.setTextColor(this.mTextColor);
            this.mCustomizationOptionsBundle.setTextSize(this.mTextSize);
            this.mCustomizationOptionsBundle.setButtonSize(this.mButtonSize);
            this.mCustomizationOptionsBundle.setButtonBackgroundDrawable(this.mButtonBackgroundDrawable);
            this.mCustomizationOptionsBundle.setDeleteButtonDrawable(this.mDeleteButtonDrawable);
            this.mCustomizationOptionsBundle.setDeleteButtonSize(this.mDeleteButtonSize);
            this.mCustomizationOptionsBundle.setShowDeleteButton(this.mShowDeleteButton);
            this.mCustomizationOptionsBundle.setDeleteButtonPressesColor(this.mDeleteButtonPressedColor);
            initView();
        } finally {
            attributeSet.recycle();
        }
    }

    private void initView() {
        setLayoutManager(new LTRGridLayoutManager(getContext(), 3));
        this.mAdapter = new PinLockAdapter(getContext());
        this.mAdapter.setOnItemClickListener(this.mOnNumberClickListener);
        this.mAdapter.setOnDeleteClickListener(this.mOnDeleteClickListener);
        this.mAdapter.setCustomizationOptions(this.mCustomizationOptionsBundle);
        setAdapter(this.mAdapter);
        addItemDecoration(new ItemSpaceDecoration(this.mHorizontalSpacing, this.mVerticalSpacing, 3, false));
        setOverScrollMode(2);
    }

    public void setPinLockListener(PinLockListener pinLockListener) {
        this.mPinLockListener = pinLockListener;
    }

    public int getPinLength() {
        return this.mPinLength;
    }

    public void setPinLength(int i) {
        this.mPinLength = i;
        if (isIndicatorDotsAttached()) {
            this.mIndicatorDots.setPinLength(i);
        }
    }

    public int getTextColor() {
        return this.mTextColor;
    }

    public void setTextColor(int i) {
        this.mTextColor = i;
        this.mCustomizationOptionsBundle.setTextColor(i);
        this.mAdapter.notifyDataSetChanged();
    }

    public int getTextSize() {
        return this.mTextSize;
    }

    public void setTextSize(int i) {
        this.mTextSize = i;
        this.mCustomizationOptionsBundle.setTextSize(i);
        this.mAdapter.notifyDataSetChanged();
    }

    public int getButtonSize() {
        return this.mButtonSize;
    }

    public void setButtonSize(int i) {
        this.mButtonSize = i;
        this.mCustomizationOptionsBundle.setButtonSize(i);
        this.mAdapter.notifyDataSetChanged();
    }

    public Drawable getButtonBackgroundDrawable() {
        return this.mButtonBackgroundDrawable;
    }

    public void setButtonBackgroundDrawable(Drawable drawable) {
        this.mButtonBackgroundDrawable = drawable;
        this.mCustomizationOptionsBundle.setButtonBackgroundDrawable(drawable);
        this.mAdapter.notifyDataSetChanged();
    }

    public Drawable getDeleteButtonDrawable() {
        return this.mDeleteButtonDrawable;
    }

    public void setDeleteButtonDrawable(Drawable drawable) {
        this.mDeleteButtonDrawable = drawable;
        this.mCustomizationOptionsBundle.setDeleteButtonDrawable(drawable);
        this.mAdapter.notifyDataSetChanged();
    }

    public int getDeleteButtonSize() {
        return this.mDeleteButtonSize;
    }

    public void setDeleteButtonSize(int i) {
        this.mDeleteButtonSize = i;
        this.mCustomizationOptionsBundle.setDeleteButtonSize(i);
        this.mAdapter.notifyDataSetChanged();
    }

    public boolean isShowDeleteButton() {
        return this.mShowDeleteButton;
    }

    public void setShowDeleteButton(boolean z) {
        this.mShowDeleteButton = z;
        this.mCustomizationOptionsBundle.setShowDeleteButton(z);
        this.mAdapter.notifyDataSetChanged();
    }

    public int getDeleteButtonPressedColor() {
        return this.mDeleteButtonPressedColor;
    }

    public void setDeleteButtonPressedColor(int i) {
        this.mDeleteButtonPressedColor = i;
        this.mCustomizationOptionsBundle.setDeleteButtonPressesColor(i);
        this.mAdapter.notifyDataSetChanged();
    }

    public int[] getCustomKeySet() {
        return this.mCustomKeySet;
    }

    public void setCustomKeySet(int[] iArr) {
        this.mCustomKeySet = iArr;
        if (this.mAdapter != null) {
            this.mAdapter.setKeyValues(iArr);
        }
    }

    public void enableLayoutShuffling() {
        this.mCustomKeySet = ShuffleArrayUtils.shuffle(DEFAULT_KEY_SET);
        if (this.mAdapter != null) {
            this.mAdapter.setKeyValues(this.mCustomKeySet);
        }
    }

    private void clearInternalPin() {
        this.mPin = "";
    }

    public void resetPinLockView() {
        clearInternalPin();
        this.mAdapter.setPinLength(this.mPin.length());
        this.mAdapter.notifyItemChanged(this.mAdapter.getItemCount() - 1);
        if (this.mIndicatorDots != null) {
            this.mIndicatorDots.updateDot(this.mPin.length());
        }
    }

    public boolean isIndicatorDotsAttached() {
        return this.mIndicatorDots != null;
    }

    public void attachIndicatorDots(IndicatorDots indicatorDots) {
        this.mIndicatorDots = indicatorDots;
    }
}

package com.andrognito.pinlockview;

import android.graphics.drawable.Drawable;

public class CustomizationOptionsBundle {
    private Drawable buttonBackgroundDrawable;
    private int buttonSize;
    private Drawable deleteButtonDrawable;
    private int deleteButtonPressesColor;
    private int deleteButtonSize;
    private boolean showDeleteButton;
    private int textColor;
    private int textSize;

    public int getTextColor() {
        return this.textColor;
    }

    public void setTextColor(int i) {
        this.textColor = i;
    }

    public int getTextSize() {
        return this.textSize;
    }

    public void setTextSize(int i) {
        this.textSize = i;
    }

    public int getButtonSize() {
        return this.buttonSize;
    }

    public void setButtonSize(int i) {
        this.buttonSize = i;
    }

    public Drawable getButtonBackgroundDrawable() {
        return this.buttonBackgroundDrawable;
    }

    public void setButtonBackgroundDrawable(Drawable drawable) {
        this.buttonBackgroundDrawable = drawable;
    }

    public Drawable getDeleteButtonDrawable() {
        return this.deleteButtonDrawable;
    }

    public void setDeleteButtonDrawable(Drawable drawable) {
        this.deleteButtonDrawable = drawable;
    }

    public int getDeleteButtonSize() {
        return this.deleteButtonSize;
    }

    public void setDeleteButtonSize(int i) {
        this.deleteButtonSize = i;
    }

    public boolean isShowDeleteButton() {
        return this.showDeleteButton;
    }

    public void setShowDeleteButton(boolean z) {
        this.showDeleteButton = z;
    }

    public int getDeleteButtonPressesColor() {
        return this.deleteButtonPressesColor;
    }

    public void setDeleteButtonPressesColor(int i) {
        this.deleteButtonPressesColor = i;
    }
}

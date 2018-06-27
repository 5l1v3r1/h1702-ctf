package android.support.constraint.solver.widgets;

import android.support.constraint.solver.Cache;
import java.util.ArrayList;

public class WidgetContainer extends ConstraintWidget {
    protected ArrayList<ConstraintWidget> mChildren = new ArrayList();

    public WidgetContainer(int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
    }

    public WidgetContainer(int i, int i2) {
        super(i, i2);
    }

    public void reset() {
        this.mChildren.clear();
        super.reset();
    }

    public void add(ConstraintWidget constraintWidget) {
        this.mChildren.add(constraintWidget);
        if (constraintWidget.getParent() != null) {
            ((WidgetContainer) constraintWidget.getParent()).remove(constraintWidget);
        }
        constraintWidget.setParent(this);
    }

    public void remove(ConstraintWidget constraintWidget) {
        this.mChildren.remove(constraintWidget);
        constraintWidget.setParent(null);
    }

    public ArrayList<ConstraintWidget> getChildren() {
        return this.mChildren;
    }

    public ConstraintWidgetContainer getRootConstraintContainer() {
        ConstraintWidget parent = getParent();
        ConstraintWidgetContainer constraintWidgetContainer = this instanceof ConstraintWidgetContainer ? (ConstraintWidgetContainer) this : null;
        while (parent != null) {
            ConstraintWidget parent2 = parent.getParent();
            if (parent instanceof ConstraintWidgetContainer) {
                constraintWidgetContainer = (ConstraintWidgetContainer) parent;
            }
            parent = parent2;
        }
        return constraintWidgetContainer;
    }

    public ConstraintWidget findWidget(float f, float f2) {
        int drawX = getDrawX();
        int drawY = getDrawY();
        ConstraintWidget constraintWidget = (f < ((float) drawX) || f > ((float) (getWidth() + drawX)) || f2 < ((float) drawY) || f2 > ((float) (getHeight() + drawY))) ? null : this;
        int size = this.mChildren.size();
        for (drawY = 0; drawY < size; drawY++) {
            ConstraintWidget constraintWidget2 = (ConstraintWidget) this.mChildren.get(drawY);
            if (constraintWidget2 instanceof WidgetContainer) {
                constraintWidget2 = ((WidgetContainer) constraintWidget2).findWidget(f, f2);
                if (constraintWidget2 == null) {
                }
            } else {
                int drawX2 = constraintWidget2.getDrawX();
                int drawY2 = constraintWidget2.getDrawY();
                int width = constraintWidget2.getWidth() + drawX2;
                int height = constraintWidget2.getHeight() + drawY2;
                if (f >= ((float) drawX2)) {
                    if (f <= ((float) width)) {
                        if (f2 >= ((float) drawY2)) {
                            if (f2 > ((float) height)) {
                            }
                        }
                    }
                }
            }
            constraintWidget = constraintWidget2;
        }
        return constraintWidget;
    }

    public ArrayList<ConstraintWidget> findWidgets(int i, int i2, int i3, int i4) {
        ArrayList<ConstraintWidget> arrayList = new ArrayList();
        Rectangle rectangle = new Rectangle();
        rectangle.setBounds(i, i2, i3, i4);
        i = this.mChildren.size();
        for (i2 = 0; i2 < i; i2++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) this.mChildren.get(i2);
            i4 = new Rectangle();
            i4.setBounds(constraintWidget.getDrawX(), constraintWidget.getDrawY(), constraintWidget.getWidth(), constraintWidget.getHeight());
            if (rectangle.intersects(i4) != 0) {
                arrayList.add(constraintWidget);
            }
        }
        return arrayList;
    }

    public static Rectangle getBounds(ArrayList<ConstraintWidget> arrayList) {
        Rectangle rectangle = new Rectangle();
        if (arrayList.size() == 0) {
            return rectangle;
        }
        int size = arrayList.size();
        int i = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        int i2 = 0;
        int i3 = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        int i4 = 0;
        int i5 = i4;
        while (i2 < size) {
            ConstraintWidget constraintWidget = (ConstraintWidget) arrayList.get(i2);
            if (constraintWidget.getX() < i) {
                i = constraintWidget.getX();
            }
            if (constraintWidget.getY() < i3) {
                i3 = constraintWidget.getY();
            }
            if (constraintWidget.getRight() > i4) {
                i4 = constraintWidget.getRight();
            }
            if (constraintWidget.getBottom() > i5) {
                i5 = constraintWidget.getBottom();
            }
            i2++;
        }
        rectangle.setBounds(i, i3, i4 - i, i5 - i3);
        return rectangle;
    }

    public void setOffset(int i, int i2) {
        super.setOffset(i, i2);
        i = this.mChildren.size();
        for (i2 = 0; i2 < i; i2++) {
            ((ConstraintWidget) this.mChildren.get(i2)).setOffset(getRootX(), getRootY());
        }
    }

    public void updateDrawPosition() {
        super.updateDrawPosition();
        if (this.mChildren != null) {
            int size = this.mChildren.size();
            for (int i = 0; i < size; i++) {
                ConstraintWidget constraintWidget = (ConstraintWidget) this.mChildren.get(i);
                constraintWidget.setOffset(getDrawX(), getDrawY());
                if (!(constraintWidget instanceof ConstraintWidgetContainer)) {
                    constraintWidget.updateDrawPosition();
                }
            }
        }
    }

    public void layout() {
        updateDrawPosition();
        if (this.mChildren != null) {
            int size = this.mChildren.size();
            for (int i = 0; i < size; i++) {
                ConstraintWidget constraintWidget = (ConstraintWidget) this.mChildren.get(i);
                if (constraintWidget instanceof WidgetContainer) {
                    ((WidgetContainer) constraintWidget).layout();
                }
            }
        }
    }

    public void resetSolverVariables(Cache cache) {
        super.resetSolverVariables(cache);
        int size = this.mChildren.size();
        for (int i = 0; i < size; i++) {
            ((ConstraintWidget) this.mChildren.get(i)).resetSolverVariables(cache);
        }
    }

    public void removeAllChildren() {
        this.mChildren.clear();
    }
}
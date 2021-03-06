package android.support.constraint.solver.widgets;

import android.support.constraint.solver.Cache;
import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.Metrics;
import android.support.constraint.solver.SolverVariable;
import android.support.constraint.solver.widgets.ConstraintAnchor.Strength;
import android.support.constraint.solver.widgets.ConstraintAnchor.Type;
import java.util.ArrayList;

public class ConstraintWidget {
    protected static final int ANCHOR_BASELINE = 4;
    protected static final int ANCHOR_BOTTOM = 3;
    protected static final int ANCHOR_LEFT = 0;
    protected static final int ANCHOR_RIGHT = 1;
    protected static final int ANCHOR_TOP = 2;
    private static final boolean AUTOTAG_CENTER = false;
    public static final int CHAIN_PACKED = 2;
    public static final int CHAIN_SPREAD = 0;
    public static final int CHAIN_SPREAD_INSIDE = 1;
    public static float DEFAULT_BIAS = 0.5f;
    static final int DIMENSION_HORIZONTAL = 0;
    static final int DIMENSION_VERTICAL = 1;
    protected static final int DIRECT = 2;
    public static final int GONE = 8;
    public static final int HORIZONTAL = 0;
    public static final int INVISIBLE = 4;
    public static final int MATCH_CONSTRAINT_PERCENT = 2;
    public static final int MATCH_CONSTRAINT_RATIO = 3;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    protected static final int SOLVER = 1;
    public static final int UNKNOWN = -1;
    public static final int VERTICAL = 1;
    public static final int VISIBLE = 0;
    private static final int WRAP = -2;
    protected ArrayList<ConstraintAnchor> mAnchors;
    ConstraintAnchor mBaseline;
    int mBaselineDistance;
    ConstraintAnchor mBottom;
    boolean mBottomHasCentered;
    ConstraintAnchor mCenter;
    ConstraintAnchor mCenterX;
    ConstraintAnchor mCenterY;
    private float mCircleConstraintAngle;
    private Object mCompanionWidget;
    private int mContainerItemSkip;
    private String mDebugName;
    protected float mDimensionRatio;
    protected int mDimensionRatioSide;
    int mDistToBottom;
    int mDistToLeft;
    int mDistToRight;
    int mDistToTop;
    private int mDrawHeight;
    private int mDrawWidth;
    private int mDrawX;
    private int mDrawY;
    int mHeight;
    float mHorizontalBiasPercent;
    boolean mHorizontalChainFixedPosition;
    int mHorizontalChainStyle;
    ConstraintWidget mHorizontalNextWidget;
    public int mHorizontalResolution;
    boolean mHorizontalWrapVisited;
    boolean mIsHeightWrapContent;
    boolean mIsWidthWrapContent;
    ConstraintAnchor mLeft;
    boolean mLeftHasCentered;
    protected ConstraintAnchor[] mListAnchors;
    protected DimensionBehaviour[] mListDimensionBehaviors;
    protected ConstraintWidget[] mListNextMatchConstraintsWidget;
    protected ConstraintWidget[] mListNextVisibleWidget;
    int mMatchConstraintDefaultHeight;
    int mMatchConstraintDefaultWidth;
    int mMatchConstraintMaxHeight;
    int mMatchConstraintMaxWidth;
    int mMatchConstraintMinHeight;
    int mMatchConstraintMinWidth;
    float mMatchConstraintPercentHeight;
    float mMatchConstraintPercentWidth;
    private int[] mMaxDimension;
    protected int mMinHeight;
    protected int mMinWidth;
    protected int mOffsetX;
    protected int mOffsetY;
    ConstraintWidget mParent;
    ResolutionDimension mResolutionHeight;
    ResolutionDimension mResolutionWidth;
    float mResolvedDimensionRatio;
    int mResolvedDimensionRatioSide;
    ConstraintAnchor mRight;
    boolean mRightHasCentered;
    ConstraintAnchor mTop;
    boolean mTopHasCentered;
    private String mType;
    float mVerticalBiasPercent;
    boolean mVerticalChainFixedPosition;
    int mVerticalChainStyle;
    ConstraintWidget mVerticalNextWidget;
    public int mVerticalResolution;
    boolean mVerticalWrapVisited;
    private int mVisibility;
    float[] mWeight;
    int mWidth;
    private int mWrapHeight;
    private int mWrapWidth;
    protected int mX;
    protected int mY;

    public enum ContentAlignment {
        BEGIN,
        MIDDLE,
        END,
        TOP,
        VERTICAL_MIDDLE,
        BOTTOM,
        LEFT,
        RIGHT
    }

    public enum DimensionBehaviour {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public void connectedTo(ConstraintWidget constraintWidget) {
    }

    public void resolve() {
    }

    public int getMaxHeight() {
        return this.mMaxDimension[1];
    }

    public int getMaxWidth() {
        return this.mMaxDimension[0];
    }

    public void setMaxWidth(int i) {
        this.mMaxDimension[0] = i;
    }

    public void setMaxHeight(int i) {
        this.mMaxDimension[1] = i;
    }

    public boolean isSpreadWidth() {
        return this.mMatchConstraintDefaultWidth == 0 && this.mDimensionRatio == 0.0f && this.mMatchConstraintMinWidth == 0 && this.mMatchConstraintMaxWidth == 0 && this.mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT;
    }

    public boolean isSpreadHeight() {
        return this.mMatchConstraintDefaultHeight == 0 && this.mDimensionRatio == 0.0f && this.mMatchConstraintMinHeight == 0 && this.mMatchConstraintMaxHeight == 0 && this.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT;
    }

    public void reset() {
        this.mLeft.reset();
        this.mTop.reset();
        this.mRight.reset();
        this.mBottom.reset();
        this.mBaseline.reset();
        this.mCenterX.reset();
        this.mCenterY.reset();
        this.mCenter.reset();
        this.mParent = null;
        this.mCircleConstraintAngle = 0.0f;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mX = 0;
        this.mY = 0;
        this.mDrawX = 0;
        this.mDrawY = 0;
        this.mDrawWidth = 0;
        this.mDrawHeight = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mWrapWidth = 0;
        this.mWrapHeight = 0;
        this.mHorizontalBiasPercent = DEFAULT_BIAS;
        this.mVerticalBiasPercent = DEFAULT_BIAS;
        this.mListDimensionBehaviors[0] = DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors[1] = DimensionBehaviour.FIXED;
        this.mCompanionWidget = null;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mType = null;
        this.mHorizontalWrapVisited = false;
        this.mVerticalWrapVisited = false;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mHorizontalChainFixedPosition = false;
        this.mVerticalChainFixedPosition = false;
        this.mWeight[0] = 0.0f;
        this.mWeight[1] = 0.0f;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.mMaxDimension[0] = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.mMaxDimension[1] = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.mMatchConstraintMaxWidth = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.mMatchConstraintMaxHeight = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMinHeight = 0;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1.0f;
        if (this.mResolutionWidth != null) {
            this.mResolutionWidth.reset();
        }
        if (this.mResolutionHeight != null) {
            this.mResolutionHeight.reset();
        }
    }

    public void resetResolutionNodes() {
        for (int i = 0; i < 6; i++) {
            this.mListAnchors[i].getResolutionNode().reset();
        }
    }

    public void updateResolutionNodes() {
        for (int i = 0; i < 6; i++) {
            this.mListAnchors[i].getResolutionNode().update();
        }
    }

    public void analyze(int i) {
        Optimizer.analyze(i, this);
    }

    public boolean isFullyResolved() {
        if (this.mLeft.getResolutionNode().state == 1 && this.mRight.getResolutionNode().state == 1 && this.mTop.getResolutionNode().state == 1 && this.mBottom.getResolutionNode().state == 1) {
            return true;
        }
        return false;
    }

    public ResolutionDimension getResolutionWidth() {
        if (this.mResolutionWidth == null) {
            this.mResolutionWidth = new ResolutionDimension();
        }
        return this.mResolutionWidth;
    }

    public ResolutionDimension getResolutionHeight() {
        if (this.mResolutionHeight == null) {
            this.mResolutionHeight = new ResolutionDimension();
        }
        return this.mResolutionHeight;
    }

    public ConstraintWidget() {
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1.0f;
        this.mMaxDimension = new int[]{ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED};
        this.mCircleConstraintAngle = 0.0f;
        this.mLeft = new ConstraintAnchor(this, Type.LEFT);
        this.mTop = new ConstraintAnchor(this, Type.TOP);
        this.mRight = new ConstraintAnchor(this, Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, Type.BASELINE);
        this.mCenterX = new ConstraintAnchor(this, Type.CENTER_X);
        this.mCenterY = new ConstraintAnchor(this, Type.CENTER_Y);
        this.mCenter = new ConstraintAnchor(this, Type.CENTER);
        this.mListAnchors = new ConstraintAnchor[]{this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, this.mCenter};
        this.mAnchors = new ArrayList();
        this.mListDimensionBehaviors = new DimensionBehaviour[]{DimensionBehaviour.FIXED, DimensionBehaviour.FIXED};
        this.mParent = null;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mX = 0;
        this.mY = 0;
        this.mDrawX = 0;
        this.mDrawY = 0;
        this.mDrawWidth = 0;
        this.mDrawHeight = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        this.mHorizontalBiasPercent = DEFAULT_BIAS;
        this.mVerticalBiasPercent = DEFAULT_BIAS;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mDebugName = null;
        this.mType = null;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mWeight = new float[]{0.0f, 0.0f};
        this.mListNextMatchConstraintsWidget = new ConstraintWidget[]{null, null};
        this.mListNextVisibleWidget = new ConstraintWidget[]{null, null};
        this.mHorizontalNextWidget = null;
        this.mVerticalNextWidget = null;
        addAnchors();
    }

    public ConstraintWidget(int i, int i2, int i3, int i4) {
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1.0f;
        this.mMaxDimension = new int[]{ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED};
        this.mCircleConstraintAngle = 0.0f;
        this.mLeft = new ConstraintAnchor(this, Type.LEFT);
        this.mTop = new ConstraintAnchor(this, Type.TOP);
        this.mRight = new ConstraintAnchor(this, Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, Type.BASELINE);
        this.mCenterX = new ConstraintAnchor(this, Type.CENTER_X);
        this.mCenterY = new ConstraintAnchor(this, Type.CENTER_Y);
        this.mCenter = new ConstraintAnchor(this, Type.CENTER);
        this.mListAnchors = new ConstraintAnchor[]{this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, this.mCenter};
        this.mAnchors = new ArrayList();
        this.mListDimensionBehaviors = new DimensionBehaviour[]{DimensionBehaviour.FIXED, DimensionBehaviour.FIXED};
        this.mParent = null;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mX = 0;
        this.mY = 0;
        this.mDrawX = 0;
        this.mDrawY = 0;
        this.mDrawWidth = 0;
        this.mDrawHeight = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        this.mHorizontalBiasPercent = DEFAULT_BIAS;
        this.mVerticalBiasPercent = DEFAULT_BIAS;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mDebugName = null;
        this.mType = null;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mWeight = new float[]{0.0f, 0.0f};
        this.mListNextMatchConstraintsWidget = new ConstraintWidget[]{null, null};
        this.mListNextVisibleWidget = new ConstraintWidget[]{null, null};
        this.mHorizontalNextWidget = null;
        this.mVerticalNextWidget = null;
        this.mX = i;
        this.mY = i2;
        this.mWidth = i3;
        this.mHeight = i4;
        addAnchors();
        forceUpdateDrawPosition();
    }

    public ConstraintWidget(int i, int i2) {
        this(0, 0, i, i2);
    }

    public void resetSolverVariables(Cache cache) {
        this.mLeft.resetSolverVariable(cache);
        this.mTop.resetSolverVariable(cache);
        this.mRight.resetSolverVariable(cache);
        this.mBottom.resetSolverVariable(cache);
        this.mBaseline.resetSolverVariable(cache);
        this.mCenter.resetSolverVariable(cache);
        this.mCenterX.resetSolverVariable(cache);
        this.mCenterY.resetSolverVariable(cache);
    }

    private void addAnchors() {
        this.mAnchors.add(this.mLeft);
        this.mAnchors.add(this.mTop);
        this.mAnchors.add(this.mRight);
        this.mAnchors.add(this.mBottom);
        this.mAnchors.add(this.mCenterX);
        this.mAnchors.add(this.mCenterY);
        this.mAnchors.add(this.mCenter);
        this.mAnchors.add(this.mBaseline);
    }

    public boolean isRoot() {
        return this.mParent == null;
    }

    public boolean isRootContainer() {
        return (this instanceof ConstraintWidgetContainer) && (this.mParent == null || !(this.mParent instanceof ConstraintWidgetContainer));
    }

    public boolean isInsideConstraintLayout() {
        this = getParent();
        if (this == null) {
            return false;
        }
        while (this != null) {
            if (this instanceof ConstraintWidgetContainer) {
                return true;
            }
            this = getParent();
        }
        return false;
    }

    public boolean hasAncestor(ConstraintWidget constraintWidget) {
        this = getParent();
        if (this == constraintWidget) {
            return true;
        }
        if (this == constraintWidget.getParent()) {
            return false;
        }
        while (this != null) {
            if (this == constraintWidget || this == constraintWidget.getParent()) {
                return true;
            }
            this = getParent();
        }
        return false;
    }

    public WidgetContainer getRootWidgetContainer() {
        while (getParent() != null) {
            this = getParent();
        }
        return this instanceof WidgetContainer ? (WidgetContainer) this : null;
    }

    public ConstraintWidget getParent() {
        return this.mParent;
    }

    public void setParent(ConstraintWidget constraintWidget) {
        this.mParent = constraintWidget;
    }

    public void setWidthWrapContent(boolean z) {
        this.mIsWidthWrapContent = z;
    }

    public boolean isWidthWrapContent() {
        return this.mIsWidthWrapContent;
    }

    public void setHeightWrapContent(boolean z) {
        this.mIsHeightWrapContent = z;
    }

    public boolean isHeightWrapContent() {
        return this.mIsHeightWrapContent;
    }

    public void connectCircularConstraint(ConstraintWidget constraintWidget, float f, int i) {
        immediateConnect(Type.CENTER, constraintWidget, Type.CENTER, i, 0);
        this.mCircleConstraintAngle = f;
    }

    public String getType() {
        return this.mType;
    }

    public void setType(String str) {
        this.mType = str;
    }

    public void setVisibility(int i) {
        this.mVisibility = i;
    }

    public int getVisibility() {
        return this.mVisibility;
    }

    public String getDebugName() {
        return this.mDebugName;
    }

    public void setDebugName(String str) {
        this.mDebugName = str;
    }

    public void setDebugSolverName(LinearSystem linearSystem, String str) {
        this.mDebugName = str;
        SolverVariable createObjectVariable = linearSystem.createObjectVariable(this.mLeft);
        SolverVariable createObjectVariable2 = linearSystem.createObjectVariable(this.mTop);
        SolverVariable createObjectVariable3 = linearSystem.createObjectVariable(this.mRight);
        SolverVariable createObjectVariable4 = linearSystem.createObjectVariable(this.mBottom);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append(".left");
        createObjectVariable.setName(stringBuilder.toString());
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append(str);
        stringBuilder2.append(".top");
        createObjectVariable2.setName(stringBuilder2.toString());
        stringBuilder2 = new StringBuilder();
        stringBuilder2.append(str);
        stringBuilder2.append(".right");
        createObjectVariable3.setName(stringBuilder2.toString());
        stringBuilder2 = new StringBuilder();
        stringBuilder2.append(str);
        stringBuilder2.append(".bottom");
        createObjectVariable4.setName(stringBuilder2.toString());
        if (this.mBaselineDistance > 0) {
            SolverVariable createObjectVariable5 = linearSystem.createObjectVariable(this.mBaseline);
            linearSystem = new StringBuilder();
            linearSystem.append(str);
            linearSystem.append(".baseline");
            createObjectVariable5.setName(linearSystem.toString());
        }
    }

    public String toString() {
        String stringBuilder;
        StringBuilder stringBuilder2 = new StringBuilder();
        if (this.mType != null) {
            StringBuilder stringBuilder3 = new StringBuilder();
            stringBuilder3.append("type: ");
            stringBuilder3.append(this.mType);
            stringBuilder3.append(" ");
            stringBuilder = stringBuilder3.toString();
        } else {
            stringBuilder = "";
        }
        stringBuilder2.append(stringBuilder);
        if (this.mDebugName != null) {
            stringBuilder3 = new StringBuilder();
            stringBuilder3.append("id: ");
            stringBuilder3.append(this.mDebugName);
            stringBuilder3.append(" ");
            stringBuilder = stringBuilder3.toString();
        } else {
            stringBuilder = "";
        }
        stringBuilder2.append(stringBuilder);
        stringBuilder2.append("(");
        stringBuilder2.append(this.mX);
        stringBuilder2.append(", ");
        stringBuilder2.append(this.mY);
        stringBuilder2.append(") - (");
        stringBuilder2.append(this.mWidth);
        stringBuilder2.append(" x ");
        stringBuilder2.append(this.mHeight);
        stringBuilder2.append(") wrap: (");
        stringBuilder2.append(this.mWrapWidth);
        stringBuilder2.append(" x ");
        stringBuilder2.append(this.mWrapHeight);
        stringBuilder2.append(")");
        return stringBuilder2.toString();
    }

    int getInternalDrawX() {
        return this.mDrawX;
    }

    int getInternalDrawY() {
        return this.mDrawY;
    }

    public int getInternalDrawRight() {
        return this.mDrawX + this.mDrawWidth;
    }

    public int getInternalDrawBottom() {
        return this.mDrawY + this.mDrawHeight;
    }

    public int getX() {
        return this.mX;
    }

    public int getY() {
        return this.mY;
    }

    public int getWidth() {
        if (this.mVisibility == 8) {
            return 0;
        }
        return this.mWidth;
    }

    public int getOptimizerWrapWidth() {
        int i = this.mWidth;
        if (this.mListDimensionBehaviors[0] != DimensionBehaviour.MATCH_CONSTRAINT) {
            return i;
        }
        if (this.mMatchConstraintDefaultWidth == 1) {
            i = Math.max(this.mMatchConstraintMinWidth, i);
        } else if (this.mMatchConstraintMinWidth > 0) {
            i = this.mMatchConstraintMinWidth;
            this.mWidth = i;
        } else {
            i = 0;
        }
        return (this.mMatchConstraintMaxWidth <= 0 || this.mMatchConstraintMaxWidth >= i) ? i : this.mMatchConstraintMaxWidth;
    }

    public int getOptimizerWrapHeight() {
        int i = this.mHeight;
        if (this.mListDimensionBehaviors[1] != DimensionBehaviour.MATCH_CONSTRAINT) {
            return i;
        }
        if (this.mMatchConstraintDefaultHeight == 1) {
            i = Math.max(this.mMatchConstraintMinHeight, i);
        } else if (this.mMatchConstraintMinHeight > 0) {
            i = this.mMatchConstraintMinHeight;
            this.mHeight = i;
        } else {
            i = 0;
        }
        return (this.mMatchConstraintMaxHeight <= 0 || this.mMatchConstraintMaxHeight >= i) ? i : this.mMatchConstraintMaxHeight;
    }

    public int getWrapWidth() {
        return this.mWrapWidth;
    }

    public int getHeight() {
        if (this.mVisibility == 8) {
            return 0;
        }
        return this.mHeight;
    }

    public int getWrapHeight() {
        return this.mWrapHeight;
    }

    public int getDrawX() {
        return this.mDrawX + this.mOffsetX;
    }

    public int getDrawY() {
        return this.mDrawY + this.mOffsetY;
    }

    public int getDrawWidth() {
        return this.mDrawWidth;
    }

    public int getDrawHeight() {
        return this.mDrawHeight;
    }

    public int getDrawBottom() {
        return getDrawY() + this.mDrawHeight;
    }

    public int getDrawRight() {
        return getDrawX() + this.mDrawWidth;
    }

    protected int getRootX() {
        return this.mX + this.mOffsetX;
    }

    protected int getRootY() {
        return this.mY + this.mOffsetY;
    }

    public int getMinWidth() {
        return this.mMinWidth;
    }

    public int getMinHeight() {
        return this.mMinHeight;
    }

    public int getLeft() {
        return getX();
    }

    public int getTop() {
        return getY();
    }

    public int getRight() {
        return getX() + this.mWidth;
    }

    public int getBottom() {
        return getY() + this.mHeight;
    }

    public float getHorizontalBiasPercent() {
        return this.mHorizontalBiasPercent;
    }

    public float getVerticalBiasPercent() {
        return this.mVerticalBiasPercent;
    }

    public boolean hasBaseline() {
        return this.mBaselineDistance > 0;
    }

    public int getBaselineDistance() {
        return this.mBaselineDistance;
    }

    public Object getCompanionWidget() {
        return this.mCompanionWidget;
    }

    public ArrayList<ConstraintAnchor> getAnchors() {
        return this.mAnchors;
    }

    public void setX(int i) {
        this.mX = i;
    }

    public void setY(int i) {
        this.mY = i;
    }

    public void setOrigin(int i, int i2) {
        this.mX = i;
        this.mY = i2;
    }

    public void setOffset(int i, int i2) {
        this.mOffsetX = i;
        this.mOffsetY = i2;
    }

    public void setGoneMargin(Type type, int i) {
        switch (type) {
            case LEFT:
                this.mLeft.mGoneMargin = i;
                return;
            case TOP:
                this.mTop.mGoneMargin = i;
                return;
            case RIGHT:
                this.mRight.mGoneMargin = i;
                return;
            case BOTTOM:
                this.mBottom.mGoneMargin = i;
                return;
            default:
                return;
        }
    }

    public void updateDrawPosition() {
        int i = this.mX;
        int i2 = this.mY;
        int i3 = this.mX + this.mWidth;
        int i4 = this.mY + this.mHeight;
        this.mDrawX = i;
        this.mDrawY = i2;
        this.mDrawWidth = i3 - i;
        this.mDrawHeight = i4 - i2;
    }

    public void forceUpdateDrawPosition() {
        int i = this.mX;
        int i2 = this.mY;
        int i3 = this.mX + this.mWidth;
        int i4 = this.mY + this.mHeight;
        this.mDrawX = i;
        this.mDrawY = i2;
        this.mDrawWidth = i3 - i;
        this.mDrawHeight = i4 - i2;
    }

    public void setDrawOrigin(int i, int i2) {
        this.mDrawX = i - this.mOffsetX;
        this.mDrawY = i2 - this.mOffsetY;
        this.mX = this.mDrawX;
        this.mY = this.mDrawY;
    }

    public void setDrawX(int i) {
        this.mDrawX = i - this.mOffsetX;
        this.mX = this.mDrawX;
    }

    public void setDrawY(int i) {
        this.mDrawY = i - this.mOffsetY;
        this.mY = this.mDrawY;
    }

    public void setDrawWidth(int i) {
        this.mDrawWidth = i;
    }

    public void setDrawHeight(int i) {
        this.mDrawHeight = i;
    }

    public void setWidth(int i) {
        this.mWidth = i;
        if (this.mWidth < this.mMinWidth) {
            this.mWidth = this.mMinWidth;
        }
    }

    public void setHeight(int i) {
        this.mHeight = i;
        if (this.mHeight < this.mMinHeight) {
            this.mHeight = this.mMinHeight;
        }
    }

    public void setHorizontalMatchStyle(int i, int i2, int i3, float f) {
        this.mMatchConstraintDefaultWidth = i;
        this.mMatchConstraintMinWidth = i2;
        this.mMatchConstraintMaxWidth = i3;
        this.mMatchConstraintPercentWidth = f;
        if (f < 1065353216 && this.mMatchConstraintDefaultWidth == 0) {
            this.mMatchConstraintDefaultWidth = 2;
        }
    }

    public void setVerticalMatchStyle(int i, int i2, int i3, float f) {
        this.mMatchConstraintDefaultHeight = i;
        this.mMatchConstraintMinHeight = i2;
        this.mMatchConstraintMaxHeight = i3;
        this.mMatchConstraintPercentHeight = f;
        if (f < 1065353216 && this.mMatchConstraintDefaultHeight == 0) {
            this.mMatchConstraintDefaultHeight = 2;
        }
    }

    public void setDimensionRatio(java.lang.String r9) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
*/
        /*
        r8 = this;
        r0 = 0;
        if (r9 == 0) goto L_0x008e;
    L_0x0003:
        r1 = r9.length();
        if (r1 != 0) goto L_0x000b;
    L_0x0009:
        goto L_0x008e;
    L_0x000b:
        r1 = -1;
        r2 = r9.length();
        r3 = 44;
        r3 = r9.indexOf(r3);
        r4 = 0;
        r5 = 1;
        if (r3 <= 0) goto L_0x0037;
    L_0x001a:
        r6 = r2 + -1;
        if (r3 >= r6) goto L_0x0037;
    L_0x001e:
        r6 = r9.substring(r4, r3);
        r7 = "W";
        r7 = r6.equalsIgnoreCase(r7);
        if (r7 == 0) goto L_0x002c;
    L_0x002a:
        r1 = r4;
        goto L_0x0035;
    L_0x002c:
        r4 = "H";
        r4 = r6.equalsIgnoreCase(r4);
        if (r4 == 0) goto L_0x0035;
    L_0x0034:
        r1 = r5;
    L_0x0035:
        r4 = r3 + 1;
    L_0x0037:
        r3 = 58;
        r3 = r9.indexOf(r3);
        if (r3 < 0) goto L_0x0075;
    L_0x003f:
        r2 = r2 - r5;
        if (r3 >= r2) goto L_0x0075;
    L_0x0042:
        r2 = r9.substring(r4, r3);
        r3 = r3 + r5;
        r9 = r9.substring(r3);
        r3 = r2.length();
        if (r3 <= 0) goto L_0x0084;
    L_0x0051:
        r3 = r9.length();
        if (r3 <= 0) goto L_0x0084;
    L_0x0057:
        r2 = java.lang.Float.parseFloat(r2);	 Catch:{ NumberFormatException -> 0x0084 }
        r9 = java.lang.Float.parseFloat(r9);	 Catch:{ NumberFormatException -> 0x0084 }
        r3 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1));	 Catch:{ NumberFormatException -> 0x0084 }
        if (r3 <= 0) goto L_0x0084;	 Catch:{ NumberFormatException -> 0x0084 }
    L_0x0063:
        r3 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1));	 Catch:{ NumberFormatException -> 0x0084 }
        if (r3 <= 0) goto L_0x0084;	 Catch:{ NumberFormatException -> 0x0084 }
    L_0x0067:
        if (r1 != r5) goto L_0x006f;	 Catch:{ NumberFormatException -> 0x0084 }
    L_0x0069:
        r9 = r9 / r2;	 Catch:{ NumberFormatException -> 0x0084 }
        r9 = java.lang.Math.abs(r9);	 Catch:{ NumberFormatException -> 0x0084 }
        goto L_0x0085;	 Catch:{ NumberFormatException -> 0x0084 }
    L_0x006f:
        r2 = r2 / r9;	 Catch:{ NumberFormatException -> 0x0084 }
        r9 = java.lang.Math.abs(r2);	 Catch:{ NumberFormatException -> 0x0084 }
        goto L_0x0085;
    L_0x0075:
        r9 = r9.substring(r4);
        r2 = r9.length();
        if (r2 <= 0) goto L_0x0084;
    L_0x007f:
        r9 = java.lang.Float.parseFloat(r9);	 Catch:{ NumberFormatException -> 0x0084 }
        goto L_0x0085;
    L_0x0084:
        r9 = r0;
    L_0x0085:
        r0 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1));
        if (r0 <= 0) goto L_0x008d;
    L_0x0089:
        r8.mDimensionRatio = r9;
        r8.mDimensionRatioSide = r1;
    L_0x008d:
        return;
    L_0x008e:
        r8.mDimensionRatio = r0;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.solver.widgets.ConstraintWidget.setDimensionRatio(java.lang.String):void");
    }

    public void setDimensionRatio(float f, int i) {
        this.mDimensionRatio = f;
        this.mDimensionRatioSide = i;
    }

    public float getDimensionRatio() {
        return this.mDimensionRatio;
    }

    public int getDimensionRatioSide() {
        return this.mDimensionRatioSide;
    }

    public void setHorizontalBiasPercent(float f) {
        this.mHorizontalBiasPercent = f;
    }

    public void setVerticalBiasPercent(float f) {
        this.mVerticalBiasPercent = f;
    }

    public void setMinWidth(int i) {
        if (i < 0) {
            this.mMinWidth = 0;
        } else {
            this.mMinWidth = i;
        }
    }

    public void setMinHeight(int i) {
        if (i < 0) {
            this.mMinHeight = 0;
        } else {
            this.mMinHeight = i;
        }
    }

    public void setWrapWidth(int i) {
        this.mWrapWidth = i;
    }

    public void setWrapHeight(int i) {
        this.mWrapHeight = i;
    }

    public void setDimension(int i, int i2) {
        this.mWidth = i;
        if (this.mWidth < this.mMinWidth) {
            this.mWidth = this.mMinWidth;
        }
        this.mHeight = i2;
        if (this.mHeight < this.mMinHeight) {
            this.mHeight = this.mMinHeight;
        }
    }

    public void setFrame(int i, int i2, int i3, int i4) {
        i3 -= i;
        i4 -= i2;
        this.mX = i;
        this.mY = i2;
        if (this.mVisibility == 8) {
            this.mWidth = 0;
            this.mHeight = 0;
            return;
        }
        if (this.mListDimensionBehaviors[0] == DimensionBehaviour.FIXED && i3 < this.mWidth) {
            i3 = this.mWidth;
        }
        if (this.mListDimensionBehaviors[1] == DimensionBehaviour.FIXED && i4 < this.mHeight) {
            i4 = this.mHeight;
        }
        this.mWidth = i3;
        this.mHeight = i4;
        if (this.mHeight < this.mMinHeight) {
            this.mHeight = this.mMinHeight;
        }
        if (this.mWidth < this.mMinWidth) {
            this.mWidth = this.mMinWidth;
        }
    }

    public void setHorizontalDimension(int i, int i2) {
        this.mX = i;
        this.mWidth = i2 - i;
        if (this.mWidth < this.mMinWidth) {
            this.mWidth = this.mMinWidth;
        }
    }

    public void setVerticalDimension(int i, int i2) {
        this.mY = i;
        this.mHeight = i2 - i;
        if (this.mHeight < this.mMinHeight) {
            this.mHeight = this.mMinHeight;
        }
    }

    public void setBaselineDistance(int i) {
        this.mBaselineDistance = i;
    }

    public void setCompanionWidget(Object obj) {
        this.mCompanionWidget = obj;
    }

    public void setContainerItemSkip(int i) {
        if (i >= 0) {
            this.mContainerItemSkip = i;
        } else {
            this.mContainerItemSkip = 0;
        }
    }

    public int getContainerItemSkip() {
        return this.mContainerItemSkip;
    }

    public void setHorizontalWeight(float f) {
        this.mWeight[0] = f;
    }

    public void setVerticalWeight(float f) {
        this.mWeight[1] = f;
    }

    public void setHorizontalChainStyle(int i) {
        this.mHorizontalChainStyle = i;
    }

    public int getHorizontalChainStyle() {
        return this.mHorizontalChainStyle;
    }

    public void setVerticalChainStyle(int i) {
        this.mVerticalChainStyle = i;
    }

    public int getVerticalChainStyle() {
        return this.mVerticalChainStyle;
    }

    public boolean allowedInBarrier() {
        return this.mVisibility != 8;
    }

    public void immediateConnect(Type type, ConstraintWidget constraintWidget, Type type2, int i, int i2) {
        getAnchor(type).connect(constraintWidget.getAnchor(type2), i, i2, Strength.STRONG, 0, true);
    }

    public void connect(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i, int i2) {
        connect(constraintAnchor, constraintAnchor2, i, Strength.STRONG, i2);
    }

    public void connect(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i) {
        connect(constraintAnchor, constraintAnchor2, i, Strength.STRONG, 0);
    }

    public void connect(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i, Strength strength, int i2) {
        if (constraintAnchor.getOwner() == this) {
            connect(constraintAnchor.getType(), constraintAnchor2.getOwner(), constraintAnchor2.getType(), i, strength, i2);
        }
    }

    public void connect(Type type, ConstraintWidget constraintWidget, Type type2, int i) {
        connect(type, constraintWidget, type2, i, Strength.STRONG);
    }

    public void connect(Type type, ConstraintWidget constraintWidget, Type type2) {
        connect(type, constraintWidget, type2, 0, Strength.STRONG);
    }

    public void connect(Type type, ConstraintWidget constraintWidget, Type type2, int i, Strength strength) {
        connect(type, constraintWidget, type2, i, strength, 0);
    }

    public void connect(Type type, ConstraintWidget constraintWidget, Type type2, int i, Strength strength, int i2) {
        ConstraintWidget constraintWidget2 = this;
        Type type3 = type;
        ConstraintWidget constraintWidget3 = constraintWidget;
        Type type4 = type2;
        int i3 = i2;
        int i4 = 0;
        ConstraintAnchor anchor;
        ConstraintAnchor anchor2;
        if (type3 == Type.CENTER) {
            ConstraintWidget constraintWidget4;
            Strength strength2;
            int i5;
            if (type4 == Type.CENTER) {
                int i6;
                anchor = getAnchor(Type.LEFT);
                anchor2 = getAnchor(Type.RIGHT);
                ConstraintAnchor anchor3 = getAnchor(Type.TOP);
                ConstraintAnchor anchor4 = getAnchor(Type.BOTTOM);
                int i7 = 1;
                if ((anchor == null || !anchor.isConnected()) && (anchor2 == null || !anchor2.isConnected())) {
                    constraintWidget4 = constraintWidget3;
                    strength2 = strength;
                    i5 = i3;
                    connect(Type.LEFT, constraintWidget4, Type.LEFT, 0, strength2, i5);
                    connect(Type.RIGHT, constraintWidget4, Type.RIGHT, 0, strength2, i5);
                    i6 = 1;
                } else {
                    i6 = 0;
                }
                if ((anchor3 == null || !anchor3.isConnected()) && (anchor4 == null || !anchor4.isConnected())) {
                    constraintWidget4 = constraintWidget3;
                    strength2 = strength;
                    i5 = i3;
                    connect(Type.TOP, constraintWidget4, Type.TOP, 0, strength2, i5);
                    connect(Type.BOTTOM, constraintWidget4, Type.BOTTOM, 0, strength2, i5);
                } else {
                    i7 = 0;
                }
                if (i6 != 0 && i7 != 0) {
                    getAnchor(Type.CENTER).connect(constraintWidget3.getAnchor(Type.CENTER), 0, i3);
                    return;
                } else if (i6 != 0) {
                    getAnchor(Type.CENTER_X).connect(constraintWidget3.getAnchor(Type.CENTER_X), 0, i3);
                    return;
                } else if (i7 != 0) {
                    getAnchor(Type.CENTER_Y).connect(constraintWidget3.getAnchor(Type.CENTER_Y), 0, i3);
                    return;
                } else {
                    return;
                }
            }
            Type type5;
            if (type4 != Type.LEFT) {
                if (type4 != Type.RIGHT) {
                    if (type4 == Type.TOP || type4 == Type.BOTTOM) {
                        constraintWidget4 = constraintWidget3;
                        type5 = type4;
                        strength2 = strength;
                        i5 = i3;
                        connect(Type.TOP, constraintWidget4, type5, 0, strength2, i5);
                        connect(Type.BOTTOM, constraintWidget4, type5, 0, strength2, i5);
                        getAnchor(Type.CENTER).connect(constraintWidget.getAnchor(type2), 0, i3);
                        return;
                    }
                    return;
                }
            }
            constraintWidget4 = constraintWidget3;
            type5 = type4;
            strength2 = strength;
            i5 = i3;
            connect(Type.LEFT, constraintWidget4, type5, 0, strength2, i5);
            connect(Type.RIGHT, constraintWidget4, type5, 0, strength2, i5);
            getAnchor(Type.CENTER).connect(constraintWidget.getAnchor(type2), 0, i3);
        } else if (type3 == Type.CENTER_X && (type4 == Type.LEFT || type4 == Type.RIGHT)) {
            anchor = getAnchor(Type.LEFT);
            anchor2 = constraintWidget.getAnchor(type2);
            r2 = getAnchor(Type.RIGHT);
            anchor.connect(anchor2, 0, i3);
            r2.connect(anchor2, 0, i3);
            getAnchor(Type.CENTER_X).connect(anchor2, 0, i3);
        } else if (type3 == Type.CENTER_Y && (type4 == Type.TOP || type4 == Type.BOTTOM)) {
            anchor = constraintWidget.getAnchor(type2);
            getAnchor(Type.TOP).connect(anchor, 0, i3);
            getAnchor(Type.BOTTOM).connect(anchor, 0, i3);
            getAnchor(Type.CENTER_Y).connect(anchor, 0, i3);
        } else if (type3 == Type.CENTER_X && type4 == Type.CENTER_X) {
            getAnchor(Type.LEFT).connect(constraintWidget3.getAnchor(Type.LEFT), 0, i3);
            getAnchor(Type.RIGHT).connect(constraintWidget3.getAnchor(Type.RIGHT), 0, i3);
            getAnchor(Type.CENTER_X).connect(constraintWidget.getAnchor(type2), 0, i3);
        } else if (type3 == Type.CENTER_Y && type4 == Type.CENTER_Y) {
            getAnchor(Type.TOP).connect(constraintWidget3.getAnchor(Type.TOP), 0, i3);
            getAnchor(Type.BOTTOM).connect(constraintWidget3.getAnchor(Type.BOTTOM), 0, i3);
            getAnchor(Type.CENTER_Y).connect(constraintWidget.getAnchor(type2), 0, i3);
        } else {
            anchor2 = getAnchor(type);
            r2 = constraintWidget.getAnchor(type2);
            if (anchor2.isValidConnection(r2)) {
                ConstraintAnchor anchor5;
                if (type3 == Type.BASELINE) {
                    anchor = getAnchor(Type.TOP);
                    anchor5 = getAnchor(Type.BOTTOM);
                    if (anchor != null) {
                        anchor.reset();
                    }
                    if (anchor5 != null) {
                        anchor5.reset();
                    }
                } else {
                    if (type3 != Type.TOP) {
                        if (type3 != Type.BOTTOM) {
                            if (type3 == Type.LEFT || type3 == Type.RIGHT) {
                                anchor5 = getAnchor(Type.CENTER);
                                if (anchor5.getTarget() != r2) {
                                    anchor5.reset();
                                }
                                anchor = getAnchor(type).getOpposite();
                                anchor5 = getAnchor(Type.CENTER_X);
                                if (anchor5.isConnected()) {
                                    anchor.reset();
                                    anchor5.reset();
                                }
                            }
                            i4 = i;
                        }
                    }
                    anchor5 = getAnchor(Type.BASELINE);
                    if (anchor5 != null) {
                        anchor5.reset();
                    }
                    anchor5 = getAnchor(Type.CENTER);
                    if (anchor5.getTarget() != r2) {
                        anchor5.reset();
                    }
                    anchor = getAnchor(type).getOpposite();
                    anchor5 = getAnchor(Type.CENTER_Y);
                    if (anchor5.isConnected()) {
                        anchor.reset();
                        anchor5.reset();
                    }
                    i4 = i;
                }
                anchor2.connect(r2, i4, strength, i3);
                r2.getOwner().connectedTo(anchor2.getOwner());
            }
        }
    }

    public void resetAllConstraints() {
        resetAnchors();
        setVerticalBiasPercent(DEFAULT_BIAS);
        setHorizontalBiasPercent(DEFAULT_BIAS);
        if (!(this instanceof ConstraintWidgetContainer)) {
            if (getHorizontalDimensionBehaviour() == DimensionBehaviour.MATCH_CONSTRAINT) {
                if (getWidth() == getWrapWidth()) {
                    setHorizontalDimensionBehaviour(DimensionBehaviour.WRAP_CONTENT);
                } else if (getWidth() > getMinWidth()) {
                    setHorizontalDimensionBehaviour(DimensionBehaviour.FIXED);
                }
            }
            if (getVerticalDimensionBehaviour() == DimensionBehaviour.MATCH_CONSTRAINT) {
                if (getHeight() == getWrapHeight()) {
                    setVerticalDimensionBehaviour(DimensionBehaviour.WRAP_CONTENT);
                } else if (getHeight() > getMinHeight()) {
                    setVerticalDimensionBehaviour(DimensionBehaviour.FIXED);
                }
            }
        }
    }

    public void resetAnchor(ConstraintAnchor constraintAnchor) {
        if (getParent() == null || !(getParent() instanceof ConstraintWidgetContainer) || !((ConstraintWidgetContainer) getParent()).handlesInternalConstraints()) {
            ConstraintAnchor anchor = getAnchor(Type.LEFT);
            ConstraintAnchor anchor2 = getAnchor(Type.RIGHT);
            ConstraintAnchor anchor3 = getAnchor(Type.TOP);
            ConstraintAnchor anchor4 = getAnchor(Type.BOTTOM);
            ConstraintAnchor anchor5 = getAnchor(Type.CENTER);
            ConstraintAnchor anchor6 = getAnchor(Type.CENTER_X);
            ConstraintAnchor anchor7 = getAnchor(Type.CENTER_Y);
            if (constraintAnchor == anchor5) {
                if (anchor.isConnected() && anchor2.isConnected() && anchor.getTarget() == anchor2.getTarget()) {
                    anchor.reset();
                    anchor2.reset();
                }
                if (anchor3.isConnected() && anchor4.isConnected() && anchor3.getTarget() == anchor4.getTarget()) {
                    anchor3.reset();
                    anchor4.reset();
                }
                this.mHorizontalBiasPercent = 0.5f;
                this.mVerticalBiasPercent = 0.5f;
            } else if (constraintAnchor == anchor6) {
                if (anchor.isConnected() && anchor2.isConnected() && anchor.getTarget().getOwner() == anchor2.getTarget().getOwner()) {
                    anchor.reset();
                    anchor2.reset();
                }
                this.mHorizontalBiasPercent = 0.5f;
            } else if (constraintAnchor == anchor7) {
                if (anchor3.isConnected() && anchor4.isConnected() && anchor3.getTarget().getOwner() == anchor4.getTarget().getOwner()) {
                    anchor3.reset();
                    anchor4.reset();
                }
                this.mVerticalBiasPercent = 0.5f;
            } else {
                if (constraintAnchor != anchor) {
                    if (constraintAnchor != anchor2) {
                        if ((constraintAnchor == anchor3 || constraintAnchor == anchor4) && anchor3.isConnected() && anchor3.getTarget() == anchor4.getTarget()) {
                            anchor5.reset();
                        }
                    }
                }
                if (anchor.isConnected() && anchor.getTarget() == anchor2.getTarget()) {
                    anchor5.reset();
                }
            }
            constraintAnchor.reset();
        }
    }

    public void resetAnchors() {
        ConstraintWidget parent = getParent();
        if (parent == null || !(parent instanceof ConstraintWidgetContainer) || !((ConstraintWidgetContainer) getParent()).handlesInternalConstraints()) {
            int size = this.mAnchors.size();
            for (int i = 0; i < size; i++) {
                ((ConstraintAnchor) this.mAnchors.get(i)).reset();
            }
        }
    }

    public void resetAnchors(int i) {
        ConstraintWidget parent = getParent();
        if (parent == null || !(parent instanceof ConstraintWidgetContainer) || !((ConstraintWidgetContainer) getParent()).handlesInternalConstraints()) {
            int size = this.mAnchors.size();
            for (int i2 = 0; i2 < size; i2++) {
                ConstraintAnchor constraintAnchor = (ConstraintAnchor) this.mAnchors.get(i2);
                if (i == constraintAnchor.getConnectionCreator()) {
                    if (constraintAnchor.isVerticalAnchor()) {
                        setVerticalBiasPercent(DEFAULT_BIAS);
                    } else {
                        setHorizontalBiasPercent(DEFAULT_BIAS);
                    }
                    constraintAnchor.reset();
                }
            }
        }
    }

    public void disconnectWidget(ConstraintWidget constraintWidget) {
        ArrayList anchors = getAnchors();
        int size = anchors.size();
        for (int i = 0; i < size; i++) {
            ConstraintAnchor constraintAnchor = (ConstraintAnchor) anchors.get(i);
            if (constraintAnchor.isConnected() && constraintAnchor.getTarget().getOwner() == constraintWidget) {
                constraintAnchor.reset();
            }
        }
    }

    public void disconnectUnlockedWidget(ConstraintWidget constraintWidget) {
        ArrayList anchors = getAnchors();
        int size = anchors.size();
        for (int i = 0; i < size; i++) {
            ConstraintAnchor constraintAnchor = (ConstraintAnchor) anchors.get(i);
            if (constraintAnchor.isConnected() && constraintAnchor.getTarget().getOwner() == constraintWidget && constraintAnchor.getConnectionCreator() == 2) {
                constraintAnchor.reset();
            }
        }
    }

    public ConstraintAnchor getAnchor(Type type) {
        switch (type) {
            case LEFT:
                return this.mLeft;
            case TOP:
                return this.mTop;
            case RIGHT:
                return this.mRight;
            case BOTTOM:
                return this.mBottom;
            case BASELINE:
                return this.mBaseline;
            case CENTER:
                return this.mCenter;
            case CENTER_X:
                return this.mCenterX;
            case CENTER_Y:
                return this.mCenterY;
            case NONE:
                return null;
            default:
                throw new AssertionError(type.name());
        }
    }

    public DimensionBehaviour getHorizontalDimensionBehaviour() {
        return this.mListDimensionBehaviors[0];
    }

    public DimensionBehaviour getVerticalDimensionBehaviour() {
        return this.mListDimensionBehaviors[1];
    }

    public void setHorizontalDimensionBehaviour(DimensionBehaviour dimensionBehaviour) {
        this.mListDimensionBehaviors[0] = dimensionBehaviour;
        if (dimensionBehaviour == DimensionBehaviour.WRAP_CONTENT) {
            setWidth(this.mWrapWidth);
        }
    }

    public void setVerticalDimensionBehaviour(DimensionBehaviour dimensionBehaviour) {
        this.mListDimensionBehaviors[1] = dimensionBehaviour;
        if (dimensionBehaviour == DimensionBehaviour.WRAP_CONTENT) {
            setHeight(this.mWrapHeight);
        }
    }

    public boolean isInHorizontalChain() {
        return (this.mLeft.mTarget != null && this.mLeft.mTarget.mTarget == this.mLeft) || (this.mRight.mTarget != null && this.mRight.mTarget.mTarget == this.mRight);
    }

    public ConstraintWidget getHorizontalChainControlWidget() {
        if (!isInHorizontalChain()) {
            return null;
        }
        ConstraintWidget constraintWidget = this;
        ConstraintWidget constraintWidget2 = null;
        while (constraintWidget2 == null && constraintWidget != null) {
            ConstraintWidget constraintWidget3;
            ConstraintAnchor anchor = constraintWidget.getAnchor(Type.LEFT);
            if (anchor == null) {
                anchor = null;
            } else {
                anchor = anchor.getTarget();
            }
            if (anchor == null) {
                constraintWidget3 = null;
            } else {
                constraintWidget3 = anchor.getOwner();
            }
            if (constraintWidget3 == getParent()) {
                return constraintWidget;
            }
            ConstraintAnchor constraintAnchor;
            if (constraintWidget3 == null) {
                constraintAnchor = null;
            } else {
                constraintAnchor = constraintWidget3.getAnchor(Type.RIGHT).getTarget();
            }
            if (constraintAnchor == null || constraintAnchor.getOwner() == constraintWidget) {
                constraintWidget = constraintWidget3;
            } else {
                constraintWidget2 = constraintWidget;
            }
        }
        return constraintWidget2;
    }

    public boolean isInVerticalChain() {
        return (this.mTop.mTarget != null && this.mTop.mTarget.mTarget == this.mTop) || (this.mBottom.mTarget != null && this.mBottom.mTarget.mTarget == this.mBottom);
    }

    public ConstraintWidget getVerticalChainControlWidget() {
        if (!isInVerticalChain()) {
            return null;
        }
        ConstraintWidget constraintWidget = this;
        ConstraintWidget constraintWidget2 = null;
        while (constraintWidget2 == null && constraintWidget != null) {
            ConstraintWidget constraintWidget3;
            ConstraintAnchor anchor = constraintWidget.getAnchor(Type.TOP);
            if (anchor == null) {
                anchor = null;
            } else {
                anchor = anchor.getTarget();
            }
            if (anchor == null) {
                constraintWidget3 = null;
            } else {
                constraintWidget3 = anchor.getOwner();
            }
            if (constraintWidget3 == getParent()) {
                return constraintWidget;
            }
            ConstraintAnchor constraintAnchor;
            if (constraintWidget3 == null) {
                constraintAnchor = null;
            } else {
                constraintAnchor = constraintWidget3.getAnchor(Type.BOTTOM).getTarget();
            }
            if (constraintAnchor == null || constraintAnchor.getOwner() == constraintWidget) {
                constraintWidget = constraintWidget3;
            } else {
                constraintWidget2 = constraintWidget;
            }
        }
        return constraintWidget2;
    }

    public void addToSolver(LinearSystem linearSystem) {
        ConstraintWidget constraintWidget;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        int i;
        int i2;
        int i3;
        boolean z6;
        SolverVariable solverVariable;
        SolverVariable solverVariable2;
        SolverVariable solverVariable3;
        SolverVariable solverVariable4;
        LinearSystem linearSystem2 = linearSystem;
        SolverVariable createObjectVariable = linearSystem2.createObjectVariable(this.mLeft);
        SolverVariable createObjectVariable2 = linearSystem2.createObjectVariable(this.mRight);
        SolverVariable createObjectVariable3 = linearSystem2.createObjectVariable(this.mTop);
        SolverVariable createObjectVariable4 = linearSystem2.createObjectVariable(this.mBottom);
        SolverVariable createObjectVariable5 = linearSystem2.createObjectVariable(this.mBaseline);
        if (this.mParent != null) {
            boolean z7;
            boolean z8 = constraintWidget.mParent != null && constraintWidget.mParent.mListDimensionBehaviors[0] == DimensionBehaviour.WRAP_CONTENT;
            z = constraintWidget.mParent != null && constraintWidget.mParent.mListDimensionBehaviors[1] == DimensionBehaviour.WRAP_CONTENT;
            if ((constraintWidget.mLeft.mTarget == null || constraintWidget.mLeft.mTarget.mTarget != constraintWidget.mLeft) && (constraintWidget.mRight.mTarget == null || constraintWidget.mRight.mTarget.mTarget != constraintWidget.mRight)) {
                z7 = false;
            } else {
                ((ConstraintWidgetContainer) constraintWidget.mParent).addChain(constraintWidget, 0);
                z7 = true;
            }
            if ((constraintWidget.mTop.mTarget == null || constraintWidget.mTop.mTarget.mTarget != constraintWidget.mTop) && (constraintWidget.mBottom.mTarget == null || constraintWidget.mBottom.mTarget.mTarget != constraintWidget.mBottom)) {
                z2 = false;
            } else {
                ((ConstraintWidgetContainer) constraintWidget.mParent).addChain(constraintWidget, 1);
                z2 = true;
            }
            if (z8 && constraintWidget.mVisibility != 8 && constraintWidget.mLeft.mTarget == null && constraintWidget.mRight.mTarget == null) {
                linearSystem2.addGreaterThan(linearSystem2.createObjectVariable(constraintWidget.mParent.mRight), createObjectVariable2, 0, 1);
            }
            if (z && constraintWidget.mVisibility != 8 && constraintWidget.mTop.mTarget == null && constraintWidget.mBottom.mTarget == null && constraintWidget.mBaseline == null) {
                linearSystem2.addGreaterThan(linearSystem2.createObjectVariable(constraintWidget.mParent.mBottom), createObjectVariable4, 0, 1);
            }
            z3 = z;
            z4 = z7;
            z5 = z2;
            z = z8;
        } else {
            z = false;
            z3 = z;
            z4 = z3;
            z5 = z4;
        }
        int i4 = constraintWidget.mWidth;
        if (i4 < constraintWidget.mMinWidth) {
            i4 = constraintWidget.mMinWidth;
        }
        int i5 = constraintWidget.mHeight;
        if (i5 < constraintWidget.mMinHeight) {
            i5 = constraintWidget.mMinHeight;
        }
        z2 = constraintWidget.mListDimensionBehaviors[0] != DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z9 = constraintWidget.mListDimensionBehaviors[1] != DimensionBehaviour.MATCH_CONSTRAINT;
        constraintWidget.mResolvedDimensionRatioSide = constraintWidget.mDimensionRatioSide;
        constraintWidget.mResolvedDimensionRatio = constraintWidget.mDimensionRatio;
        if (constraintWidget.mDimensionRatio <= 0.0f || constraintWidget.mVisibility == 8) {
            i = i4;
            i2 = i5;
            i3 = 0;
        } else {
            if (constraintWidget.mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT) {
                setupDimensionRatio(z, z3, z2, z9);
            } else if (constraintWidget.mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT) {
                constraintWidget.mResolvedDimensionRatioSide = 0;
                i4 = (int) (constraintWidget.mResolvedDimensionRatio * ((float) constraintWidget.mHeight));
            } else if (constraintWidget.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT) {
                constraintWidget.mResolvedDimensionRatioSide = 1;
                if (constraintWidget.mDimensionRatioSide == -1) {
                    constraintWidget.mResolvedDimensionRatio = 1.0f / constraintWidget.mResolvedDimensionRatio;
                }
                i = i4;
                i2 = (int) (constraintWidget.mResolvedDimensionRatio * ((float) constraintWidget.mWidth));
                i3 = 1;
            }
            i = i4;
            i2 = i5;
            i3 = 1;
        }
        boolean z10 = i3 != 0 && (constraintWidget.mResolvedDimensionRatioSide == 0 || constraintWidget.mResolvedDimensionRatioSide == -1);
        boolean z11 = constraintWidget.mListDimensionBehaviors[0] == DimensionBehaviour.WRAP_CONTENT && (constraintWidget instanceof ConstraintWidgetContainer);
        boolean isConnected = constraintWidget.mCenter.isConnected() ^ 1;
        if (constraintWidget.mHorizontalResolution != 2) {
            z6 = z3;
            solverVariable = createObjectVariable5;
            solverVariable2 = createObjectVariable4;
            solverVariable3 = createObjectVariable3;
            solverVariable4 = createObjectVariable2;
            applyConstraints(linearSystem2, z, constraintWidget.mParent != null ? linearSystem2.createObjectVariable(constraintWidget.mParent.mLeft) : null, constraintWidget.mParent != null ? linearSystem2.createObjectVariable(constraintWidget.mParent.mRight) : null, constraintWidget.mListDimensionBehaviors[0], z11, constraintWidget.mLeft, constraintWidget.mRight, constraintWidget.mX, i, constraintWidget.mMinWidth, constraintWidget.mMaxDimension[0], constraintWidget.mHorizontalBiasPercent, z10, z4, constraintWidget.mMatchConstraintDefaultWidth, constraintWidget.mMatchConstraintMinWidth, constraintWidget.mMatchConstraintMaxWidth, constraintWidget.mMatchConstraintPercentWidth, isConnected);
            constraintWidget = this;
        } else {
            z6 = z3;
            solverVariable = createObjectVariable5;
            solverVariable2 = createObjectVariable4;
            solverVariable3 = createObjectVariable3;
            solverVariable4 = createObjectVariable2;
        }
        if (constraintWidget.mVerticalResolution != 2) {
            LinearSystem linearSystem3;
            boolean z12;
            int i6;
            SolverVariable solverVariable5;
            ConstraintWidget constraintWidget2;
            z11 = constraintWidget.mListDimensionBehaviors[1] == DimensionBehaviour.WRAP_CONTENT && (constraintWidget instanceof ConstraintWidgetContainer);
            z4 = i3 != 0 && (constraintWidget.mResolvedDimensionRatioSide == 1 || constraintWidget.mResolvedDimensionRatioSide == -1);
            if (constraintWidget.mBaselineDistance <= 0) {
                createObjectVariable3 = solverVariable3;
                linearSystem3 = linearSystem;
            } else if (constraintWidget.mBaseline.getResolutionNode().state == 1) {
                linearSystem3 = linearSystem;
                constraintWidget.mBaseline.getResolutionNode().addResolvedValue(linearSystem3);
                createObjectVariable3 = solverVariable3;
            } else {
                linearSystem3 = linearSystem;
                SolverVariable solverVariable6 = solverVariable;
                createObjectVariable3 = solverVariable3;
                linearSystem3.addEquality(solverVariable6, createObjectVariable3, getBaselineDistance(), 6);
                if (constraintWidget.mBaseline.mTarget != null) {
                    linearSystem3.addEquality(solverVariable6, linearSystem3.createObjectVariable(constraintWidget.mBaseline.mTarget), 0, 6);
                    z12 = false;
                    i6 = i2;
                    solverVariable5 = createObjectVariable3;
                    constraintWidget.applyConstraints(linearSystem3, z6, constraintWidget.mParent == null ? linearSystem3.createObjectVariable(constraintWidget.mParent.mTop) : null, constraintWidget.mParent == null ? linearSystem3.createObjectVariable(constraintWidget.mParent.mBottom) : null, constraintWidget.mListDimensionBehaviors[1], z11, constraintWidget.mTop, constraintWidget.mBottom, constraintWidget.mY, i6, constraintWidget.mMinHeight, constraintWidget.mMaxDimension[1], constraintWidget.mVerticalBiasPercent, z4, z5, constraintWidget.mMatchConstraintDefaultHeight, constraintWidget.mMatchConstraintMinHeight, constraintWidget.mMatchConstraintMaxHeight, constraintWidget.mMatchConstraintPercentHeight, z12);
                    if (i3 != 0) {
                        constraintWidget2 = this;
                    } else if (this.mResolvedDimensionRatioSide != 1) {
                        linearSystem.addRatio(solverVariable2, solverVariable5, solverVariable4, createObjectVariable, constraintWidget2.mResolvedDimensionRatio, 6);
                    } else {
                        linearSystem.addRatio(solverVariable4, createObjectVariable, solverVariable2, solverVariable5, constraintWidget2.mResolvedDimensionRatio, 6);
                    }
                    if (constraintWidget2.mCenter.isConnected()) {
                        linearSystem.addCenterPoint(constraintWidget2, constraintWidget2.mCenter.getTarget().getOwner(), (float) Math.toRadians((double) (constraintWidget2.mCircleConstraintAngle + 90.0f)), constraintWidget2.mCenter.getMargin());
                    }
                }
            }
            z12 = isConnected;
            if (constraintWidget.mParent == null) {
            }
            if (constraintWidget.mParent == null) {
            }
            i6 = i2;
            solverVariable5 = createObjectVariable3;
            constraintWidget.applyConstraints(linearSystem3, z6, constraintWidget.mParent == null ? linearSystem3.createObjectVariable(constraintWidget.mParent.mTop) : null, constraintWidget.mParent == null ? linearSystem3.createObjectVariable(constraintWidget.mParent.mBottom) : null, constraintWidget.mListDimensionBehaviors[1], z11, constraintWidget.mTop, constraintWidget.mBottom, constraintWidget.mY, i6, constraintWidget.mMinHeight, constraintWidget.mMaxDimension[1], constraintWidget.mVerticalBiasPercent, z4, z5, constraintWidget.mMatchConstraintDefaultHeight, constraintWidget.mMatchConstraintMinHeight, constraintWidget.mMatchConstraintMaxHeight, constraintWidget.mMatchConstraintPercentHeight, z12);
            if (i3 != 0) {
                constraintWidget2 = this;
            } else if (this.mResolvedDimensionRatioSide != 1) {
                linearSystem.addRatio(solverVariable4, createObjectVariable, solverVariable2, solverVariable5, constraintWidget2.mResolvedDimensionRatio, 6);
            } else {
                linearSystem.addRatio(solverVariable2, solverVariable5, solverVariable4, createObjectVariable, constraintWidget2.mResolvedDimensionRatio, 6);
            }
            if (constraintWidget2.mCenter.isConnected()) {
                linearSystem.addCenterPoint(constraintWidget2, constraintWidget2.mCenter.getTarget().getOwner(), (float) Math.toRadians((double) (constraintWidget2.mCircleConstraintAngle + 90.0f)), constraintWidget2.mCenter.getMargin());
            }
        }
    }

    public void setupDimensionRatio(boolean z, boolean z2, boolean z3, boolean z4) {
        if (this.mMatchConstraintDefaultWidth == 0) {
            this.mMatchConstraintDefaultWidth = 3;
        }
        if (this.mMatchConstraintDefaultHeight == 0) {
            this.mMatchConstraintDefaultHeight = 3;
        }
        if (this.mResolvedDimensionRatioSide == -1) {
            if (z3 && !z4) {
                this.mResolvedDimensionRatioSide = 0;
            } else if (!z3 && z4) {
                this.mResolvedDimensionRatioSide = 1;
                if (this.mDimensionRatioSide) {
                    this.mResolvedDimensionRatio = true / this.mResolvedDimensionRatio;
                }
            }
        }
        if (!this.mResolvedDimensionRatioSide && (!this.mTop.isConnected() || !this.mBottom.isConnected())) {
            this.mResolvedDimensionRatioSide = 1;
        } else if (this.mResolvedDimensionRatioSide && !(this.mLeft.isConnected() && this.mRight.isConnected())) {
            this.mResolvedDimensionRatioSide = 0;
        }
        if (this.mResolvedDimensionRatioSide && !(this.mTop.isConnected() && this.mBottom.isConnected() && this.mLeft.isConnected() && this.mRight.isConnected())) {
            if (this.mTop.isConnected() && this.mBottom.isConnected()) {
                this.mResolvedDimensionRatioSide = 0;
            } else if (this.mLeft.isConnected() && this.mRight.isConnected()) {
                this.mResolvedDimensionRatio = true / this.mResolvedDimensionRatio;
                this.mResolvedDimensionRatioSide = 1;
            }
        }
        if (this.mResolvedDimensionRatioSide) {
            if (z && !z2) {
                this.mResolvedDimensionRatioSide = 0;
            } else if (!z && z2) {
                this.mResolvedDimensionRatio = true / this.mResolvedDimensionRatio;
                this.mResolvedDimensionRatioSide = 1;
            }
        }
        if (!this.mResolvedDimensionRatioSide) {
            return;
        }
        if (this.mMatchConstraintMinWidth <= false && !this.mMatchConstraintMinHeight) {
            this.mResolvedDimensionRatioSide = 0;
        } else if (this.mMatchConstraintMinWidth || this.mMatchConstraintMinHeight > false) {
            this.mResolvedDimensionRatio = 1.0f / this.mResolvedDimensionRatio;
            this.mResolvedDimensionRatioSide = 1;
        } else {
            this.mResolvedDimensionRatio = 1.0f / this.mResolvedDimensionRatio;
            this.mResolvedDimensionRatioSide = 1;
        }
    }

    private void applyConstraints(LinearSystem linearSystem, boolean z, SolverVariable solverVariable, SolverVariable solverVariable2, DimensionBehaviour dimensionBehaviour, boolean z2, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i, int i2, int i3, int i4, float f, boolean z3, boolean z4, int i5, int i6, int i7, float f2, boolean z5) {
        ConstraintWidget constraintWidget = this;
        LinearSystem linearSystem2 = linearSystem;
        SolverVariable solverVariable3 = solverVariable;
        SolverVariable solverVariable4 = solverVariable2;
        int i8 = i3;
        int i9 = i4;
        SolverVariable createObjectVariable = linearSystem2.createObjectVariable(constraintAnchor);
        SolverVariable createObjectVariable2 = linearSystem2.createObjectVariable(constraintAnchor2);
        SolverVariable createObjectVariable3 = linearSystem2.createObjectVariable(constraintAnchor.getTarget());
        SolverVariable createObjectVariable4 = linearSystem2.createObjectVariable(constraintAnchor2.getTarget());
        if (linearSystem2.graphOptimizer && constraintAnchor.getResolutionNode().state == 1 && constraintAnchor2.getResolutionNode().state == 1) {
            if (LinearSystem.getMetrics() != null) {
                Metrics metrics = LinearSystem.getMetrics();
                metrics.resolvedWidgets++;
            }
            constraintAnchor.getResolutionNode().addResolvedValue(linearSystem2);
            constraintAnchor2.getResolutionNode().addResolvedValue(linearSystem2);
            if (!z4 && z) {
                linearSystem2.addGreaterThan(solverVariable4, createObjectVariable2, 0, 6);
            }
            return;
        }
        Object obj;
        int i10;
        int i11;
        int i12;
        SolverVariable solverVariable5;
        SolverVariable solverVariable6;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        SolverVariable solverVariable7;
        int i19;
        int i20;
        int i21;
        int i22;
        SolverVariable createObjectVariable5;
        SolverVariable createObjectVariable6;
        int i23;
        SolverVariable solverVariable8;
        int i24;
        SolverVariable solverVariable9;
        SolverVariable solverVariable10;
        SolverVariable solverVariable11;
        SolverVariable solverVariable12;
        SolverVariable solverVariable13;
        if (LinearSystem.getMetrics() != null) {
            Metrics metrics2 = LinearSystem.getMetrics();
            metrics2.nonresolvedWidgets++;
        }
        boolean isConnected = constraintAnchor.isConnected();
        boolean isConnected2 = constraintAnchor2.isConnected();
        boolean isConnected3 = constraintWidget.mCenter.isConnected();
        int i25 = isConnected ? 1 : 0;
        if (isConnected2) {
            i25++;
        }
        if (isConnected3) {
            i25++;
        }
        int i26 = z3 ? 3 : i5;
        switch (dimensionBehaviour) {
            case MATCH_CONSTRAINT:
                obj = 1;
                break;
            default:
                obj = null;
                break;
        }
        int i27 = i25;
        if (constraintWidget.mVisibility == 8) {
            i10 = 0;
            obj = null;
        } else {
            i10 = i2;
        }
        if (z5) {
            if (!isConnected && !isConnected2 && !isConnected3) {
                linearSystem2.addEquality(createObjectVariable, i);
            } else if (isConnected && !isConnected2) {
                i11 = 6;
                linearSystem2.addEquality(createObjectVariable, createObjectVariable3, constraintAnchor.getMargin(), 6);
                if (obj != null) {
                    if (z2) {
                        i12 = i3;
                        linearSystem2.addEquality(createObjectVariable2, createObjectVariable, i10, i11);
                    } else {
                        linearSystem2.addEquality(createObjectVariable2, createObjectVariable, 0, 3);
                        i12 = i3;
                        if (i12 > 0) {
                            linearSystem2.addGreaterThan(createObjectVariable2, createObjectVariable, i12, i11);
                        }
                        i25 = i4;
                        if (i25 < ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) {
                            linearSystem2.addLowerThan(createObjectVariable2, createObjectVariable, i25, i11);
                        }
                    }
                    i11 = i6;
                    solverVariable5 = createObjectVariable3;
                    solverVariable6 = createObjectVariable4;
                    i13 = i26;
                    i10 = i27;
                    i14 = 2;
                    i15 = 1;
                    i16 = 3;
                    i17 = 4;
                    i18 = i7;
                } else {
                    i11 = i3;
                    solverVariable7 = createObjectVariable3;
                    i18 = i6;
                    if (i18 != -2) {
                        i18 = i7;
                        i11 = i10;
                    } else {
                        i11 = i18;
                        i18 = i7;
                    }
                    if (i18 == -2) {
                        i18 = i10;
                    }
                    if (i11 <= 0) {
                        if (z) {
                            i25 = 6;
                            linearSystem2.addGreaterThan(createObjectVariable2, createObjectVariable, i11, 6);
                        } else {
                            i25 = 6;
                            linearSystem2.addGreaterThan(createObjectVariable2, createObjectVariable, i11, 6);
                        }
                        i10 = Math.max(i10, i11);
                    } else {
                        i25 = 6;
                    }
                    if (i18 > 0) {
                        if (z) {
                            linearSystem2.addLowerThan(createObjectVariable2, createObjectVariable, i18, i25);
                        } else {
                            linearSystem2.addLowerThan(createObjectVariable2, createObjectVariable, i18, 1);
                        }
                        i10 = Math.min(i10, i18);
                    }
                    i25 = i10;
                    i19 = i18;
                    i10 = i26;
                    if (i10 == 1) {
                        if (z) {
                            if (z4) {
                                i12 = 4;
                                linearSystem2.addEquality(createObjectVariable2, createObjectVariable, i25, 1);
                            } else {
                                i12 = 4;
                                linearSystem2.addEquality(createObjectVariable2, createObjectVariable, i25, 4);
                            }
                            i17 = i12;
                            i13 = i10;
                            i20 = i25;
                            solverVariable6 = createObjectVariable4;
                            i10 = i27;
                            solverVariable5 = solverVariable7;
                            i21 = i19;
                            i14 = 2;
                            i16 = 3;
                        } else {
                            linearSystem2.addEquality(createObjectVariable2, createObjectVariable, i25, 6);
                            i13 = i10;
                            i20 = i25;
                            solverVariable6 = createObjectVariable4;
                            i10 = i27;
                            solverVariable5 = solverVariable7;
                            i21 = i19;
                            i14 = 2;
                            i16 = 3;
                            i17 = 4;
                        }
                        i15 = 1;
                    } else if (i10 != 2) {
                        i22 = i25;
                        if (constraintAnchor.getType() != Type.TOP) {
                            if (constraintAnchor.getType() == Type.BOTTOM) {
                                createObjectVariable5 = linearSystem2.createObjectVariable(constraintWidget.mParent.getAnchor(Type.LEFT));
                                createObjectVariable6 = linearSystem2.createObjectVariable(constraintWidget.mParent.getAnchor(Type.RIGHT));
                                i13 = i10;
                                i17 = 4;
                                createObjectVariable3 = createObjectVariable4;
                                i10 = i27;
                                i20 = i22;
                                i14 = 2;
                                i15 = 1;
                                i16 = 3;
                                solverVariable6 = createObjectVariable3;
                                solverVariable5 = solverVariable7;
                                i21 = i19;
                                linearSystem2.addConstraint(linearSystem.createRow().createRowDimensionRatio(createObjectVariable2, createObjectVariable, createObjectVariable6, createObjectVariable5, f2));
                                obj = null;
                            }
                        }
                        createObjectVariable5 = linearSystem2.createObjectVariable(constraintWidget.mParent.getAnchor(Type.TOP));
                        createObjectVariable6 = linearSystem2.createObjectVariable(constraintWidget.mParent.getAnchor(Type.BOTTOM));
                        i13 = i10;
                        i17 = 4;
                        createObjectVariable3 = createObjectVariable4;
                        i10 = i27;
                        i20 = i22;
                        i14 = 2;
                        i15 = 1;
                        i16 = 3;
                        solverVariable6 = createObjectVariable3;
                        solverVariable5 = solverVariable7;
                        i21 = i19;
                        linearSystem2.addConstraint(linearSystem.createRow().createRowDimensionRatio(createObjectVariable2, createObjectVariable, createObjectVariable6, createObjectVariable5, f2));
                        obj = null;
                    } else {
                        i13 = i10;
                        i20 = i25;
                        i14 = 2;
                        i17 = 4;
                        solverVariable6 = createObjectVariable4;
                        i10 = i27;
                        solverVariable5 = solverVariable7;
                        i21 = i19;
                        i15 = 1;
                        i16 = 3;
                    }
                    if (obj != null || r7 == r10 || z3) {
                        i18 = i21;
                    } else {
                        i12 = Math.max(i11, i20);
                        i18 = i21;
                        if (i18 > 0) {
                            i12 = Math.min(i18, i12);
                        }
                        linearSystem2.addEquality(createObjectVariable2, createObjectVariable, i12, 6);
                        obj = null;
                    }
                }
                if (z5) {
                    if (z4) {
                        if (!isConnected || isConnected2 || isConnected3) {
                            i23 = 0;
                            solverVariable3 = solverVariable2;
                            if (!isConnected && !isConnected2) {
                                if (z) {
                                    linearSystem2.addGreaterThan(solverVariable3, createObjectVariable2, 0, 5);
                                }
                                solverVariable8 = createObjectVariable2;
                                i8 = 6;
                                if (z) {
                                    linearSystem2.addGreaterThan(solverVariable2, solverVariable8, i23, i8);
                                }
                                return;
                            } else if (isConnected && isConnected2) {
                                linearSystem2.addEquality(createObjectVariable2, solverVariable6, -constraintAnchor2.getMargin(), 6);
                                if (z) {
                                    linearSystem2.addGreaterThan(createObjectVariable, solverVariable, 0, 5);
                                }
                                solverVariable8 = createObjectVariable2;
                                i8 = 6;
                                if (z) {
                                    linearSystem2.addGreaterThan(solverVariable2, solverVariable8, i23, i8);
                                }
                                return;
                            } else {
                                i10 = i15;
                                i24 = i16;
                                solverVariable9 = solverVariable6;
                                createObjectVariable5 = solverVariable;
                                if (isConnected && isConnected2) {
                                    if (obj == null) {
                                        if (z && i3 == 0) {
                                            linearSystem2.addGreaterThan(createObjectVariable2, createObjectVariable, 0, 6);
                                        }
                                        if (i13 != 0) {
                                            if (i18 <= 0) {
                                                if (i11 > 0) {
                                                    i8 = 6;
                                                    i9 = 0;
                                                    solverVariable10 = solverVariable5;
                                                    linearSystem2.addEquality(createObjectVariable, solverVariable10, constraintAnchor.getMargin(), i8);
                                                    linearSystem2.addEquality(createObjectVariable2, solverVariable9, -constraintAnchor2.getMargin(), i8);
                                                    if (i18 <= 0) {
                                                        if (i11 <= 0) {
                                                            i10 = 0;
                                                        }
                                                    }
                                                    i11 = 5;
                                                    i18 = i9;
                                                }
                                            }
                                            i9 = i10;
                                            i8 = i17;
                                            solverVariable10 = solverVariable5;
                                            linearSystem2.addEquality(createObjectVariable, solverVariable10, constraintAnchor.getMargin(), i8);
                                            linearSystem2.addEquality(createObjectVariable2, solverVariable9, -constraintAnchor2.getMargin(), i8);
                                            if (i18 <= 0) {
                                                if (i11 <= 0) {
                                                    i10 = 0;
                                                }
                                            }
                                            i11 = 5;
                                            i18 = i9;
                                        } else {
                                            i8 = i13;
                                            solverVariable10 = solverVariable5;
                                            if (i8 == i10) {
                                                i18 = i10;
                                                i11 = 6;
                                            } else if (i8 != i24) {
                                                i8 = z3 ? 6 : i17;
                                                linearSystem2.addEquality(createObjectVariable, solverVariable10, constraintAnchor.getMargin(), i8);
                                                linearSystem2.addEquality(createObjectVariable2, solverVariable9, -constraintAnchor2.getMargin(), i8);
                                                i11 = 5;
                                                i18 = i10;
                                            } else {
                                                i11 = 5;
                                                i10 = 0;
                                            }
                                        }
                                        if (i10 == 0) {
                                            solverVariable3 = solverVariable10;
                                            solverVariable11 = createObjectVariable2;
                                            createObjectVariable5 = createObjectVariable;
                                            linearSystem2.addCentering(createObjectVariable, solverVariable10, constraintAnchor.getMargin(), f, solverVariable9, createObjectVariable2, constraintAnchor2.getMargin(), i11);
                                        } else {
                                            solverVariable3 = solverVariable10;
                                            solverVariable11 = createObjectVariable2;
                                            createObjectVariable5 = createObjectVariable;
                                        }
                                        if (i18 == 0) {
                                            i8 = 6;
                                            linearSystem2.addGreaterThan(createObjectVariable5, solverVariable3, constraintAnchor.getMargin(), 6);
                                            solverVariable8 = solverVariable11;
                                            linearSystem2.addLowerThan(solverVariable8, solverVariable9, -constraintAnchor2.getMargin(), 6);
                                        } else {
                                            solverVariable8 = solverVariable11;
                                            i8 = 6;
                                        }
                                        if (z) {
                                            i23 = 0;
                                            linearSystem2.addGreaterThan(createObjectVariable5, solverVariable, 0, i8);
                                            if (z) {
                                                linearSystem2.addGreaterThan(solverVariable2, solverVariable8, i23, i8);
                                            }
                                            return;
                                        }
                                    }
                                    solverVariable10 = solverVariable5;
                                    if (z) {
                                        linearSystem2.addGreaterThan(createObjectVariable, solverVariable10, constraintAnchor.getMargin(), 5);
                                        linearSystem2.addLowerThan(createObjectVariable2, solverVariable9, -constraintAnchor2.getMargin(), 5);
                                    }
                                    i11 = 5;
                                    i18 = 0;
                                    if (i10 == 0) {
                                        solverVariable3 = solverVariable10;
                                        solverVariable11 = createObjectVariable2;
                                        createObjectVariable5 = createObjectVariable;
                                    } else {
                                        solverVariable3 = solverVariable10;
                                        solverVariable11 = createObjectVariable2;
                                        createObjectVariable5 = createObjectVariable;
                                        linearSystem2.addCentering(createObjectVariable, solverVariable10, constraintAnchor.getMargin(), f, solverVariable9, createObjectVariable2, constraintAnchor2.getMargin(), i11);
                                    }
                                    if (i18 == 0) {
                                        solverVariable8 = solverVariable11;
                                        i8 = 6;
                                    } else {
                                        i8 = 6;
                                        linearSystem2.addGreaterThan(createObjectVariable5, solverVariable3, constraintAnchor.getMargin(), 6);
                                        solverVariable8 = solverVariable11;
                                        linearSystem2.addLowerThan(solverVariable8, solverVariable9, -constraintAnchor2.getMargin(), 6);
                                    }
                                    if (z) {
                                        i23 = 0;
                                        linearSystem2.addGreaterThan(createObjectVariable5, solverVariable, 0, i8);
                                        if (z) {
                                            linearSystem2.addGreaterThan(solverVariable2, solverVariable8, i23, i8);
                                        }
                                        return;
                                    }
                                }
                                solverVariable8 = createObjectVariable2;
                                i8 = 6;
                                if (z) {
                                    linearSystem2.addGreaterThan(solverVariable2, solverVariable8, i23, i8);
                                }
                                return;
                            }
                        } else if (z) {
                            i23 = 0;
                            linearSystem2.addGreaterThan(solverVariable2, createObjectVariable2, 0, 5);
                            solverVariable8 = createObjectVariable2;
                            i8 = 6;
                            if (z) {
                                linearSystem2.addGreaterThan(solverVariable2, solverVariable8, i23, i8);
                            }
                            return;
                        } else {
                            solverVariable8 = createObjectVariable2;
                            i8 = 6;
                        }
                        i23 = 0;
                        if (z) {
                            linearSystem2.addGreaterThan(solverVariable2, solverVariable8, i23, i8);
                        }
                        return;
                    }
                }
                solverVariable8 = createObjectVariable2;
                solverVariable12 = createObjectVariable;
                createObjectVariable6 = solverVariable;
                solverVariable13 = solverVariable2;
                if (i10 < i14 && z) {
                    linearSystem2.addGreaterThan(solverVariable12, createObjectVariable6, 0, 6);
                    linearSystem2.addGreaterThan(solverVariable13, solverVariable8, 0, 6);
                }
            }
        }
        i11 = 6;
        if (obj != null) {
            i11 = i3;
            solverVariable7 = createObjectVariable3;
            i18 = i6;
            if (i18 != -2) {
                i11 = i18;
                i18 = i7;
            } else {
                i18 = i7;
                i11 = i10;
            }
            if (i18 == -2) {
                i18 = i10;
            }
            if (i11 <= 0) {
                i25 = 6;
            } else {
                if (z) {
                    i25 = 6;
                    linearSystem2.addGreaterThan(createObjectVariable2, createObjectVariable, i11, 6);
                } else {
                    i25 = 6;
                    linearSystem2.addGreaterThan(createObjectVariable2, createObjectVariable, i11, 6);
                }
                i10 = Math.max(i10, i11);
            }
            if (i18 > 0) {
                if (z) {
                    linearSystem2.addLowerThan(createObjectVariable2, createObjectVariable, i18, i25);
                } else {
                    linearSystem2.addLowerThan(createObjectVariable2, createObjectVariable, i18, 1);
                }
                i10 = Math.min(i10, i18);
            }
            i25 = i10;
            i19 = i18;
            i10 = i26;
            if (i10 == 1) {
                if (z) {
                    if (z4) {
                        i12 = 4;
                        linearSystem2.addEquality(createObjectVariable2, createObjectVariable, i25, 1);
                    } else {
                        i12 = 4;
                        linearSystem2.addEquality(createObjectVariable2, createObjectVariable, i25, 4);
                    }
                    i17 = i12;
                    i13 = i10;
                    i20 = i25;
                    solverVariable6 = createObjectVariable4;
                    i10 = i27;
                    solverVariable5 = solverVariable7;
                    i21 = i19;
                    i14 = 2;
                    i16 = 3;
                } else {
                    linearSystem2.addEquality(createObjectVariable2, createObjectVariable, i25, 6);
                    i13 = i10;
                    i20 = i25;
                    solverVariable6 = createObjectVariable4;
                    i10 = i27;
                    solverVariable5 = solverVariable7;
                    i21 = i19;
                    i14 = 2;
                    i16 = 3;
                    i17 = 4;
                }
                i15 = 1;
            } else if (i10 != 2) {
                i13 = i10;
                i20 = i25;
                i14 = 2;
                i17 = 4;
                solverVariable6 = createObjectVariable4;
                i10 = i27;
                solverVariable5 = solverVariable7;
                i21 = i19;
                i15 = 1;
                i16 = 3;
            } else {
                i22 = i25;
                if (constraintAnchor.getType() != Type.TOP) {
                    if (constraintAnchor.getType() == Type.BOTTOM) {
                        createObjectVariable5 = linearSystem2.createObjectVariable(constraintWidget.mParent.getAnchor(Type.LEFT));
                        createObjectVariable6 = linearSystem2.createObjectVariable(constraintWidget.mParent.getAnchor(Type.RIGHT));
                        i13 = i10;
                        i17 = 4;
                        createObjectVariable3 = createObjectVariable4;
                        i10 = i27;
                        i20 = i22;
                        i14 = 2;
                        i15 = 1;
                        i16 = 3;
                        solverVariable6 = createObjectVariable3;
                        solverVariable5 = solverVariable7;
                        i21 = i19;
                        linearSystem2.addConstraint(linearSystem.createRow().createRowDimensionRatio(createObjectVariable2, createObjectVariable, createObjectVariable6, createObjectVariable5, f2));
                        obj = null;
                    }
                }
                createObjectVariable5 = linearSystem2.createObjectVariable(constraintWidget.mParent.getAnchor(Type.TOP));
                createObjectVariable6 = linearSystem2.createObjectVariable(constraintWidget.mParent.getAnchor(Type.BOTTOM));
                i13 = i10;
                i17 = 4;
                createObjectVariable3 = createObjectVariable4;
                i10 = i27;
                i20 = i22;
                i14 = 2;
                i15 = 1;
                i16 = 3;
                solverVariable6 = createObjectVariable3;
                solverVariable5 = solverVariable7;
                i21 = i19;
                linearSystem2.addConstraint(linearSystem.createRow().createRowDimensionRatio(createObjectVariable2, createObjectVariable, createObjectVariable6, createObjectVariable5, f2));
                obj = null;
            }
            if (obj != null) {
            }
            i18 = i21;
        } else {
            if (z2) {
                i12 = i3;
                linearSystem2.addEquality(createObjectVariable2, createObjectVariable, i10, i11);
            } else {
                linearSystem2.addEquality(createObjectVariable2, createObjectVariable, 0, 3);
                i12 = i3;
                if (i12 > 0) {
                    linearSystem2.addGreaterThan(createObjectVariable2, createObjectVariable, i12, i11);
                }
                i25 = i4;
                if (i25 < ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) {
                    linearSystem2.addLowerThan(createObjectVariable2, createObjectVariable, i25, i11);
                }
            }
            i11 = i6;
            solverVariable5 = createObjectVariable3;
            solverVariable6 = createObjectVariable4;
            i13 = i26;
            i10 = i27;
            i14 = 2;
            i15 = 1;
            i16 = 3;
            i17 = 4;
            i18 = i7;
        }
        if (z5) {
            if (z4) {
                if (isConnected) {
                }
                i23 = 0;
                solverVariable3 = solverVariable2;
                if (!isConnected) {
                }
                if (isConnected) {
                }
                i10 = i15;
                i24 = i16;
                solverVariable9 = solverVariable6;
                createObjectVariable5 = solverVariable;
                if (obj == null) {
                    solverVariable10 = solverVariable5;
                    if (z) {
                        linearSystem2.addGreaterThan(createObjectVariable, solverVariable10, constraintAnchor.getMargin(), 5);
                        linearSystem2.addLowerThan(createObjectVariable2, solverVariable9, -constraintAnchor2.getMargin(), 5);
                    }
                    i11 = 5;
                } else {
                    linearSystem2.addGreaterThan(createObjectVariable2, createObjectVariable, 0, 6);
                    if (i13 != 0) {
                        i8 = i13;
                        solverVariable10 = solverVariable5;
                        if (i8 == i10) {
                            i18 = i10;
                            i11 = 6;
                        } else if (i8 != i24) {
                            i11 = 5;
                            i10 = 0;
                        } else {
                            if (z3) {
                            }
                            linearSystem2.addEquality(createObjectVariable, solverVariable10, constraintAnchor.getMargin(), i8);
                            linearSystem2.addEquality(createObjectVariable2, solverVariable9, -constraintAnchor2.getMargin(), i8);
                            i11 = 5;
                            i18 = i10;
                        }
                    } else {
                        if (i18 <= 0) {
                            if (i11 > 0) {
                                i8 = 6;
                                i9 = 0;
                                solverVariable10 = solverVariable5;
                                linearSystem2.addEquality(createObjectVariable, solverVariable10, constraintAnchor.getMargin(), i8);
                                linearSystem2.addEquality(createObjectVariable2, solverVariable9, -constraintAnchor2.getMargin(), i8);
                                if (i18 <= 0) {
                                    if (i11 <= 0) {
                                        i10 = 0;
                                    }
                                }
                                i11 = 5;
                                i18 = i9;
                            }
                        }
                        i9 = i10;
                        i8 = i17;
                        solverVariable10 = solverVariable5;
                        linearSystem2.addEquality(createObjectVariable, solverVariable10, constraintAnchor.getMargin(), i8);
                        linearSystem2.addEquality(createObjectVariable2, solverVariable9, -constraintAnchor2.getMargin(), i8);
                        if (i18 <= 0) {
                            if (i11 <= 0) {
                                i10 = 0;
                            }
                        }
                        i11 = 5;
                        i18 = i9;
                    }
                    if (i10 == 0) {
                        solverVariable3 = solverVariable10;
                        solverVariable11 = createObjectVariable2;
                        createObjectVariable5 = createObjectVariable;
                        linearSystem2.addCentering(createObjectVariable, solverVariable10, constraintAnchor.getMargin(), f, solverVariable9, createObjectVariable2, constraintAnchor2.getMargin(), i11);
                    } else {
                        solverVariable3 = solverVariable10;
                        solverVariable11 = createObjectVariable2;
                        createObjectVariable5 = createObjectVariable;
                    }
                    if (i18 == 0) {
                        i8 = 6;
                        linearSystem2.addGreaterThan(createObjectVariable5, solverVariable3, constraintAnchor.getMargin(), 6);
                        solverVariable8 = solverVariable11;
                        linearSystem2.addLowerThan(solverVariable8, solverVariable9, -constraintAnchor2.getMargin(), 6);
                    } else {
                        solverVariable8 = solverVariable11;
                        i8 = 6;
                    }
                    if (z) {
                        i23 = 0;
                        linearSystem2.addGreaterThan(createObjectVariable5, solverVariable, 0, i8);
                        if (z) {
                            linearSystem2.addGreaterThan(solverVariable2, solverVariable8, i23, i8);
                        }
                        return;
                    }
                    i23 = 0;
                    if (z) {
                        linearSystem2.addGreaterThan(solverVariable2, solverVariable8, i23, i8);
                    }
                    return;
                }
                i18 = 0;
                if (i10 == 0) {
                    solverVariable3 = solverVariable10;
                    solverVariable11 = createObjectVariable2;
                    createObjectVariable5 = createObjectVariable;
                } else {
                    solverVariable3 = solverVariable10;
                    solverVariable11 = createObjectVariable2;
                    createObjectVariable5 = createObjectVariable;
                    linearSystem2.addCentering(createObjectVariable, solverVariable10, constraintAnchor.getMargin(), f, solverVariable9, createObjectVariable2, constraintAnchor2.getMargin(), i11);
                }
                if (i18 == 0) {
                    solverVariable8 = solverVariable11;
                    i8 = 6;
                } else {
                    i8 = 6;
                    linearSystem2.addGreaterThan(createObjectVariable5, solverVariable3, constraintAnchor.getMargin(), 6);
                    solverVariable8 = solverVariable11;
                    linearSystem2.addLowerThan(solverVariable8, solverVariable9, -constraintAnchor2.getMargin(), 6);
                }
                if (z) {
                    i23 = 0;
                    linearSystem2.addGreaterThan(createObjectVariable5, solverVariable, 0, i8);
                    if (z) {
                        linearSystem2.addGreaterThan(solverVariable2, solverVariable8, i23, i8);
                    }
                    return;
                }
                i23 = 0;
                if (z) {
                    linearSystem2.addGreaterThan(solverVariable2, solverVariable8, i23, i8);
                }
                return;
            }
        }
        solverVariable8 = createObjectVariable2;
        solverVariable12 = createObjectVariable;
        createObjectVariable6 = solverVariable;
        solverVariable13 = solverVariable2;
        linearSystem2.addGreaterThan(solverVariable12, createObjectVariable6, 0, 6);
        linearSystem2.addGreaterThan(solverVariable13, solverVariable8, 0, 6);
    }

    public void updateFromSolver(LinearSystem linearSystem) {
        setFrame(linearSystem.getObjectVariableValue(this.mLeft), linearSystem.getObjectVariableValue(this.mTop), linearSystem.getObjectVariableValue(this.mRight), linearSystem.getObjectVariableValue(this.mBottom));
    }
}

package android.support.constraint.solver.widgets;

import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.Metrics;
import android.support.constraint.solver.widgets.ConstraintAnchor.Type;
import android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Arrays;

public class ConstraintWidgetContainer extends WidgetContainer {
    private static final boolean DEBUG = false;
    static final boolean DEBUG_GRAPH = false;
    private static final boolean DEBUG_LAYOUT = false;
    private static final int MAX_ITERATIONS = 8;
    private static final boolean USE_SNAPSHOT = true;
    int mDebugSolverPassCount;
    private boolean mHeightMeasuredTooSmall;
    ConstraintWidget[] mHorizontalChainsArray;
    int mHorizontalChainsSize;
    private boolean mIsRtl;
    private int mOptimizationLevel;
    int mPaddingBottom;
    int mPaddingLeft;
    int mPaddingRight;
    int mPaddingTop;
    private Snapshot mSnapshot;
    protected LinearSystem mSystem;
    ConstraintWidget[] mVerticalChainsArray;
    int mVerticalChainsSize;
    private boolean mWidthMeasuredTooSmall;

    public String getType() {
        return "ConstraintLayout";
    }

    public boolean handlesInternalConstraints() {
        return false;
    }

    public void fillMetrics(Metrics metrics) {
        this.mSystem.fillMetrics(metrics);
    }

    public ConstraintWidgetContainer() {
        this.mIsRtl = false;
        this.mSystem = new LinearSystem();
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.mVerticalChainsArray = new ConstraintWidget[4];
        this.mHorizontalChainsArray = new ConstraintWidget[4];
        this.mOptimizationLevel = 3;
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
        this.mDebugSolverPassCount = 0;
    }

    public ConstraintWidgetContainer(int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.mIsRtl = false;
        this.mSystem = new LinearSystem();
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.mVerticalChainsArray = new ConstraintWidget[4];
        this.mHorizontalChainsArray = new ConstraintWidget[4];
        this.mOptimizationLevel = 3;
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
        this.mDebugSolverPassCount = 0;
    }

    public ConstraintWidgetContainer(int i, int i2) {
        super(i, i2);
        this.mIsRtl = false;
        this.mSystem = new LinearSystem();
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.mVerticalChainsArray = new ConstraintWidget[4];
        this.mHorizontalChainsArray = new ConstraintWidget[4];
        this.mOptimizationLevel = 3;
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
        this.mDebugSolverPassCount = 0;
    }

    public void setOptimizationLevel(int i) {
        this.mOptimizationLevel = i;
    }

    public int getOptimizationLevel() {
        return this.mOptimizationLevel;
    }

    public boolean optimizeFor(int i) {
        return (this.mOptimizationLevel & i) == i ? USE_SNAPSHOT : false;
    }

    public void reset() {
        this.mSystem.reset();
        this.mPaddingLeft = 0;
        this.mPaddingRight = 0;
        this.mPaddingTop = 0;
        this.mPaddingBottom = 0;
        super.reset();
    }

    public boolean isWidthMeasuredTooSmall() {
        return this.mWidthMeasuredTooSmall;
    }

    public boolean isHeightMeasuredTooSmall() {
        return this.mHeightMeasuredTooSmall;
    }

    public boolean addChildrenToSolver(LinearSystem linearSystem) {
        addToSolver(linearSystem);
        int size = this.mChildren.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) this.mChildren.get(i);
            if (constraintWidget instanceof ConstraintWidgetContainer) {
                DimensionBehaviour dimensionBehaviour = constraintWidget.mListDimensionBehaviors[0];
                DimensionBehaviour dimensionBehaviour2 = constraintWidget.mListDimensionBehaviors[1];
                if (dimensionBehaviour == DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidget.setHorizontalDimensionBehaviour(DimensionBehaviour.FIXED);
                }
                if (dimensionBehaviour2 == DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidget.setVerticalDimensionBehaviour(DimensionBehaviour.FIXED);
                }
                constraintWidget.addToSolver(linearSystem);
                if (dimensionBehaviour == DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidget.setHorizontalDimensionBehaviour(dimensionBehaviour);
                }
                if (dimensionBehaviour2 == DimensionBehaviour.WRAP_CONTENT) {
                    constraintWidget.setVerticalDimensionBehaviour(dimensionBehaviour2);
                }
            } else {
                Optimizer.checkMatchParent(this, linearSystem, constraintWidget);
                constraintWidget.addToSolver(linearSystem);
            }
        }
        if (this.mHorizontalChainsSize > 0) {
            Chain.applyChainConstraints(this, linearSystem, 0);
        }
        if (this.mVerticalChainsSize > 0) {
            Chain.applyChainConstraints(this, linearSystem, 1);
        }
        return USE_SNAPSHOT;
    }

    public void updateChildrenFromSolver(LinearSystem linearSystem, boolean[] zArr) {
        zArr[2] = false;
        updateFromSolver(linearSystem);
        int size = this.mChildren.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) this.mChildren.get(i);
            constraintWidget.updateFromSolver(linearSystem);
            if (constraintWidget.mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.getWidth() < constraintWidget.getWrapWidth()) {
                zArr[2] = USE_SNAPSHOT;
            }
            if (constraintWidget.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.getHeight() < constraintWidget.getWrapHeight()) {
                zArr[2] = USE_SNAPSHOT;
            }
        }
    }

    public void setPadding(int i, int i2, int i3, int i4) {
        this.mPaddingLeft = i;
        this.mPaddingTop = i2;
        this.mPaddingRight = i3;
        this.mPaddingBottom = i4;
    }

    public void setRtl(boolean z) {
        this.mIsRtl = z;
    }

    public boolean isRtl() {
        return this.mIsRtl;
    }

    public void analyze(int i) {
        super.analyze(i);
        int size = this.mChildren.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((ConstraintWidget) this.mChildren.get(i2)).analyze(i);
        }
    }

    public void layout() {
        int i;
        boolean addChildrenToSolver;
        Exception e;
        Exception exception;
        PrintStream printStream;
        StringBuilder stringBuilder;
        boolean z;
        boolean z2;
        DimensionBehaviour[] dimensionBehaviourArr;
        DimensionBehaviour dimensionBehaviour;
        int i2 = this.mX;
        int i3 = this.mY;
        int max = Math.max(0, getWidth());
        int max2 = Math.max(0, getHeight());
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
        if (this.mParent != null) {
            if (r1.mSnapshot == null) {
                r1.mSnapshot = new Snapshot(r1);
            }
            r1.mSnapshot.updateFrom(r1);
            setX(r1.mPaddingLeft);
            setY(r1.mPaddingTop);
            resetAnchors();
            resetSolverVariables(r1.mSystem.getCache());
        } else {
            r1.mX = 0;
            r1.mY = 0;
        }
        int i4 = 1;
        if (r1.mOptimizationLevel != 0) {
            if (!optimizeFor(8)) {
                optimizeReset();
            }
            optimize();
            r1.mSystem.graphOptimizer = USE_SNAPSHOT;
        } else {
            r1.mSystem.graphOptimizer = false;
        }
        DimensionBehaviour dimensionBehaviour2 = r1.mListDimensionBehaviors[1];
        DimensionBehaviour dimensionBehaviour3 = r1.mListDimensionBehaviors[0];
        resetChains();
        int size = r1.mChildren.size();
        for (i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) r1.mChildren.get(i);
            if (constraintWidget instanceof WidgetContainer) {
                ((WidgetContainer) constraintWidget).layout();
            }
        }
        int i5 = 0;
        boolean z3 = i5;
        boolean z4 = true;
        while (z4) {
            int i6;
            int i7;
            ConstraintWidget constraintWidget2;
            i5 += i4;
            try {
                r1.mSystem.reset();
                addChildrenToSolver = addChildrenToSolver(r1.mSystem);
                if (addChildrenToSolver) {
                    try {
                        r1.mSystem.minimize();
                    } catch (Exception e2) {
                        e = e2;
                        exception = e;
                        exception.printStackTrace();
                        printStream = System.out;
                        stringBuilder = new StringBuilder();
                        stringBuilder.append("EXCEPTION : ");
                        stringBuilder.append(exception);
                        printStream.println(stringBuilder.toString());
                        i6 = 2;
                        if (!addChildrenToSolver) {
                            updateChildrenFromSolver(r1.mSystem, Optimizer.flags);
                        } else {
                            updateFromSolver(r1.mSystem);
                            i7 = 0;
                            while (i7 < size) {
                                constraintWidget2 = (ConstraintWidget) r1.mChildren.get(i7);
                                if (constraintWidget2.mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT) {
                                }
                                if (constraintWidget2.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT) {
                                }
                                i7++;
                                i6 = 2;
                            }
                        }
                        i4 = i6;
                        if (i5 < 8) {
                        }
                        z = z3;
                        z2 = false;
                        i7 = Math.max(r1.mMinWidth, getWidth());
                        if (i7 > getWidth()) {
                            setWidth(i7);
                            r1.mListDimensionBehaviors[0] = DimensionBehaviour.FIXED;
                            z2 = USE_SNAPSHOT;
                            z = USE_SNAPSHOT;
                        }
                        i7 = Math.max(r1.mMinHeight, getHeight());
                        if (i7 > getHeight()) {
                            setHeight(i7);
                            dimensionBehaviourArr = r1.mListDimensionBehaviors;
                            dimensionBehaviour = DimensionBehaviour.FIXED;
                            z4 = USE_SNAPSHOT;
                            dimensionBehaviourArr[1] = dimensionBehaviour;
                            z2 = USE_SNAPSHOT;
                            z = z2;
                        } else {
                            z4 = USE_SNAPSHOT;
                        }
                        if (!z) {
                            r1.mWidthMeasuredTooSmall = z4;
                            r1.mListDimensionBehaviors[0] = DimensionBehaviour.FIXED;
                            setWidth(max);
                            z2 = z4;
                            z = z2;
                            r1.mHeightMeasuredTooSmall = z4;
                            r1.mListDimensionBehaviors[z4] = DimensionBehaviour.FIXED;
                            setHeight(max2);
                            z4 = USE_SNAPSHOT;
                            z3 = USE_SNAPSHOT;
                            i4 = 1;
                        }
                        z4 = z2;
                        z3 = z;
                        i4 = 1;
                    }
                }
            } catch (Exception e3) {
                e = e3;
                addChildrenToSolver = z4;
                exception = e;
                exception.printStackTrace();
                printStream = System.out;
                stringBuilder = new StringBuilder();
                stringBuilder.append("EXCEPTION : ");
                stringBuilder.append(exception);
                printStream.println(stringBuilder.toString());
                i6 = 2;
                if (!addChildrenToSolver) {
                    updateFromSolver(r1.mSystem);
                    i7 = 0;
                    while (i7 < size) {
                        constraintWidget2 = (ConstraintWidget) r1.mChildren.get(i7);
                        if (constraintWidget2.mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT) {
                        }
                        if (constraintWidget2.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT) {
                        }
                        i7++;
                        i6 = 2;
                    }
                } else {
                    updateChildrenFromSolver(r1.mSystem, Optimizer.flags);
                }
                i4 = i6;
                if (i5 < 8) {
                }
                z = z3;
                z2 = false;
                i7 = Math.max(r1.mMinWidth, getWidth());
                if (i7 > getWidth()) {
                    setWidth(i7);
                    r1.mListDimensionBehaviors[0] = DimensionBehaviour.FIXED;
                    z2 = USE_SNAPSHOT;
                    z = USE_SNAPSHOT;
                }
                i7 = Math.max(r1.mMinHeight, getHeight());
                if (i7 > getHeight()) {
                    z4 = USE_SNAPSHOT;
                } else {
                    setHeight(i7);
                    dimensionBehaviourArr = r1.mListDimensionBehaviors;
                    dimensionBehaviour = DimensionBehaviour.FIXED;
                    z4 = USE_SNAPSHOT;
                    dimensionBehaviourArr[1] = dimensionBehaviour;
                    z2 = USE_SNAPSHOT;
                    z = z2;
                }
                if (z) {
                    r1.mWidthMeasuredTooSmall = z4;
                    r1.mListDimensionBehaviors[0] = DimensionBehaviour.FIXED;
                    setWidth(max);
                    z2 = z4;
                    z = z2;
                    r1.mHeightMeasuredTooSmall = z4;
                    r1.mListDimensionBehaviors[z4] = DimensionBehaviour.FIXED;
                    setHeight(max2);
                    z4 = USE_SNAPSHOT;
                    z3 = USE_SNAPSHOT;
                    i4 = 1;
                }
                z4 = z2;
                z3 = z;
                i4 = 1;
            }
            i6 = 2;
            if (!addChildrenToSolver) {
                updateFromSolver(r1.mSystem);
                i7 = 0;
                while (i7 < size) {
                    constraintWidget2 = (ConstraintWidget) r1.mChildren.get(i7);
                    if (constraintWidget2.mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT || constraintWidget2.getWidth() >= constraintWidget2.getWrapWidth()) {
                        if (constraintWidget2.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget2.getHeight() < constraintWidget2.getWrapHeight()) {
                            i4 = 2;
                            Optimizer.flags[2] = USE_SNAPSHOT;
                            break;
                        }
                        i7++;
                        i6 = 2;
                    } else {
                        Optimizer.flags[i6] = USE_SNAPSHOT;
                        break;
                    }
                }
            }
            updateChildrenFromSolver(r1.mSystem, Optimizer.flags);
            i4 = i6;
            if (i5 < 8 || !Optimizer.flags[r9]) {
                z = z3;
                z2 = false;
            } else {
                i4 = 0;
                i = 0;
                for (i7 = 0; i7 < size; i7++) {
                    ConstraintWidget constraintWidget3 = (ConstraintWidget) r1.mChildren.get(i7);
                    i4 = Math.max(i4, constraintWidget3.mX + constraintWidget3.getWidth());
                    i = Math.max(i, constraintWidget3.mY + constraintWidget3.getHeight());
                }
                i6 = Math.max(r1.mMinWidth, i4);
                i7 = Math.max(r1.mMinHeight, i);
                if (dimensionBehaviour3 != DimensionBehaviour.WRAP_CONTENT || getWidth() >= i6) {
                    z = z3;
                    z2 = false;
                } else {
                    setWidth(i6);
                    r1.mListDimensionBehaviors[0] = DimensionBehaviour.WRAP_CONTENT;
                    z2 = USE_SNAPSHOT;
                    z = USE_SNAPSHOT;
                }
                if (dimensionBehaviour2 == DimensionBehaviour.WRAP_CONTENT && getHeight() < i7) {
                    setHeight(i7);
                    r1.mListDimensionBehaviors[1] = DimensionBehaviour.WRAP_CONTENT;
                    z2 = USE_SNAPSHOT;
                    z = USE_SNAPSHOT;
                }
            }
            i7 = Math.max(r1.mMinWidth, getWidth());
            if (i7 > getWidth()) {
                setWidth(i7);
                r1.mListDimensionBehaviors[0] = DimensionBehaviour.FIXED;
                z2 = USE_SNAPSHOT;
                z = USE_SNAPSHOT;
            }
            i7 = Math.max(r1.mMinHeight, getHeight());
            if (i7 > getHeight()) {
                setHeight(i7);
                dimensionBehaviourArr = r1.mListDimensionBehaviors;
                dimensionBehaviour = DimensionBehaviour.FIXED;
                z4 = USE_SNAPSHOT;
                dimensionBehaviourArr[1] = dimensionBehaviour;
                z2 = USE_SNAPSHOT;
                z = z2;
            } else {
                z4 = USE_SNAPSHOT;
            }
            if (z) {
                if (r1.mListDimensionBehaviors[0] == DimensionBehaviour.WRAP_CONTENT && max > 0 && getWidth() > max) {
                    r1.mWidthMeasuredTooSmall = z4;
                    r1.mListDimensionBehaviors[0] = DimensionBehaviour.FIXED;
                    setWidth(max);
                    z2 = z4;
                    z = z2;
                }
                if (r1.mListDimensionBehaviors[z4] == DimensionBehaviour.WRAP_CONTENT && max2 > 0 && getHeight() > max2) {
                    r1.mHeightMeasuredTooSmall = z4;
                    r1.mListDimensionBehaviors[z4] = DimensionBehaviour.FIXED;
                    setHeight(max2);
                    z4 = USE_SNAPSHOT;
                    z3 = USE_SNAPSHOT;
                    i4 = 1;
                }
            }
            z4 = z2;
            z3 = z;
            i4 = 1;
        }
        if (r1.mParent != null) {
            i2 = Math.max(r1.mMinWidth, getWidth());
            i3 = Math.max(r1.mMinHeight, getHeight());
            r1.mSnapshot.applyTo(r1);
            setWidth((i2 + r1.mPaddingLeft) + r1.mPaddingRight);
            setHeight((i3 + r1.mPaddingTop) + r1.mPaddingBottom);
        } else {
            r1.mX = i2;
            r1.mY = i3;
        }
        if (z3) {
            r1.mListDimensionBehaviors[0] = dimensionBehaviour3;
            r1.mListDimensionBehaviors[1] = dimensionBehaviour2;
        }
        resetSolverVariables(r1.mSystem.getCache());
        if (r1 == getRootConstraintContainer()) {
            updateDrawPosition();
        }
    }

    public void preOptimize() {
        optimizeReset();
        analyze(this.mOptimizationLevel);
    }

    public void solveGraph() {
        ResolutionAnchor resolutionNode = getAnchor(Type.LEFT).getResolutionNode();
        ResolutionAnchor resolutionNode2 = getAnchor(Type.TOP).getResolutionNode();
        resolutionNode.resolve(null, 0.0f);
        resolutionNode2.resolve(null, 0.0f);
    }

    public void resetGraph() {
        ResolutionAnchor resolutionNode = getAnchor(Type.LEFT).getResolutionNode();
        ResolutionAnchor resolutionNode2 = getAnchor(Type.TOP).getResolutionNode();
        resolutionNode.invalidateAnchors();
        resolutionNode2.invalidateAnchors();
        resolutionNode.resolve(null, 0.0f);
        resolutionNode2.resolve(null, 0.0f);
    }

    public void optimizeForDimensions(int i, int i2) {
        if (!(this.mListDimensionBehaviors[0] == DimensionBehaviour.WRAP_CONTENT || this.mResolutionWidth == null)) {
            this.mResolutionWidth.resolve(i);
        }
        if (this.mListDimensionBehaviors[1] != DimensionBehaviour.WRAP_CONTENT && this.mResolutionHeight != 0) {
            this.mResolutionHeight.resolve(i2);
        }
    }

    public void optimizeReset() {
        int size = this.mChildren.size();
        resetResolutionNodes();
        for (int i = 0; i < size; i++) {
            ((ConstraintWidget) this.mChildren.get(i)).resetResolutionNodes();
        }
    }

    public void optimize() {
        if (!optimizeFor(8)) {
            analyze(this.mOptimizationLevel);
        }
        solveGraph();
    }

    public ArrayList<Guideline> getVerticalGuidelines() {
        ArrayList<Guideline> arrayList = new ArrayList();
        int size = this.mChildren.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) this.mChildren.get(i);
            if (constraintWidget instanceof Guideline) {
                Guideline guideline = (Guideline) constraintWidget;
                if (guideline.getOrientation() == 1) {
                    arrayList.add(guideline);
                }
            }
        }
        return arrayList;
    }

    public ArrayList<Guideline> getHorizontalGuidelines() {
        ArrayList<Guideline> arrayList = new ArrayList();
        int size = this.mChildren.size();
        for (int i = 0; i < size; i++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) this.mChildren.get(i);
            if (constraintWidget instanceof Guideline) {
                Guideline guideline = (Guideline) constraintWidget;
                if (guideline.getOrientation() == 0) {
                    arrayList.add(guideline);
                }
            }
        }
        return arrayList;
    }

    public LinearSystem getSystem() {
        return this.mSystem;
    }

    private void resetChains() {
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
    }

    void addChain(ConstraintWidget constraintWidget, int i) {
        if (i == 0) {
            while (constraintWidget.mLeft.mTarget != 0 && constraintWidget.mLeft.mTarget.mOwner.mRight.mTarget != 0 && constraintWidget.mLeft.mTarget.mOwner.mRight.mTarget == constraintWidget.mLeft && constraintWidget.mLeft.mTarget.mOwner != constraintWidget) {
                constraintWidget = constraintWidget.mLeft.mTarget.mOwner;
            }
            addHorizontalChain(constraintWidget);
        } else if (i == 1) {
            while (constraintWidget.mTop.mTarget != 0 && constraintWidget.mTop.mTarget.mOwner.mBottom.mTarget != 0 && constraintWidget.mTop.mTarget.mOwner.mBottom.mTarget == constraintWidget.mTop && constraintWidget.mTop.mTarget.mOwner != constraintWidget) {
                constraintWidget = constraintWidget.mTop.mTarget.mOwner;
            }
            addVerticalChain(constraintWidget);
        }
    }

    private void addHorizontalChain(ConstraintWidget constraintWidget) {
        int i = 0;
        while (i < this.mHorizontalChainsSize) {
            if (this.mHorizontalChainsArray[i] != constraintWidget) {
                i++;
            } else {
                return;
            }
        }
        if (this.mHorizontalChainsSize + 1 >= this.mHorizontalChainsArray.length) {
            this.mHorizontalChainsArray = (ConstraintWidget[]) Arrays.copyOf(this.mHorizontalChainsArray, this.mHorizontalChainsArray.length * 2);
        }
        this.mHorizontalChainsArray[this.mHorizontalChainsSize] = constraintWidget;
        this.mHorizontalChainsSize++;
    }

    private void addVerticalChain(ConstraintWidget constraintWidget) {
        int i = 0;
        while (i < this.mVerticalChainsSize) {
            if (this.mVerticalChainsArray[i] != constraintWidget) {
                i++;
            } else {
                return;
            }
        }
        if (this.mVerticalChainsSize + 1 >= this.mVerticalChainsArray.length) {
            this.mVerticalChainsArray = (ConstraintWidget[]) Arrays.copyOf(this.mVerticalChainsArray, this.mVerticalChainsArray.length * 2);
        }
        this.mVerticalChainsArray[this.mVerticalChainsSize] = constraintWidget;
        this.mVerticalChainsSize++;
    }
}

package android.support.v4.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.annotation.RequiresApi;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.LayoutInflater.Factory;
import android.view.View;

@TargetApi(9)
@RequiresApi(9)
class LayoutInflaterCompatBase {

    static class FactoryWrapper implements Factory {
        final LayoutInflaterFactory mDelegateFactory;

        FactoryWrapper(LayoutInflaterFactory layoutInflaterFactory) {
            this.mDelegateFactory = layoutInflaterFactory;
        }

        public View onCreateView(String str, Context context, AttributeSet attributeSet) {
            return this.mDelegateFactory.onCreateView(null, str, context, attributeSet);
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(getClass().getName());
            stringBuilder.append("{");
            stringBuilder.append(this.mDelegateFactory);
            stringBuilder.append("}");
            return stringBuilder.toString();
        }
    }

    LayoutInflaterCompatBase() {
    }

    static void setFactory(LayoutInflater layoutInflater, LayoutInflaterFactory layoutInflaterFactory) {
        layoutInflater.setFactory(layoutInflaterFactory != null ? new FactoryWrapper(layoutInflaterFactory) : null);
    }

    static LayoutInflaterFactory getFactory(LayoutInflater layoutInflater) {
        layoutInflater = layoutInflater.getFactory();
        return layoutInflater instanceof FactoryWrapper ? ((FactoryWrapper) layoutInflater).mDelegateFactory : null;
    }
}

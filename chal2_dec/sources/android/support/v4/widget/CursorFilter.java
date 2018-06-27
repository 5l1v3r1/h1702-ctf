package android.support.v4.widget;

import android.database.Cursor;
import android.widget.Filter;
import android.widget.Filter.FilterResults;

class CursorFilter extends Filter {
    CursorFilterClient mClient;

    interface CursorFilterClient {
        void changeCursor(Cursor cursor);

        CharSequence convertToString(Cursor cursor);

        Cursor getCursor();

        Cursor runQueryOnBackgroundThread(CharSequence charSequence);
    }

    CursorFilter(CursorFilterClient cursorFilterClient) {
        this.mClient = cursorFilterClient;
    }

    public CharSequence convertResultToString(Object obj) {
        return this.mClient.convertToString((Cursor) obj);
    }

    protected FilterResults performFiltering(CharSequence charSequence) {
        Cursor runQueryOnBackgroundThread = this.mClient.runQueryOnBackgroundThread(charSequence);
        charSequence = new FilterResults();
        if (runQueryOnBackgroundThread != null) {
            charSequence.count = runQueryOnBackgroundThread.getCount();
            charSequence.values = runQueryOnBackgroundThread;
        } else {
            charSequence.count = 0;
            charSequence.values = null;
        }
        return charSequence;
    }

    protected void publishResults(CharSequence charSequence, FilterResults filterResults) {
        charSequence = this.mClient.getCursor();
        if (filterResults.values != null && filterResults.values != charSequence) {
            this.mClient.changeCursor((Cursor) filterResults.values);
        }
    }
}

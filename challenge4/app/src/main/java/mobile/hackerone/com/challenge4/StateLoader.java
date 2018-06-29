package mobile.hackerone.com.challenge4;

import android.content.Context;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;

public class StateLoader extends StateController implements Serializable {
    private static final long serialVersionUID = 1;

    public StateLoader(String str) {
        super(str);
    }

    public void save(Context context, Object obj) {
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(obj);
            objectOutputStream.close();
        } catch (Exception obj2) {
            obj2.printStackTrace();
        }
        try {
            FileOutputStream openFileOutput = context.openFileOutput(getLocation(), 0);
            openFileOutput.write(((ByteArrayOutputStream) byteArrayOutputStream).toByteArray());
            openFileOutput.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Object load(Context context) {
        Object obj;
        byte[] bArr = new byte[1024];
        try {
            BufferedInputStream bis = new BufferedInputStream(context.openFileInput(getLocation()));
            bis.read(bArr, 0, bArr.length);
            bis.close();
            try {
                ObjectInputStream objectInputStream = new ObjectInputStream(new ByteArrayInputStream(bArr));
                Object x = objectInputStream.readObject();
                objectInputStream.close();
                obj = (GameState) x;
            } catch (IOException e) {
                e.printStackTrace();
                obj = null;
                return obj;
            } catch (ClassNotFoundException e2) {
                e2.printStackTrace();
                obj = null;
                return obj;
            }
            return obj;
        } catch (FileNotFoundException e3) {
            e3.printStackTrace();
            return null;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }
}

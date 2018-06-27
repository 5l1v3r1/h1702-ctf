package org.libsodium.jni;

import java.util.logging.Level;
import java.util.logging.Logger;

public class NaCl {
    private static final Logger LOGGER = Logger.getLogger(NaCl.class.getName());

    private static final class SingletonHolder {
        public static final Sodium SODIUM_INSTANCE = new Sodium();

        private SingletonHolder() {
        }
    }

    static {
        String property = System.getProperty("java.library.path");
        Logger logger = LOGGER;
        Level level = Level.INFO;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("librarypath=");
        stringBuilder.append(property);
        logger.log(level, stringBuilder.toString());
        System.loadLibrary("sodiumjni");
    }

    public static Sodium sodium() {
        Sodium.sodium_init();
        return SingletonHolder.SODIUM_INSTANCE;
    }

    private NaCl() {
    }
}

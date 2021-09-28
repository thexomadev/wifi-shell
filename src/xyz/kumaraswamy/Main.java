package xyz.kumaraswamy;

import java.awt.Desktop;
import java.io.File;
import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        final File script = new File(
                "C:\\Users\\user\\Documents\\projects\\WifiTest\\shell\\script.sh"
        );
        final Desktop desktop = Desktop.getDesktop();
        desktop.open(script);
    }
}

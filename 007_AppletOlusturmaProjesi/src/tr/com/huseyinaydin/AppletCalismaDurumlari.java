package tr.com.huseyinaydin;

import java.applet.Applet;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;

@SuppressWarnings("removal")
public class AppletCalismaDurumlari extends Applet {
    Font f = new Font("Consolas", Font.BOLD, 20);
    private String mesaj = null;

    @Override
    public void init() {
        mesaj = "Java Applet Yapılandırıldı.";
        System.out.println(mesaj);
        setBackground(Color.BLACK);
    }

    @Override
    public void start() {
        mesaj = "Applet Başlatıldı.";
        System.out.println(mesaj);
    }

    @Override
    public void stop() {
        mesaj = "Applet Durduruldu.";
        System.out.println(mesaj);
        setBackground(Color.RED);
    }

    @Override
    public void destroy() {
        mesaj = "Applet Bellekten Kaldırıldı. Son.";
        System.out.println(mesaj);
    }

    @Override
    public void paint(Graphics g) {
        g.setFont(f);
        g.setColor(Color.LIGHT_GRAY);
        g.drawString("Durum : " + mesaj, 15, 30);
    }
}

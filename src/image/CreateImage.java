package image;

import java.awt.Image;
import java.io.IOException;
import java.net.URL;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;


public class CreateImage {
	
	public void createImage()
	{
		Image image=getImageFromURL("");
		
		 // 이미지 표시를 위한 Swing 컴포넌트 설정
        JFrame frame = new JFrame();
        JLabel label = new JLabel(new ImageIcon(image));

        // Swing UI 설정
        frame.getContentPane().add(label);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);
    }
	
	private static Image getImageFromURL(String imageUrl) {
        try {
            // URL을 통해 이미지 로드
            URL url = new URL(imageUrl);
            return ImageIO.read(url);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }
	
	}
	



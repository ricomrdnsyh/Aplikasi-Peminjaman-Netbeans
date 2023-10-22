/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ricomrdnsyh
 */
public class MainApp {
    public static FrameMenu frmMenu ;
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        //</editor-fold>
        frmMenu = new FrameMenu();
        frmMenu.setVisible(false);
        new DialogLogin(null, true).show();
    }
    
}

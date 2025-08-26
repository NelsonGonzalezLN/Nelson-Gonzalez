import java.util.ArrayList;

import javax.swing.*;

public class Formulario {
    public static void main(String[] args) {

        ArrayList<String> datos = new ArrayList<>(); 

        if (args.length > 0 && args[0].equals("input")) {
        JFrame frame = new JFrame("Formulario");
        frame.setSize(350, 300);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(null);
        
        JLabel etiquetaN = new JLabel("Nombre:");
        etiquetaN.setBounds(20, 20, 80, 25);
        frame.add(etiquetaN);

        JLabel etiquetaH = new JLabel("Horas Trabajadas:");
        etiquetaH.setBounds(20, 70, 130, 25);
        frame.add(etiquetaH);

        JLabel etiquetaP = new JLabel("Precio por hora:");
        etiquetaP.setBounds(20, 120, 130, 25);
        frame.add(etiquetaP);

        JTextField txtNombre = new JTextField();
        txtNombre.setBounds(150, 20, 150, 25);
        frame.add(txtNombre);

        JTextField txtHoras = new JTextField();
        txtHoras.setBounds(150, 70, 150, 25);
        frame.add(txtHoras);

        JTextField txtPrecio = new JTextField();
        txtPrecio.setBounds(150, 120, 150, 25);
        frame.add(txtPrecio);

        JButton boton = new JButton("Enviar");
        boton.setBounds(100, 200, 100, 25);
        frame.add(boton);

        boton.addActionListener(e -> {

            try {
                Integer.parseInt(txtHoras.getText());
                try {
                    Integer.parseInt(txtPrecio.getText());
                    datos.add(txtNombre.getText());  
                    datos.add(txtHoras.getText());
                    datos.add(txtPrecio.getText());
                    System.out.println(datos);
                    frame.dispose();
            } 
            catch (NumberFormatException i) {
                JOptionPane.showMessageDialog(null, "El precio por hora deve ser un valor numerico.", "Error", JOptionPane.ERROR_MESSAGE);
            }
            } 
            catch (NumberFormatException i) {
                JOptionPane.showMessageDialog(null, "Las horas deven ser un valor numerico.", "Error", JOptionPane.ERROR_MESSAGE);
            }

        });
        frame.setVisible(true);
        } else if (args.length > 0) {
        JOptionPane.showMessageDialog(null, args[0]);
        } else {
        JOptionPane.showMessageDialog(null, "No se proporcionó ningún mensaje");
        }
        
        
    }
}


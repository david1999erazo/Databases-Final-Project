package ui;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.ChoiceBox;
import javafx.scene.control.DatePicker;
import javafx.scene.control.TextField;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.Button;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class ControllerPerson {

	@FXML
	private TextField txtId;

	@FXML
	private TextField txtNombre;

	@FXML
	private TextField txtContrasena;

	@FXML
	private TextField txtCedula;

	@FXML
	private TextField txtDireccion;

	@FXML
	private DatePicker dpFechaNacimiento;

	@FXML
	private TextField txtTelefono;

	@FXML
	private ChoiceBox<String> cbTipo;

	@FXML
	void initialize() {
		cbTipo.getItems().add("Cliente");
		cbTipo.getItems().add("Funcionario");
	}

	@FXML
	void agregar(ActionEvent event) {

		Alert alert = new Alert(AlertType.ERROR);
		alert.setTitle("Error");
		boolean flag = true;

		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MMM dd, yyyy");
		LocalDate date = dpFechaNacimiento.getValue();

		String tipo = cbTipo.getSelectionModel().getSelectedItem();
		if (txtId.getText() == null || txtId.getText().equals("")) {
			flag = false;
			alert.setHeaderText("Error en el Id.");
			alert.setContentText("El Id no puede estar vac�o.");
			alert.showAndWait();
		} else if (txtNombre.getText() == null || txtNombre.getText().equals("")) {
			flag = false;
			alert.setHeaderText("Error en el nombre.");
			alert.setContentText("El nombre no puede estar vac�o.");
			alert.showAndWait();
		} else if (txtContrasena.getText() == null || txtContrasena.getText().equals("")) {
			flag = false;
			alert.setHeaderText("Error en la contrase�a.");
			alert.setContentText("La contrase�a no puede estar vac�a.");
			alert.showAndWait();
		} else if (txtCedula.getText() == null || txtCedula.getText().equals("")) {
			flag = false;
			alert.setHeaderText("Error en la c�dula.");
			alert.setContentText("La c�dula no puede estar vac�a.");
			alert.showAndWait();
		} else if (txtCedula.getText() != null) {
			try {
				int cedula = Integer.parseInt(txtCedula.getText());
			} catch (Exception e) {
				flag = false;
				alert.setHeaderText("Error en la c�dula.");
				alert.setContentText("La c�dula s�lo debe contener caracters num�ricos.");
				alert.showAndWait();
			}
		} else if (txtDireccion.getText() == null || txtDireccion.getText().equals("")) {
			flag = false;
			alert.setHeaderText("Error en la direcci�n.");
			alert.setContentText("La direcci�n no puede estar vac�a.");
			alert.showAndWait();
		} else if (txtTelefono.getText() == null || txtTelefono.getText().equals("")) {
			flag = false;
			alert.setHeaderText("Error en el tel�fono.");
			alert.setContentText("El tel�fono no puede estar vac�o.");
			alert.showAndWait();
		} else if (txtTelefono.getText() != null) {
			try {
				int telefono = Integer.parseInt(txtTelefono.getText());
			} catch (Exception e) {
				flag = false;
				alert.setHeaderText("Error en el tel�fono.");
				alert.setContentText("El tel�fono s�lo debe contener caracters num�ricos.");
				alert.showAndWait();
			}
		} else if (date == null) {
			flag = false;
			alert.setHeaderText("Error en la fecha.");
			alert.setContentText("La fecha no puede estar vac�a. Por favor seleccione una.");
			alert.showAndWait();
		} else if (tipo == null || tipo.equals("")) {
			flag = false;
			alert.setHeaderText("Error en el tipo.");
			alert.setContentText("El tipo no puede estar vac�o. Por favor seleccione uno.");
			alert.showAndWait();
		}

		if (flag) {
			System.out.println("oki");
		}
	}

	@FXML
	void cancelar(ActionEvent event) {
		((Stage) (((Button) event.getSource()).getScene().getWindow())).close();
	}

}

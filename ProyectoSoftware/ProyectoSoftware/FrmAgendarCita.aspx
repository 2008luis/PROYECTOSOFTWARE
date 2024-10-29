<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmAgendarCita.aspx.cs" Inherits="ProyectoSoftware.AgendarCita" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
  /* Contenedor principal */
  .container {
      max-width: 600px;
      margin: auto;
      padding: 20px;
      background-color: #f8f9fa;
      border-radius: 8px;
      box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
  }

  /* Título */
  .container h2 {
      font-family: 'Roboto', sans-serif;
      color: #007bff;
      font-weight: 700;
  }

  /* Campos de formulario */
  .form-group label {
      font-weight: 600;
      color: #495057;
      margin-bottom: 5px;
  }

  .form-group input[type="text"],
  .form-group input[type="tel"],
  .form-group input[type="date"],
  .form-group input[type="time"],
  .form-group select {
      border: 1px solid #ced4da;
      border-radius: 4px;
      padding: 10px;
      font-size: 1rem;
      transition: border-color 0.3s ease;
  }

  .form-group input:focus,
  .form-group select:focus {
      border-color: #007bff;
      box-shadow: 0px 0px 8px rgba(0, 123, 255, 0.2);
  }

  /* Placeholder */
  .form-control::placeholder {
      color: #6c757d;
  }

  /* Texto informativo */
  .form-text {
      color: #6c757d;
      font-size: 0.875rem;
  }

  /* Botón */
  .btn-primary {
      background-color: #007bff;
      border: none;
      color: #fff;
      font-weight: bold;
      padding: 12px;
      font-size: 1rem;
      text-transform: uppercase;
      transition: background-color 0.3s ease;
      border-radius: 4px;
  }

  .btn-primary:hover {
      background-color: #0056b3;
  }
</style>

    <div class="container">
  <h2 class="text-center mb-4">Agendar Cita</h2>
  <form>
      <!-- Nombre del Paciente -->
      <div class="form-group">
          <label for="nombrePaciente">Nombre del Paciente</label>
          <input type="text" class="form-control" id="nombrePaciente" placeholder="Ingresa el nombre del paciente" required>
          <small class="form-text text-muted">Por favor, ingresa el nombre completo del paciente.</small>
      </div>

      <!-- Número de Teléfono -->
      <div class="form-group">
          <label for="telefonoPaciente">Número de Teléfono</label>
          <input type="tel" class="form-control" id="telefonoPaciente" placeholder="Ej: +57 300 000 0000" required>
          <small class="form-text text-muted">Ejemplo: +57 300 000 0000</small>
      </div>

      <!-- Motivo de la Cita -->
      <div class="form-group">
          <label for="motivoCita">Motivo de la Cita</label>
          <select class="form-control" id="motivoCita" required>
              <option value="">Selecciona un motivo</option>
              <option value="Consulta">Consulta</option>
              <option value="Control">Control</option>
              <option value="Urgente">Urgente</option>
              <option value="Otros">Otros</option>
          </select>
          <small class="form-text text-muted">Selecciona el motivo de la cita.</small>
      </div>

      <!-- Fecha de la Cita -->
      <div class="form-group">
          <label for="fechaCita">Fecha de la Cita</label>
          <input type="date" class="form-control" id="fechaCita" required>
          <small class="form-text text-muted">Selecciona la fecha de la cita.</small>
      </div>

      <!-- Hora de la Cita -->
      <div class="form-group">
          <label for="horaCita">Hora de la Cita</label>
          <input type="time" class="form-control" id="horaCita" required>
          <small class="form-text text-muted">Selecciona la hora de la cita.</small>
      </div>

      <!-- Botón de envío -->
      <button type="submit" class="btn btn-primary btn-block">Agendar Cita</button>
  </form>
</div>

</asp:Content>

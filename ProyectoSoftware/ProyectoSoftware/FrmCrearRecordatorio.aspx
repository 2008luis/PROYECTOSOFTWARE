<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmCrearRecordatorio.aspx.cs" Inherits="ProyectoSoftware.FrmCrearRecordatorio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<style>
    .container {
        max-width: 500px; 
        margin: 50px auto;
        padding: 30px;
        background-color: #f9f9f9;
        border-radius: 10px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);

    }

    /* Título */
    .container h2 {
        text-align: center;
        font-weight: bold;
        color: #343a40;
        margin-bottom: 20px;
    }

    .form-group label {
        font-weight: 500;
        color: #495057;
        display: block;
        margin-bottom: 5px;
    }

    .form-control {
        width: 100%;
        border: 1px solid #ced4da;
        border-radius: 4px;
        padding: 12px;
        font-size: 16px;
        color: #495057;
        box-sizing: border-box;
    }

    .form-control:focus {
        border-color: #007bff;
        box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        outline: none;
    }

    .btn-primary {
        width: 100%;
        padding: 12px;
        font-size: 18px;
        font-weight: bold;
        background-color: #007bff;
        border-color: #007bff;
        border-radius: 5px;
        transition: background-color 0.3s ease;
        color: white;
    }

    .btn-primary:hover {
        background-color: #0056b3;
        border-color: #0056b3;
    }

    .form-group {
        margin-bottom: 20px;
    }

    textarea.form-control {
        resize: none;
    }
</style>

<div class="container">
    <h2>Crear Recordatorio</h2>
    <form>
        <div class="form-group">
            <label for="nombreRecordatorio">Nombre del Recordatorio</label>
            <input type="text" class="form-control" id="nombreRecordatorio" placeholder="Ingresa el nombre" required>
        </div>

        <div class="form-group">
            <label for="horaMedicacion">Hora de la Medicación</label>
            <input type="time" class="form-control" id="horaMedicacion" required>
        </div>

        <div class="form-group">
            <label for="fechaInicio">Fecha de Inicio del Recordatorio</label>
            <input type="date" class="form-control" id="fechaInicio" required>
        </div>

        <div class="form-group">
            <label for="fechaFin">Fecha Final del Recordatorio</label>
            <input type="date" class="form-control" id="fechaFin" required>
        </div>

        <div class="form-group">
            <label for="frecuencia">Frecuencia</label>
            <select class="form-control" id="frecuencia" required>
                <option value="diario">Diario</option>
                <option value="semanal">Semanal</option>
                <option value="mensual">Mensual</option>
            </select>
        </div>

        <div class="form-group">
            <label for="notaDescripcion">Nota o Descripción</label>
            <textarea class="form-control" id="notaDescripcion" rows="3" placeholder="Ingresa una descripción adicional"></textarea>
        </div>

        <button  type="submit" class="btn btn-primary">Crear Recordatorio</button>
    </form>
</div>



</asp:Content>

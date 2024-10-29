<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmMisRegistros.aspx.cs" Inherits="ProyectoSoftware.FrmMisRegistros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>

    </style>

    <div class="container">
    <h2>Mis Registros</h2>
    <div class="card mb-3" *ngFor="let registro of registros">
      <div class="card-body">
        <h5 class="card-title">{{registro.nombre}}</h5>
        <p class="card-text">Medicación: {{registro.medicacion}}</p>
        <p class="card-text"><small class="text-muted">Hora: {{registro.hora}}</small></p>
        <button class="btn btn-warning">Editar</button>
        <button class="btn btn-danger">Eliminar</button>
      </div>
    </div>
  </div>
      <div class="container">
  <h2>Mis Registros</h2>
  <div class="card mb-3" *ngFor="let registro of registros">
    <div class="card-body">
      <h5 class="card-title">{{registro.nombre}}</h5>
      <p class="card-text">Medicación: {{registro.medicacion}}</p>
      <p class="card-text"><small class="text-muted">Hora: {{registro.hora}}</small></p>
      <button class="btn btn-warning">Editar</button>
      <button class="btn btn-danger">Eliminar</button>
    </div>
  </div>
</div>
      <div class="container">
  <h2>Mis Registros</h2>
  <div class="card mb-3" *ngFor="let registro of registros">
    <div class="card-body">
      <h5 class="card-title">{{registro.nombre}}</h5>
      <p class="card-text">Medicación: {{registro.medicacion}}</p>
      <p class="card-text"><small class="text-muted">Hora: {{registro.hora}}</small></p>
      <button class="btn btn-warning">Editar</button>
      <button class="btn btn-danger">Eliminar</button>
    </div>
  </div>
</div>
  

</asp:Content>

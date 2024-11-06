<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewRegisterUser.aspx.cs" Inherits="ProyectoSoftware.NewRegisterUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

  <style>
      .nav{
          display:none;
      }
    body {
      background-color: #f5f7fa;
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
    }

    .card {
      max-width: 500px;
      width: 100%;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
      background-color: #ffffff;
    }

    .card h2 {
      text-align: center;
      color: #343a40;
      margin-bottom: 20px;
    }

    .form-group {
      margin-bottom: 15px;
    }

    .form-control {
      height: 45px;
      font-size: 1rem;
    }

    .btn-register {
      width: 100%;
      height: 45px;
      font-size: 1rem;
      font-weight: 600;
      background-color: #007bff;
      color: #ffffff;
      border: none;
      transition: background-color 0.3s;
    }

    .btn-register:hover {
      background-color: #0056b3;
    }

    .alert {
      display: none;
      margin-top: 15px;
      text-align: center;
    }
  </style>
<div class="container">
  <div class="alert alert-warning" role="alert" id="lbERROR" runat="server"></div>
  <div class="alert alert-success" role="alert" id="lbBien" runat="server"></div>

  <h2>Registrar Nuevo Usuario</h2>

  <div class="form-section">
    <div class="row">

      <div class="col-md-12 mb-3">
        <h5>Nombre</h5>
        <asp:TextBox runat="server" ID="txtnombre" CssClass="form-control" placeholder="Ingrese su nombre" />
      </div>

      <div class="col-md-12 mb-3">
        <h5>Correo Electrónico</h5>
        <asp:TextBox runat="server" ID="txtMail" TextMode="Email" CssClass="form-control" placeholder="Ingrese su correo" />
      </div>

      <div class="col-md-12 mb-3">
        <h5>Contraseña</h5>
        <asp:TextBox runat="server" ID="txtContraseña" CssClass="form-control" placeholder="Ingrese la contraseña" TextMode="Password" />
      </div>

      <div class="col-md-12 mb-3">
        <h5>Celular</h5>
        <asp:TextBox runat="server" ID="txtTelefono" TextMode="Number" CssClass="form-control" placeholder="Ingrese su número" />
      </div>

      <div class="col-md-12 mb-3">
        <asp:Button Text="Guardar" ID="BtnGuardar" runat="server" CssClass="btn btn-outline-primary" OnClick="BtnGuardar_Click" />
      </div>
    </div>
  </div>
</div>
    </asp:Content>
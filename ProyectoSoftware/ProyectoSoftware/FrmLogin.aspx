<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmLogin.aspx.cs" Inherits="ProyectoSoftware.FrmInicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .nav{
            display:none;
        }
        .login-container {
            max-width: 400px;
            margin: auto;
            padding: 30px;
            background-color: #f7f7f7;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .login-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .alert {
            margin-top: 15px;
        }
    </style>

    <div class="login-container">
 <div class="alert alert-warning" role="alert" id="lbERROR" runat="server"></div>
 <div class="alert alert-success" role="alert" id="lbBien" runat="server"></div>
        <h2>Iniciar Sesión</h2>
        <form [formGroup]="loginForm" (ngSubmit)="onSubmit()">
            <div class="form-group">
                <label for="username">Usuario</label>
               <asp:TextBox ID="username" runat="server" CssClass="form-control" placeholder="USUARIO" required />
            </div>
            <div class="form-group">
                <label for="password">Contraseña</label>
                <asp:TextBox ID="pass" runat="server" TextMode="Password" CssClass="form-control" placeholder="CONTRASEÑA" required />
            </div>
           <asp:Button Text="INGRESAR" ID="btnIngresar" runat="server" CssClass="btn btn-outline-primary" OnClick="btnIngresar_Click"
               href="FrmInicio.aspx" />
              <button type="button" class="btn btn-secondary btn-block mt-2" onclick="window.location.href='NewRegisterUser.aspx'">
                REGISTRARSE
            </button>        
        </form>

        <div *ngIf="invalidLogin" class="alert alert-danger">
            Usuario o contraseña incorrectos.
        </div>
    </div>
</asp:Content>

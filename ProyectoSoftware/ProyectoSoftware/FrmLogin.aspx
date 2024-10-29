<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FrmLogin.aspx.cs" Inherits="ProyectoSoftware.FrmInicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
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
        <h2>Iniciar Sesión</h2>
        <form [formGroup]="loginForm" (ngSubmit)="onSubmit()">
            <div class="form-group">
                <label for="username">Usuario</label>
                <input id="username" type="text" formControlName="username" class="form-control" placeholder="USUARIO" required>
            </div>
            <div class="form-group">
                <label for="password">Contraseña</label>
                <input id="password" type="password" formControlName="password" class="form-control" placeholder="CONTRASEÑA" required>
            </div>
            <button type="submit" class="btn btn-primary btn-block" [disabled]="loginForm.invalid">INICIAR SESIÒN</button>
            <button type="button" class="btn btn-secondary btn-block mt-2" (click)="NewRegisterUser">REGISTRARSE</button>
        </form>

        <div *ngIf="invalidLogin" class="alert alert-danger">
            Usuario o contraseña incorrectos.
        </div>
    </div>
</asp:Content>

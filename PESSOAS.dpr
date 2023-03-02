program PESSOAS;

uses
  Vcl.Forms,
  uMain in 'MVC\VIEW\uMain.pas' {frmMain},
  Model.Pessoa in 'MVC\MODEL\Model.Pessoa.pas',
  Model.Endereco in 'MVC\MODEL\Model.Endereco.pas',
  Model.Endereco.Integracao in 'MVC\MODEL\Model.Endereco.Integracao.pas',
  DAO.DM in 'MVC\BANCO\DAO.DM.pas' {DM: TDataModule},
  Control.Pessoa in 'MVC\CONTROL\Control.Pessoa.pas',
  uFrmCadastroPessoa in 'MVC\VIEW\uFrmCadastroPessoa.pas' {frmCadastroPessoa},
  Lib.Biblioteca in 'LIB\Lib.Biblioteca.pas',
  uFrmCadastroEndereco in 'MVC\VIEW\uFrmCadastroEndereco.pas' {Form1},
  Control.Endereco in 'MVC\CONTROL\Control.Endereco.pas',
  Control.Endereco.Integracao in 'MVC\CONTROL\Control.Endereco.Integracao.pas',
  Lib.EnderecoViaCep in 'LIB\Lib.EnderecoViaCep.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmCadastroPessoa, frmCadastroPessoa);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

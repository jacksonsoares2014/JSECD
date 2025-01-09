unit JSEcd.DAO.RegistroI075;

interface

uses
  JSEcd.DAO.Interfaces,
  JSEcd.Model.Classes,
  System.SysUtils,
  System.Generics.Collections;

type
  TJSEcdDAORegistroI075 = class(TInterfacedObject, IJSEcdDAOI075)
  private
  public
    function List: TObjectList<TJSEcdModelRegistroI075>;
    class function New: IJSEcdDAOI075;
  end;

implementation

{ TJSEcdDAORegistroI075 }

function TJSEcdDAORegistroI075.List: TObjectList<TJSEcdModelRegistroI075>;
begin
  Result := TObjectList<TJSEcdModelRegistroI075>.Create;

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '001';
  Result.Last.descrHist := 'ADIANTAMENTO BANCO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '002';
  Result.Last.descrHist := 'ADIANTAMENTO CARTAO DE CREDITO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '003';
  Result.Last.descrHist := 'ADIANTAMENTO CARTAO DE DEBITO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '004';
  Result.Last.descrHist := 'ADIANTAMENTO CARTAO PARCELADO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '005';
  Result.Last.descrHist := 'ADIANTAMENTO CHEQUE';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '007';
  Result.Last.descrHist := 'ADIANTAMENTO DINHEIRO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '008';
  Result.Last.descrHist := 'ADIANTAMENTO FINANCEIRO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '011';
  Result.Last.descrHist := 'DESCONTOS';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '012';
  Result.Last.descrHist := 'DEVOLUCAO DE DEPOSITO ANTECIPADO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '013';
  Result.Last.descrHist := 'ENCERRAMENTO EM CARTAO PARCELADO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '014';
  Result.Last.descrHist := 'ENCERRAMENTO DE OUTROS RECEBIMENTOS';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '015';
  Result.Last.descrHist := 'ENCERRAMENTO EM CARTAO DE CREDITO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '016';
  Result.Last.descrHist := 'ENCERRAMENTO EM CARTAO DE DEBITO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '017';
  Result.Last.descrHist := 'ENCERRAMENTO EM CHEQUE';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '018';
  Result.Last.descrHist := 'ENCERRAMENTO EM DINHEIRO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '019';
  Result.Last.descrHist := 'ENCERRAMENTO FATURADO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '020';
  Result.Last.descrHist := 'FOLHA DE PAGAMENTO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '028';
  Result.Last.descrHist := 'RECEITA DAY USE';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '029';
  Result.Last.descrHist := 'RECEITA DE BARES';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '030';
  Result.Last.descrHist := 'RECEITA DE BOUTIQUE';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '031';
  Result.Last.descrHist := 'RECEITA DE DIARIAS';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '032';
  Result.Last.descrHist := 'RECEITA DE DIVERSOS';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '033';
  Result.Last.descrHist := 'RECEITA DE EVENTOS';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '034';
  Result.Last.descrHist := 'RECEITA DE ROOM SERVICE';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '035';
  Result.Last.descrHist := 'RECEITA DE EVENTOS LOCACAO DE EQUIPAMENTOS';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '036';
  Result.Last.descrHist := 'RECEITA DE FRIGOBAR';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '037';
  Result.Last.descrHist := 'RECEITA DE LAVANDERIA';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '038';
  Result.Last.descrHist := 'RECEITA DE LOCACAO DE COFRES';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '039';
  Result.Last.descrHist := 'RECEITA DE REQUERIMENTOS - A&B';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '040';
  Result.Last.descrHist := 'RECEITA DE REQUERIMENTOS - SERVICO DE TERCEIROS';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '041';
  Result.Last.descrHist := 'RECEITA DE REQUERIMENTOS - SERVICOS INTERNOS';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '042';
  Result.Last.descrHist := 'RECEITA DE RESTAURANTE';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '043';
  Result.Last.descrHist := 'RECEITA DE TAXA DE SERVICO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '044';
  Result.Last.descrHist := 'RECEITA DE TELECOMUNICACOES';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '045';
  Result.Last.descrHist := 'RECEITA DE EVENTOS PESSOAL DE APOIO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '049';
  Result.Last.descrHist := 'RECEITA DE BANQUETE';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '050';
  Result.Last.descrHist := 'CARTAO DE CREDITO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '051';
  Result.Last.descrHist := 'CARTAO DE DEBITO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '052';
  Result.Last.descrHist := 'CHEQUE';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '053';
  Result.Last.descrHist := 'DEPOSITO ANTECIPADO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '054';
  Result.Last.descrHist := 'DINHEIRO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '055';
  Result.Last.descrHist := '#';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '056';
  Result.Last.descrHist := 'RECEITA DE TRANSFER';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '057';
  Result.Last.descrHist := 'RESULTADO DE EXERCICIO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '058';
  Result.Last.descrHist := 'ENCERRAMENTO DO EXERCICIO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '059';
  Result.Last.descrHist := 'DIARIA PREMIUM VACATION';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '060';
  Result.Last.descrHist := 'ENCERRAMENTO DO EXERCICIO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '061';
  Result.Last.descrHist := 'RECEITA DE NAUTICA';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '101';
  Result.Last.descrHist := 'CARTAO - AMEX CREDITO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '102';
  Result.Last.descrHist := 'CARTAO - AMEX PARCELADO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '103';
  Result.Last.descrHist := 'CARTAO - AMEX PARCELADO 2 A 6 X';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '104';
  Result.Last.descrHist := 'CARTAO - AMEX PARCELADO 7 A 10 X';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '105';
  Result.Last.descrHist := 'CARTAO - ELO CREDITO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '106';
  Result.Last.descrHist := 'CARTAO - ELO DEBITO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '107';
  Result.Last.descrHist := 'CARTAO - ELO PARCELADO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '108';
  Result.Last.descrHist := 'CARTAO - ELO PARCELADO 2 A 6 X';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '109';
  Result.Last.descrHist := 'CARTAO - ELO PARCELADO 7 A 10 X';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '110';
  Result.Last.descrHist := 'CARTAO - MAESTRO DEBITO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '111';
  Result.Last.descrHist := 'CARTAO - MASTER CREDITO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '112';
  Result.Last.descrHist := 'CARTAO - MASTER PARCELADO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '113';
  Result.Last.descrHist := 'CARTAO - MASTER PARCELADO 2 A 6 X';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '114';
  Result.Last.descrHist := 'CARTAO - MASTER PARCELADO 7 A 10 X';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '115';
  Result.Last.descrHist := 'CARTAO - VISA CREDITO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '116';
  Result.Last.descrHist := 'CARTAO - VISA DEBITO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '117';
  Result.Last.descrHist := 'CARTAO - VISA PARCELADO';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '118';
  Result.Last.descrHist := 'CARTAO - VISA PARCELADO 2 A 6 X';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '119';
  Result.Last.descrHist := 'CARTAO - VISA PARCELADO 7 A 10 X';

  Result.Add(TJSEcdModelRegistroI075.Create);
  Result.Last.codHist := '120';
  Result.Last.descrHist := 'REGULARIZACAO DE ADIANTAMENTO';
end;

class function TJSEcdDAORegistroI075.New: IJSEcdDAOI075;
begin
  Result := Self.Create;
end;

end.

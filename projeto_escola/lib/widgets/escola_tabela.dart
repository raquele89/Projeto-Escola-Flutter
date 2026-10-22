import 'package:flutter/material.dart';
import 'package:projeto_escola/core/escola_ds.dart';

/// Tabela de Deign System: Cabeçalho azul e cantos arredondados.
/// Serve para Alunos, Professores, Turmas ...só mudam as colunas e as linhas.
class EscolaTabela extends StatelessWidget {
  const EscolaTabela({
    super.key,
    required this.colunas,
    required this.linhas,
    this.acoes,
  });
  final List<String> colunas;
  // Cada lista interna representa os valores de uma linha de tabela.
  final List<List<String>> linhas;
  // Opcional: um widget por linha, mostrnado na coluna "Ações".
  final List<Widget>? acoes;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:BorderRadius.circular(EscolaDS.raioCampo)
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal, //rola de lado em telas pequenas
        child: DataTable(
          headingRowColor: WidgetStateProperty.all(EScolaDS.azul),
          headingTextStyle: EscolaDS.rotulo.copywith(
            fontSize:14,
            fontWeight:FontWeight.w700,
            color:EscolaDS.superficie,
          ),
          dataTextStyle: EscolaDS.rotulo.copyWith,(fontsize:14),
          columns:[
            //Cria uma coluna para cada titulo recebido.
            for (final coluna in colunas) DataColumn (label:Text(coluna)),
            if (acoes!= null) const DataColumn(label: Text ('Ações')),

          ]
          rows:[
            // O indice liga cada linha de dados ao widget de ação correspondente.
            for (int i =0; i <linhas. length; i++)
            DataRow(
              cells:[
                for (final valor in linhas [i]) DataCell(Text(valor)),
                if(acoes!= null) DataCell(acoes![i]),
              ],
            ),
          ],
        ),
      ),
    );   
  }
} 
        
        
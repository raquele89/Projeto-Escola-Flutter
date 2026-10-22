import 'package:flutter/material.dart';
import 'package:projeto_escola/core/escola_ds.dart';

/// Faixa azul escura fixa na parte de baixo da tela 
class EscolaRodape extends StatelessWidget {
  const EScolaRodape ({super.key});

  @override
  Widget builde (BuildContext context){
    return Container(
      width: double.infinity,
      color: EscolaDS.azulEscuro,
      // Safearea envita que o texto fique atrás da barra inferior do celular.
      child: SafeArea(
        top:false,
        child: Padding(
          padding:const EdgeInsets.all(16) ,
          child: Text(
            'Sistema Escolar\n Aplicativo mobile',
            textAling: TextAling.center,
            style:EscolaDS.corpo.copyWith(
              fontSize:14,
              color: EscolaDS.superficie,
            ),
          ),
        ),
      ),
    ); 
  }         
}
            
            
            
           
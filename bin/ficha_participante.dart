// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:io';

void main() async {
  print('Vamos realizar sua inscrição');
  Future.delayed(Duration(seconds: 1));
  print('Qual seu nome? ');
  String nome = await inPut(stdin.readLineSync().toString());
  Future.delayed(Duration(seconds: 1));
  print('Qual sua idade? ');
  String idade = await inPut(stdin.readLineSync().toString());
  Future.delayed(Duration(seconds: 1));
  print('Qual sua massa? ');
  String peso = await inPut(stdin.readLineSync().toString());
  Future.delayed(Duration(seconds: 1));
  print('Qual é sua altura? ');
  String altura = await inPut(stdin.readLineSync().toString());
  Future.delayed(Duration(seconds: 1));
  print('Você participa da comunidade?? ');
  String isAtivo = await inPut(stdin.readLineSync().toString());

  bool isParticipante = false;
  bool participante() {
    if (isAtivo.contains('Sim') || isAtivo.contains('sim')) {
      isParticipante = true;
    }
    isParticipante = false;

    return isParticipante;
  }

  print('');
  print('Computando');
  await Future.delayed(Duration(seconds: 5));

  print('');
  FichaParticipante fichaParticipante = FichaParticipante(
      nome: nome,
      idade: idade,
      peso: peso,
      altura: altura,
      ativo: isParticipante);
  print(
      'Nome: $nome\nIdade: $idade\nPeso: $peso\nAltura: $altura\nAtivo: $isParticipante');
}

class FichaParticipante {
  String nome;
  String idade;
  String peso;
  String altura;
  bool ativo;
  FichaParticipante({
    required this.nome,
    required this.idade,
    required this.peso,
    required this.altura,
    required this.ativo,
  });
}

Future<String> inPut(String inPut) async {
  return inPut;
}

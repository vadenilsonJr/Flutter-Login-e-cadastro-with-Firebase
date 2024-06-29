import 'package:flutter/material.dart';
import 'package:loginecadastro/components/decoracao_campo_autenticacao.dart';
import 'package:loginecadastro/_comum/meu_snackbar.dart';
import 'package:loginecadastro/_comum/minhas_cores.dart';
import 'package:loginecadastro/services/authServices.dart';

class AutenticacaoTela extends StatefulWidget {
  const AutenticacaoTela({super.key});

  @override
  State<AutenticacaoTela> createState() => _AutenticacaoTelaState();
}

class _AutenticacaoTelaState extends State<AutenticacaoTela> {
  bool queroEntrar = true;
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  final Authservices _authservices = Authservices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  MinhasCores.azulTopoGradiente,
                  MinhasCores.azulBaixoGradiente
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset('assets/images/logo.png', height: 128),
                    Visibility(
                      visible: !queroEntrar,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _nomeController,
                            decoration:
                                getAuthenticationInputDecoration('Nome'),
                            validator: (String? value) {
                              if (value == null) {
                                return 'O Nome não pode ser vazio';
                              }
                              if (value.length < 5) {
                                return 'O Nome é muito curto';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                        ],
                      ),
                    ),
                    TextFormField(
                      controller: _emailController,
                      decoration: getAuthenticationInputDecoration('E-mail'),
                      validator: (String? value) {
                        if (value == null) {
                          return 'O E-mail não pode ser vazio';
                        }
                        if (value.length < 5) {
                          return 'O E-mail é muito curto';
                        }
                        if (!value.contains('@')) {
                          return 'E-mail invalido';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      controller: _senhaController,
                      decoration: getAuthenticationInputDecoration('Senha'),
                      obscureText: true,
                      validator: (String? value) {
                        if (value == null) {
                          return 'A senha não pode ser vazia';
                        }
                        if (value.length < 5) {
                          return 'A senha muito curta';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                      ),
                      onPressed: () {
                        botaoPrincialClicado();
                      },
                      child: Text(
                        (queroEntrar) ? 'Entrar' : 'Cadastrar',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          queroEntrar = !queroEntrar;
                        });
                      },
                      child: Text(
                        (queroEntrar)
                            ? 'Não possui cadastro? Cadastrar-se'
                            : 'Já possui Cadastro? Entre',
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  botaoPrincialClicado() {
    String nome = _nomeController.text;
    String email = _emailController.text;
    String senha = _senhaController.text;

    if (_formKey.currentState!.validate()) {
      if (queroEntrar) {
        _authservices.logarUsuarios(email: email, senha: senha).then(
          (String? erro) {
            if (erro != null) {
              mostrarSnackBar(context: context, texto: erro);
            }
          },
        );
      } else {
        _authservices
            .cadastrarUsuario(nome: nome, email: email, senha: senha)
            .then(
          (String? erro) {
            if (erro != null) {
              mostrarSnackBar(context: context, texto: erro);
            }
          },
        );
      }
    } else {}
  }
}

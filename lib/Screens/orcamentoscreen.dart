import 'package:flutter/material.dart';
import '../Components/barra_navegacao.dart';

class Budget extends StatefulWidget {
  const Budget({super.key});

  @override
  State<Budget> createState() => _BudgetState();
}

class _BudgetState extends State<Budget> {
  
  bool pinturaExterna = false;
  bool pinturaInterna = false;
  bool usoMaterialPrestador = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Novo Serviço'),
        titleTextStyle: const TextStyle(
          fontSize: 20,
          color: Color.fromARGB(255, 59, 59, 59),
          fontWeight: FontWeight.w500,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.grey, size: 30.0),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete, color: Colors.grey, size: 30.0),
            onPressed: () {},
          ),
          const Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: SizedBox.shrink(),
          ),
        ],
        elevation: 4,
        shadowColor: Colors.grey.withAlpha(30),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
        child: Center(
          child: ListView(
          children: [
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  'Nome do Serviço',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 59, 59, 59),
                  ),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 189, 188, 188),
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 224, 224, 60),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  hintText: 'Ex: Pintura de paredes',
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  'Descrição',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 59, 59, 59),
                  ),
                ),
              ),
              const TextField(
                maxLines: null,
                minLines: 5,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 189, 188, 188),
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 224, 224, 60),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  hintText: 'Ex: Pintura de paredes internas e externas',
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  'Preço por Metro Quadrado',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 59, 59, 59),
                  ),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 189, 188, 188),
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 224, 224, 60),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  hintText: '0,00',
                  suffixText: 'R\$/m²',
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  'Taxa Horária',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 59, 59, 59),
                  ),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 189, 188, 188),
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 224, 224, 60),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  hintText: '0,00',
                  suffixText: 'R\$/h',
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  'Taxa Diária',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 59, 59, 59),
                  ),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 189, 188, 188),
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 224, 224, 60),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  hintText: '0,00',
                  suffixText: 'R\$/dia',
                ),
              ),
              // Seção de Switches
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                    // Switch Pintura Externa
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pintura Externa',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 59, 59, 59),
                                ),
                              ),
                              Text(
                                'Pintura de paredes externas',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 120, 120, 120),
                                ),
                              ),
                            ],
                          ),
                          Switch(
                            value: pinturaExterna,
                            onChanged: (bool value) {
                              setState(() {
                                pinturaExterna = value;
                              });
                            },
                            activeColor: Colors.white,
                            activeTrackColor: Color(0xFFF2DB0D),
                          ),
                        ],
                      ),
                    ),
                   
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pintura Interna',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 59, 59, 59),
                                ),
                              ),
                              Text(
                                'Pintura de paredes internas',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 120, 120, 120),
                                ),
                              ),
                            ],
                          ),
                          Switch(
                            value: pinturaInterna,
                            onChanged: (bool value) {
                              setState(() {
                                pinturaInterna = value;
                              });
                            },
                            activeColor: Colors.white,
                            activeTrackColor: Color(0xFFF2DB0D),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Uso de Material do Prestador',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 59, 59, 59),
                                ),
                              ),
                              Text(
                                'Inclui tintas, pincéis, etc.',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 120, 120, 120),
                                ),
                              ),
                            ],
                          ),
                          Switch(
                            value: usoMaterialPrestador,
                            onChanged: (bool value) {
                              setState(() {
                                usoMaterialPrestador = value;
                              });
                            },
                            activeColor: Colors.white,
                            activeTrackColor: Color(0xFFF2DB0D),
                          ),
                        ],
                      ),
                    ),
                      ],
                    ),
                  ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 20.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      _salvarServico();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF2DB0D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Salvar Serviço',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      
      bottomNavigationBar: CustomBottomNavigation(
        currentIndex: 1, 
        onTap: (int index) {
          
          switch (index) {
            case 0:
              
              break;
            case 1:
              
              break;
            case 2:
              
              break;
          }
        },
      ),
    );
  }


  void _salvarServico() {


    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Serviço Salvo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Serviço salvo com sucesso!'),
              const SizedBox(height: 10),
              const Text('Configurações:'),
              Text('• Pintura Externa: ${pinturaExterna ? "Sim" : "Não"}'),
              Text('• Pintura Interna: ${pinturaInterna ? "Sim" : "Não"}'),
              Text('• Material do Prestador: ${usoMaterialPrestador ? "Sim" : "Não"}'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}

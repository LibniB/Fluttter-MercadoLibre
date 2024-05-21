import 'package:flutter/material.dart';
import 'package:flutter_application_2/fuenteDatos.dart';

modalMenu(BuildContext context){
  return showModalBottomSheet(
    isScrollControlled: true,
    context: context, 
    builder: (context) {
      return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber[400],
            foregroundColor: Colors.black,
            title:const Text("Menu Modal"),
          ),
          body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: opcionesAcademicas.length,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: IconButton(
                  onPressed: (){
                    llamadoModalMenu(
                      context, opcionesAcademicas[index]["titulo"],
                      opcionesAcademicas[index]["icono"],
                      opcionesAcademicas[index]["codigo"]);

                  }, 
                  icon: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(opcionesAcademicas[index]["icono"]),
                      Flexible(child: Text(opcionesAcademicas[index]["titulo"])),
                    ]) ,
                ),
              );
            },
          ),
        
      );
    });
}


////////////////////////
List opcionesAcademicas = [
  {
    'codigo': '001',
    'titulo': 'Notas',
    'icono': Icons.note,
  },
  {
    'codigo': '002',
    'titulo': 'Calendario',
    'icono': Icons.calendar_today,
  },
  {
    'codigo': '003',
    'titulo': 'Profesores',
    'icono': Icons.people,
  },
  {
    'codigo': '004',
    'titulo': 'Asignaturas',
    'icono': Icons.book,
  },
  {
    'codigo': '005',
    'titulo': 'Horarios',
    'icono': Icons.schedule,
  },
  {
    'codigo': '006',
    'titulo': 'Tareas',
    'icono': Icons.assignment,
  },
  {
    'codigo': '007',
    'titulo': 'Exámenes',
    'icono': Icons.assignment_turned_in,
  },
  {
    'codigo': '008',
    'titulo': 'Biblioteca',
    'icono': Icons.menu_book,
  },
  {
    'codigo': '009',
    'titulo': 'Eventos',
    'icono': Icons.event,
  },
  {
    'codigo': '010',
    'titulo': 'Laboratorios',
    'icono': Icons.science,
  },
  {
    'codigo': '011',
    'titulo': 'Tutorías',
    'icono': Icons.group,
  },
  {
    'codigo': '012',
    'titulo': 'Proyectos',
    'icono': Icons.group_work,
  },
{
    'codigo': '013',
    'titulo': 'Investigación',
    'icono': Icons.search,
  },
  {
    'codigo': '014',
    'titulo': 'Inscripciones',
    'icono': Icons.how_to_reg,
  },
  {
    'codigo': '015',
    'titulo': 'Aulas Virtuales',
    'icono': Icons.computer,
  },
  {
    'codigo': '016',
    'titulo': 'Recursos Educativos',
    'icono': Icons.school,
  },
  {
    'codigo': '017',
    'titulo': 'Deportes',
    'icono': Icons.sports_soccer,
  },
  {
      'codigo': '018',
      'titulo': 'Actividades Extracurriculares',
      'icono': Icons.emoji_events,
    },
    {
      'codigo': '019',
      'titulo': 'Consejería',
      'icono': Icons.forum,
    },
    {
      'codigo': '020',
      'titulo': 'Voluntariado',
      'icono': Icons.volunteer_activism,
    },
];

//////////
llamadoModalMenu(BuildContext context, String tituloAppBar,menuIcono,String codigo){
  return showModalBottomSheet(
    isScrollControlled: false,
    context: context,
    builder:(context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[400],
        foregroundColor: Colors.black,
      title: Text(tituloAppBar),
      actions: [Padding(
        padding: const EdgeInsets.all(16.0),
        child: Icon(menuIcono),
      )],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.file_copy),
        backgroundColor: Colors.yellowAccent[700],
        foregroundColor: Colors.black,
        ),
      body: codigo == "001" ?ListView.builder(
        itemCount: notas.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title:Text(notas[index]["nombre"]),
            subtitle: Text(notas[index]["creditos"].toString()),
          );
        },
      ): Text(("no tiene datos"))
    );
  });
}
// candidat_list_page.dart
import 'package:flutter/material.dart';
import 'candidat.dart';
import 'add_candidat_page.dart';

class CandidateListPage extends StatefulWidget {
  @override
  _CandidateListPageState createState() => _CandidateListPageState();
}

class _CandidateListPageState extends State<CandidateListPage> {
  List<Candidat> candidates = [
    Candidat(
      name: 'Lionel',
      firstName: ' Zinsou',
      sex: 'Male',
      party: 'Party D',
      description: 'Né le 23 octobre 1954 à Paris, Lionel Zinsou est un homme d’affaires franco-béninois. Neveu de l’ancien président béninois Émile Derlin Zinsou, diplômé de l’École nationale supérieure (France), il a fait carrière dans la banque, notamment chez Rotschild et PAI Partners. Le 18 juin 2015, il a été nommé Premier ministre du Bénin.',
      photo: 'data:image/jpeg;base64,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',
    ),
    Candidat(
      name: 'Talon',
      firstName: 'Patrice',
      sex: 'Male',
      party: 'Party A',
      description: 'Patrice Talon, né le 1ᵉʳ mai 1958 à Ouidah, est un homme d\'affaires et homme d\'État béninois, président de la République depuis le 6 avril 2016. Patrice Talon a fait fortune dans la filière des intrants agricoles dans les années 1980, puis de l\'égrenage du coton au Bénin au cours des années 1990 et 2000.',
      photo: 'data:image/jpeg;base64,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',
    ),
    Candidat(
      name: 'Boni Yayi',
      firstName: 'Thomas',
      sex: 'Male',
      party: 'Party B',
      description: 'Thomas Boni Yayi, né le 1er juillet 1952 à Tchaourou (Bénin), est un homme politique béninois, président de la République du 6 avril 2006 au 6 avril 2016 Président béninois depuis 2006, il est né à Tchaourou au Bénin, en 1952. Il achève ses études à Paris par un doctorat en sciences économiques. Il devient le conseiller du président Nicéphore Soglo élu en 1991, sur les questions monétaires et bancaires. De 1994 jusqu’à son élection à la présidence béninoise, il dirige la Banque ouest-africaine de développement (BOAD).',

      photo: 'data:image/jpeg;base64,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',
    ),
  
  ];

   bool hasNotification = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 32),
            Text(
              'Élections présidentielles',
              style: TextStyle(color: Colors.black),
            ),
            Spacer(),
            Stack(
              alignment: Alignment.center,
              children: [
                Icon(Icons.notifications, color: Colors.black),
                if (hasNotification)
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      constraints: BoxConstraints(
                        minWidth: 12,
                        minHeight: 12,
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(width: 32),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.grey[350],
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text('Présidentielle', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Governorship'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('LGDA'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Candidats',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${candidates.length} Candidats',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Expanded(
                child: ListView.builder(
                  itemCount: candidates.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 64,
                              height: 64,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.white, width: 2),
                                image: DecorationImage(
                                  image: NetworkImage(candidates[index].photo),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${candidates[index].firstName} ${candidates[index].name}',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    candidates[index].description,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  if (candidates[index].description.length > 200)
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  title: Text('${candidates[index].firstName} ${candidates[index].name}'),
                                                  content: SingleChildScrollView(
                                                    child: Text(candidates[index].description),
                                                  ),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () {
                                                        Navigator.of(context).pop();
                                                      },
                                                      child: Text('Fermer'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          },
                                          child: Text('Read More', style: TextStyle(fontSize: 12)),
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddCandidatPage(),
            ),
          ).then((newCandidat) {
            if (newCandidat != null) {
              setState(() {
                candidates.add(newCandidat);
              });
            }
          });
        },
      ),
    );
  }
}
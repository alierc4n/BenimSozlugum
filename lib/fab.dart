import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreateDictionaryScreen extends StatefulWidget {
  const CreateDictionaryScreen({Key? key}) : super(key: key);

  @override
  _CreateDictionaryScreenState createState() => _CreateDictionaryScreenState();
}

class _CreateDictionaryScreenState extends State<CreateDictionaryScreen> {
  String? _selectedLanguage;

  TextEditingController _dictionaryNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sözlük Oluştur'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sözlük Adı:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextField(
              controller: _dictionaryNameController,
              decoration: InputDecoration(
                hintText: 'Sözlük Adı',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Hangi Dilden?',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              hint: Text('Dili Seçin'),
              value: _selectedLanguage,
              onChanged: (value) {
                setState(() {
                  _selectedLanguage = value;
                });
              },
              items: <String>[
                'Türkçe',
                'İngilizce',
                'Almanca',
                'Fransızca',
                'İtalyanca',
                'İspanyolca',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            Text(
              'Hangi Dile?',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              hint: Text('Dili Seçin'),
              value: _selectedLanguage,
              onChanged: (value) {
                setState(() {
                  _selectedLanguage = value;
                });
              },
              items: <String>[
                'Türkçe',
                'İngilizce',
                'Almanca',
                'Fransızca',
                'İtalyanca',
                'İspanyolca',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            Text(
              'Sözlük Fotoğrafı:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () async {
                final pickedFile = await ImagePicker().getImage(source: ImageSource.gallery);
                if (pickedFile != null) {
                  // Seçilen fotoğraf varsa, setState ile fotoğrafı ekranda gösterin veya işlem yapın
                }
              },
              child: Text('Fotoğraf Seç'),
            ),
            SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Sözlük oluşturma işlemleri burada yapılacak
                  Navigator.pop(context);
                },
                child: Text('Oluştur'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class ChipWid extends StatefulWidget {
  const ChipWid({Key? key}) : super(key: key);

  @override
  _ChipWidState createState() => _ChipWidState();
}

class _ChipWidState extends State<ChipWid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chips', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Chip(
          elevation: 20,
          padding: EdgeInsets.all(8),
          backgroundColor: Colors.greenAccent[100],
          shadowColor: Colors.black,
          avatar: CircleAvatar(
            backgroundImage: NetworkImage(
                "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAn1BMVEX///9UxfgBV5sptvZOw/hmyvnd8v265fzY8P2lu9NBwfgATZYAUZjx+v77/f4ktfYAsfbn9v4uaqXR7f0BU5TM2OYARZMBUI4osO4AI0EAK0wBTYkBWJ0BR34BQXQGSHoBPm4EKkUANmA9aJEAP3wsY5kAQ3oGQ3EFPmgAPG4ANWIFNVgAL1cELk0AJ0kBP3AApOXM0tkANHoXYKC6y97IGlOJAAADcUlEQVR4nO3b63LSUBSGYUrSg2gPWCxbIJCi0gp49v6vzRDSGmiyj072WsvvuwAmz7wrk/5pr4dhGIZhGIZh5p2dh+w29uObdzFI/Tc4vYr9/MZdDE78l8oHxn5881AQBYkPBVGQ+ADUA3Gi0YeCKEh8KIiCxAegHogTjT4UREHiQ0EUJD4A9UCcaPShIAoSHwqiIPEBqAfiRKMPBVGQ+FAQBYkPQD0QJxp9KIiCxIeCKEh8AOqBONHoQ0EUJD4UREHiA1APxIlGHwqiIPGhIAoSH4B6IE40+lAQBYkPBVGQ+ADUA3Gi0YeCKEh8KIiCxAegHvifn+jlWdAoAPUFh+kgZEMCQP2PD9M04MdPLgkATQVDgCkFoP7HUZA+UP/jAHYAvJJ+okENORQMIvIoGEDkUtCbyOFDH0TkVNCLyOcd9CRyK+hM5Ah0IvI7UUciz4IORK4FrYl8C1oSeX3oPYi8C1oQOb+DVkRjwYQ+UEs0Aq+vE/pADdF4ogUw8SV2CGwl2hRMfImdAluIdgU9iR0DG4m2Bb2InQMbiPYFPYgdfOhf7ohoLHhTBzoSIxTc7YDoVtCRGAl4QHR5B52J0YA1og/QmhgR+Ex0P1EHYlRgRfQraEmMDCyJvgWtiNGBO6J3QQsiAWBB9C9oJEb50Dvu+EPvRCRR0DBTQS1RCrCVKAfYQpQEbCTKAjYQpQFfEOUBj4gSgQdEGR96DVFmwRpRLrAiSgaWRNnAgsgBeBYATJJT+sDe7U0AUH2I/fg2CyCqxcdP9P/xJIS4WI3fvBVMVAVw1BdM3AP7colqkZVAscSngmKJBXA6ehJKJKqHOlAgcQcc14XSiBWwLpRFVA/zEngglERUj5+zBqEc4h7YIJRCLIHNQhlE9bhetQolENVmPf8rFEhUm22+ykphc0TuRPVlm8/1Qt7EArjMyyNtvVLeRHX/dbl+btgq5EtU9++3NeHxX238iQVwUgrnWXmmrT6uxB2wEu5exFF/1g5kSSyBpfDbPBv39T6OxD1wslku82xk0nEkVsDJdj6ezayAzIgVMJ/a6rgRS+B6anz32BIL4DLrO+XjRfw+ycfuOE7EHz/Hmm+7COK7O28giGQGIogg0hiIIIJIYyCCCCKNgQgiiDQGIohMiK/9d/eLBfFVyH7HfnwMwzAMwzDsn+wPbQGkKIZ+27AAAAAASUVORK5CYII="),
          ), //CircleAvatar
          label: Text(
            'Flutter Chips',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

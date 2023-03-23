import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BVaccine extends StatefulWidget {
  const BVaccine({Key? key}) : super(key: key);

  @override
  State<BVaccine> createState() => _BVaccineState();
}

class Vaccine {
  final String name;
  final String description;
  final int doseNumber;
  final int recommendedAgeMonths;

  Vaccine({
    required this.name,
    required this.description,
    required this.doseNumber,
    required this.recommendedAgeMonths,
  });
}

class _BVaccineState extends State<BVaccine> {
  final List<Vaccine> _vaccines = [
    Vaccine(
      name: 'Hepatitis B',
      description:
          'Hepatitis B is a viral infection that affects the liver. It is spread through contact with the blood or body fluids of an infected person. The hepatitis B vaccine is given in three doses, with the first dose given at birth.',
      doseNumber: 1,
      recommendedAgeMonths: 0,
    ),
    Vaccine(
      name: 'DTaP',
      description:
          'DTaP is a combination vaccine that protects against diphtheria, tetanus, and pertussis (whooping cough). It is given in five doses, with the first dose given at 2 months of age.',
      doseNumber: 1,
      recommendedAgeMonths: 2,
    ),
    Vaccine(
      name: 'Polio',
      description:
          'Polio is a viral infection that can cause paralysis. The polio vaccine is given in four doses, with the first dose given at 2 months of age.',
      doseNumber: 1,
      recommendedAgeMonths: 2,
    ),
    Vaccine(
      name: 'MMR',
      description:
          'MMR is a combination vaccine that protects against measles, mumps, and rubella. It is given in two doses, with the first dose given at 12 months of age.',
      doseNumber: 1,
      recommendedAgeMonths: 12,
    ),
    Vaccine(
      name: 'Varicella',
      description:
          'Varicella is a viral infection that causes chickenpox. The varicella vaccine is given in two doses, with the first dose given at 12 months of age.',
      doseNumber: 1,
      recommendedAgeMonths: 12,
    ),
    Vaccine(
      name: 'Hepatitis A',
      description:
          'Hepatitis A is a viral infection that affects the liver. It is spread through contact with the feces of an infected person. The hepatitis A vaccine is given in two doses, with the first dose given at 12 months of age.',
      doseNumber: 1,
      recommendedAgeMonths: 12,
    ),
    Vaccine(
      name: 'DTaP',
      description:
          'DTaP is a combination vaccine that protects against diphtheria, tetanus, and pertussis (whooping cough). It is given in five doses, with the fourth dose given at 15-18 months of age.',
      doseNumber: 4,
      recommendedAgeMonths: 15,
    ),
    Vaccine(
      name: 'Polio',
      description:
          'Polio is a viral infection that can cause paralysis. The polio vaccine is given in four doses, with the third dose given at 6-18 months of age.',
      doseNumber: 3,
      recommendedAgeMonths: 6,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Store",
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            color: Colors.blueAccent[200],
            child: const Center(
              child: Text(
                "Vaccines for Baby",
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _vaccines.length,
              itemBuilder: (BuildContext context, int index) {
                Vaccine vaccine = _vaccines[index];
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 16.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  elevation: 5.0,
                  color: Colors.blueAccent[200],
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            vaccine.name,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Center(
                          child: Text(
                            vaccine.description,
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const SizedBox(height: 24.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Dose number: ${vaccine.doseNumber}                          ',
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              'Recommended age: ${vaccine.recommendedAgeMonths} months',
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.black87,
                              ),
                            ),
                          ],
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
    );
  }
}

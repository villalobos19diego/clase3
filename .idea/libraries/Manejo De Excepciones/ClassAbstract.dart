void main (){
  final windPlant = windPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);


  print('wind : ${chargePhone(windPlant)}');
  print('nuclear: ${chargePhone(NuclearPlant)}');

}

double chargePhone(EnergyPlant plant){
  if(plant.energyLeft < 10){
    throw Exception('Not enough energy');
  }
  return plant.energyLeft - 10;
}

enum PlantType { nuclear, wind, water}
abstract class EnergyPlant{
  double energyLeft;
  final PlantType type; //nuclear,wind,water

  EnergyPlant({
    required this.energyLeft,
    required this.type
  });
  void consumerEnergy(double amount);
}

class windPlant extends EnergyPlant{
  windPlant({
    required double initialEnergy
  })
      : super(energyLeft:  initialEnergy, type: PlantType.wind);
  @override
  void consumerEnergy(double amount){
    energyLeft -= amount;
  }
}

class windPlant extends EnergyPlant{
  windPlant({required double initialEnergy})
      : super (energyLeft: initialEnergy,type: PlantType.wind);
  @override
  void consumerEnergy(double amount){
    energyLeft -= amount;
  }
}

class NuclearPlant implements EnergyPlant{
  @override
  double energyLeft;
  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft0});

  @override
  void consumerEnergy(double amout){
    energyLeft -= (amount * 0.5);
  }
}
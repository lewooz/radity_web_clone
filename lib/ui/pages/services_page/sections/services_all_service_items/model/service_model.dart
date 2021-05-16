class ServiceModel{
  String serviceName, serviceInfo, serviceBackgroundImage;
  String? serviceLink;
  List<ServiceSubModel> serviceSubModelList;

  ServiceModel({required this.serviceName,required this.serviceInfo, required this.serviceSubModelList, required this.serviceBackgroundImage , this.serviceLink,});
}

class ServiceSubModel{
  String subServiceName;
  String subServiceImageLink;

  ServiceSubModel(this.subServiceName, this.subServiceImageLink);
}
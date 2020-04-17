class Pet{
  String _petname;
  String _breed;
  String _petgender;
  //String _image
  //String _petimage;
  int age;
  int weight;
  int height;

  String getPetName(){
      return (this._petname);
  }
  void setPetName({String petname}){
    this._petname=_petname;
  }

}
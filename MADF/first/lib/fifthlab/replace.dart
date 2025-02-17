
class Replace{
  List<String> list;

  Replace({required List<String> this.list});

  void replaceWord(){
      for(int i=0;i<list.length;i++){
        if(list[i]=='Ahmedabad'){
          list[i]='Surat';
        }
      }
       print(list);
  }
}

void main(){
  List<String> list=['Delhi','Mumbai','Ahmedabad','Hydrabad','Ahmedabad'];

  Replace replace=new Replace( list: list);
  replace.replaceWord();
}
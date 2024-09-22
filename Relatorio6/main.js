class Animal {
  
    constructor(nome, idade, especie) {
      this.nome = nome;
      this.idade = idade;
      this.especie = especie;
    }
  
    printInfo() {
      console.log('Nome: ', this.nome);
      console.log('Idade: ', this.idade);
      console.log('Especie: ', this.especie);
    }
  }
  
  class Cachorro extends Animal {
    #raça;
    constructor(nome, idade, especie) {
      super(nome, idade, especie)
    }
    setRaça(name) {
      this.#raça = name;
    }
  
    printInfo() {
      super.printInfo();
      console.log('Raça: ', this.#raça || 'Pinscher');
    }
  }
  
  class Gato extends Animal {
    cores = []
    constructor(nome, idade, especie, cores) {
      super(nome, idade, especie)
      this.cores = cores;
    }
  
    printInfo() {
      super.printInfo()
      this.cores.map(cor => console.log(cor));
    }
  }
  
  const cachorro1 = new Cachorro('Lulu', 1, 'Cachorro');
  const cachorro2 = new Cachorro('Lili', 4, 'Cachorro');
  const cachorro3 = new Cachorro('Boyzinho', 2, 'Cachorro');
  
  const gato1 = new Gato('Catarina', 5, 'Gato', cores=['PRETO', 'BRANCO']);
  const gato2 = new Gato('Maribel', 2, 'Gato', cores=['PRETO', 'AMARELO']);
  const gato3 = new Gato('Chico', 1, 'Gato', cores=['PRETO', 'CINZA']);
  
  cachorro1.setRaça('Poodle');
  
  cachorro1.printInfo();
  cachorro2.printInfo();
  cachorro3.printInfo();
  
  gato1.printInfo();
  gato2.printInfo();
  gato3.printInfo();
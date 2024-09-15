#include <iostream>
#include <string>
using namespace std;

class Pessoa {
protected:
    string nome;
    int idade;

public:
    Pessoa(string nome, int idade) : nome(nome), idade(idade) {}

    void imprimeNome() {
        cout << "O nome é: " << nome << endl;
    }

    virtual void imprimeIdade() {
        cout << "A idade é: " << idade << endl;
    }

    virtual ~Pessoa() = default; 
};

class Professor : public Pessoa {
public:
    Professor(string nome, int idade) : Pessoa(nome, idade) {}

    void imprimeIdade() override {
        cout << "O professor tem " << idade << " anos." << endl;
    }
};

class Aluno : public Pessoa {
private:
    int matricula;

public:
    Aluno(string nome, int idade, int matricula) : Pessoa(nome, idade), matricula(matricula) {}

    void imprimeIdade() override {
        cout << "O aluno tem " << idade << " anos." << endl;
    }

    void imprimeMatricula() {
        cout << "A matrícula do aluno é: " << matricula << endl;
    }
};

int main() {
    Pessoa pessoa("Carlos", 40);
    Professor professor("Ana", 35);
    Aluno aluno("João", 20, 12345);

    pessoa.imprimeNome();
    pessoa.imprimeIdade();
    cout << endl;

    professor.imprimeNome();
    professor.imprimeIdade();
    cout << endl;

    aluno.imprimeNome();
    aluno.imprimeIdade();
    aluno.imprimeMatricula();

    return 0;
}

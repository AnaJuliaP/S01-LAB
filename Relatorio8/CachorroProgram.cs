using System;

public class Cachorro
{
    public string Nome { get; set; }
    public int Idade { get; set; }

    public void MostrarNome()
    {
        Console.WriteLine($"O nome do cachorro é: {Nome}");
    }

    public virtual void MostrarIdade()
    {
        Console.WriteLine($"A idade do cachorro é: {Idade}");
    }
}

public class CachorroGrande : Cachorro
{
    private string Tamanho { get; set; }

    public override void MostrarIdade()
    {
        Console.WriteLine($"O cachorro grande tem: {Idade} anos");
    }
}

public class CachorroPequeno : Cachorro
{
    public override void MostrarIdade()
    {
        Console.WriteLine($"O cachorro pequeno tem: {Idade} anos");
    }
}

public class Program
{
    public static void MostrarInformacoes(Cachorro cachorro)
    {
        cachorro.MostrarNome();
        cachorro.MostrarIdade();
    }

    public static void Main(string[] args)
    {
        Cachorro cachorro = new Cachorro { Nome = "Rex", Idade = 5 };
        CachorroGrande cachorroGrande = new CachorroGrande { Nome = "Thor", Idade = 8 };
        CachorroPequeno cachorroPequeno = new CachorroPequeno { Nome = "Luna", Idade = 3 };

        MostrarInformacoes(cachorro);
        MostrarInformacoes(cachorroGrande);
        MostrarInformacoes(cachorroPequeno);
    }
}
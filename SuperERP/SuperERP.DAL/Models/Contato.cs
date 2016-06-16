namespace SuperERP.DAL.Models
{
    public class Contato
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public int? IdPessoaJuridica { get; set; }
        public int? IdPessoaFisica { get; set; }
        public string Email { get; set; }
        public string Fone { get; set; }
        public string Cargo { get; set; }
        public virtual PessoaFisica PessoaFisica { get; set; }
        public virtual PessoaJuridica PessoaJuridica { get; set; }
    }
}

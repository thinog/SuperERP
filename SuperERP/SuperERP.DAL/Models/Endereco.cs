namespace SuperERP.DAL.Models
{
    public class Endereco
    {
        public int Id { get; set; }
        public string CEP { get; set; }
        public int? IdPessoaJuridica { get; set; }
        public int? IdPessoaFisica { get; set; }
        public int? ID_Empresa { get; set; }
        public string Endereco1 { get; set; }
        public string Numero { get; set; }
        public string Complemento { get; set; }
        public string Bairro { get; set; }
        public string Cidade { get; set; }
        public virtual Empresa Empresa { get; set; }
        public virtual PessoaFisica PessoaFisica { get; set; }
        public virtual PessoaJuridica PessoaJuridica { get; set; }
    }
}
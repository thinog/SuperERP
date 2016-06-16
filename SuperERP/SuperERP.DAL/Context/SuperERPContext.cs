using System.Data.Entity;
using SuperERP.DAL.Models.Mapping;
using SuperERP.DAL.Models;
using SuperERP.DAL.Mapping;

namespace SuperERP.DAL.Context
{
    public class SuperERPContext : DbContext
    {
        static SuperERPContext()
        {
            Database.SetInitializer<SuperERPContext>(null);
        }

        public SuperERPContext()
            : base("Name=SuperERPContext")
        {
            Configuration.LazyLoadingEnabled = false;
        }

        public DbSet<Categoria> Categorias { get; set; }
        public DbSet<ClienteFornecedor> ClienteFornecedores { get; set; }
        public DbSet<Compra> Compras { get; set; }
        public DbSet<CompraAtiva> ComprasAtivas { get; set; }
        public DbSet<Contato> Contatos { get; set; }
        public DbSet<ContratoVenda> ContratosDeVendas { get; set; }
        public DbSet<DadosBancarios> DadosBancarios { get; set; }
        public DbSet<Empresa> Empresas { get; set; }
        public DbSet<Endereco> Enderecos { get; set; }
        public DbSet<FormaPgto> FormasDePgto { get; set; }
        public DbSet<Funcionalidade> Funcionalidades { get; set; }
        public DbSet<Ncm> Ncms { get; set; }
        public DbSet<OrdemServico> OrdensDeServico { get; set; }
        public DbSet<Parcelamento> Parcelamentos { get; set; }
        public DbSet<Perfil> Perfis { get; set; }
        public DbSet<Periodicidade> Periodicidades { get; set; }
        public DbSet<PessoaFisica> PessoasFisicas { get; set; }
        public DbSet<PessoaJuridica> PessoasJuridicas { get; set; }
        public DbSet<Produto> Produtos { get; set; }
        public DbSet<ProdutoFornecedor> ProdutoFornecedores { get; set; }
        public DbSet<Servico> Servicos { get; set; }
        public DbSet<StatusServico> StatusServicos { get; set; }
        public DbSet<StatusVenda> StatusVendas { get; set; }
        public DbSet<UnidadeMedida> UnidadesMedidas { get; set; }
        public DbSet<Usuario> Usuarios { get; set; }
        public DbSet<Venda> Vendas { get; set; }
        public DbSet<VendasAtivas> VendasAtivas { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Configurations.Add(new CategoriaMap());
            modelBuilder.Configurations.Add(new ClienteFornecedorMap());
            modelBuilder.Configurations.Add(new CompraMap());
            modelBuilder.Configurations.Add(new Compra_AtivosMap());
            modelBuilder.Configurations.Add(new ContatoMap());
            modelBuilder.Configurations.Add(new Contrato_VendaMap());
            modelBuilder.Configurations.Add(new DadosBancariosMap());
            modelBuilder.Configurations.Add(new EmpresaMap());
            modelBuilder.Configurations.Add(new EnderecoMap());
            modelBuilder.Configurations.Add(new Forma_PgtoMap());
            modelBuilder.Configurations.Add(new FuncionalidadeMap());
            modelBuilder.Configurations.Add(new NcmMap());
            modelBuilder.Configurations.Add(new Ordem_ServicoMap());
            modelBuilder.Configurations.Add(new ParcelamentoMap());
            modelBuilder.Configurations.Add(new PerfilMap());
            modelBuilder.Configurations.Add(new PeriodicidadeMap());
            modelBuilder.Configurations.Add(new PessoaFisicaMap());
            modelBuilder.Configurations.Add(new PessoaJuridicaMap());
            modelBuilder.Configurations.Add(new ProdutoMap());
            modelBuilder.Configurations.Add(new ProdutoFornecedorMap());
            modelBuilder.Configurations.Add(new ServicoMap());
            modelBuilder.Configurations.Add(new Status_ServicoMap());
            modelBuilder.Configurations.Add(new Status_VendaMap());
            modelBuilder.Configurations.Add(new Unidade_MedidaMap());
            modelBuilder.Configurations.Add(new UsuarioMap());
            modelBuilder.Configurations.Add(new VendaMap());
            modelBuilder.Configurations.Add(new Venda_AtivosMap());
        }
    }
}

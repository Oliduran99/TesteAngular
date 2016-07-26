using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebChamadas
{

   class Conexao
    {
        private string _stringconexao;
        private SqlConnection _conexao;
        
        public Conexao(string dadosConexao)
        {
            this._conexao = new SqlConnection();
            this.stringConexao = dadosConexao;
            this._conexao.ConnectionString = dadosConexao;
        }   

        public string stringConexao
        {
            get { return this._stringconexao; }
            set { this._stringconexao = value; }

        }   
        public SqlConnection ObjetoConexao
        {
            get { return this._conexao; }
            set { this._conexao = value; }

        } 
        public void Conectar()
        {
            this._conexao.Open();
        }
        public void Desconectar()
        {
            this._conexao.Close();
        }
    }
}
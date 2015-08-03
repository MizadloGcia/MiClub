using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace DAL
{
    public class Conexion
    {
        SqlConnection con = new SqlConnection(@"workstation id=MiClubDB.mssql.somee.com;packet size=4096;user id=MizadloG_SQLLogin_1;pwd=q28el6bvns;data source=MiClubDB.mssql.somee.com;persist security info=False;initial catalog=MiClubDB");
        /// <summary>
        /// para ejecutar todos los codigos
        /// </summary>
        /// <param name="Codigo"></param>
        /// <returns></returns>
        public bool EjecutarDB(string Codigo)
        {
            bool mensaje = false;
            SqlCommand cmd = new SqlCommand();

            try
            {
                con.Open(); // abrimos la conexion

                cmd.Connection = con; //asignamos la conexion
                cmd.CommandText = Codigo;     //asignamos el comando



                //cmd.Parameters.AddWithValue("@ln", lastName);



                cmd.ExecuteNonQuery(); // ejecutamos el comando
                mensaje = true;
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                
                con.Close(); //cerramos la conexion
                // MessageBox.Show("Conexion cerrada");

            }
            return mensaje;
        }

        /// <summary>
        /// para buscar datos en la base de datos
        /// </summary>
        /// <param name="comando"></param>
        /// <returns></returns>
        public DataTable BuscarDb(string comando)
        {
            SqlDataAdapter adp;
            DataTable dt = new DataTable();

            try
            {
                con.Open(); // abrimos la conexion
                adp = new SqlDataAdapter(comando, con);
                adp.Fill(dt);
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                con.Close(); //cerramos la conexion

            }
            return dt;
        }



      

    }
}

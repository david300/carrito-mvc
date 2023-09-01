using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using CapaDatos;
using CapaEntidad;

namespace CapaNegocio
{
    public class CN_Usuarios
    {
        private CD_Usuarios objCapaDato = new CD_Usuarios();

        public List<Usuario> Listar()
        {
            return objCapaDato.Listar();
        }

        public int Registrar(Usuario usuario, out string mensaje)
        {
            mensaje = string.Empty;
            try
            {
                if (string.IsNullOrWhiteSpace(usuario.Nombres))
                    throw new Exception("El nombre del usuario no debe ser vacío");
                if (string.IsNullOrWhiteSpace(usuario.Apellidos))
                    throw new Exception("El apellido del usuario no debe ser vacío");
                if (string.IsNullOrWhiteSpace(usuario.Correo))
                    throw new Exception("El correo del usuario no debe ser vacío");

                string clave = "12345";
                usuario.Clave = CN_Recursos.ConvertirSha256(clave);

                return objCapaDato.Registrar(usuario, out mensaje);
            }
            catch (Exception ex)
            {
                mensaje = ex.Message;
                return 0;
            }            
        }

        public bool Editar(Usuario usuario, out string mensaje)
        {
            mensaje = string.Empty;
            try
            {
                if (string.IsNullOrWhiteSpace(usuario.Nombres))
                    throw new Exception("El nombre del usuario no debe ser vacío");
                if (string.IsNullOrWhiteSpace(usuario.Apellidos))
                    throw new Exception("El apellido del usuario no debe ser vacío");
                if (string.IsNullOrWhiteSpace(usuario.Correo))
                    throw new Exception("El correo del usuario no debe ser vacío");

                string clave = "12345";
                usuario.Clave = CN_Recursos.ConvertirSha256(clave);

                return objCapaDato.Editar(usuario, out mensaje);
            }
            catch (Exception ex)
            {
                mensaje = ex.Message;
                return false;
            }
        }

        public bool Eliminar(int idUsuario, out string mensaje)
        {
            mensaje = string.Empty;
            try
            {
                return objCapaDato.Eliminar(idUsuario, out mensaje);
            }
            catch (Exception ex)
            {
                mensaje = ex.Message;
                return false;
            }
        }
    }
}

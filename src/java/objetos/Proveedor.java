/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package objetos;

/**
 *
 * @author user
 */
public class Proveedor {
    private String codProv;
    private String razonSoc;
    private String cuit;
    private String direccion;

    public Proveedor(String codProv, String razonSoc, String cuit, String direccion) {
        this.codProv = codProv;
        this.razonSoc = razonSoc;
        this.cuit = cuit;
        this.direccion = direccion;
    }
    public Proveedor(String codProv, String razonSoc) {
        this.codProv = codProv;
        this.razonSoc = razonSoc;
    }

    
    /**
     * @return the codProv
     */
    public String getCodProv() {
        return codProv;
    }

    /**
     * @param codProv the codProv to set
     */
    public void setCodProv(String codProv) {
        this.codProv = codProv;
    }

    /**
     * @return the razonSoc
     */
    public String getRazonSoc() {
        return razonSoc;
    }

    /**
     * @param razonSoc the razonSoc to set
     */
    public void setRazonSoc(String razonSoc) {
        this.razonSoc = razonSoc;
    }

    /**
     * @return the cuit
     */
    public String getCuit() {
        return cuit;
    }

    /**
     * @param cuit the cuit to set
     */
    public void setCuit(String cuit) {
        this.cuit = cuit;
    }

    /**
     * @return the direccion
     */
    public String getDireccion() {
        return direccion;
    }

    /**
     * @param direccion the direccion to set
     */
    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package objetos;

import java.math.BigDecimal;
import java.util.GregorianCalendar;

/**
 *
 * @author user
 */
public class RetencionIVa {
    private Proveedor proveedor;
    private Factura factura;
    private Concepto concepto;
    private GregorianCalendar fechaRet;
    private int nroRet;
    private BigDecimal importeRet;

    public RetencionIVa(Proveedor proveedor, Factura factura, Concepto concepto, GregorianCalendar fechaRet, int nroRet, BigDecimal importeRet) {
        this.proveedor = proveedor;
        this.factura = factura;
        this.concepto = concepto;
        this.fechaRet = fechaRet;
        this.nroRet = nroRet;
        this.importeRet = importeRet;
    }

    
    /**
     * @return the proveedor
     */
    public Proveedor getProveedor() {
        return proveedor;
    }

    /**
     * @param proveedor the proveedor to set
     */
    public void setProveedor(Proveedor proveedor) {
        this.proveedor = proveedor;
    }

    /**
     * @return the factura
     */
    public Factura getFactura() {
        return factura;
    }

    /**
     * @param factura the factura to set
     */
    public void setFactura(Factura factura) {
        this.factura = factura;
    }

    /**
     * @return the concepto
     */
    public Concepto getConcepto() {
        return concepto;
    }

    /**
     * @param concepto the concepto to set
     */
    public void setConcepto(Concepto concepto) {
        this.concepto = concepto;
    }

    /**
     * @return the fechaRet
     */
    public GregorianCalendar getFechaRet() {
        return fechaRet;
    }

    /**
     * @param fechaRet the fechaRet to set
     */
    public void setFechaRet(GregorianCalendar fechaRet) {
        this.fechaRet = fechaRet;
    }

    /**
     * @return the nroRet
     */
    public int getNroRet() {
        return nroRet;
    }

    /**
     * @param nroRet the nroRet to set
     */
    public void setNroRet(int nroRet) {
        this.nroRet = nroRet;
    }

    /**
     * @return the importeRet
     */
    public BigDecimal getImporteRet() {
        return importeRet;
    }

    /**
     * @param importeRet the importeRet to set
     */
    public void setImporteRet(BigDecimal importeRet) {
        this.importeRet = importeRet;
    }
    
}

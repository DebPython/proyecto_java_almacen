
package com.emergente.modelo;

public class Producto {
    private int id_producto;
    private String nombre;
    private int stock;
    private int id_marcas;
   
    private String marcas;
   

    public Producto() {
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }


    public int getId_marcas() {
        return id_marcas;
    }

    public void setId_marcas(int id_marcas) {
        this.id_marcas = id_marcas;
    }

  
  
    public String getMarcas() {
        return marcas;
    }

    public void setMarcas(String marcas) {
        this.marcas = marcas;
    }

  

    @Override
    public String toString() {
        return "Producto{" + "id_producto=" + id_producto + ", nombre=" + nombre + ", stock=" + stock + ", id_marcas=" + id_marcas + ", id_caracteristica=" + ", marcas=" + marcas + '}';
    }
    
    
}

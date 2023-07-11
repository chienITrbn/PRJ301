/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.ArrayList;
import java.util.List;

public class Carrt {

    private List<Item> items;

    public Carrt() {
        items = new ArrayList<>();
    }

    public Carrt(String txt, List<Product> list) {
        items = new ArrayList<>();
        try {

            if (txt != null && txt.length() != 0) {
                String[] s = txt.split(",");
                for (String i : s) {
                    String[] n = i.split(":");
                    int id = Integer.parseInt(n[0]);
                    int quantity = Integer.parseInt(n[1]);
                    Product p = getProductbyPid(id, list);
                    Item t  = new Item(p, quantity, p.getHistorical_cost());
                    addItem(t);
                }
            }
        } catch (NumberFormatException e) {
            System.out.println(e);
        }
    }

    public List<Item> getItems() {
        return items;
    }

    public int getQuantityById(int id) {
        return getItemById(id).getQuantity();
    }

    private Item getItemById(int id) {
        for (Item i : items) {
            if (i.getProduct().getProductId() == id) {
                return i;
            }
        }
        return null;
    }

    public Product getProductbyPid(int pid, List<Product> list) {
        for (Product o : list) {
            if (o.getProductId() == pid) {
                return o;
            }
        }
        return null;
    }

    /*
        Neu cart null thi add object
        nguoc lai tang quantity
    */
    public void addItem(Item t) {
        if (getItemById(t.getProduct().getProductId()) != null) {
            Item m = getItemById(t.getProduct().getProductId());
            m.setQuantity(m.getQuantity() + t.getQuantity());
        } else {
            items.add(t);
        }
    }

    public void removeItem(int id) {
        if (getItemById(id) != null) {
            items.remove(getItemById(id));
        }
    }
    
    /*
        Tong so tien cua gio hang
        so luong * don gia
    */
    public double getTotalMoney() {
        double t = 0;
        for (Item i : items) {
            t += (i.getQuantity() * i.getPrice());
        }
        return t;
    }
}

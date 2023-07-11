
package Model;

import java.sql.Date;


public class Product {
    private int ProductId;
    private String name;
    private String description;
    private int categoryId;
    private double historical_cost;
    private double competitive_price;
    private int brandId;
    private String image;
    private boolean newProducts;
    private boolean bestSelling;
    private Date created;
    private Date updated;
    private int quantity;
    private int viewCount;
    private int size;

    public Product() {
    }

    public Product(String name, String description, int categoryId, double historical_cost, double competitive_price, int brandId, String image, boolean newProducts, boolean bestSelling, Date created, Date updated, int quantity, int viewCount, int size) {
//        this.ProductId = ProductId;
        this.name = name;
        this.description = description;
        this.categoryId = categoryId;
        this.historical_cost = historical_cost;
        this.competitive_price = competitive_price;
        this.brandId = brandId;
        this.image = image;
        this.newProducts = newProducts;
        this.bestSelling = bestSelling;
        this.created = created;
        this.updated = updated;
        this.quantity = quantity;
        this.viewCount = viewCount;
        this.size = size;
    }
    public Product(int ProductId ,String name, String description, int categoryId, double historical_cost, double competitive_price, int brandId, String image, boolean newProducts, boolean bestSelling, Date created, Date updated, int quantity, int viewCount, int size) {
        this.ProductId = ProductId;
        this.name = name;
        this.description = description;
        this.categoryId = categoryId;
        this.historical_cost = historical_cost;
        this.competitive_price = competitive_price;
        this.brandId = brandId;
        this.image = image;
        this.newProducts = newProducts;
        this.bestSelling = bestSelling;
        this.created = created;
        this.updated = updated;
        this.quantity = quantity;
        this.viewCount = viewCount;
        this.size = size;
    }
    public int getProductId() {
        return ProductId;
    }

    public void setProductId(int ProductId) {
        this.ProductId = ProductId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public double getHistorical_cost() {
        return historical_cost;
    }

    public void setHistorical_cost(double historical_cost) {
        this.historical_cost = historical_cost;
    }

    public double getCompetitive_price() {
        return competitive_price;
    }

    public void setCompetitive_price(double competitive_price) {
        this.competitive_price = competitive_price;
    }

    public int getBrandId() {
        return brandId;
    }

    public void setBrandId(int brandId) {
        this.brandId = brandId;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public boolean isNewProducts() {
        return newProducts;
    }

    public void setNewProducts(boolean newProducts) {
        this.newProducts = newProducts;
    }

    public boolean isBestSelling() {
        return bestSelling;
    }

    public void setBestSelling(boolean bestSelling) {
        this.bestSelling = bestSelling;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public Date getUpdated() {
        return updated;
    }

    public void setUpdated(Date updated) {
        this.updated = updated;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getViewCount() {
        return viewCount;
    }

    public void setViewCount(int viewCount) {
        this.viewCount = viewCount;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    @Override
    public String toString() {
        return "Product{" + "ProductId=" + ProductId + ", name=" + name + ", description=" + description + ", categoryId=" + categoryId + ", historical_cost=" + historical_cost + ", competitive_price=" + competitive_price + ", brandId=" + brandId + ", image=" + image + ", newProducts=" + newProducts + ", bestSelling=" + bestSelling + ", created=" + created + ", updated=" + updated + ", quantity=" + quantity + ", viewCount=" + viewCount + ", size=" + size + '}';
    }
    
    
}

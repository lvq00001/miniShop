package businessLogic;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javaBean.Product;

public class ProductBL {
	
	//Thi sinh viet them cac lenh vao day de thuc hien yeu cau
	//???
	public static List<Product> docTatCa() {
		List<Product> dssp = new ArrayList<>();
		Connection con = CSDL.getKetNoi();
		Statement stm;
		try {
			stm = con.createStatement();
			ResultSet rs = stm.executeQuery("select * from product");
			while (rs.next()) {
				Product p = new Product();
				p.setAuthorId(rs.getInt("AuthorId"));
				p.setCategoryId(rs.getInt("CategoryId"));
				p.setPages(rs.getInt("Pages"));
				p.setPrice(rs.getInt("Price"));
				p.setProductId(rs.getInt("ProductId"));
				p.setPublisherId(rs.getInt("PublisherId"));
				p.setYear(rs.getInt("Year"));
				p.setContent(rs.getString("Content"));
				p.setDescription(rs.getString("Description"));
				p.setImageUrl(rs.getString("ImageUrl"));
				p.setIsbn(rs.getString("ISBN"));
				p.setSize(rs.getString("Size"));
				p.setTitle(rs.getString("Title"));
				p.setWeight(rs.getString("Weight"));
				dssp.add(p);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return dssp;
	}
	
	
	public static Product docTheoProductId(int id) {
		Product p = new Product();
		Connection con = CSDL.getKetNoi();
		try {
			Statement stm = con.createStatement();
			ResultSet rs = stm.executeQuery("select * from product where ProductId = " + id);
			while (rs.next()) {
				p.setAuthorId(rs.getInt("AuthorId"));
				p.setCategoryId(rs.getInt("CategoryId"));
				p.setPages(rs.getInt("Pages"));
				p.setPrice(rs.getInt("Price"));
				p.setProductId(rs.getInt("ProductId"));
				p.setPublisherId(rs.getInt("PublisherId"));
				p.setYear(rs.getInt("Year"));
				p.setContent(rs.getString("Content"));
				p.setDescription(rs.getString("Description"));
				p.setImageUrl(rs.getString("ImageUrl"));
				p.setIsbn(rs.getString("ISBN"));
				p.setSize(rs.getString("Size"));
				p.setTitle(rs.getString("Title"));
				p.setWeight(rs.getString("Weight"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return p;
	}
	
	public static List<Product> docTheoTitle(String title) {
		List<Product> dsspTheoTitle = new ArrayList<>();
		Connection con = CSDL.getKetNoi();
		try {
			Statement stm = con.createStatement();
			ResultSet rs = stm.executeQuery("select * from product where title like " + "'%" + title + "%'");
			while (rs.next()) {
				Product p = new Product();
				p.setAuthorId(rs.getInt("AuthorId"));
				p.setCategoryId(rs.getInt("CategoryId"));
				p.setPages(rs.getInt("Pages"));
				p.setPrice(rs.getInt("Price"));
				p.setProductId(rs.getInt("ProductId"));
				p.setPublisherId(rs.getInt("PublisherId"));
				p.setYear(rs.getInt("Year"));
				p.setContent(rs.getString("Content"));
				p.setDescription(rs.getString("Description"));
				p.setImageUrl(rs.getString("ImageUrl"));
				p.setIsbn(rs.getString("ISBN"));
				p.setSize(rs.getString("Size"));
				p.setTitle(rs.getString("Title"));
				p.setWeight(rs.getString("Weight"));
				dsspTheoTitle.add(p);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dsspTheoTitle;
	}
}

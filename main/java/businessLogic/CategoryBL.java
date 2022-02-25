package businessLogic;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javaBean.Category;

public class CategoryBL {
	
	public static List<Category> docTatCa() {
		List<Category> dspl = new ArrayList<>();
		Connection con = CSDL.getKetNoi();
		try {
			Statement stm = con.createStatement();
			ResultSet rs = stm.executeQuery("select * from category");
			while (rs.next()) {
				Category ct = new Category();
				ct.setCategoryId(rs.getInt("CategoryId"));
				ct.setCategoryName(rs.getString("CategoryName"));
				ct.setParentId(rs.getInt("ParentId"));
				dspl.add(ct);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dspl;
	}
	
	public static Category docTheoCategoryId(int id) {
		Category ct = new Category();
		Connection con = CSDL.getKetNoi();
		try {
			Statement stm = con.createStatement();
			ResultSet rs = stm.executeQuery("select * from category where CategoryId =" + id);
			while (rs.next()) {
				ct.setCategoryId(rs.getInt("CategoryId"));
				ct.setCategoryName(rs.getString("CategoryName"));
				ct.setParentId(rs.getInt("ParentId"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ct;
	}
}

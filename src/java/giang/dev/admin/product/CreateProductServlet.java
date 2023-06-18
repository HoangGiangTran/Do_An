 
package giang.dev.admin.product;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import giang.dev.BaseServlet;
import giang.dev.data.dao.DatabaseDao;
import giang.dev.data.model.Product;
import java.util.List;
import giang.dev.data.model.Category;
import giang.dev.data.model.Gallery;
import giang.dev.util.Constants;
import giang.dev.util.UploadFileHelper;

/**
 *
 * @author ACER NITRO
 */
@MultipartConfig(
	fileSizeThreshold = 1024 * 1024 * 10, // 10 MB
	maxFileSize = 1024 * 1024 * 50, // 50 MB
	maxRequestSize = 1024 * 1024 * 100 // 100 MB
)
public class CreateProductServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Category> categoryList = DatabaseDao.getInstance().getCategoryDao().findAll();
        
        request.setAttribute("categoryList", categoryList);
        request.getRequestDispatcher("admin/product/create.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        double price = Double.parseDouble(request.getParameter("price")) ;
        int quantity = Integer.parseInt(request.getParameter("quantity")) ;
        int categoryId = Integer.parseInt(request.getParameter("categoryId")) ;
        Product product = new Product(name, description, price, quantity, categoryId);
        
        int productId = DatabaseDao.getInstance().getProductDao().insert(product);
        
        createGallery(productId, request);

        response.sendRedirect("IndexProductServlet");

    }

    private void createGallery(int productId, HttpServletRequest request){
        List<String> photos = UploadFileHelper.uploadFile(Constants.UPLOAD_DIR, request);
        for (int i = 0; i < photos.size(); i++) {
            Gallery g = new Gallery(Constants.UPLOAD_DIR + "/" + photos.get(i), productId);
            DatabaseDao.getInstance().getGalleryDao().insert(g);
        }
    }
}

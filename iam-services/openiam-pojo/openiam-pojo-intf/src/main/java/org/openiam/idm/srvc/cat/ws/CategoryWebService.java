package org.openiam.idm.srvc.cat.ws;

import java.util.List;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;
import org.openiam.idm.srvc.cat.dto.Category;

/**
 * Service interface for categories. Categories are used to provide a
 * classification structure for some objects in OpenIAM.
 * <p>
 * To create a top level category, leave the parentId field as null. To create a
 * child category, assign a parentId. The parentId should be the ID of an
 * existing category.
 * </p>
 * <p/>
 * <p>
 * The category service supports internationalization. To store text in
 * different languages, use the code snippet below to associate additional
 * languages to a category object.<br>
 * <p/>
 * 
 * <pre>
 * 		// add a category
 * 		Category cat = new Category();
 * 	    ...
 * 		catdataSrvc.addCategory(cat);
 * String categoryId = cat.getCategoryId();
 * 
 * CategoryLanguageId id = new CategoryLanguageId(categoryId,"en");
 * CategoryLanguage lang = new CategoryLanguage(id, "Lang Name");
 * Set<CategoryLanguage> langSet = cat.getCategoryLanguages();
 * langSet.add(lang);
 * 
 * catdataSrvc.updateCategory(cat);
 * 
 * </pre>
 * <p/>
 * </p>
 * 
 * @author suneet shah
 */
@WebService(targetNamespace = "urn:idm.openiam.org/srvc/cat/service", name = "CategoryWebService")
public interface CategoryWebService {

    /**
     * Adds a new category to the system. CategoryId should not be assigned since is auto-generated
     *
     * @param cat
     */
    @WebMethod
    public void addCategory(
            @WebParam(name = "cat", targetNamespace = "") Category cat);

    /**
     * Updates an existing category
     *
     * @param cat
     */
    @WebMethod
    public void updateCategory(
            @WebParam(name = "cat", targetNamespace = "") Category cat);

    /**
     * Removes a existing specified by the categoryId. If the nested flag is set to true, then
     * child categories will be deleted as well.
     *
     * @param categoryId
     * @return Returns the number of records that have been deleted.
     */
    @WebMethod
    public int removeCategory(String categoryId, boolean nested);

    /**
     * Returns a category defined by CategoryId. Returns null if no category is found.
     *
     * @param categoryId
     * @return
     */
    @WebMethod
    public Category getCategory(
            @WebParam(name = "categoryId", targetNamespace = "") String categoryId);

    /**
     * Returns all the categories starting with top level categories.
     *
     * @return
     */
    @WebMethod
    public List<Category> getAllCategories(
            @WebParam(name = "nested", targetNamespace = "") boolean nested);

    /**
     * Get all categories for the specified categoryId.
     *
     * @param categoryId
     * @param nested
     * @return
     */
    @WebMethod
    public List<Category> getChildCategories(
            @WebParam(name = "categoryId", targetNamespace = "") String categoryId,
            @WebParam(name = "nested", targetNamespace = "") boolean nested);
}

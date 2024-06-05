<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="admin.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    </head>
    <body>
        
        <%
            if (session.getAttribute("ad_nm") == null) {
                response.sendRedirect("admin_login.jsp");
            } else {
                String adminnm=session.getAttribute("ad_nm").toString();
        %>
        
        
        <div class="row">
            <div class="col-11"><h1 class="mt-5 text-center">Welcome <%=adminnm%> </h1></div>
            <div class="col-1 mt-5"><a class="btn bg-info fs-5 fw-bold" href="ad_logout.jsp" role="button">LogOut</a></div>
        </div>
        <div class="admin">
            <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#add_prod">
                Add new Product
            </button>
            <a class="btn" href="stock.jsp" role="button">Manage Stock</a>
            <button type="button" class="btn" data-bs-toggle="modal" data-bs-target="#add_course">
                Add new Course
            </button>
            
        </div>

        <div class="modal fade" id="add_prod" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title text-center" id="exampleModalLabel">Add The New Product</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="get_product.jsp" enctype="multipart/form-data" method="post">

                            <div class="row m-2">
                                <div class="col-25">
                                    <label for="name">Product Name</label>
                                </div>
                                <div class="col-75">
                                    <input type="text" id="name" name="name" placeholder="Product name.." required>
                                </div>
                            </div>

                            <div class="row m-2">
                                <div class="wrapper">
                                    <select id="parent_select" name="category" required><option>Select Category</option></select>
                                    <select id="child_select" name="sub_type" required></select>
                                </div>

                                <script language="javascript" type="text/javascript">
                                    var mList = {
                                        Guitar: ['Acoustic Guitars', 'Electric Guitars', 'Classical Guitars'],
                                        Ukeles: ['Saprano', 'Concert', 'Tenor', 'Baritone'],
                                        Keyboards: ['Midi Keyboards', 'Digital Pianos'],
                                        Drums: ['Acoustic DrumKits', 'Electronic DrumKits'],
                                        Traditional: ['Violins', 'Banjos'],
                                        Wind: ['Flutes', 'Saxophones'],
                                        Kid: ['Acoustic Guitars', 'DrumKits']
                                    };

                                    el_parent = document.getElementById("parent_select");
                                    el_child = document.getElementById("child_select");

                                    for (key in mList) {
                                        el_parent.innerHTML = el_parent.innerHTML + '<option>' + key + '</option>';
                                    }

                                    el_parent.addEventListener('change', function populate_child(e) {
                                        el_child.innerHTML = '';
                                        itm = e.target.value;
                                        if (itm in mList) {
                                            for (i = 0; i < mList[itm].length; i++) {
                                                el_child.innerHTML = el_child.innerHTML + '<option>' + mList[itm][i] + '</option>';
                                            }
                                        }
                                    });

                                </script>
                            </div>

                            <div class="row m-2">
                                <div class="col-25">
                                    <label for="brand">Brand</label>
                                </div>
                                <div class="col-75">
                                    <input type="text" id="brand" name="brand" placeholder="Product brand.." required>
                                </div>
                            </div>

                            <div class="row m-2">
                                <div class="col-25">
                                    <label for="discount">Discount %</label>
                                </div>
                                <div class="col-75">
                                    <input type="text" id="discount" name="save" placeholder="Discount %.." required="">
                                </div>
                            </div>

                            <div class="row m-2">
                                <div class="col-25">
                                    <label for="main">Main Price</label>
                                </div>
                                <div class="col-75">
                                    <input type="text" id="main" name="main_p" placeholder="Main Price.." required>
                                </div>
                            </div>

                            <div class="row m-2">
                                <div class="col-25">
                                    <label for="disc">Discount Price</label>
                                </div>
                                <div class="col-75">
                                    <input type="text" id="disc" name="disc_p" placeholder="Discount Price.." required>
                                </div>
                            </div>

                            <div class="row m-2">
                                <div class="col-25">
                                    <label for="quant">Quantity</label>
                                </div>
                                <div class="col-75">
                                    <input type="number" id="quant" name="stock" placeholder="Quantity.." min="0" max="100" required>
                                </div>
                            </div>

                            <div class="row m-2">
                                <div class="col-25">
                                    <label for="img1">Image 1</label>
                                </div>
                                <div class="col-75">
                                    <input type="file" id="img1" name="image1" placeholder="select picture" required>
                                </div>
                            </div>

                            <div class="row m-2">
                                <div class="col-25">
                                    <label for="img2">Image 2</label>
                                </div>
                                <div class="col-75">
                                    <input type="file" id="img2" name="image2" placeholder="select picture">
                                </div>
                            </div>

                            <div class="row m-2">
                                <div class="col-25">
                                    <label for="img3">Image 3</label>
                                </div>
                                <div class="col-75">
                                    <input type="file" id="img3" name="image3" placeholder="select picture">
                                </div>
                            </div>
                            <br>
                            <div class="row submit-button">
                                <input type="submit" value="Add">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="add_course" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title text-center" id="exampleModalLabel">Add The New Course</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="get_course.jsp" enctype="multipart/form-data" method="post">

                            <div class="row m-2">
                                <div class="col-25">
                                    <label for="name">Course Name</label>
                                </div>
                                <div class="col-75">
                                    <input type="text" id="name" name="name" placeholder="Course name.." required>
                                </div>
                            </div>

                            <div class="row m-2">
                                <div class="col-25">
                                    <label for="Ins">Instrument</label>
                                </div>
                                <div class="col-75">
                                    <select id="Ins" name="instrument" required>
                                        <option value="Piano" >Piano</option>
                                        <option value="Guitar">Guitar</option>
                                        <option value="Flute">Flute</option>
                                        <option value="Ukele">Ukele</option>
                                    </select>
                                </div>
                            </div>

                            

                            <div class="row m-2">
                                <div class="col-25">
                                    <label for="price">Price</label>
                                </div>
                                <div class="col-75">
                                    <input type="text" id="price" name="price" placeholder="Price.." required>
                                </div>
                            </div>
                            <div class="row m-2">
                                <div class="col-25">
                                    <label for="link">Link</label>
                                </div>
                                <div class="col-75">
                                    <input type="text" id="link" name="link" placeholder="Link for the course.." required>
                                </div>
                            </div>

                            

                            <div class="row m-2">
                                <div class="col-25">
                                    <label for="img1">Image </label>
                                </div>
                                <div class="col-75">
                                    <input type="file" id="img1" name="image" placeholder="select picture" required>
                                </div>
                            </div>

                            
                            <br>
                            <div class="row submit-button">
                                <input type="submit" value="Add">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
<% }%>
<?php
function displayPhotos($page_num, $data){
    if($page_num==1 || $page_num==null){
        foreach($data as $row){
        if($row['id']>0 && $row['id']<=16){
        $img_path = 'img\\'.$row['Image'];?>
        <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                <figure class="effect-ming tm-video-item">
                    <img src="<?php echo $img_path;?>" alt="Image" class="img-fluid">
                    <figcaption class="d-flex align-items-center justify-content-center">
                        <h2><?php echo $row['photo title'];?></h2>
                        <a href="photo-detail.php?id=<?php echo $row['id'];?>">View more</a>
                    </figcaption>                    
                </figure>
                <div class="d-flex justify-content-between tm-text-gray">
                    <span class="tm-text-gray-light"><?php echo $row['date'];?></span>
                    <span><?php echo $row['views'].' Views';?></span>
                </div>
            </div>
            <?php }}}
    elseif($page_num==2){
        foreach($data as $row){
        if($row['id']>16 && $row['id']<=32){
        $img_path = 'img\\'.$row['Image'];?>
        <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                <figure class="effect-ming tm-video-item">
                    <img src="<?php echo $img_path;?>" alt="Image" class="img-fluid">
                    <figcaption class="d-flex align-items-center justify-content-center">
                        <h2><?php echo $row['photo title'];?> </h2>
                        <a href="photo-detail.php?id=<?php echo $row['id'];?>">View more</a>
                    </figcaption>                    
                </figure>
                <div class="d-flex justify-content-between tm-text-gray">
                    <span class="tm-text-gray-light"><?php echo $row['date'];?></span>
                    <span><?php echo $row['views'].' Views';?></span>
                </div>
            </div>
    <?php }}}
    elseif($page_num==3){
        foreach($data as $row){
        if($row['id']>32 && $row['id']<=48){
        $img_path = 'img\\'.$row['Image'];?>
        <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                <figure class="effect-ming tm-video-item">
                    <img src="<?php echo $img_path;?>" alt="Image" class="img-fluid">
                    <figcaption class="d-flex align-items-center justify-content-center">
                        <h2><?php echo $row['photo title'];?> </h2>
                        <a href="photo-detail.php?id=<?php echo $row['id'];?>">View more</a>
                    </figcaption>                    
                </figure>
                <div class="d-flex justify-content-between tm-text-gray">
                    <span class="tm-text-gray-light"><?php echo $row['date'];?></span>
                    <span><?php echo $row['views'].' Views';?></span>
                </div>
            </div>
            <?php }}}
    elseif($page_num==4){
        foreach($data as $row){
        if($row['id']>48 && $row['id']<=64){
        $img_path = 'img\\'.$row['Image'];?>
        <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                <figure class="effect-ming tm-video-item">
                    <img src="<?php echo $img_path;?>" alt="Image" class="img-fluid">
                    <figcaption class="d-flex align-items-center justify-content-center">
                        <h2><?php echo $row['photo title'];?> </h2>
                        <a href="photo-detail.php?id=<?php echo $row['id'];?>">View more</a>
                    </figcaption>                    
                </figure>
                <div class="d-flex justify-content-between tm-text-gray">
                    <span class="tm-text-gray-light"><?php echo $row['date'];?></span>
                    <span><?php echo $row['views'].' Views';?></span>
                </div>
            </div>
            <?php }}}                    
}

function Pagination($id){
    if($id==1 || $id==null){?>
        <a href="index.php?page_id=1" class="active tm-paging-link">1</a>
        <a href="index.php?page_id=2" class="tm-paging-link">2</a>
        <a href="index.php?page_id=3" class="tm-paging-link">3</a>
        <a href="index.php?page_id=4" class="tm-paging-link">4</a>
    <?php }
    elseif($id==2){?>
        <a href="index.php?page_id=1" class="tm-paging-link">1</a>
        <a href="index.php?page_id=2" class="active tm-paging-link">2</a>
        <a href="index.php?page_id=3" class="tm-paging-link">3</a>
        <a href="index.php?page_id=4" class="tm-paging-link">4</a>
    <?php }
    elseif($id==3){?>
     <a href="index.php?page_id=1" class="tm-paging-link">1</a>
     <a href="index.php?page_id=2" class="tm-paging-link">2</a>
     <a href="index.php?page_id=3" class="active tm-paging-link">3</a>
     <a href="index.php?page_id=4" class="tm-paging-link">4</a>
     <?php }
    else{?>
        <a href="index.php?page_id=1" class="tm-paging-link">1</a>
        <a href="index.php?page_id=2" class="tm-paging-link">2</a>
        <a href="index.php?page_id=3" class="tm-paging-link">3</a>
        <a href="index.php?page_id=4" class="active tm-paging-link">4</a>
    <?php }
    }

function showRelatedPhotos($data, $id){
    $i=0;
    foreach($data as $row){
        if($i <= 7 && $row['id'] != $id){
            $img_path= 'img\\'.$row['Image'];?>
            <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                <figure class="effect-ming tm-video-item">
                    <img src="<?php echo $img_path;?>" alt="Image" class="img-fluid">
                    <figcaption class="d-flex align-items-center justify-content-center">
                        <h2><?php echo $row['photo title'];?></h2>
                        <a href="photo-detail.php?id=<?php echo $row['id'];?>">View more</a>
                    </figcaption>                    
                </figure>
                <div class="d-flex justify-content-between tm-text-gray">
                    <span class="tm-text-gray-light"><?php echo $row['date'];?></span>
                    <span><?php echo $row['views'] .' Views';?></span>
                </div>
            </div>  
    <?php 
        $i++;}}
    
}
function search($conn){
    if(($_SERVER["REQUEST_METHOD"] == "POST") && (!empty($_POST['search']))){
        $photo_title = $_POST['search'];
        $row = $conn->query("SELECT * FROM `photos` WHERE `photo title` = '$photo_title'")->fetch();
        if($row){
            $path = "photo-detail.php?id=".$row['id'];
            header("Location: $path");}
        else{
            echo "<script>alert('photo is not exist!')</script>";
        }
    }
}
function addPhoto($conn, $title, $date, $image, $license, $dim, $format, $active, $tag_id){
    $sql = "INSERT INTO `photos` (`photo title`, `date`, `Image`, `license`, `dimension`, `format`, `active`, `tag_id`) 
    VALUES ('$title', '$date', '$image', ' $license', '$dim', '$format', $active, $tag_id)";
    $conn->exec($sql);
    echo 'data is inserted successfully';
    echo "<script>alert('photo is inserted successfully!')</script>";
    header("Location: ./photos.php");
}
function checkPhoto($conn, $title, $date, $image, $license, $dim, $format, $active, $tag_id){
    $row = $conn->query("SELECT * FROM `photos` WHERE `Image` = '$image'")->fetchAll();
    if($row){
        echo "<script>alert('photo is already existed!')</script>";
    }
    else{
        addPhoto($conn, $title, $date, $image, $license, $dim, $format, $active, $tag_id);
        header("Location: ./photos.php");
    }
}
function deletePhoto($id, $conn){
    $sql = "DELETE FROM `photos` WHERE `id` = $id";
    $conn->exec($sql);
    echo "<script>alert('photo is deleted successfully!')</script>";

}
function retrievePhotoData($id, $conn){
    $row = $conn->query("SELECT * FROM `photos` WHERE `id` = $id")->fetch();
    return $row;
}
function retrievePhotosData($conn){
    $data = $conn->query("SELECT * FROM `photos`")->fetchAll();
    return $data;
}
function retrieveRelatedPhotos($conn, $tag_id){
    $data = $conn->query("SELECT * FROM `photos` WHERE `tag_id`= '$tag_id'")->fetchAll();
    return $data;
}
function updatePhotos($conn, $id, $title, $date, $img, $license, $dim, $format, $active, $category_id){
    $sql = $sql = "UPDATE `photos` SET `photo title` = '$title', `date` = '$date', `Image` = '$img', `license` = '$license',
	`dimension` = '$dim', `format` = '$format', `active` = '$active', `tag_id` = '$category_id' WHERE `id` = $id";
    $conn->exec($sql);
    echo "<script>alert('photo is updated successfully!')</script>";
    header("Location: ./photos.php");
}
function AddCategory($conn, $category){
    $sql = $conn->query("INSERT INTO `tags`(`category`) VALUES('$category')");
    echo "<script>alert('Category is inserted successfully!')</script>";
    header("Location: ./categories.php");
    
}
function retrieveCategories($conn){
    $data = $conn->query("SELECT * FROM `tags`")->fetchAll();
    return $data;
}
function retrieveCategoryData($id, $conn){
    $row = $conn->query("SELECT * FROM `tags` WHERE `category_id` = $id")->fetch();
    return $row;
}
function retrieveCategoryid($category, $conn){
    $row = $conn->query("SELECT * FROM `tags` WHERE `category` = '$category'")->fetch();
    return $row;
}
function updateCategory($conn, $id, $category){
    $sql = "UPDATE `tags` SET `category` = '$category' WHERE `category_id` = $id";
    $conn->exec($sql);
    echo "<script>alert('category is updated successfully!')</script>";
    header("Location: ./categories.php");
}
function deleteCategory($conn, $id){
    $sql = "DELETE FROM `tags` WHERE `category_id` = $id";
    $conn->exec($sql);
    echo "<script>alert('category is delete successfully!')</script>";
    header("Location: categories.php");
}
function retrieveUsers($conn){
    $data= $conn->query("SELECT * FROM `users`")->fetchAll();
    return $data;
}
function retrieveUserData($conn, $email){
    $row = $conn->query("SELECT * FROM `users` WHERE `email` = '$email'")->fetch();
    return $row;
}
function updateUser($conn, $fullname, $username, $email, $active, $pwd){
    $sql = "UPDATE `users` SET `fullname` = '$fullname', `username` = '$username', 
    `email` = '$email', `active` = '$active', `password` = '$pwd' WHERE `email` = '$email'";
    $conn->exec($sql);
    echo "<script>alert('User is updated successfully!')</script>";
    header("Location: ./users.php");
}
function registration($conn, $fullname, $username, $email, $pwd, $rgistrationDate){
    $sql = "INSERT INTO `users`(`fullname`, `username`, `email`, `password`, `registration date`)
     VALUES('$fullname', '$username', '$email', '$pwd', '$rgistrationDate')";
    $conn->exec($sql);
    echo "<script>alert(Account is created successfully!')</script>";
    $_SESSION['username'] = $username;
    $_SESSION['role'] = "user";
    header("Location: ../index.php");
}

?>


           


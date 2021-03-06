<?php
session_start();
if (!isset($_SESSION['adminSession'])) {
    header("Location: Login.php");
    exit(0);
}

if (isset($_GET['userID'])) {
    require_once 'Controller/UserController.php';
    require_once 'Controller/RateController.php';
    require_once 'Controller/FeedbackController.php';
    require_once 'Controller/ReviewController.php';
    $id = $_GET['userID'];
    $userController = new UserController();
    $rateController = new RateController();
    $feedbackController = new FeedbackController();
    $reviewController = new ReviewController();
    $rateController->removeRateByUserId($id);
    $feedbackController->removeUserById($id);
    $reviewController->removeReviewByUserId($id);
    $userController->removeUser($id);   
    header("Location: UsersTable.php");
    exit(0);
}
 elseif (isset($_GET['productID'])) {
    require_once 'Controller/ProductController.php';
    require_once 'Controller/RateController.php';
    require_once 'Controller/ReviewController.php';
    $id = $_GET['productID'];
    $productController = new ProductController();
    $rateController = new RateController();
    $reviewController = new ReviewController();
    $rateController->removeRateProductById($id);
    $reviewController->removeReviewProductById($id);
    $productController->removeProduct($id);
    header("Location: ProductsTable.php");
    exit(0);
}
elseif (isset($_GET['feedbackID'])) {
    require_once 'Controller/FeedbackController.php';
    $id = $_GET['feedbackID'];
    $feedbackController = new FeedbackController();
    $feedbackController->removeFeedback($id);
    header("Location: FeedBacks.php");
    exit(0);
}
elseif (isset($_GET['reviewID'])) {
    require_once 'Controller/ReviewController.php';
    $id = $_GET['reviewID'];
    $reviewController = new ReviewController();
    $reviewController->removeReviewById($id);
    header("Location: ProductsTable.php");
    exit(0);
}
<?php include 'includes/nav.php';?>
<div class="container text-center mt-5">
    <?php if(!isset($_SESSION['success'])){?>
    <div class="card text-darker bg-yellow m-auto" style="filter: blur(14px);">
        <i class="ion-alert-circled text-center" style="font-size:50px"></i>
        <p style="word-spacing:5px">
            خوێندکارانی خۆشەویست ئەم (کارتانەی) خوارەوە کە دەیبنن بریتییە لە توێژینەوەی مامۆستاکان بۆیە ئەم خاڵانەی
            خوارەوە
            بخوێنەوە
            <ul class="list-group p-0 list-group-flush ">
                <li class="list-group-item rounded m-2">1. ئەگەر هەر توێژینەوەیەکت بەدڵە و لەگەڵ گروپەکەت ڕێ کەوتویت
                    ئەوا
                    کلیک لە
                    (وەگرتن) بکەو توێژینەوەکەت هەڵبژێرە
                    بەڵام دەبێت (کۆدی گروپەکەت) بزانیت
                    <!-- <a href="table.php" class="btn btn-primary my-2 btn-sm rounded">بینینی کۆدی گروپ</a> -->
                    <br>
                    <span class="btn btn-primary my-2 btn-sm rounded">بینینی کۆدی گروپ</span>
                </li>
                <li class="list-group-item rounded m-2">2. بەهیچ شێوەیەک پاشگەزبوونەوە نییە ، بۆیە تکایە بە وردی
                    توێژینەوەکەت هەڵبژێرە
                </li>
                <li class="list-group-item rounded m-2">3.
                    ئەگەر بێت و هەر کێشەیەک ڕووبدات ئەوا خوێندکاران زەرەرمەند دەبن ، بۆیە تکایە بە وردی ڕێنماییەکان جێ
                    بەجێ بکە
                    ,
                    وەرگرتنی توێژینەوە کارایە تا ٢٤ کاتژمێر
                </li>

            </ul>
            <br>
        </p>
    </div>
    <br>
    <br>
    <?php if(isset($_SESSION['error'])){
        unset($_SESSION['success']);
    ?>
    <div class="alert bg-yellow text-darker"><?php echo $_SESSION['error'];?></div>
    <?php }?>
    <div class="row p-0 m-0">
        <?php 
        if(isset($_POST['confirm'])){
            $code = x($_POST['code']);
            $file_id = x($_POST['file_id']);
            $teacher_id = x($_POST['teacher_id']);
            $checkStatus = mysqli_query($db , "SELECT `status` FROM `files` WHERE `id_files` = '$file_id'");
            $checkconfirm = mysqli_query($db , "SELECT `group_id` FROM `confirm_file` WHERE `group_id` = '$code'");
            $checkgroup = mysqli_query($db , "SELECT `id` FROM `names` WHERE `id` = '$code'");
            if((!empty($code) && !empty($file_id) && !empty($teacher_id))){
                if(mysqli_fetch_array($checkStatus)['status'] == 1){
                    if(mysqli_fetch_array($checkconfirm) == null){
                       if(mysqli_fetch_array($checkgroup) != null){
                           mysqli_query($db , "UPDATE `files` SET `status` = 2 WHERE `id_files` = '$file_id'");
                           mysqli_query($db , "UPDATE `names` SET `status_names` = 1 WHERE `id` = '$code'");
                           mysqli_query($db , "INSERT INTO `confirm_file`(`group_id`,`teacher_id`,`file_id`) VALUES ('$code','$teacher_id','$file_id')");
                           $_SESSION['success'] = true;
                           unset($_SESSION['error']);
                           header("Location:index.php");
                       }else{
                           $_SESSION['error'] = "کۆدی گروپ هەڵەیە";
                           header("Location:index.php");
                       }
                    }else{
                        $_SESSION['error']  = "ئەم گروپە پێشوتر توێژینەوەی وەرگرتووە";
                        header("Location:index.php");
                    }
                }else{
                    $_SESSION['error']  = "ئەم توێژینەوەی پێشوتر گیراوە";
                    header("Location:index.php");
                }
            }else{
                $_SESSION['error']  = "تکایە دڵنیابەرەوە لە کۆدەکەت";
                header("Location:index.php");
            }
    }
       ?>

        <p class="text-white text-right">ئەو توێژینەوانەی کە بەردەستن</p>
        <div class="row">

            <?php
     $query = mysqli_query($db , "SELECT t.*,f.* FROM teacher t JOIN files f WHERE t.id = f.teacher_id AND f.status = 1 ");
     while($row = mysqli_fetch_assoc($query)){?>
            <div class="card p-1" style="width: 18rem;">
                <img src="assets/img/<?php echo x($row['picture']);?>" width="100" height="100"
                    class="rounded-circle shadow mx-auto">
                <p class="text-darker text-center btn-sm my-2">( <?php echo x($row['name']);?> )</p>
                <div class="p-1 border bg-lighter m-1 rounded-lg" style="height:140px">
                    <p class="text-darker">ناوی توێژینەوە : <p>
                            <p dir="ltr" class="text-center text-darker font-weight-bolder">
                                <?php echo x($row['name_files']);?></p>
                </div>
                <span data-toggle="modal" data-target=".confirm<?php echo x($row['id_files']);?>"
                    class="btn btn-primary">وەگرتن</span>
            </div>

            <div class="modal fade confirm<?php echo x($row['id_files']);?>" tabindex="-1" role="dialog"
                aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                    <div class="modal-content bg-gradient-darker p-2">
                        <h2 class="text-white">ئەم توێژینەوەیە بە ناوی : <h2>
                                <h2 dir="ltr" class="text-center text-white m-2">
                                    <?php echo x($row['name_files']);?></h2>
                                <span class="btn btn-white btn-sm m-auto">لەلایەن مامۆستا : (
                                    <?php echo x($row['name']);?> ) سەرپەرشتی دەکرێ</span><br>

                                <img src="assets/img/<?php echo x($row['picture']);?>" width="100"
                                    class="rounded-circle shadow mx-auto">
                                <div class="border-bottom border-white my-3"></div>
                                <form action="index.php" method="POST">
                                    <h4 class="text-white text-right">ئەگەر ئەم توێژینەوەیەت بەدڵە ئەوا کۆدی
                                        گروپەکە بنوسە</h4>
                                    <input type="text" name="code"
                                        class="form-control form-control-alternative text-darker text-left" dir="ltr"
                                        placeholder="Code">
                                    <br>
                                    <input type="hidden" name="teacher_id" value="<?php echo x($row['teacher_id']);?>">
                                    <input type="hidden" name="file_id" value="<?php echo x($row['id_files']);?>">
                                    <div class="d-flex justify-content-center">
                                        <button type="button" class="btn btn-secondary m-2" data-dismiss="modal">دڵنیا
                                            نیم</button>
                                        <button type="submit" name="confirm" class="btn btn-primary m-2">بەڵێ
                                            دڵنیام</button>
                                    </div>
                                </form>
                    </div>
                </div>
            </div>
            <?php } ?>
        </div>

    </div>
    <hr>
    <?php } ?>

    <p class="text-white">ئەو گروپانەی کە توێژینەوەیان وەرگرتووە</p>
    <div class="row">
        <?php $query = mysqli_query($db , "SELECT cf.*,n.*,f.*,t.* FROM `confirm_file` cf JOIN `names` n ON (cf.group_id = n.id) JOIN `files` f ON (cf.file_id = f.id_files) JOIN `teacher` t ON (cf.teacher_id = t.id)");
        while($row = mysqli_fetch_array($query)){?>
        <div class="card bg-yellow" style="width: 18rem;">
            <img src="assets/img/<?php echo x($row['picture']);?>" width="100" height="100"
                class="rounded-circle shadow mx-auto">
            <p class="text-center text-darker"><?php echo x($row['name_files']);?> <br> <small
                    class="badge badge-primary"><?php echo x($row['name']);?></small></p>
            <div class="card-body py-0">
                <p class="mb-1 text-darker"><small>بەژداربووانی گروپ : </small><br>
                    <b><?php echo x($row['name1']) . " (" . x($row['class1']) . ")";?><br></b>
                    <b><?php echo x($row['name2']) . " (" . x($row['class2']) . ")";?><br></b>
                    <b><?php if(!empty(x($row['name3']))){ echo x($row['name3']) . " (" . x($row['class3']) . ")"; }?><br></b>
                    <b><?php if(!empty(x($row['name4']))){ echo x($row['name4']) . " (" . x($row['class4']) . ")"; }?><br></b>
                </p>
            </div>
        </div>
        <?php } ?>
    </div>
    <div class="text-white text-center my-5">Powered By Rstacode <a class="btn btn-primary btn-sm ion-ios-download"
            href="https://github.com/codenashwan/Rstacode-Form-02"> Download Source Code </a></div>
</div>
<?php include 'includes/nav.php';?>

<div class="container mt-4">
    <a href="index.php" class="btn btn-darker m-2 ion-ios-undo" style="position:fixed;bottom:0;left:0 "> بەشی سەرەتا
    </a>
    <table class="table table-p table-white table-borderless table-responsive-sm table-hover rounded-lg" dir="rtl">
        <thead>
            <tr class="text-darker text-center">
                <th scope="col">کۆدی گروپ</th>
                <th scope="col">ناو و کلاسی خوێندکاری یەکەم</th>
                <th scope="col">ناو و کلاسی خوێندکاری دووەم</th>
                <th scope="col">ناو و کلاسی خوێندکاری سێهەم</th>
                <th scope="col">ناو و کلاسی خوێندکاری چوارەم</th>
            </tr>
        </thead>
        <tbody>
            <?php 
        $query = mysqli_query($db , "SELECT * FROM  `names` WHERE `status_names` = 0 ORDER BY `id` ASC");
        while($row = mysqli_fetch_assoc($query)){?>
            <tr
                class="text-darker font-weight-bolder text-center <?php if(x($row['status_names']) == 1){echo "bg-success";}?>">
                <th scope="row"><?php echo x($row['id']);?></th>
                <td><?php echo x($row['name1']);?>
                    <?php  if(x($row['class1']) == "A" || x($row['class1']) == "B"){echo "( " . x($row['class1']) . " )";}else { echo "";}?>
                </td>
                <td><?php echo x($row['name2']);?>
                    <?php  if(x($row['class2']) == "A" || x($row['class2']) == "B"){echo "( " . x($row['class2']) . " )";}else { echo "";}?>
                </td>
                <td><?php echo x($row['name3']);?>
                    <?php  if(x($row['class3']) == "A" || x($row['class3']) == "B"){echo "( " . x($row['class3']) . " )";}else { echo "";}?>
                </td>
                <td><?php echo x($row['name4']);?>
                    <?php  if(x($row['class4']) == "A" || x($row['class4']) == "B"){echo "( " . x($row['class4']) . " )";}else { echo "";}?>
                </td>
            </tr>
            <?php } ?>
        </tbody>
    </table>
</div>
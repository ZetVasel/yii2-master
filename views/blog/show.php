<?php
use yii\helpers\Html;
use yii\widgets\LinkPager;
?>

<h1>Post</h1>
<ul>
    <?php foreach ($blogs as $blog): ?>


        <ol> <h3><?= $blog->title ?></h3> </ol>
        <li>   <?= $blog->post ?>
    </li>
    <?php endforeach; ?>
</ul>

<?= LinkPager::widget(['pagination' => $pagination]) ?>



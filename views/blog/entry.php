<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;
?>
<?php $form = ActiveForm::begin(); ?>

<?= $form->field($model,'name') -> label('Ваше имя') ?>
<?= $form->field($model,'email') -> label('Ваш Email')?>

<dive class="form-group">
    <?= Html::submitButton('Send', ['class' => 'btn btn-primary']) ?>
</dive>

<?php ActiveForm::end(); ?>
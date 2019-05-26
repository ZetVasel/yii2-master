<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "blog".
 *
 * @property int $id
 * @property string $title
 * @property string $post
 * @property string $data
 */
class Blog extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'blog';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['title','part_post', 'post', 'data'], 'required'],
            [['data'], 'safe'],
            [['title'], 'string', 'max' => 50],
            [['part_post'], 'string', 'max' => 50],
            [['post'], 'string', 'max' => 256],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'part_post' => 'Part Post',
            'post' => 'Post',
            'data' => 'Data',
        ];
    }
}

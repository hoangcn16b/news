<?php

namespace App\Models;

use App\Models\AdminModel;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;

class SettingModel extends AdminModel
{
    public $settings;
    public function __construct()
    {
        $this->table               = 'settings';
        $this->folderUpload        = 'setting';
        $this->fieldSearchAccepted = ['id', 'username', 'email', 'fullname'];
        $this->crudNotAccepted     = ['_token', 'avatar_current', 'task_general_setting', 'task_email_setting', 'task_email_bcc', 'task_social_setting'];
    }

    public function listItems($params = null, $options = null)
    {
        $result = null;
        // $query = DB::select("SELECT
        // (SELECT `value` FROM `settings` WHERE `key_value` = 'setting-general') AS `setting_general`,
        // (SELECT `value` FROM `settings` WHERE `key_value` = 'setting-email') AS `setting_email`,
        // (SELECT `value` FROM `settings` WHERE `key_value` = 'setting-bcc') AS `setting_bcc`,
        // (SELECT `value` FROM `settings` WHERE `key_value` = 'setting-social') AS `setting_social`,
        // (SELECT `value` FROM `settings` WHERE `key_value` = 'setting-video') AS `setting_video`");
        // // dd($query);
        // $query = $query[0];
        // foreach ($query as $key => $value) {
        //     $result[$key] = json_decode($value, true);
        // }
        $query = $this->pluck('value', 'key_value');
        foreach ($query as $key => $value) {
            $result[$key] = json_decode($value, true);
        }
        // dd($result);
        // $this->settings = $result;
        // dd($result['setting_general']);
        // if ($options['task'] == "admin-setting-general") {
        //     $result = $result['setting_general'];
        // }
        // if ($options['task'] == "admin-setting-email-account") {
        //     $result = $result['setting_email'];
        // }
        // if ($options['task'] == "admin-setting-email-bcc") {
        //     $result = $result['setting_bcc'];
        // }
        // if ($options['task'] == "admin-setting-social") {
        //     $result['facebook'] = $result['setting_social'];
        //     $result['youtube'] = $result['setting_video'];
        // }
        //-pluck
        // if ($options['task'] == "admin-setting-general") {
        //     $result = $this->select('value')->where('key_value', 'setting-general')->first();
        //     $result = $result->attributes['value'];
        //     $result = json_decode($result, true);
        // }

        // if ($options['task'] == "admin-setting-email-account") {
        //     $result = $this->select('value')->where('key_value', 'setting-email')->first();
        //     $result = $result->attributes['value'];
        //     $result = json_decode($result, true);
        // }

        // if ($options['task'] == "admin-setting-email-bcc") {
        //     $result = $this->select('value')->where('key_value', 'setting-bcc')->first();
        //     $result = $result->attributes['value'];
        //     $result = json_decode($result, true);
        // }

        // if ($options['task'] == "admin-setting-social") {
        //     // $result = $this->select('value')->where('key_value', 'setting-social')->first();
        //     // $result = $result->attributes['value'];
        //     // $result = json_decode($result, true);
        //     $query = DB::select("SELECT `value` FROM `setting` WHERE `key_value` IN ('setting-social','setting-video')");
        //     // $result = $result[0];
        //     // $result = $result[1];
        //     $result['facebook'] = json_decode($query[0]->value, true);
        //     $result['youtube'] = json_decode($query[1]->value, true);
        // }
        return $result;
    }

    public function getSettings($params = null, $options = null)
    {
        $result = null;
        $this->getSettings();
        $result = $this->settings;
        if ($options['task'] == "admin-setting-general") {
            $result = $result['setting_general'];
        }
        if ($options['task'] == "admin-setting-email-account") {
            $result = $result['setting_email'];
        }
        if ($options['task'] == "admin-setting-email-bcc") {
            $result = $result['setting_bcc'];
        }
        if ($options['task'] == "admin-setting-social") {
            $result['facebook'] = $result['setting_social'];
            $result['youtube'] = $result['setting_video'];
        }
        return $result;
    }


    public function saveItem($params = null, $options = null)
    {
        unset($params['_token']);

        if ($options['task'] == 'general-setting') {
            if (!empty($params['logo'])) {
                $this->deleteLogo($params['avatar_current'] ?? '');
                $params['logo'] = $this->uploadLogo($params['logo']);
                // $params['logo'] =  $nameLogo . '.' . $extension;
            } else {
                $params['logo'] = $params['avatar_current'];
            }
            unset($params['avatar_current']);
            unset($params['task_general_setting']);
            $result = null;
            $result['value'] = json_encode($params);
            self::where('key_value', 'setting-general')->update($this->prepareParams($result));
        }

        if ($options['task'] == 'email-setting') {
            unset($params['task_email_setting']);
            $result = null;
            $result['value'] = json_encode($params);
            self::where('key_value', 'setting-email')->update($this->prepareParams($result));
        }

        if ($options['task'] == 'email-bcc') {
            unset($params['task_email_bcc']);
            $result = null;
            $result['value'] = json_encode($params);
            // dd($result);
            self::where('key_value', 'setting-bcc')->update($this->prepareParams($result));
        }

        if ($options['task'] == 'social-setting') {
            unset($params['task_social_setting']);
            $result = null;
            // dd($params);
            $result['facebook']['value'] = json_encode($params['facebook']);
            $result['youtube']['value'] = json_encode($params['youtube']);
            // dd($result);
            self::where('key_value', 'setting-social')->update($this->prepareParams($result['facebook']));
            self::where('key_value', 'setting-video')->update($this->prepareParams($result['youtube']));
        }
    }
}

﻿using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.Messaging;
using ModernBoxes.Model;
using ModernBoxes.Tool;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModernBoxes.ViewModel
{
    public class UCAddApplicationDialogViewModel : ViewModelBase
    {
        private ApplicationModel appModel = new ApplicationModel();

        public ApplicationModel AppModel
        {
            get { return appModel; }
            set { appModel = value; RaisePropertyChanged("AppModel"); }
        }

        private List<ApplicationModel> usedList = new List<ApplicationModel>(); 

        public List<ApplicationModel> UsedList
        {
            get { return usedList; }
            set { usedList = value; }
        }


        /// <summary>
        /// 添加应用
        /// </summary>
        public RelayCommand AddApplication
        {
            get
            {
                return new RelayCommand(async (o)=>{
                    try
                    {
                        if(AppModel.AppPath != String.Empty)
                        {
                            String oldJson = await FileHelper.ReadFile($"{Environment.CurrentDirectory}\\UsedApplicationConfig.json");
                            if (oldJson.Length > 8)
                            {
                                JArray jArray = JArray.Parse(oldJson);
                                IList<JToken> tokens = jArray.Children().ToList();
                                foreach (JToken token in tokens)
                                {
                                    if (token != null)
                                        UsedList.Add(token.ToObject<ApplicationModel>());
                                }
                                //添加新数据
                                UsedList.Add(AppModel);
                            }
                            else
                            {
                                UsedList.Add(AppModel);
                            }
                            String newJson = JsonConvert.SerializeObject(UsedList);
                            await FileHelper.WriteFile($"{Environment.CurrentDirectory}\\UsedApplicationConfig.json", newJson);
                            //刷新数据

                            //关闭对话框
                            Messenger.Default.Send<Boolean>(true, "IsCloseBaseDialog");
                        }
                    }
                    catch (Exception ex)
                    {

                    }
                },x=>true);
            }
        }

        /// <summary>
        /// 选择应用路径
        /// </summary>
        public RelayCommand ChoseApplicationPath
        {
            get
            {
                return new RelayCommand((o) =>
                {
                    Microsoft.Win32.OpenFileDialog openFileDialog = new Microsoft.Win32.OpenFileDialog();
                    openFileDialog.Filter = "可执行程序|*.exe";
                    if (openFileDialog.ShowDialog() == true)
                    {
                        AppModel.AppPath = openFileDialog.FileName;
                    }
                },x=>true);
            }
        }

        /// <summary>
        /// 选择图标路径
        /// </summary>
        public RelayCommand ChosePhotoPath {
            get
            {
                return new RelayCommand((o) =>
                {
                    Microsoft.Win32.OpenFileDialog openFileDialog = new Microsoft.Win32.OpenFileDialog();
                    openFileDialog.Filter = "图标文件|*.icon";
                    if (openFileDialog.ShowDialog() == true)
                    {
                        AppModel.Icon = openFileDialog.FileName;
                    }
                }, x => true);
            }
        }
        public UCAddApplicationDialogViewModel()
        {

        }
    }
}
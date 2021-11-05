﻿using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.Messaging;
using ModernBoxes.Model;
using ModernBoxes.Tool;
using ModernBoxes.View;
using ModernBoxes.View.SelfControl;
using ModernBoxes.View.SelfControl.dialog;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace ModernBoxes.ViewModel
{
    public delegate void RefreshMenu();
    public class MainViewModel : ViewModelBase
    {

        public static event RefreshMenu RefreshMenuEvent;

        /// <summary>
        /// 主菜单集合
        /// </summary>
        private ObservableCollection<MenuModel> menus = new ObservableCollection<MenuModel>();

        public ObservableCollection<MenuModel> MenuList
        {
            get { return menus; }
            set { menus = value; RaisePropertyChanged("MenuList"); }
        }

        ///// <summary>
        ///// 卡片内容集合
        ///// </summary>

        //private ObservableCollection<CardContentModel> cardContents = new ObservableCollection<CardContentModel>();

        //public ObservableCollection<CardContentModel> CardContents
        //{
        //    get { return cardContents; }
        //    set { cardContents = value;RaisePropertyChanged("CardContents"); }
        //}

        /// <summary>
        /// 点击菜单加载命令
        /// </summary>
        public RelayCommand OpenApp
        {
            get
            {
                return new RelayCommand((o) =>
                {
                    switch (o.ToString())
                    {
                        case "组件应用":
                            Messenger.Default.Send<Boolean>(true, "isShow");
                            break;
                    }
                }, x => true);
            }
        }

        /// <summary>
        /// 打开添加主菜单的对话框
        /// </summary>
        public RelayCommand AddMenuDialog
        {
            get
            {
                return new RelayCommand((o) =>
                {
                    AddMenuDialog addmenuDialog = new AddMenuDialog();
                    addmenuDialog.ShowDialog();
                }, x => true);
            }
        }

        /// <summary>
        /// 打开设置对话框
        /// </summary>
        public RelayCommand OpenSetDialog
        {
            get
            {
                return new RelayCommand((o) =>
                {
                    BaseDialog dialog = new BaseDialog();
                    dialog.SetTitle("设置");
                    dialog.setDialogSize(560, 800);
                    dialog.SetContent(new UCSetDialog());
                    dialog.ShowDialog();
                }, x => true);
            }
        }


        public MainViewModel()
        {
            RefreshMenuEvent += MainViewModel_RefreshMenuEvent;
            loadMenu();
         //   loadCardContent();
        }

        /// <summary>
        /// 添加菜单后刷新界面
        /// </summary>
        /// <param name="bol"></param>
        private void MainViewModel_RefreshMenuEvent()
        {
           MenuList.Clear();
           loadMenu();
        }

        public static void DoRefershMenu()
        {
            
            RefreshMenuEvent();
        }

        ///// <summary>
        ///// 加载卡片内容
        ///// </summary>
        ///// <exception cref="NotImplementedException"></exception>
        //private void loadCardContent()
        //{
        //    CardContents.Add(new CardContentModel() {CardName="每日一言" ,CardContent = new UCOneWord()});
        //    CardContents.Add(new CardContentModel() { CardName = "日常应用", CardContent = new UCusedApplications() });
        //    CardContents.Add(new CardContentModel() { CardName = "临时文件夹", CardContent = new UCtempDirectory() });
        //    CardContents.Add(new CardContentModel() { CardName = "便签", CardContent = new UCnotes() });
        //}

        /// <summary>
        /// 加载主菜单项
        /// </summary>
        /// <exception cref="NotImplementedException"></exception>
        private async void loadMenu()
        {
            String json = await FileHelper.ReadFile($"{Environment.CurrentDirectory}\\MenuConfig.json");
            JArray array = JArray.Parse(json);
            IList<JToken> temp = array.Children().ToList();
            foreach (JToken tempItem in temp)
            {
                if (tempItem!=null)
                    MenuList.Add(tempItem.ToObject<MenuModel>());
            }
            
        }
    }
}

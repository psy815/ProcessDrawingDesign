using System;
using System.ComponentModel;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using Wss.FoundationCore.Attributes;

namespace Wss.FoundationCore.Controls
{
    /// <summary>
    /// �ؼ��Ļ�������
    /// </summary>
    [DesignProperty("����", "Name")]
    [DesignProperty("X����", "(Canvas.Left)")]
    [DesignProperty("Y����", "(Canvas.Top)")]
    [DesignProperty("���", "Width")]
    [DesignProperty("�߶�", "Height")]
    [SerializeProperty("Name")]
    [SerializeProperty("(Canvas.Left)")]
    [SerializeProperty("(Canvas.Top)")]
    [SerializeProperty("Width")]
    [SerializeProperty("Height")]
    [SerializeProperty("(Panel.ZIndex)")]
    public class BaseContainer : Button, ISelectable, IGroupable, IDesignerChildable, INotifyPropertyChanged
    {
        /// <summary>
        /// ȡ��������ͼԪ
        /// </summary>
        public DesignerItem Item
        {
            get { return Content as DesignerItem; }
            set
            {
                this.AddLogicalChild(value);
                this.Content = value;
            }
        }
        #region ��ת�Ƕ�
        [Attributes.Serializable]
        [DisplayName("��ת�Ƕ�")]
        public double Angle
        {
            get { return (double)GetValue(AngleProperty); }
            set { SetValue(AngleProperty, value); }
        }
        public static readonly DependencyProperty AngleProperty = DependencyProperty.Register("Angle", typeof(double), typeof(BaseContainer), new UIPropertyMetadata(0.0, OnAnglePropertyChanged));
        private static void OnAnglePropertyChanged(DependencyObject sender, DependencyPropertyChangedEventArgs e)
        {
            var s = sender as BaseContainer;
            var element = s.Content as FrameworkElement;
            if (element == null) return;

            var hasRt = false;
            var tg = element.LayoutTransform as TransformGroup;
            var rt = new RotateTransform();
            if (tg == null)
            {
                tg = new TransformGroup();
                element.LayoutTransform = tg;
            }
            foreach (var ts in tg.Children.OfType<RotateTransform>())
            {
                rt = ts;
                hasRt = true;
                break;
            }
            if (!hasRt)
            {
                rt = new RotateTransform();
                tg.Children.Add(rt);
            }
            rt.Angle = (double)e.NewValue % 360;
        }
        #endregion

        #region ����

        /// <summary>
        /// X����
        /// </summary>
        // [Designable(ReadOnly = true)]
        [Wss.FoundationCore.Attributes.Serializable]
        [DisplayName("X����")]
        public double ScaleX
        {
            get { return (double)GetValue(ScaleXProperty); }
            set { SetValue(ScaleXProperty, value); }
        }
        public static readonly DependencyProperty ScaleXProperty = DependencyProperty.Register("ScaleX", typeof(double), typeof(BaseContainer), new UIPropertyMetadata(1.0, OnScaleXPropertyChanged));
        private static void OnScaleXPropertyChanged(DependencyObject sender, DependencyPropertyChangedEventArgs e)
        {
            var s = sender as BaseContainer;
            var element = s.Content as FrameworkElement;
            if (element == null) return;

            var hasSt = false;
            var tg = element.LayoutTransform as TransformGroup;
            var st = new ScaleTransform();
            if (tg == null)
            {
                tg = new TransformGroup();
                element.LayoutTransform = tg;
            }
            foreach (var ts in tg.Children.OfType<ScaleTransform>())
            {
                st = ts;
                hasSt = true;
                break;
            }
            if (!hasSt)
            {
                st = new ScaleTransform();
                tg.Children.Add(st);
            }
            st.ScaleX = Math.Abs((double)e.NewValue - 1) < 0.00000001 ? 1 : -1;
           
        }
        [Wss.FoundationCore.Attributes.Serializable]
        [DisplayName("Y����")]
        public double ScaleY
        {
            get { return (double)GetValue(ScaleYProperty); }
            set { SetValue(ScaleYProperty, value); }
        }
        public static readonly DependencyProperty ScaleYProperty = DependencyProperty.Register("ScaleY", typeof(double), typeof(BaseContainer), new UIPropertyMetadata(1.0, OnScaleYPropertyChanged));
        private static void OnScaleYPropertyChanged(DependencyObject sender, DependencyPropertyChangedEventArgs e)
        {
            var s = sender as BaseContainer;
            var element = s.Content as FrameworkElement;
            var hasSt = false;
            if (element != null)
            {
                var tg = element.LayoutTransform as TransformGroup;
                var st = new ScaleTransform();
                if (tg == null)
                {
                    tg = new TransformGroup();
                    element.LayoutTransform = tg;
                }
                foreach (var ts in tg.Children)
                {
                    if (ts is ScaleTransform)
                    {
                        st = ts as ScaleTransform;
                        hasSt = true;
                        break;
                    }
                }
                if (!hasSt)
                {
                    st = new ScaleTransform();
                    tg.Children.Add(st);
                }
                st.ScaleY = (double)e.NewValue == 1 ? 1 : -1;
            }
        }

        #endregion

        public bool IsSelected
        {
            get { return (bool)GetValue(IsSelectedProperty); }
            set { SetValue(IsSelectedProperty, value); }
        }
        public static readonly DependencyProperty IsSelectedProperty = DependencyProperty.Register("IsSelected", typeof(bool),  typeof(BaseContainer), new FrameworkPropertyMetadata(false));

        [Attributes.Serializable]
        public Guid ID { get; set; }

        [Attributes.Serializable]
        public Guid ParentID { get; set; }

        [Attributes.Serializable]
        public bool IsGroup { get; set; }

        public DependencyObject DesignerChild
        {
            get { return Item; }
            set
            {
                Item = (DesignerItem)value;
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;
    }
}
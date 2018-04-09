using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Input;

namespace njhpma.Controls.Helper
{
    public class TextBoxHelper
    {
        public static readonly DependencyProperty EnterUpdatesTextSourceProperty =
        DependencyProperty.RegisterAttached("EnterUpdatesTextSource", typeof(bool),
                                        typeof(TextBoxHelper),
                                        new PropertyMetadata(false, EnterUpdatesTextSourcePropertyChanged));

        public static bool GetEnterUpdatesTextSource(DependencyObject obj)
        {
            return (bool)obj.GetValue(EnterUpdatesTextSourceProperty);
        }

        public static void SetEnterUpdatesTextSource(DependencyObject obj, bool value)
        {
            obj.SetValue(EnterUpdatesTextSourceProperty, value);
        }

        private static void EnterUpdatesTextSourcePropertyChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
        {
            var sender = obj as UIElement;
            if (obj != null)
            {
                if ((bool)e.NewValue)
                {
                    sender.PreviewKeyDown += OnPreviewKeyDownUpdateSourceIfEnter;
                }
                else
                {
                    sender.PreviewKeyDown -= OnPreviewKeyDownUpdateSourceIfEnter;
                }
            }
        }

        private static void OnPreviewKeyDownUpdateSourceIfEnter(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                if (GetEnterUpdatesTextSource((DependencyObject)sender))
                {
                    var obj = sender as UIElement;
                    var textBinding = BindingOperations.GetBindingExpression(obj, TextBox.TextProperty);
                    if (textBinding != null)
                        textBinding.UpdateSource();
                }
            }
        }
    }
}
using System.Collections.Generic;
using System.Windows;
using System.Windows.Media;

namespace njhpma.Controls.Extensions
{
    public static class UIExtensions
    {
        public static T FindByTag<T>(this DependencyObject parent, string tag) where T : UIElement
        {
            List<UIElement> elements = new List<UIElement>();

            int count = VisualTreeHelper.GetChildrenCount(parent);
            if (count > 0)
            {
                for (int i = 0; i < count; i++)
                {
                    DependencyObject child = VisualTreeHelper.GetChild(parent, i);
                    if (typeof(FrameworkElement).IsAssignableFrom(child.GetType())
                        && ((string)((FrameworkElement)child).Tag == tag))
                    {
                        return child as T;
                    }
                    var item = FindByTag<T>(child, tag);
                    if (item != null) return item as T;
                }
            }
            return null;
        }
    }
}
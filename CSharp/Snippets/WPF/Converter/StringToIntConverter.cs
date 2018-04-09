using System;
using System.Globalization;
using System.Windows.Data;

namespace njhpma.Controls.Converter
{
    public class StringToIntConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            string val = parameter as string;
            int integerValue;
            if (!string.IsNullOrEmpty(val))
            {
                if (int.TryParse(val, out integerValue))
                {
                    return integerValue;
                }
            }
            return null;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return parameter.ToString();
        }
    }
}
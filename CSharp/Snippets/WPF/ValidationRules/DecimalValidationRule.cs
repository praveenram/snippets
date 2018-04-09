using System.Globalization;
using System.Windows.Controls;

namespace njhpma.Controls.ValidationRules
{
    public class DecimalValidationRule : ValidationRule
    {
        public override ValidationResult Validate(object value, CultureInfo cultureInfo)
        {
            decimal i;
            if (decimal.TryParse(value.ToString(), out i))
                return new ValidationResult(true, null);

            return new ValidationResult(false, "Numeric value required.");
        }
    }
}
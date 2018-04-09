using System.Globalization;
using System.Windows.Controls;

namespace njhpma.Controls.ValidationRules
{
    public class IntegerValidationRule : ValidationRule
    {
        public override ValidationResult Validate(object value, CultureInfo cultureInfo)
        {
            int i;
            if (int.TryParse(value.ToString(), out i))
                return new ValidationResult(true, null);

            return new ValidationResult(false, "Integer value required.");
        }
    }
}
using System;
using System.Reflection;

namespace Snippets
{
    public static class ObjectExtensions
    {
        public static object Clone(this object currentObject)
        {
            Type _type = currentObject.GetType();
            var returnObject = Activator.CreateInstance(_type);

            currentObject.CopyPropertiesTo(returnObject);

            return returnObject;
        }

        public static void CopyPropertiesTo(this object fromObject, object toObject)
        {
            Type _type = fromObject.GetType();

            if (toObject == null)
                return;

            Type _targetType = toObject.GetType();

            if (_type != _targetType)
                return;

            PropertyInfo[] properties = _type.GetProperties();

            foreach (var property in properties)
            {
                var value = property.GetValue(fromObject);
                property.SetValue(toObject, value);
            }
        }
    }
}
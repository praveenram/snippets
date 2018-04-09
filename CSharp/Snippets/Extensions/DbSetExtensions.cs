using System;
using System.Data.Entity;
using System.Linq;
using System.Reflection;

namespace njhpma.common.Utilities
{
    public static class DbSetExtensions
    {
        public static T FindByObject<T>(this DbSet<T> dbSet, T obj) where T : class
        {
            Type _type = obj.GetType();
            PropertyInfo[] properties = _type.GetProperties();

            Func<T, bool> predicate = x =>
            {
                foreach (var property in properties)
                {
                    if (property.MemberType == MemberTypes.Property && property.CanWrite && property.CanRead)
                    {
                        var result = property.GetValue(x) == property.GetValue(obj);
                        if (result == false)
                            return false;
                    }
                }
                return true;
            };
            return dbSet.Where(predicate).FirstOrDefault();
        }
    }
}
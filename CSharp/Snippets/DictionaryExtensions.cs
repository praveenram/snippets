using System.Collections.Generic;

namespace Snippets
{
    public static class DictionaryExtensions
    {
        private static string ReverseGet(this Dictionary<string, string> dict, string value)
        {
            var reverseMap = new Dictionary<string, string>();
            foreach (var key in dict.Keys)
            {
                var keyValue = dict[key];
                reverseMap[keyValue] = key;
            }
            return reverseMap[value];
        }
    }
}
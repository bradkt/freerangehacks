using Piranha.AttributeBuilder;
using Piranha.Extend.Fields;

namespace freerangehacks.Models.Regions
{
    public class Heading
    {
        [Field(Title = "Primary image")]
        public ImageField PrimaryImage { get; set; }

        [Field]
        public HtmlField Ingress { get; set; }
    }
}
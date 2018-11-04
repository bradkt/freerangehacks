using Piranha.AttributeBuilder;
using Piranha.Models;

namespace freerangehacks.Models
{
    [PageType(Title = "Blog archive", UseBlocks = false)]
    public class BlogArchive  : BlogPage<BlogArchive>
    {
    }
}
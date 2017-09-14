def document
end
=begin
=end
def begin_and_end_comment
end
 1. Lists are typed as indented 
   paragraphs with:
   * a '*' or '-' (for bullet lists)
   * a digit followed by a period for 
     numbered lists
   * an upper or lower case letter followed
     by a period for alpha lists.
    2.Labeled lists (sometimes called description lists) are typed using square brackets for the label.
    [cat]   small domestic animal
    [+cat+] command to copy standard input
    3.Labeled lists may also be produced by putting a double colon after the label. This sets the result in tabular form, so the descriptions all line up. This was used to create the ‘author’ block at the bottom of this description.
    cat::   small domestic animal
    +cat+:: command to copy standard input
    eg.
    <tt>--output</tt> <i>name [, name]</i>::
    specify the name of one or more output files. If multiple
    files are present, the first is used as the index.
    <tt>--quiet:</tt>:: do not output the names, sizes, byte counts,
                    index areas, or bit ratios of units as
                    they are processed.
    4.Headings are entered using equals signs
    = Level One Heading
    == Level Two Heading  
    5.Rules (horizontal lines) are entered using three or more hyphens.
    6.Non-verbatim text can be marked up:

    italic
        _word_ or <em>text</em>
    bold
        *word* or <b>text</b>
    typewriter
        +word+ or <tt>text</tt>
    _italic_::     \_word_ or \<em>text</em>
    *bold*::       \*word* or \<b>text</b>
    +typewriter+:: \+word+ or \<tt>text</tt>
    7.Names of classes, source files, and any method names containing an underscore or preceded by a hash character are automatically hyperlinked from comment text to their description.
    8.Hyperlinks to the web starting http:, mailto:, ftp:, or www. are recognized. An HTTP url that references an external image file is converted into an inline <IMG..>. Hyperlinks starting ‘link:’ are assumed to refer to local files whose path is relative to the –op directory.
    Hyperlinks can also be of the form label[url], in which case the label is used in the displayed text, and url is used as the target. If label contains multiple words, put it in braces: multi word label.




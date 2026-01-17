#include <iostream>
#include <algorithm>
#include <unordered_set>
#include <stdexcept>
#include <unordered_map>
#include "wikiscraper.h"
#include "error.h"

using std::cerr;
using std::cout;
using std::endl;
using std::string;
using std::unordered_map;
using std::unordered_set;

/*
 * You should delete the code in this function and
 * fill it in with your code from part A of the assignment.
 *
 * If you used any helper functions, just put them above this function.
 */

// TODO: ASSIGNMENT 2 TASK 4:
// Please implement a function that can determine if a wiki link is valid or not.
// As a reminder, it needs to take in a string and return whether or not
// # or : is contained in the string.
// Estimated length: ~5-10 lines

///////////////////////////////////////////////////////////////////////////////////////////////////
// BEGIN STUDENT CODE HERE
bool valid_wikilink(const string &link)
{
    // replace these lines!
    if (link.find('#') == string::npos && link.find(':') == string::npos)
    {
        return true;
    }
    return false;
}
// END STUDENT CODE HERE
///////////////////////////////////////////////////////////////////////////////////////////////////

unordered_set<string> findWikiLinks(const string &inp)
{
    /* Delimiter for start of a link  */
    static const string delim = "href=\"/wiki/";

    unordered_set<string> ret;

    auto url_start = inp.begin();
    auto end = inp.end();

    while (true)
    {

        // TODO: ASSIGNMENT 2 TASK 1:
        // Set url_start to the next location of "delim" (starting your search at url_start), using std::search.
        // After doing so, break out of the while loop if there are no occurrences of delim left
        // (use your work from the line above).
        // Estimated length: 2-3 lines

        ///////////////////////////////////////////////////////////////////////////////////////////////////
        // BEGIN STUDENT CODE HERE
        // Please delete this line when you start working!
        auto it = std::search(url_start, end, delim.begin(), delim.end());
        if (it == end)
        {
            break;
        }
        // END STUDENT CODE HERE
        ///////////////////////////////////////////////////////////////////////////////////////////////////

        // TODO: ASSIGNMENT 2 TASK 2:
        // Set url_end to the end of the wikilink. Start searching after the delimeter you found above.
        // Make sure to use std::find! (std::find looks for a single element in a container, e.g. character in
        // a string—std::search looks for a series of elements in a container, like a substring in a string.
        // remember that a string is represented as an array of characters, and is also a container!)
        // Estimated length: 1 lines

        ///////////////////////////////////////////////////////////////////////////////////////////////////
        // BEGIN STUDENT CODE HERE (delete/edit this line)
        url_start = it + delim.size();
        auto url_end = std::find(url_start, end, '"');
        // END STUDENT CODE HERE
        ///////////////////////////////////////////////////////////////////////////////////////////////////

        // TODO: ASSIGNMENT 2 TASK 3:
        // Last exercise of this function! Create a string from the two iterators (url_start and url_end) above
        // using a string constructor. Make sure you start the string AFTER the delimiter you found in task 5!
        // Estimated length: 1 lines

        ///////////////////////////////////////////////////////////////////////////////////////////////////
        // BEGIN STUDENT CODE HERE (delete/edit this line)
        string link(url_start, url_end);
        // END STUDENT CODE HERE
        ///////////////////////////////////////////////////////////////////////////////////////////////////

        /*
         * Only add link to the set if it is valid i.e. doesn't
         * contain a ':' or a '#'.
         */
        if (valid_wikilink(link))
        {
            ret.insert(link);
        }

        url_start = url_end;
    }
    return ret;
}

/*
 * ==================================================================================
 * |                Don't edit anything below here, but take a peek!                |
 * ==================================================================================
 */
unordered_set<string> WikiScraper::getLinkSet(const string &page_name)
{
    if (linkset_cache.find(page_name) == linkset_cache.end())
    {
        auto links = findWikiLinks(getPageSource(page_name));
        linkset_cache[page_name] = links;
    }
    return linkset_cache[page_name];
}

WikiScraper::WikiScraper()
{
    (void)getPageSource("Main_Page");
}

string createPageUrl(const string &page_name)
{
    return "https://en.wikipedia.org/wiki/" + page_name;
}

void notFoundError(const string &msg, const string &page_name, const string &url)
{
    const string title = "    AN ERROR OCCURED DURING EXECUTION.    ";
    const string border(title.size() + 4, '*');
    cerr << endl;
    errorPrint(border);
    errorPrint("* " + title + " *");
    errorPrint(border);
    errorPrint();
    errorPrint("Reason: " + msg);
    errorPrint();
    errorPrint("Debug Information:");
    errorPrint();
    errorPrint("\t- Input parameter: " + page_name);
    errorPrint("\t- Attempted url: " + url);
    errorPrint();
}

string WikiScraper::getPageSource(const string &page_name)
{
    const static string not_found = "Wikipedia does not have an article with this exact name.";
    if (page_cache.find(page_name) == page_cache.end())
    {
        string url = createPageUrl(page_name);

        // 🔥 核心修复：
        // 1. 伪装成 Chrome 浏览器
        // 2. cpr::VerifySsl{false} -> 告诉程序不要去查 SSL 证书了，直接连！(解决云服务器证书路径问题)
        cpr::Response r = cpr::Get(cpr::Url{url},
                                   cpr::Header{{"User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36"}},
                                   cpr::VerifySsl{false}); // <--- 加了这一行，从此告别 SSL 报错

        string ret = r.text;

        // 调试打印：如果还不行，这里会告诉我们发生了什么
        if (r.status_code != 200)
        {
            cerr << "!!! REQUEST FAILED !!!" << endl;
            cerr << "Status Code: " << r.status_code << endl;
            cerr << "Error Message: " << r.error.message << endl;

            notFoundError("Couldn't get page source.", page_name, url);
            return "";
        }

        if (std::search(ret.begin(), ret.end(), not_found.begin(), not_found.end()) != ret.end())
        {
            notFoundError("Page does not exist!", page_name, url);
            return "";
        }
        size_t indx = ret.find("plainlinks hlist navbar mini");
        if (indx != string::npos)
        {
            return ret.substr(0, indx);
        }
        page_cache[page_name] = ret;
    }
    return page_cache[page_name];
}

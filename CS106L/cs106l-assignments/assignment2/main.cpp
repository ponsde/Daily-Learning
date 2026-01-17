/*
 * CS106L Assignment 2: Marriage Pact
 * Created by Haven Whitney with modifications by Fabio Ibanez & Jacob Roberts-Baca.
 *
 * Welcome to Assignment 2 of CS106L! Please complete each STUDENT TODO
 * in this file. You do not need to modify any other files.
 *
 */

#include <fstream>
#include <sstream>
#include <iostream>
#include <queue>
#include <set>
#include <string>
#include <unordered_set>

using std::ifstream;
using std::istringstream;
using std::queue;
using std::set;
using std::string;

std::string kYourName = "Mo Lin"; // Don't forget to change this!

/**
 * Takes in a file name and returns a set containing all of the applicant names as a set.
 *
 * @param filename  The name of the file to read.
 *                  Each line of the file will be a single applicant's name.
 * @returns         A set of all applicant names read from the file.
 *
 * @remark Feel free to change the return type of this function (and the function
 * below it) to use a `std::unordered_set` instead. If you do so, make sure
 * to also change the corresponding functions in `utils.h`.
 */
std::set<std::string> get_applicants(std::string filename)
{
  set<string> st;
  ifstream input_file(filename);
  string p;
  while (getline(input_file, p, '\n'))
  {
    st.insert(p);
  }
  return st;
}

/**
 * Takes in a set of student names by reference and returns a queue of names
 * that match the given student name.
 *
 * @param name      The returned queue of names should have the same initials as this name.
 * @param students  The set of student names.
 * @return          A queue containing pointers to each matching name.
 */
std::queue<const std::string *> find_matches(std::string name, std::set<std::string> &students)
{
  char first = name[0];
  queue<const string *> q;
  bool vis = false;
  for (const auto &i : students)
  {
    if (vis == true && i[0] != first)
    {
      break;
    }
    if (i[0] == first)
    {
      q.push(&i);
      vis = true;
    }
  }
  return q;
}

/**
 * Takes in a queue of pointers to possible matches and determines the one true match!
 *
 * You can implement this function however you'd like, but try to do something a bit
 * more complicated than a simple `pop()`.
 *
 * @param matches The queue of possible matches.
 * @return        Your magical one true love.
 *                Will return "NO MATCHES FOUND." if `matches` is empty.
 */
std::string get_match(std::queue<const std::string *> &matches)
{
  char last_first = kYourName[3];
  string ans = "";
  while (!matches.empty())
  {
    auto i = matches.front();
    matches.pop();
    istringstream iss(*i);
    string k;
    iss >> k >> k;
    if (k[0] == last_first)
    {
      ans = *i;
      break;
    }
  }
  if (ans.empty())
  {
    ans = "NO MATCHES FOUND.";
  }
  return ans;
}

/* #### Please don't remove this line! #### */
#include "autograder/utils.hpp"

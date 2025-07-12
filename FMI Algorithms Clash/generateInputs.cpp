#include <fstream>
#include <iostream>
#include <unordered_set>

namespace std {
  template<>
  struct hash<std::pair<int,int>> {
    std::size_t operator()(const std::pair<int,int>& p) const noexcept {
      // A simple combination; you can choose any mixing strategy you like
      return std::hash<int>{}(p.first) ^ (std::hash<int>{}(p.second) << 1);
    }
  };
}

void generateInputs(int yearsSize, const std::string& filename = "../inputs.txt")
{
    std::ofstream out(filename, std::ios::out | std::ios::trunc);
    if (!out)
    {
        std::cerr << "Error opening file for writing." << std::endl;
        return;
    }

    srand(time(0));
    int minEdges = yearsSize * (yearsSize - 1) / 40;
    int maxEdges = yearsSize * (yearsSize - 1) / 2;
    int edges = rand() % (maxEdges - minEdges + 1) + minEdges;
    out << yearsSize << " " << edges <<std::endl;

    std::unordered_set<int> yearsSet;
    for (int i = 0; i < yearsSize; ++i)
    {
        if (yearsSet.find(i) == yearsSet.end())
        {
            yearsSet.insert(i);
            out << rand() %  (yearsSize * yearsSize) << " ";
        }
        else
        {
            --i; // Decrement i to ensure we have unique years
            continue;
        }
    }
    out << std::endl;
    std::unordered_set<std::pair<int,int>> edgesSet;
    for (int i = 0; i < edges; ++i)
    {
        int u = rand() % yearsSize;
        int v = rand() % yearsSize;
        while (u == v || edgesSet.find({u, v}) != edgesSet.end() || edgesSet.find({v, u}) != edgesSet.end())
        {
            u = rand() % yearsSize;
            v = rand() % yearsSize;
        }
        edgesSet.insert({u, v});
        out << u << " " << v << std::endl;
    }

    out.close();


}

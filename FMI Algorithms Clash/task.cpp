#include <iostream>
#include <vector>
#include <queue>
#include <algorithm>
#include <stack>
#include <chrono>
#include <fstream>
#include "generateInputs.h"


void topoSortRecursive(const std::vector<std::vector<int>>& neighbours, std::vector<bool>& visited, std::stack<int>& topoOrder, int i)
{
    if (visited[i])
    {
        return;
    }

    visited[i] = true;

    for (const auto& neighbour : neighbours[i])
    {
        if (!visited[neighbour])
        {
            topoSortRecursive(neighbours, visited, topoOrder, neighbour);
        }
    }

    topoOrder.push(i);
}

void addEdge(std::vector<std::vector<int>>& neighbours, const std::vector<int>& years, int u, int i)
{

    if (years[u] < years[i])
    {
        neighbours[u].push_back(i);
    }
    else
    {
        neighbours[i].push_back(u);
    }
}


std::vector<int> topoSort(const std::vector<std::vector<int>>& neighbours)
{
    std::stack<int> topoOrder;
    std::vector<bool> visited (neighbours.size(), false);

    for (int i = 0; i < neighbours.size(); ++i)
    {
        topoSortRecursive(neighbours, visited, topoOrder, i);
    }

    std::vector<int> result;
    while (!topoOrder.empty())
    {
        result.push_back(topoOrder.top());
        topoOrder.pop();
    }
    return result;
}



void getLongestPathRecursive(const std::vector<int> &order, const std::vector<std::vector<int>> &neighbours, std::vector<int>& lps, int i)
{

    if (lps[i] != -1)
    {
        return;
    }

    lps[i] = 1;

    for (const auto& neighbour : neighbours[i])
    {
        getLongestPathRecursive(order, neighbours, lps, neighbour);
        lps[i] = std::max(lps[i], lps[neighbour] + 1);
    }

}

long getLongestPath(const std::vector<int>& order, const std::vector<std::vector<int>>& neighbours)
{
    std::vector<int> lps(order.size(), -1);
    lps[order.back()] = 1;
    int currMax = 1;
    for(int i = order.size() - 1; i >= 0; --i)
    {
        getLongestPathRecursive(order, neighbours, lps, order[i]);
        currMax = std::max(currMax, lps[order[i]]);
    }
    return currMax;
}


int goodSolution(const std::vector<std::vector<int>> &neighbours)
{
    std::vector<int> topoOrder = topoSort(neighbours);
    return getLongestPath(topoOrder, neighbours);
}

int dfs(int u, std::vector<int>& memo, const std::vector<std::vector<int>> &neighbours) {
    if (memo[u] != -1)
        return memo[u];
    int longest = 1;
    for (int v : neighbours[u]) {
        longest = std::max(longest, 1 + dfs(v, memo, neighbours));
    }
    memo[u] = longest;
    return longest;
}

int naiveSolution(const std::vector<std::vector<int>> &neighbours)
{
    std::vector<int> memo;
    memo.resize(neighbours.size());
    int best = 0;
    for (int start = 0; start < neighbours.size(); start++) {
        fill(memo.begin(), memo.end(), -1);
        best = std::max(best, dfs(start, memo, neighbours));
    }
    return best;
}

void test()
{
    std::vector<int> years = {5, 6, 7, 8, 9};
    std::vector<std::vector<int>> neighbours(years.size());
    addEdge(neighbours, years, 0, 1);
    addEdge(neighbours, years, 0, 2);
    addEdge(neighbours, years, 2, 4);
    addEdge(neighbours, years, 1, 3);
    addEdge(neighbours, years, 3, 4);
    std::cout << "Neighbours: " << std::endl;
    for (int i = 0; i < neighbours.size(); ++i)
    {
        std::cout << i << ": ";
        for (const auto& neighbour : neighbours[i])
        {
            std::cout << neighbour << " ";
        }
        std::cout << std::endl;
    }
    std::vector<int> topoOrder = topoSort(neighbours);
    std::cout << "Topological Order: ";
    for (const auto& node : topoOrder)
    {
        std::cout << node << " ";
    }
    std::cout << std::endl;
    std::cout << "Longest Path: " << naiveSolution(neighbours)<< std::endl;
}

void runSolution(std::istream & in = std::cin)
{
    std::vector<int> years;
    int n, m;
    in >> n >> m;
    years.resize(n);
    for (int i = 0; i < n; ++i)
    {
        in >> years[i];
    }

    std::vector<std::vector<int>> neighbours(n, std::vector<int>());
    for (int i = 0; i < m; ++i)
    {
        int u, v;
        in >> u >> v;
        addEdge(neighbours, years, u, v);
    }
    std::cout << "Solution: " << std::endl;

    auto start = std::chrono::high_resolution_clock::now();
    std::cout << goodSolution(neighbours) << std::endl;
    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> elapsed = end - start;
    std::cout << "Elapsed time: " << elapsed.count() << " seconds" << std::endl;


    std::cout << "Naive Solution: " << std::endl;
    start = std::chrono::high_resolution_clock::now();
    std::cout << naiveSolution(neighbours) << std::endl;
    end = std::chrono::high_resolution_clock::now();
    elapsed = end - start;
    std::cout << "Elapsed time naive: " << elapsed.count() << " seconds" << std::endl;
}

int main()
{
    std::ios::sync_with_stdio(false);
    std::cin.tie(nullptr);

    std::string inputFile = "../inputs_high_4.txt";
    generateInputs(10000, inputFile);
    std::ifstream in(inputFile, std::ios::in);
    runSolution(in);

//        test();

}



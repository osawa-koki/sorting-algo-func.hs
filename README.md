# sorting-algo-func.hs

🦫🦫🦫 Haskellで整列アルゴリズムを実装してみた。  

## 実行方法

```shell
docker build -t sorting-algo-func-hs .
docker run -it --rm --name my-sorting-algo-func-hs sorting-algo-func-hs
```

実行すると以下の出力がされます。  

```shell
Original            (false) : 9 3 0 6 1 8 7 2 4 5 
Bubble Sort         (true ) : 0 1 2 3 4 5 6 7 8 9
Original            (false) : 9 3 0 6 1 8 7 2 4 5
Insertion Sort      (true ) : 0 1 2 3 4 5 6 7 8 9
Original            (false) : 9 3 0 6 1 8 7 2 4 5
Selection Sort      (true ) : 0 1 2 3 4 5 6 7 8 9
Original            (false) : 9 3 0 6 1 8 7 2 4 5
Merge Sort          (true ) : 0 1 2 3 4 5 6 7 8 9
Original            (false) : 9 3 0 6 1 8 7 2 4 5
Quick Sort          (true ) : 0 1 2 3 4 5 6 7 8 9
```

## 実装したアルゴリズム

- [x] バブルソート
- [x] 挿入ソート
- [x] 選択ソート
- [x] マージソート
- [x] クイックソート

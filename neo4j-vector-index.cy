CALL db.index.vector.createNodeIndex('index_for_test', 'node_vector_index', 'my_index', 4, 'cosine');

CREATE (n:node_vector_index {my_index: [5.0, 20.0, 1.0, 80.0]})



CALL db.index.vector.queryNodes('index_for_test', 4, [1.0,2.0,1.1,2.3]) YIELD node, score
WHERE score > 0.8
RETURN node, score

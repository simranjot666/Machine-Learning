function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

% for k=1:size(X,1)
%     for p=1:K
% 
%     tmp(k,p)=sqrt((X(k,1)-centroids(p,1))^2+(X(k,2)-centroids(p,2))^2);
%     
%     end
%     [a idx(k,1)]=min(tmp(k,:));
% end


%     tmp(k,p)=sqrt((X(k,1)-centroids(p,1))^2+(X(k,2)-centroids(p,2))^2+(X(k,3)-centroids(p,3))^2);
[a b]=min(pdist2(X,centroids)');

idx=b';

% =============================================================

end


function  gmat
tic
% discretization parameters
p = 1;
pquad = 2*p;
nelem = 10;
mu = 0.01;

% equation parameter
ffun = @(x) ones(size(x,1),1);

% setup reference element
ref = mkref1d(p,pquad);

% make mesh
mesh = mkmesh1d(nelem);
mesh = meshlin2p1d(mesh,ref);
mesh.bgrp = mkbgrp1d(mesh);

% useful parameters
nshp = size(ref.shp,2);

% compute and store local matrices
amat = zeros(nshp,nshp,nelem);
imat = zeros(nshp,nshp,nelem);
jmat = zeros(nshp,nshp,nelem);
fvec = zeros(nshp,nelem);
ivec = zeros(nshp,nelem);
for elem = 1:nelem
    % get dof indices
    tril = mesh.tri(elem,:).';
    
    % compute mesh jacobians
    xl = mesh.coord(tril,:);
    xq = ref.shp*xl;
    jacq = ref.shpx(:,:,1)*xl;
    detJq = jacq;
    ijacq = 1./jacq;
    
    % compute quadrature weight
    wqJ = ref.wq.*detJq;
    
    % compute basis
    phiq = ref.shp;
    
    % compute stiffness matrix
    aaloc = mu*phixq(:,:,1)'*diag(wqJ)*phixq(:,:,1) + phiq(:,:,1)'*diag(wqJ)*phiq(:,:,1);
 
    % insert to global matrix
    amat(:,:,elem) = aaloc;
    imat(:,:,elem) = repmat(tril,[1,nshp]);
    jmat(:,:,elem) = repmat(tril',[nshp,1]);
    fvec(:,elem) = ffloc;
    ivec(:,elem) = tril;
end

% assemble matrix

A = sparse(imat(:),jmat(:),amat(:),ndof,ndof);

% identify internal and boundary nodes
bnodes = nodesonbgrp(mesh, [1,2]);
inodes = setdiff((1:ndof)', bnodes);

% solve linear system
U = zeros(ndof,1);

toc
% plot solution
if (1)
figure(1), clf,
plotfield1d(mesh,ref,U);
end

end


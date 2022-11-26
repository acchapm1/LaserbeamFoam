/*--------------------------------*- C++ -*----------------------------------*\
  =========                 |
  \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox
   \\    /   O peration     | Website:  https://openfoam.org
    \\  /    A nd           | Version:  10
     \\/     M anipulation  |
\*---------------------------------------------------------------------------*/
FoamFile
{
    format      ascii;
    class       volScalarField;
    location    "0";
    object      alpha.metal;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 0 0 0 0 0 0];

internalField   uniform 1;

boundaryField
{
    lowerWall
    {
        type            zeroGradient;
    }
    atmosphere
    {
        type            inletOutlet;
        inletValue      nonuniform List<scalar> 0();
        value           nonuniform List<scalar> 0();
    }
    rightWall
    {
        type            empty;
    }
    leftWall
    {
        type            empty;
    }
    frontAndBack
    {
        type            zeroGradient;
    }
    procBoundary1to0
    {
        type            processor;
        value           uniform 1;
    }
    procBoundary1to3
    {
        type            processor;
        value           uniform 1;
    }
}


// ************************************************************************* //

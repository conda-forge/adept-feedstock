About adept
===========

Home: http://www.met.reading.ac.uk/clouds/adept/

Package license: Apache-2.0

Feedstock license: BSD 3-Clause

Summary: Fast automatic differentiation library in C++

Adept (Automatic Differentiation using Expression Templates) is a free C++
software library that enables algorithms to be automatically differentiated,
very useful for a wide range of applications that involve mathematical
optimization. It uses an operator overloading approach, so very little code
modification is required. Moreover, the way that expression templates have been
used and several other important optimizations mean that reverse-mode
differentiation is significantly faster than other C++ libraries that provide
equivalent functionality.

The fundamental object of most mathematical software is the array, and it is
therefore natural to want to differentiate array expressions. There are numerous
mature C++ array libraries that support a wide variety of array operations, but
because they also use expression templates to optimize array expressions, they
do not work efficiently with Adept. The solution provided in version 2 of
Adept is to use a single expression-template framework that incorporates both
array and automatic-differentiation capabilities at a low level, thus enabling
efficient differentiation of array expressions. Arrays of up to 7 dimensions are
supported along with matrix multiplication and basic linear algebra operations.
Of course, the library also works well with passive arrays (those that do not
need to be differentiated).


Current build status
====================


<table>
    
  <tr>
    <td>Azure</td>
    <td>
      <details>
        <summary>
          <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=2650&branchName=master">
            <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adept-feedstock?branchName=master">
          </a>
        </summary>
        <table>
          <thead><tr><th>Variant</th><th>Status</th></tr></thead>
          <tbody><tr>
              <td>linux</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=2650&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adept-feedstock?branchName=master&jobName=linux&configuration=linux_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_fortran_compiler_version4</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=2650&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adept-feedstock?branchName=master&jobName=osx&configuration=osx_fortran_compiler_version4" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx_fortran_compiler_version7</td>
              <td>
                <a href="https://dev.azure.com/conda-forge/feedstock-builds/_build/latest?definitionId=2650&branchName=master">
                  <img src="https://dev.azure.com/conda-forge/feedstock-builds/_apis/build/status/adept-feedstock?branchName=master&jobName=osx&configuration=osx_fortran_compiler_version7" alt="variant">
                </a>
              </td>
            </tr>
          </tbody>
        </table>
      </details>
    </td>
  </tr>
  <tr>
    <td>Windows</td>
    <td>
      <img src="https://img.shields.io/badge/Windows-disabled-lightgrey.svg" alt="Windows disabled">
    </td>
  </tr>
![ppc64le disabled](https://img.shields.io/badge/ppc64le-disabled-lightgrey.svg)
</table>

Current release info
====================

| Name | Downloads | Version | Platforms |
| --- | --- | --- | --- |
| [![Conda Recipe](https://img.shields.io/badge/recipe-adept-green.svg)](https://anaconda.org/conda-forge/adept) | [![Conda Downloads](https://img.shields.io/conda/dn/conda-forge/adept.svg)](https://anaconda.org/conda-forge/adept) | [![Conda Version](https://img.shields.io/conda/vn/conda-forge/adept.svg)](https://anaconda.org/conda-forge/adept) | [![Conda Platforms](https://img.shields.io/conda/pn/conda-forge/adept.svg)](https://anaconda.org/conda-forge/adept) |

Installing adept
================

Installing `adept` from the `conda-forge` channel can be achieved by adding `conda-forge` to your channels with:

```
conda config --add channels conda-forge
```

Once the `conda-forge` channel has been enabled, `adept` can be installed with:

```
conda install adept
```

It is possible to list all of the versions of `adept` available on your platform with:

```
conda search adept --channel conda-forge
```


About conda-forge
=================

[![Powered by NumFOCUS](https://img.shields.io/badge/powered%20by-NumFOCUS-orange.svg?style=flat&colorA=E1523D&colorB=007D8A)](http://numfocus.org)

conda-forge is a community-led conda channel of installable packages.
In order to provide high-quality builds, the process has been automated into the
conda-forge GitHub organization. The conda-forge organization contains one repository
for each of the installable packages. Such a repository is known as a *feedstock*.

A feedstock is made up of a conda recipe (the instructions on what and how to build
the package) and the necessary configurations for automatic building using freely
available continuous integration services. Thanks to the awesome service provided by
[CircleCI](https://circleci.com/), [AppVeyor](https://www.appveyor.com/)
and [TravisCI](https://travis-ci.org/) it is possible to build and upload installable
packages to the [conda-forge](https://anaconda.org/conda-forge)
[Anaconda-Cloud](https://anaconda.org/) channel for Linux, Windows and OSX respectively.

To manage the continuous integration and simplify feedstock maintenance
[conda-smithy](https://github.com/conda-forge/conda-smithy) has been developed.
Using the ``conda-forge.yml`` within this repository, it is possible to re-render all of
this feedstock's supporting files (e.g. the CI configuration files) with ``conda smithy rerender``.

For more information please check the [conda-forge documentation](https://conda-forge.org/docs/).

Terminology
===========

**feedstock** - the conda recipe (raw material), supporting scripts and CI configuration.

**conda-smithy** - the tool which helps orchestrate the feedstock.
                   Its primary use is in the construction of the CI ``.yml`` files
                   and simplify the management of *many* feedstocks.

**conda-forge** - the place where the feedstock and smithy live and work to
                  produce the finished article (built conda distributions)


Updating adept-feedstock
========================

If you would like to improve the adept recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`conda-forge` channel, whereupon the built conda packages will be available for
everybody to install and use from the `conda-forge` channel.
Note that all branches in the conda-forge/adept-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](https://conda.io/docs/user-guide/tasks/build-packages/define-metadata.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](https://conda.io/docs/user-guide/tasks/build-packages/define-metadata.html#build-number-and-string)
   back to 0.

Feedstock Maintainers
=====================

* [@arghdos](https://github.com/arghdos/)


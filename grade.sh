CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'

file='find TestListExamples.java'

cd student-submission
find ListExamples.java

set -e
if [[ -f ListExamples.java ]]
then
    cp ListExamples.java /Users/juan/Documents/GitHub/list-examples-grader
    cd ..
    cp TestListExamples.java ListExamples.java grading-area
    ls grading-area
else
    exit
fi

# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests

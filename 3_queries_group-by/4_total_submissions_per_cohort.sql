SELECT cohorts.name as cohort, count(assignment_submissions.*)
FROM assignment_submissions
JOIN students ON students.id = assignment_submissions.student_id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY count(assignment_submissions.*) DESC;
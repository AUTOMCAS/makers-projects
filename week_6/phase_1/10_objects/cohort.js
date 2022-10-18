const cohort = {
  name: 'Sep2022',
  id: 4321,
  studentNames: ['Chris', 'Forest'],
};

const printCohort = (cohort) => {
  console.log(
    `${cohort.id} - ${cohort.name} - ${cohort.studentNames.length} students in this cohort`
  );
};

printCohort(cohort);

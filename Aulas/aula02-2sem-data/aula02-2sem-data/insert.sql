INSERT INTO t_rhstu_paciente
(id_paciente, nm_paciente, nr_cpf,nm_rg, dt_nascimento, fl_sexo_biologico, ds_escolaridade, ds_estado_civil, nm_grupo_sanguineo,  nr_altura, nr_peso)
VALUES
(12345, 'Luana', 44556477331,'432234432', '12-AUG-25','F', 'Superior', 'Solteiro', 'b+', 1.6, 60);
ROLLBACK

INSERT INTO t_rhstu_paciente
(id_paciente, nm_paciente, nr_cpf,nm_rg, dt_nascimento, fl_sexo_biologico, ds_escolaridade, ds_estado_civil, nm_grupo_sanguineo,  nr_altura, nr_peso)
VALUES
(54321, 'MARCOS', 44556477771,'432237632', '22-AUG-25','M', 'Superior', 'Solteiro', 'b+', 1.9, 90);


desc t_rhstu_paciente

select ayadate from dual;

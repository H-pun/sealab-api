toc.dat                                                                                             0000600 0004000 0002000 00000034342 14513257400 0014446 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                       	    {            sealab #   14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)    15.2 0    8           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         9           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         :           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         ;           1262    16525    sealab    DATABASE     n   CREATE DATABASE sealab WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C.UTF-8';
    DROP DATABASE sealab;
                postgres    false                     2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false         <           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    4         =           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    4         �            1259    16526    __EFMigrationsHistory    TABLE     �   CREATE TABLE public."__EFMigrationsHistory" (
    migration_id character varying(150) NOT NULL,
    product_version character varying(32) NOT NULL
);
 +   DROP TABLE public."__EFMigrationsHistory";
       public         heap    postgres    false    4         �            1259    16569 	   assistant    TABLE     w   CREATE TABLE public.assistant (
    id uuid NOT NULL,
    id_user uuid NOT NULL,
    code text,
    "position" text
);
    DROP TABLE public.assistant;
       public         heap    postgres    false    4         �            1259    16531    module    TABLE     �   CREATE TABLE public.module (
    id uuid NOT NULL,
    seelabs_id integer NOT NULL,
    name text,
    is_pa_open boolean NOT NULL,
    is_prt_open boolean NOT NULL
);
    DROP TABLE public.module;
       public         heap    postgres    false    4         �            1259    16593    pre_test_option    TABLE     �   CREATE TABLE public.pre_test_option (
    id uuid NOT NULL,
    id_question uuid NOT NULL,
    option text,
    is_true boolean NOT NULL
);
 #   DROP TABLE public.pre_test_option;
       public         heap    postgres    false    4         �            1259    16545    pre_test_question    TABLE     �   CREATE TABLE public.pre_test_question (
    id uuid NOT NULL,
    id_module uuid NOT NULL,
    type text,
    question text,
    file_path text
);
 %   DROP TABLE public.pre_test_question;
       public         heap    postgres    false    4         �            1259    16605    preliminary_assignment_answer    TABLE     �   CREATE TABLE public.preliminary_assignment_answer (
    id uuid NOT NULL,
    id_student uuid NOT NULL,
    id_module uuid NOT NULL,
    file_path text,
    submit_time timestamp without time zone NOT NULL
);
 1   DROP TABLE public.preliminary_assignment_answer;
       public         heap    postgres    false    4         �            1259    16557    preliminary_assignment_question    TABLE     �   CREATE TABLE public.preliminary_assignment_question (
    id uuid NOT NULL,
    id_module uuid NOT NULL,
    type text,
    question text,
    answer_key text,
    file_path text
);
 3   DROP TABLE public.preliminary_assignment_question;
       public         heap    postgres    false    4         �            1259    16581    student    TABLE     �   CREATE TABLE public.student (
    id uuid NOT NULL,
    id_user uuid NOT NULL,
    classroom text,
    "group" integer NOT NULL,
    day integer NOT NULL,
    shift integer NOT NULL
);
    DROP TABLE public.student;
       public         heap    postgres    false    4         �            1259    16538    user    TABLE     �   CREATE TABLE public."user" (
    id uuid NOT NULL,
    nim text,
    email text,
    name text,
    username text,
    password text,
    role text,
    phone text,
    app_token text
);
    DROP TABLE public."user";
       public         heap    postgres    false    4         -          0    16526    __EFMigrationsHistory 
   TABLE DATA                 public          postgres    false    209       3373.dat 2          0    16569 	   assistant 
   TABLE DATA                 public          postgres    false    214       3378.dat .          0    16531    module 
   TABLE DATA                 public          postgres    false    210       3374.dat 4          0    16593    pre_test_option 
   TABLE DATA                 public          postgres    false    216       3380.dat 0          0    16545    pre_test_question 
   TABLE DATA                 public          postgres    false    212       3376.dat 5          0    16605    preliminary_assignment_answer 
   TABLE DATA                 public          postgres    false    217       3381.dat 1          0    16557    preliminary_assignment_question 
   TABLE DATA                 public          postgres    false    213       3377.dat 3          0    16581    student 
   TABLE DATA                 public          postgres    false    215       3379.dat /          0    16538    user 
   TABLE DATA                 public          postgres    false    211       3375.dat �           2606    16530 0   __EFMigrationsHistory pk___ef_migrations_history 
   CONSTRAINT     z   ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT pk___ef_migrations_history PRIMARY KEY (migration_id);
 \   ALTER TABLE ONLY public."__EFMigrationsHistory" DROP CONSTRAINT pk___ef_migrations_history;
       public            postgres    false    209         �           2606    16575    assistant pk_assistant 
   CONSTRAINT     T   ALTER TABLE ONLY public.assistant
    ADD CONSTRAINT pk_assistant PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.assistant DROP CONSTRAINT pk_assistant;
       public            postgres    false    214         �           2606    16537    module pk_module 
   CONSTRAINT     N   ALTER TABLE ONLY public.module
    ADD CONSTRAINT pk_module PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.module DROP CONSTRAINT pk_module;
       public            postgres    false    210         �           2606    16599 "   pre_test_option pk_pre_test_option 
   CONSTRAINT     `   ALTER TABLE ONLY public.pre_test_option
    ADD CONSTRAINT pk_pre_test_option PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.pre_test_option DROP CONSTRAINT pk_pre_test_option;
       public            postgres    false    216         �           2606    16551 &   pre_test_question pk_pre_test_question 
   CONSTRAINT     d   ALTER TABLE ONLY public.pre_test_question
    ADD CONSTRAINT pk_pre_test_question PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.pre_test_question DROP CONSTRAINT pk_pre_test_question;
       public            postgres    false    212         �           2606    16611 >   preliminary_assignment_answer pk_preliminary_assignment_answer 
   CONSTRAINT     |   ALTER TABLE ONLY public.preliminary_assignment_answer
    ADD CONSTRAINT pk_preliminary_assignment_answer PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.preliminary_assignment_answer DROP CONSTRAINT pk_preliminary_assignment_answer;
       public            postgres    false    217         �           2606    16563 B   preliminary_assignment_question pk_preliminary_assignment_question 
   CONSTRAINT     �   ALTER TABLE ONLY public.preliminary_assignment_question
    ADD CONSTRAINT pk_preliminary_assignment_question PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.preliminary_assignment_question DROP CONSTRAINT pk_preliminary_assignment_question;
       public            postgres    false    213         �           2606    16587    student pk_student 
   CONSTRAINT     P   ALTER TABLE ONLY public.student
    ADD CONSTRAINT pk_student PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.student DROP CONSTRAINT pk_student;
       public            postgres    false    215         �           2606    16544    user pk_user 
   CONSTRAINT     L   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT pk_user PRIMARY KEY (id);
 8   ALTER TABLE ONLY public."user" DROP CONSTRAINT pk_user;
       public            postgres    false    211         �           1259    16622    ix_assistant_id_user    INDEX     M   CREATE INDEX ix_assistant_id_user ON public.assistant USING btree (id_user);
 (   DROP INDEX public.ix_assistant_id_user;
       public            postgres    false    214         �           1259    16623    ix_pre_test_option_id_question    INDEX     a   CREATE INDEX ix_pre_test_option_id_question ON public.pre_test_option USING btree (id_question);
 2   DROP INDEX public.ix_pre_test_option_id_question;
       public            postgres    false    216         �           1259    16624    ix_pre_test_question_id_module    INDEX     a   CREATE INDEX ix_pre_test_question_id_module ON public.pre_test_question USING btree (id_module);
 2   DROP INDEX public.ix_pre_test_question_id_module;
       public            postgres    false    212         �           1259    16625 *   ix_preliminary_assignment_answer_id_module    INDEX     y   CREATE INDEX ix_preliminary_assignment_answer_id_module ON public.preliminary_assignment_answer USING btree (id_module);
 >   DROP INDEX public.ix_preliminary_assignment_answer_id_module;
       public            postgres    false    217         �           1259    16626 +   ix_preliminary_assignment_answer_id_student    INDEX     {   CREATE INDEX ix_preliminary_assignment_answer_id_student ON public.preliminary_assignment_answer USING btree (id_student);
 ?   DROP INDEX public.ix_preliminary_assignment_answer_id_student;
       public            postgres    false    217         �           1259    16627 ,   ix_preliminary_assignment_question_id_module    INDEX     }   CREATE INDEX ix_preliminary_assignment_question_id_module ON public.preliminary_assignment_question USING btree (id_module);
 @   DROP INDEX public.ix_preliminary_assignment_question_id_module;
       public            postgres    false    213         �           1259    16628    ix_student_id_user    INDEX     I   CREATE INDEX ix_student_id_user ON public.student USING btree (id_user);
 &   DROP INDEX public.ix_student_id_user;
       public            postgres    false    215         �           2606    16576 #   assistant fk_assistant_user_id_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.assistant
    ADD CONSTRAINT fk_assistant_user_id_user FOREIGN KEY (id_user) REFERENCES public."user"(id) ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.assistant DROP CONSTRAINT fk_assistant_user_id_user;
       public          postgres    false    3207    214    211         �           2606    16600 @   pre_test_option fk_pre_test_option_pre_test_question_id_question    FK CONSTRAINT     �   ALTER TABLE ONLY public.pre_test_option
    ADD CONSTRAINT fk_pre_test_option_pre_test_question_id_question FOREIGN KEY (id_question) REFERENCES public.pre_test_question(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.pre_test_option DROP CONSTRAINT fk_pre_test_option_pre_test_question_id_question;
       public          postgres    false    3210    212    216         �           2606    16552 7   pre_test_question fk_pre_test_question_module_id_module    FK CONSTRAINT     �   ALTER TABLE ONLY public.pre_test_question
    ADD CONSTRAINT fk_pre_test_question_module_id_module FOREIGN KEY (id_module) REFERENCES public.module(id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.pre_test_question DROP CONSTRAINT fk_pre_test_question_module_id_module;
       public          postgres    false    210    3205    212         �           2606    16612 O   preliminary_assignment_answer fk_preliminary_assignment_answer_module_id_module    FK CONSTRAINT     �   ALTER TABLE ONLY public.preliminary_assignment_answer
    ADD CONSTRAINT fk_preliminary_assignment_answer_module_id_module FOREIGN KEY (id_module) REFERENCES public.module(id) ON DELETE CASCADE;
 y   ALTER TABLE ONLY public.preliminary_assignment_answer DROP CONSTRAINT fk_preliminary_assignment_answer_module_id_module;
       public          postgres    false    217    3205    210         �           2606    16617 Q   preliminary_assignment_answer fk_preliminary_assignment_answer_student_id_student    FK CONSTRAINT     �   ALTER TABLE ONLY public.preliminary_assignment_answer
    ADD CONSTRAINT fk_preliminary_assignment_answer_student_id_student FOREIGN KEY (id_student) REFERENCES public.student(id) ON DELETE CASCADE;
 {   ALTER TABLE ONLY public.preliminary_assignment_answer DROP CONSTRAINT fk_preliminary_assignment_answer_student_id_student;
       public          postgres    false    217    215    3219         �           2606    16564 S   preliminary_assignment_question fk_preliminary_assignment_question_module_id_module    FK CONSTRAINT     �   ALTER TABLE ONLY public.preliminary_assignment_question
    ADD CONSTRAINT fk_preliminary_assignment_question_module_id_module FOREIGN KEY (id_module) REFERENCES public.module(id) ON DELETE CASCADE;
 }   ALTER TABLE ONLY public.preliminary_assignment_question DROP CONSTRAINT fk_preliminary_assignment_question_module_id_module;
       public          postgres    false    213    3205    210         �           2606    16588    student fk_student_user_id_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.student
    ADD CONSTRAINT fk_student_user_id_user FOREIGN KEY (id_user) REFERENCES public."user"(id) ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.student DROP CONSTRAINT fk_student_user_id_user;
       public          postgres    false    3207    215    211                                                                                                                                                                                                                                                                                                      3373.dat                                                                                            0000600 0004000 0002000 00000000145 14513257401 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public."__EFMigrationsHistory" VALUES ('20231015053403_reinitialMigration', '6.0.16');


                                                                                                                                                                                                                                                                                                                                                                                                                           3378.dat                                                                                            0000600 0004000 0002000 00000003514 14513257401 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.assistant VALUES ('02f1e90a-14c4-4547-9367-2349d32100cc', 'd359819e-181b-4283-aeac-ebcddb0a06ee', 'PUN', 'Koordinator Asisten');
INSERT INTO public.assistant VALUES ('0773957f-36fb-4200-a6aa-c43fd936fd58', '9c13d239-3a24-4979-9b62-070e9a986c99', 'HEH', 'Anggota Divisi Praktikum');
INSERT INTO public.assistant VALUES ('1ec5d777-c6a7-408e-8209-fc1817b202da', '7e23f9f6-7dda-48c4-a72e-1713e3073594', 'LAZ', 'Anggota Divisi Riset dan Pengembangan');
INSERT INTO public.assistant VALUES ('2061bf4b-3df7-4b31-91aa-650a7cc17401', '322e8299-d1b9-4dc2-b4e4-bd1ffd1da519', 'PIA', 'Sekretaris & Bendahara');
INSERT INTO public.assistant VALUES ('32de8f4e-2a2e-4549-9c8f-7d630d4588bb', 'cef34a97-7a25-44ab-8c50-806f6b9ca902', 'GAL', 'Wakil Koordinator Asisten');
INSERT INTO public.assistant VALUES ('33d182a3-eaee-40b8-80cd-8563d319484d', '442bbc33-4fae-4684-8119-453117234973', 'GTR', 'Anggota Divisi Relasi Publik');
INSERT INTO public.assistant VALUES ('4fd0f065-3cdb-47ee-af2d-59e3f6745c9b', '83b7ede9-28a7-43a2-8de0-e06962e0ca23', 'OWO', 'Anggota Divisi Praktikum');
INSERT INTO public.assistant VALUES ('55f8ba06-4d36-4b34-9ba4-a40a5bef5d32', '54a6b5bf-4955-463d-9c07-69f031e41938', 'NAT', 'Inventaris');
INSERT INTO public.assistant VALUES ('5cec22d1-23a6-4203-9ce6-8d077f3ee2fc', '682a67c1-d270-48c6-bc20-16e012029274', 'MAZ', 'Koordinator Divisi Relasi Publik');
INSERT INTO public.assistant VALUES ('8a69cce6-2827-4158-af89-f340f2eb7278', 'b98dcc67-4558-430e-9cee-c9ee9554d0d2', 'KET', 'Koordinator Divisi Praktikum');
INSERT INTO public.assistant VALUES ('96d35d24-7df7-4269-8293-36aae5124cdd', '7e9c7497-4098-47ca-8a0d-dc15be88dbb7', 'REQ', 'Anggota Divisi Relasi Publik');
INSERT INTO public.assistant VALUES ('d1c593d4-5ecb-4a80-a938-9dee53143418', 'd487f962-b159-4a7f-9375-caec12ab043f', 'SAM', 'Koordinator Divisi Riset dan Pengembangan');


                                                                                                                                                                                    3374.dat                                                                                            0000600 0004000 0002000 00000001362 14513257401 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.module VALUES ('b78ef5be-9047-40fb-b485-dc917630ce05', 1, 'Searching', false, false);
INSERT INTO public.module VALUES ('5898f6d3-84ce-4be6-86f2-5034672b2675', 3, 'Logika Fuzzy dan Fuzzifikasi', false, false);
INSERT INTO public.module VALUES ('d5711a6f-739e-41a6-aa9a-a666bb1d56c0', 4, 'Logika Fuzzy Inferensi dan Defuzifikasi - Mamdani', false, false);
INSERT INTO public.module VALUES ('b2c52025-c6aa-491c-91c1-38ff02b3d694', 5, 'Logika Fuzzy Inferensi dan Defuzifikasi - Sugeno', false, false);
INSERT INTO public.module VALUES ('337b2c2d-a099-422f-9857-36d0b9a989ca', 6, 'Algoritma Genetika', false, false);
INSERT INTO public.module VALUES ('df28dc73-a270-456d-82d3-08b2430fe807', 2, 'Knowledge Representation', false, false);


                                                                                                                                                                                                                                                                              3380.dat                                                                                            0000600 0004000 0002000 00000000002 14513257401 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3376.dat                                                                                            0000600 0004000 0002000 00000000002 14513257402 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3381.dat                                                                                            0000600 0004000 0002000 00000141333 14513257402 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.preliminary_assignment_answer VALUES ('4118ddc2-3ebd-437b-86f8-63aa6be887f2', '1942cb5c-82c2-479f-b7c8-eef3b3512549', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_6_1_0_0000000000_1697349384_Harvan Nurluthfi Irawan.pdf', '2023-10-15 12:56:24.005139');
INSERT INTO public.preliminary_assignment_answer VALUES ('edd331ca-6d35-4e89-9c84-99f648afa6d9', '55305736-b35f-45a6-b9ab-5e080c2d0137', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_6_3_0_0000000008_1697349390_Muhammad Hilmy Aziz.ppt', '2023-10-15 12:56:30.991694');
INSERT INTO public.preliminary_assignment_answer VALUES ('cd90e760-36eb-4b98-a4f4-ffc130d8530c', '0ebab45a-4677-406d-a6f1-47cebbb833f3', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_6_1_0_0000000002_1697349637_Alifia Mutiara Rahma.pdf', '2023-10-15 13:00:37.217789');
INSERT INTO public.preliminary_assignment_answer VALUES ('46e32322-d199-40d9-bb19-b9fddc6e2262', '6cab6730-58bb-4f72-a1c1-59675d458385', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_3_21_1103210042_1697350522_Muhammad Mirza Fauzan Martono.pdf', '2023-10-15 13:15:22.191593');
INSERT INTO public.preliminary_assignment_answer VALUES ('b34df9e6-ec37-4bf5-99b7-e3f08a688c7e', '4fffd7a9-6de2-4b64-a3cf-a6964bd79a1a', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_5_4_44_1103213092_1697350547_Raditya Ghifari Aljabbar.pdf', '2023-10-15 13:15:47.40722');
INSERT INTO public.preliminary_assignment_answer VALUES ('0444311b-a188-461c-9519-f60cacbe2cf0', 'da209847-f4e4-406a-8453-8dce6dda4007', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_4_28_1103213085_1697350590_Ramzy Athaya Muhammad.pdf', '2023-10-15 13:16:30.131747');
INSERT INTO public.preliminary_assignment_answer VALUES ('a3294d81-b9a1-410c-840f-3c955a2b67cf', 'c8c75af8-20a4-46b4-9c44-c483e18a6a46', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_5_4_42_1103202162_1697350633_Sadam Poriskova Marchiano.pdf', '2023-10-15 13:17:13.168558');
INSERT INTO public.preliminary_assignment_answer VALUES ('2869addf-0217-4c72-8c01-0b110db6e11a', '70502c10-9651-47de-83ad-de63d39bf0ad', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_1_3_7_1103213026_1697350642_Ribhi Gusti Zio.pdf', '2023-10-15 13:17:22.583417');
INSERT INTO public.preliminary_assignment_answer VALUES ('1154dba1-b809-4fd2-96ac-fa8570685058', '71fc2b04-67e2-416b-9b07-2ff620028182', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_1_2_3_1103213080_1697350643_Muhammad Rafindha Aslam.pdf', '2023-10-15 13:17:23.281541');
INSERT INTO public.preliminary_assignment_answer VALUES ('67386cc2-50f8-48f2-80a4-a6c4dc5c6fac', '5e7b5fa3-452d-4b48-b5ff-f52a8e1f9e31', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_4_27_1103213045_1697350712_Khalishah.pdf', '2023-10-15 13:18:32.937655');
INSERT INTO public.preliminary_assignment_answer VALUES ('bc3a8a2a-7532-4ded-974c-78506c7fd76c', 'b6d78b0c-2c8d-4d5f-ac16-215647011bd3', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_3_22_1103210184_1697350776_Hafidz Shidiq.pdf', '2023-10-15 13:19:36.518222');
INSERT INTO public.preliminary_assignment_answer VALUES ('19445147-b0a3-4098-94aa-eb92d77517da', '7cd9dd91-809f-45fc-904a-eed3f515b2db', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_4_20_1103228145_1697350806_Muhammad Nur Maajid.pdf', '2023-10-15 13:20:06.490224');
INSERT INTO public.preliminary_assignment_answer VALUES ('22cb678f-3215-48f4-861d-dc828245ce29', '61338313-3120-4179-8ea6-c34ba0d99dcb', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_4_4_34_1103210113_1697350814_Syahrul Reza Ananda.pdf', '2023-10-15 13:20:14.149138');
INSERT INTO public.preliminary_assignment_answer VALUES ('1cdbe46c-b03c-4474-b0b0-dbdbeab73a2b', '3a95fc88-f84c-4eb2-bbb1-4c425677e859', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_4_25_1103210001_1697350820_Muhamad Afri Marliansyah.pdf', '2023-10-15 13:20:20.453833');
INSERT INTO public.preliminary_assignment_answer VALUES ('03020d8e-481e-48d1-8b8c-c47fabca5ad9', 'f03e3ef3-de2e-4442-9a15-f5d3827e73f2', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_4_28_1103213117_1697350824_Anita Firda Nuralifah.pdf', '2023-10-15 13:20:24.561872');
INSERT INTO public.preliminary_assignment_answer VALUES ('f4f82b68-a514-4f46-9658-418feacc2eed', 'e831d1a2-28cb-40b3-bebc-c98bf8493fef', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_2_9_1103210038_1697350856_Rafi Fadhlurrahman.pdf', '2023-10-15 13:20:56.47542');
INSERT INTO public.preliminary_assignment_answer VALUES ('04164fcf-4b3d-46d9-94ba-07ff6bcfea33', '80b2c981-d30a-4b98-ba25-2309f82f935a', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_3_15_1103210208_1697351005_Ardius Eben Ezer Simanjuntak.pdf', '2023-10-15 13:23:25.272372');
INSERT INTO public.preliminary_assignment_answer VALUES ('7859c855-afe0-41fc-b3af-c1686b006f1f', '21597d8a-fd2b-4a67-b933-4ae5b02dda89', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_4_4_36_1103213144_1697351032_Muhammad Alfi Syahrin.pdf', '2023-10-15 13:23:52.073483');
INSERT INTO public.preliminary_assignment_answer VALUES ('83e41534-e923-4fc0-8685-83b7614b0a7b', '08194b9e-2871-4860-8551-b6e9b6f56cbd', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_5_3_38_1103210206_1697351131_Andika Pratama.pdf', '2023-10-15 13:25:31.108224');
INSERT INTO public.preliminary_assignment_answer VALUES ('154ec406-2aca-417c-b5dc-3662dca1afe2', '814dddf6-7efa-4522-b06f-06f770ccbfa0', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_3_24_1103213130_1697351580_Ibrahim Bintang Rismayadi Putra.pdf', '2023-10-15 13:33:00.436769');
INSERT INTO public.preliminary_assignment_answer VALUES ('4c0ce068-25dc-43af-9b86-14eb75a7752e', 'a48b81c6-7848-4d73-ad0b-d7dd2218fe44', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_2_12_1103213084_1697351700_Ilham Khodar Trijaya.pdf', '2023-10-15 13:35:00.746226');
INSERT INTO public.preliminary_assignment_answer VALUES ('c72e9a57-c381-432c-a169-42e43dd40317', '88b9586c-f428-4d80-8a17-1a0d198dded1', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_5_3_40_1103213162_1697351906_M.Rakan Bagus.pdf', '2023-10-15 13:38:26.734101');
INSERT INTO public.preliminary_assignment_answer VALUES ('66bfdd94-02db-4b33-8bcb-2cb42217d968', 'edb236c4-454b-4e8a-8caf-d7f3e7fea396', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_4_4_35_1103213065_1697352172_Sulthan Nauval Abdillah.pdf', '2023-10-15 13:42:52.315921');
INSERT INTO public.preliminary_assignment_answer VALUES ('fb64b9c8-4796-4a78-bb99-ba9446da7d6e', '11fafbd4-9643-45f6-adba-2c29390f8081', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_5_3_39_1103213114_1697352272_Andreas Wahyu Prayogo.pdf', '2023-10-15 13:44:32.433203');
INSERT INTO public.preliminary_assignment_answer VALUES ('922356a6-5012-4468-89bc-a6cf3ed78665', '4a1e5bb2-c9d3-430e-9e4a-70968cb363d1', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_2_9_1103204053_1697352297_Anjas Rahmanta Cahya Wijaya.pdf', '2023-10-15 13:44:57.100795');
INSERT INTO public.preliminary_assignment_answer VALUES ('c12eb41b-aa92-492a-a532-e90e44ede199', '0ebc46f4-5393-4644-84ad-9bf78df6670f', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_3_16_1103228181_1697352438_Dery Hidayat.pdf', '2023-10-15 13:47:18.764581');
INSERT INTO public.preliminary_assignment_answer VALUES ('df91d404-04ac-458a-8410-9830ae000019', '652dcaca-f030-446d-a483-8ac851faa79a', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_4_18_1103213025_1697352584_Azizah Rahma Asri.pdf', '2023-10-15 13:49:44.601748');
INSERT INTO public.preliminary_assignment_answer VALUES ('a6a49f47-b88f-4a03-8d0d-237bf980fd5b', 'bedfafec-b9c0-4d95-9d44-f68fdc510ac1', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_4_4_33_1103204033_1697352588_Rheza Ilham Firmansyah.pdf', '2023-10-15 13:49:48.831518');
INSERT INTO public.preliminary_assignment_answer VALUES ('3bb0e0f4-5eae-4764-abcd-f441e4cab4a9', '81f7501c-6f78-4f0b-8cc7-806073bb5d3b', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_1_2_1_1103210158_1697352767_Rizqy Asyraff Athallah.pdf', '2023-10-15 13:52:47.398957');
INSERT INTO public.preliminary_assignment_answer VALUES ('0061d660-50ea-4155-8490-8f20c16cbbc3', 'ba238f23-2f9d-4d4f-829f-c5b4710c4b6d', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_4_19_1103213043_1697352864_Cholasih Ryan Maulana.pdf', '2023-10-15 13:54:24.826405');
INSERT INTO public.preliminary_assignment_answer VALUES ('f8055120-720e-4c4a-a1c8-423ff576bd96', 'd1a1f56c-ed79-4e51-be8f-b1c0206aae1d', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_5_3_38_1103210205_1697353359_Hero Kartiko.pdf', '2023-10-15 14:02:39.167329');
INSERT INTO public.preliminary_assignment_answer VALUES ('5ed6d127-086c-487e-abcb-cacdc3405e8b', '936216a8-03fd-4ab8-b2d1-cc6a2819176d', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_4_2_32_1103228241_1697353459_Mohammad Jody Hermawan.pdf', '2023-10-15 14:04:19.131642');
INSERT INTO public.preliminary_assignment_answer VALUES ('0b8e3c1c-63d0-4545-8dbd-6cbf78e81ac3', 'ddb5633c-de02-4bfe-ab35-814bea89a1c0', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_4_2_32_1103228243_1697353505_Rega Candra Kirana.pdf', '2023-10-15 14:05:05.619171');
INSERT INTO public.preliminary_assignment_answer VALUES ('45070181-0c4d-4709-94c4-ea46dcc601c5', '95005ed0-8de7-4592-ac19-6f47f227264f', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_4_4_36_1103213150_1697353529_Mohammad Rasly Rasyid.pdf', '2023-10-15 14:05:29.805159');
INSERT INTO public.preliminary_assignment_answer VALUES ('58899030-c3d1-41dc-b7b7-55ca7ebca272', '253b0792-f9df-4426-91c8-9a582885e80e', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_5_4_41_1103202133_1697353596_Fahar Nail Hakim.pdf', '2023-10-15 14:06:36.733574');
INSERT INTO public.preliminary_assignment_answer VALUES ('4388bbf1-777a-48a6-85a4-21cfd58d427c', '20fc67fd-be0f-4d74-8c88-3f160b612766', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_4_27_1103213039_1697353606_Az - Zahra Chikal Erliandi.pdf', '2023-10-15 14:06:46.61269');
INSERT INTO public.preliminary_assignment_answer VALUES ('98f1944e-b587-4663-b535-c790c454545b', 'a36c0369-832a-4f55-9229-12d198c1ea01', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_3_15_1103210220_1697353751_Dwi Saputra Sopar Siagian.pdf', '2023-10-15 14:09:11.966895');
INSERT INTO public.preliminary_assignment_answer VALUES ('a148534b-abb4-4f24-a68e-2c3d7dad6ce4', '94024e7d-eb03-4f10-983c-2c7b69e88cd1', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_1_2_2_1103210174_1697353943_Irawan Mardiansyah.pdf', '2023-10-15 14:12:23.398766');
INSERT INTO public.preliminary_assignment_answer VALUES ('83d9f50a-6944-4c9e-b4f5-9a9e768da152', '760a7e98-3f32-4383-ad68-7458b46f84cc', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_3_14_1103210202_1697354047_Hendri Maulana Azwar.pdf', '2023-10-15 14:14:07.860863');
INSERT INTO public.preliminary_assignment_answer VALUES ('077566b5-7a9d-4eb2-9d4c-00a9b578fada', 'd4815544-6b1e-4136-a456-581d497a2c3c', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_4_17_1103210146_1697355527_Rey Rizqi Anugerah.pdf', '2023-10-15 14:38:47.427947');
INSERT INTO public.preliminary_assignment_answer VALUES ('933448d8-7841-486d-80c3-d4fa01f6a02a', '8ddd6d1b-1e57-45f8-b360-8b409072f504', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_1_2_1_1103210052_1697355840_Kinanti Rahayu Az-Zahra.pdf', '2023-10-15 14:44:00.365774');
INSERT INTO public.preliminary_assignment_answer VALUES ('cddb73c8-3f76-4a0a-8667-01bc0bff700b', 'c8e1e75e-c4fa-40e3-b66c-20923ff9017f', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_4_17_1103210009_1697355986_Muhammad Fadhil Nararya Basuki.pdf', '2023-10-15 14:46:26.866199');
INSERT INTO public.preliminary_assignment_answer VALUES ('7224789e-9690-417d-ba46-f07f7bf41613', 'f4dbe7e1-5c0f-4815-96fd-1f1374b48c29', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_4_25_1103210102_1697356016_Raihana Fawaz.pdf', '2023-10-15 14:46:56.530354');
INSERT INTO public.preliminary_assignment_answer VALUES ('30029e17-c9ec-4d8b-b4c0-9be39d44c904', '74cbc96f-032f-4979-9f5f-7b63c2ba808f', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_5_3_39_1103213098_1697356569_Anda Figo Haq.pdf', '2023-10-15 14:56:09.452154');
INSERT INTO public.preliminary_assignment_answer VALUES ('acbaee6e-a4a1-41d2-b855-506b832da4fd', '024eea18-c484-49ab-8548-4c782be36115', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_4_4_36_1103213078_1697356656_Azmi Taqiuddin Syah.pdf', '2023-10-15 14:57:36.864065');
INSERT INTO public.preliminary_assignment_answer VALUES ('e429e791-4aa3-45cc-ace6-2949fa641681', '6d9de2b8-dc62-4285-94fc-661420864ddc', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_4_2_29_1103210008_1697356804_Muhammad Thoriq Zam.pdf', '2023-10-15 15:00:04.636402');
INSERT INTO public.preliminary_assignment_answer VALUES ('edf87539-620e-4e67-b168-fa90e57497a9', 'be63eab3-f9f7-4f97-affa-7c8811ec0606', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_1_2_4_1103213090_1697357036_Maulidiatama Akbar.pdf', '2023-10-15 15:03:56.369182');
INSERT INTO public.preliminary_assignment_answer VALUES ('436cca6c-9d1b-466f-a473-fd27d2f9dfa3', 'a8a553c4-126a-4ebf-b0be-f71e91366ccb', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_4_27_1103213055_1697357390_Nabila Putri Rihan.pdf', '2023-10-15 15:09:50.162676');
INSERT INTO public.preliminary_assignment_answer VALUES ('1e5ea456-fd53-4a08-94cc-a7fc728452e1', '448eb646-fd9a-47b7-965c-6413d669e074', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_5_4_44_1103210063_1697357837_Andhika Yudha Pradana.pdf', '2023-10-15 15:17:17.775691');
INSERT INTO public.preliminary_assignment_answer VALUES ('d4200db0-db2c-49f1-9a1f-b03d2118b5a0', '0e0b0fe1-3485-44bf-ac7d-4bdfb3388ab8', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_4_19_1103213068_1697357842_Rayhan Daffa Aulya Putra.pdf', '2023-10-15 15:17:22.261563');
INSERT INTO public.preliminary_assignment_answer VALUES ('b423b127-e580-4f46-8d6a-59b31b9a8d13', 'e2608986-a747-478a-9881-318216e2da3f', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_4_4_34_1103210156_1697357901_Keresna Destin Permana.pdf', '2023-10-15 15:18:21.708159');
INSERT INTO public.preliminary_assignment_answer VALUES ('2807ab6a-ccad-4deb-a724-8527bd0e51c7', '354e3b7b-309c-4d9d-9098-c983bb2f1e84', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_4_26_1103213012_1697358125_Tito Alfarabi Biwarno.pdf', '2023-10-15 15:22:05.991553');
INSERT INTO public.preliminary_assignment_answer VALUES ('3fe0e4f8-5951-4852-8702-a446adb1265c', 'bfd0e22b-74e8-467a-a314-87f8ac653637', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_1_2_2_1103210185_1697358219_Nella Aprilia.pdf', '2023-10-15 15:23:39.272032');
INSERT INTO public.preliminary_assignment_answer VALUES ('e8836c04-1a18-44cf-a22b-4896cd5331d4', '69fc02a7-af8a-4939-b366-20ce4ec5eea1', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_4_2_29_1103210128_1697358224_Mochamad Arief Dermawan.pdf', '2023-10-15 15:23:44.638774');
INSERT INTO public.preliminary_assignment_answer VALUES ('f65d0feb-76b0-48eb-901e-c0537509f84f', '2f960340-3f32-4bb5-b339-838d2e3e2d97', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_5_3_40_1103213131_1697358928_Muhammad Musyaffakul Harisna.pdf', '2023-10-15 15:35:28.303408');
INSERT INTO public.preliminary_assignment_answer VALUES ('31cd24ee-9e7f-44eb-8cc4-596e44a43966', 'b80422be-e773-4e22-af68-1a8f77ea4364', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_5_4_41_1103202047_1697359079_Jhose Immanuel Sembiring.pdf', '2023-10-15 15:37:59.445241');
INSERT INTO public.preliminary_assignment_answer VALUES ('fce48944-66b4-41fa-8c97-1c896521e4b0', '7ab73913-a6f3-46ff-acd3-c18cee0b4c31', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_4_18_1103213036_1697359392_Atanasius Pradiptha Sampurno.pdf', '2023-10-15 15:43:12.10389');
INSERT INTO public.preliminary_assignment_answer VALUES ('fcc6ba17-0416-4ce8-8204-8d1c50a10fa1', 'ee3b7bb5-127b-40d8-adb4-8dded40b28a2', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_1_3_7_1103213044_1697359467_Ameliani Kusmayadi.pdf', '2023-10-15 15:44:27.817192');
INSERT INTO public.preliminary_assignment_answer VALUES ('5c7e35a0-7bc0-4b94-80f7-5c2b6592bb65', 'dc86ef66-af92-4139-89e1-0a3a1c60cab4', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_3_14_1103210193_1697359472_Arif Al Imran.pdf', '2023-10-15 15:44:32.105555');
INSERT INTO public.preliminary_assignment_answer VALUES ('e54810d3-33c6-4a26-92d3-975717e8dde9', '70f4561b-feed-422c-a60c-ceeea70c9501', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_4_2_31_1103228182_1697359605_Reza Rizky Adha.pdf', '2023-10-15 15:46:45.112184');
INSERT INTO public.preliminary_assignment_answer VALUES ('8ed51c23-86c9-4b1a-9658-c062294abd14', '182ed8a7-7581-42e8-971c-216cc07290fb', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_4_18_1103213028_1697359642_Faraday Barr Fatahillah.pdf', '2023-10-15 15:47:22.388469');
INSERT INTO public.preliminary_assignment_answer VALUES ('ea4d7468-fbbd-4621-94ef-7c05e2177d88', '9e3f4cd8-6f6a-44a7-b7d9-1b4ad3aa8ba3', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_5_3_37_1103210064_1697360205_Farhan Rizki Fauzi.pdf', '2023-10-15 15:56:45.125836');
INSERT INTO public.preliminary_assignment_answer VALUES ('0c7d718e-0d32-4c75-88ac-5023c05c3b98', '6fe5ec09-1418-4c02-be66-43bbf49bfa2b', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_1_2_4_1103213088_1697360325_Ariq Nurcahyo Saputra.pdf', '2023-10-15 15:58:45.974374');
INSERT INTO public.preliminary_assignment_answer VALUES ('8f6c278b-d03a-47d7-9645-f2b5fa639368', '8e682aec-f8c4-403a-ab5f-1e883f182253', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_5_4_43_1103204174_1697360372_Yuliani.pdf', '2023-10-15 15:59:32.754363');
INSERT INTO public.preliminary_assignment_answer VALUES ('51a87626-77ed-4046-a2bb-f638f2d9d2d0', 'f6eefd73-1592-48fd-99be-a915f24c5b7c', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_1_3_8_1103213073_1697360557_Kivlan Hakeem Arrouf.pdf', '2023-10-15 16:02:37.853273');
INSERT INTO public.preliminary_assignment_answer VALUES ('8263078e-7a0d-432f-b4fd-8e17eefc8c4b', 'ea994389-ac70-49e0-9e95-0efafb836471', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_1_2_2_1103210172_1697360611_Faiz Hibatullah.pdf', '2023-10-15 16:03:31.119289');
INSERT INTO public.preliminary_assignment_answer VALUES ('60c257c8-a73e-400e-b20f-628224de978a', '32a0c702-fe7f-4eb2-a6d9-dfe42bc4d126', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_5_4_44_1103210097_1697360673_Difi Rahmaniza.pdf', '2023-10-15 16:04:33.110145');
INSERT INTO public.preliminary_assignment_answer VALUES ('89c5852e-287f-4fa4-b751-dd7abeb4b178', '69cb96b7-5d78-46a8-bf32-c3372259b95c', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_4_19_1103213059_1697360776_Panji Christoper Silalahi.pdf', '2023-10-15 16:06:16.853412');
INSERT INTO public.preliminary_assignment_answer VALUES ('1fd20f68-70ba-4e97-87fe-156ea35636d4', '602868af-0f82-42f3-851d-ec6837c26b75', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_1_2_1_1103210032_1697361394_Angelica Sharon Amelia Simanjuntak.pdf', '2023-10-15 16:16:34.732821');
INSERT INTO public.preliminary_assignment_answer VALUES ('1aab4e3e-8170-4bd3-8d3e-fbbe713974b2', '8a6ee596-1724-45ad-b495-096ede6bd53e', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_3_23_1103213007_1697361675_Rizki Aprilia Rahman.pdf', '2023-10-15 16:21:15.319139');
INSERT INTO public.preliminary_assignment_answer VALUES ('a3c978e3-20ee-4533-8408-ff001dc5bdc3', 'c41937e7-30e9-4dce-b03b-7082c19db76b', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_4_20_1103228240_1697362393_Khairi Hibatullah Ridho.pdf', '2023-10-15 16:33:13.004564');
INSERT INTO public.preliminary_assignment_answer VALUES ('acede2bc-3fe9-4d01-bcd4-cd21524ff138', '59a81368-89cc-477a-b06c-00129a6944de', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_4_17_1103210201_1697362807_Yohanes Yogas Herlambang.pdf', '2023-10-15 16:40:07.16835');
INSERT INTO public.preliminary_assignment_answer VALUES ('0d9da823-56bb-4d4a-a1b3-e4cf4de87a8b', 'e05757e6-f6af-44ac-9af6-f4c093c34623', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_2_10_1103213011_1697363676_Muhammad Faiz Anindyo Widodo.pdf', '2023-10-15 16:54:36.072314');
INSERT INTO public.preliminary_assignment_answer VALUES ('78bebabb-7be4-4bbc-acc5-ae673d9e49a5', 'd4ea6f0b-4ec2-41ed-b922-e75403441989', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_1_2_4_1103213164_1697363825_Arkan Fayiz Naharudin.pdf', '2023-10-15 16:57:05.379629');
INSERT INTO public.preliminary_assignment_answer VALUES ('cb3f28c1-de9e-42f6-9c88-045dbb6066b5', '3007739a-415d-4034-ad44-15331f95c57a', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_4_17_1103210187_1697364506_Amelia Putri Aniyanto.pdf', '2023-10-15 17:08:26.029964');
INSERT INTO public.preliminary_assignment_answer VALUES ('39bd7bf3-8093-48a7-ab6b-a63ac90fe1e5', '586e9e09-f3eb-43e0-b5f5-67ae3d6c258a', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_5_3_40_1103213136_1697366074_Fadhil Dzikri Aqila.pdf', '2023-10-15 17:34:34.139883');
INSERT INTO public.preliminary_assignment_answer VALUES ('5d9be5f4-98eb-44bf-846c-100617afd50b', '52e10d7f-1ced-4212-bc7d-d49cac0d3657', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_3_14_1103210103_1697366307_Tri Mulia Bahar.pdf', '2023-10-15 17:38:27.322878');
INSERT INTO public.preliminary_assignment_answer VALUES ('dd50b162-f6b4-447e-8a8a-7174b97e7851', 'aa385c52-63a4-47cd-acea-bd665a0036d2', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_4_4_34_1103210018_1697366962_Muhammad Nadhim Abdirrahman.pdf', '2023-10-15 17:49:22.087218');
INSERT INTO public.preliminary_assignment_answer VALUES ('4c746807-dec7-4d71-9e8b-e1a71b5177d5', 'fae04374-5165-448e-840e-5771a58e3884', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_3_13_1103190033_1697368614_Haridhova Pangestillah.pdf', '2023-10-15 18:16:54.025602');
INSERT INTO public.preliminary_assignment_answer VALUES ('7d4be5e4-7895-422e-b477-1ca9b5c3a849', 'be9d365d-acda-46bc-b9aa-e77f53c7cfc7', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_3_22_1103210057_1697369810_Yogi Wijaya.pdf', '2023-10-15 18:36:50.900327');
INSERT INTO public.preliminary_assignment_answer VALUES ('8c86e24a-146b-4e1c-9aa6-d058fe6a0f77', 'a3a8063a-33d0-4190-8569-483a7929882c', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_3_23_1103213118_1697370712_Rafiandi Normansyah.pdf', '2023-10-15 18:51:52.362898');
INSERT INTO public.preliminary_assignment_answer VALUES ('b50f1d73-55e9-4b7f-b97e-275a4fdc9bb8', 'c161d558-6f74-4f8b-919d-a6658c3cb088', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_3_15_1103213166_1697370852_Yusran Yasir.pdf', '2023-10-15 18:54:12.06874');
INSERT INTO public.preliminary_assignment_answer VALUES ('95a87ef8-3f50-4a32-aff6-51c6cffe4931', '8455449f-2cdb-449d-87a3-9e63e27a0fc4', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_1_2_4_1103213152_1697370857_Satya Athaya Daniswara.pdf', '2023-10-15 18:54:17.304801');
INSERT INTO public.preliminary_assignment_answer VALUES ('1e40f4a4-fc70-43e6-8450-edf96db8fd91', '0ab8e217-cadc-4d56-8115-e4b3e3756078', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_2_11_1103213048_1697371495_Dheandra Alfarrelwijaya.pdf', '2023-10-15 19:04:55.251556');
INSERT INTO public.preliminary_assignment_answer VALUES ('98544fed-18ca-4e0a-b55b-467bfc1beba5', '1bb25d2b-f204-44ba-bacc-f3e384b56eac', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_5_3_39_1103213033_1697371678_Andreas Hasiholan Sinaga.pdf', '2023-10-15 19:07:58.950657');
INSERT INTO public.preliminary_assignment_answer VALUES ('307f729e-bb92-4a97-81f5-4d8ad4dbeef9', 'd74a36f3-39ae-41d7-9859-7d770ccf7422', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_3_16_1103213178_1697371721_Badi Rafli Rizky Purnama.pdf', '2023-10-15 19:08:41.171578');
INSERT INTO public.preliminary_assignment_answer VALUES ('10cf7f5d-68fd-4213-9641-3697f8720460', 'd1929b00-34ec-4cca-b6ef-f2c5e155cb39', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_4_20_1103228224_1697371738_Muhammad Bustanul Arifin Nur Fathurrahman.pdf', '2023-10-15 19:08:58.743583');
INSERT INTO public.preliminary_assignment_answer VALUES ('f054ba83-9d82-4e1b-ba5b-982f3e3a35e2', '60e1337c-e027-4975-b76d-bbb9c9f3bf74', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_3_24_1103213127_1697371823_Irfan Fathoni.pdf', '2023-10-15 19:10:23.360884');
INSERT INTO public.preliminary_assignment_answer VALUES ('97b27acf-ce40-4d78-bfb4-41387f8575e3', '5ec1cad0-171b-4ef1-9ef9-ca8631f0ee86', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_4_2_31_1103228233_1697372222_Mochamad Permana Ash Shidiq.pdf', '2023-10-15 19:17:02.272619');
INSERT INTO public.preliminary_assignment_answer VALUES ('1ff8a45f-59a7-4a00-b060-90436a1ab312', '1cef610c-c53c-40b1-8ac7-6c1efe406daf', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_4_4_34_1103210024_1697372421_Mizan Ghazy Praraya.pdf', '2023-10-15 19:20:21.982043');
INSERT INTO public.preliminary_assignment_answer VALUES ('11a75f34-3c8a-4d79-a5a5-18b8cdfd96f1', 'e8ce74d6-aa71-439b-85a0-3104e7596e15', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_3_21_1103210035_1697372582_Dafa Rhesa Sudibyo.pdf', '2023-10-15 19:23:02.026801');
INSERT INTO public.preliminary_assignment_answer VALUES ('b22a7227-0000-4199-8f82-eadfb40876a0', '675f0992-61e4-4b5b-b613-989c5cb6c438', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_4_2_30_1103213122_1697372597_Fakhriy Dzakwan Alinanda Sudrajat.pdf', '2023-10-15 19:23:17.426222');
INSERT INTO public.preliminary_assignment_answer VALUES ('4b235e4b-5b58-4390-abaf-fc8f0819cef9', '8d448874-8cbc-4007-90a0-ca46e162ff70', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_5_4_43_1103204185_1697373001_Rafif Ariasa.pdf', '2023-10-15 19:30:01.786445');
INSERT INTO public.preliminary_assignment_answer VALUES ('bf4e2c87-556f-4d1c-9ffb-5a036d0c36a0', '226a3b48-f80b-4b34-9d15-c4ef816b1fc2', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_4_19_1103213109_1697373849_Muhammad Nur Ridhwan.pdf', '2023-10-15 19:44:09.542222');
INSERT INTO public.preliminary_assignment_answer VALUES ('844dcec1-2db2-4e45-9efe-f370365c6125', '0a6a875d-037a-4ddc-b0b3-35c01621035f', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_1_2_3_1103213072_1697374520_Muhammad Hafizh Reyhan.pdf', '2023-10-15 19:55:20.906334');
INSERT INTO public.preliminary_assignment_answer VALUES ('a3a2d135-8d91-47d5-9fe9-0060ac3b2981', '8ab303b4-afac-469e-ae55-dbc0a2551541', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_5_4_44_1103210066_1697374557_Miftah Farid Maulana.pdf', '2023-10-15 19:55:57.19562');
INSERT INTO public.preliminary_assignment_answer VALUES ('1028a6de-37f4-40dd-8627-a289fe63a3b4', 'd2616b30-9e1a-4341-b093-0d55e68eba61', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_1_3_8_1103213149_1697374565_Daffa Fathir Fajri.pdf', '2023-10-15 19:56:05.222432');
INSERT INTO public.preliminary_assignment_answer VALUES ('7ffe1202-903b-4386-b147-b3ddc59c9f06', '6f492848-1f87-4c1e-8608-d735c16e6b3f', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_4_4_35_1103210211_1697374713_Muhammad Raflika Dwiyansyah.pdf', '2023-10-15 19:58:33.390765');
INSERT INTO public.preliminary_assignment_answer VALUES ('3c87637c-5098-4456-98f7-7ca3d642d9a4', '946c84c2-8bc4-4fa9-87c1-2979066ac448', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_2_11_1103213070_1697374735_Mohamad Rayi Dwi Putra.pdf', '2023-10-15 19:58:55.497524');
INSERT INTO public.preliminary_assignment_answer VALUES ('f5aa70fa-e82e-4146-a442-4d57eb8c2d8f', 'c6986d5c-a927-4070-9007-80312fbf004e', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_4_2_31_1103228238_1697375771_Eka Milenia Ramadhani.pdf', '2023-10-15 20:16:11.503379');
INSERT INTO public.preliminary_assignment_answer VALUES ('4d489e2c-4a0b-40a3-b4dc-ff15109e0eeb', 'a54db17a-2d49-4ede-ac23-eb7057345ee7', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_5_3_38_1103210189_1697375924_James Mesakh Prakoso.pdf', '2023-10-15 20:18:44.871875');
INSERT INTO public.preliminary_assignment_answer VALUES ('7776d8f2-3028-4ab0-b133-20bb0853635f', 'd4daa625-f9fe-485e-866b-d5b33cd0f926', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_1_2_3_1103213002_1697376024_Purwantoro Aji Nugroho.pdf', '2023-10-15 20:20:24.566515');
INSERT INTO public.preliminary_assignment_answer VALUES ('2326569a-4dd8-4e04-9b56-a73d27fc3a49', '350bb263-b14d-4a37-a5fe-30c444e02ca0', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_2_9_1103210031_1697376471_Ikhsan Meiza.pdf', '2023-10-15 20:27:51.291468');
INSERT INTO public.preliminary_assignment_answer VALUES ('37e73dee-ad73-4994-b61c-c0d20ed4e28a', '8aab2e94-d3b3-4422-bd85-21a1e80242c2', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_1_3_7_1103213051_1697376483_Daffa Muhammad Irfan.pdf', '2023-10-15 20:28:03.33265');
INSERT INTO public.preliminary_assignment_answer VALUES ('c54a2a66-6643-47ba-88bd-56ddcbde0cf8', '29ff8c27-1307-4e86-93c7-750edbe466e8', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_5_3_39_1103213091_1697377066_Rizki Ramadhan.pdf', '2023-10-15 20:37:46.267929');
INSERT INTO public.preliminary_assignment_answer VALUES ('9d4dc247-0c73-40e9-a75f-61d4aee74d4f', 'd3a39ba4-345c-410a-a2a0-0514385978aa', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_3_24_1103213160_1697377080_Iffat Dzikra.pdf', '2023-10-15 20:38:00.458272');
INSERT INTO public.preliminary_assignment_answer VALUES ('ea49cfd8-9dad-4481-9612-f9a5cd38afcd', 'e571a26e-45ce-4ec2-838b-a6ddccb4f203', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_4_4_35_1103210236_1697377109_Sam Alim Ramadhan.pdf', '2023-10-15 20:38:29.291367');
INSERT INTO public.preliminary_assignment_answer VALUES ('527125d1-fc18-4a44-a091-148e416ffc90', 'b610c83e-0c40-4138-a338-9e30b86c9c6f', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_2_10_1103210210_1697377161_Muhammad Rayyan Aqiilah Manna.pdf', '2023-10-15 20:39:21.282342');
INSERT INTO public.preliminary_assignment_answer VALUES ('80cb1786-8716-46f6-8062-b7b9c4a354ce', '88238d17-7c5b-4980-976e-ddb7e128a1b8', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_4_18_1103213021_1697377920_Diaz Abdi.pdf', '2023-10-15 20:52:00.071374');
INSERT INTO public.preliminary_assignment_answer VALUES ('944e37e1-fea4-4200-a66e-943540ff9477', 'dd125722-aff1-4aef-9974-a99dbe4c1d21', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_3_23_1103213034_1697378009_Geral Nius Bakhan.pdf', '2023-10-15 20:53:29.222366');
INSERT INTO public.preliminary_assignment_answer VALUES ('ccb844fe-277a-4833-8f5d-d0db03bd94c4', 'c141319f-47eb-4aaf-8d20-799e81e81ca9', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_1_3_7_1103213019_1697378094_Abdi Muhammad Rizky.pdf', '2023-10-15 20:54:54.753162');
INSERT INTO public.preliminary_assignment_answer VALUES ('82fa96e9-db31-4857-af83-de5073f109c7', '0b18f918-e713-4a67-a802-4414aaef3775', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_5_4_42_1103204167_1697378099_Muhammad Alfachri Asmi.pdf', '2023-10-15 20:54:59.057755');
INSERT INTO public.preliminary_assignment_answer VALUES ('b729987e-7ebe-41db-b2c1-6ba8a89850e5', '011df7c2-abdd-4256-a983-ef9eb139934b', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_4_2_30_1103213054_1697378419_Amalul Anugrah Amin.pdf', '2023-10-15 21:00:19.347478');
INSERT INTO public.preliminary_assignment_answer VALUES ('fe383893-1d1c-4f82-9960-73a8f5411ab2', '5cd18e10-999a-4782-851a-87122eeca430', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_2_9_1103210094_1697378449_Irman Prayista.pdf', '2023-10-15 21:00:49.957856');
INSERT INTO public.preliminary_assignment_answer VALUES ('39388293-e937-402f-84ce-0b2e1d7f6e52', '1ff2d510-ed63-4a04-8ff1-5336f43e454f', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_5_4_43_1103210050_1697378525_Afdzuliah Nuranti.pdf', '2023-10-15 21:02:05.347708');
INSERT INTO public.preliminary_assignment_answer VALUES ('e2880d80-5539-4306-b3de-72d1475c2bf3', 'd9dbcebe-8f24-42ec-b169-118a50cfeb89', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_4_27_1103213040_1697378614_Ahmad Fadlulloh.pdf', '2023-10-15 21:03:34.462699');
INSERT INTO public.preliminary_assignment_answer VALUES ('18341214-eeac-40ab-9b17-82b4c2d18c97', '3f863fff-e470-4870-8612-9e298b028b37', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_5_3_40_1103213155_1697378760_Mohamad Iqbal Rizky Maulana.pdf', '2023-10-15 21:06:00.792732');
INSERT INTO public.preliminary_assignment_answer VALUES ('928079ae-af3c-4a8e-9a2e-36386179ca91', 'b6c47359-e794-4f52-9cc6-d4a8c14583c6', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_1_2_1_1103210101_1697378934_Eva Fiorina Siahaan.pdf', '2023-10-15 21:08:54.795606');
INSERT INTO public.preliminary_assignment_answer VALUES ('3c3fa313-20d0-4871-920b-72041fd3cb4a', '5e501775-56f9-42e1-9d1c-b304427be815', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_4_2_31_1103228239_1697379454_Aldi Febrian Yuwono Putra.pdf', '2023-10-15 21:17:34.884442');
INSERT INTO public.preliminary_assignment_answer VALUES ('2a7a1686-73be-4e7e-ae21-65aa75b080ee', 'a13b242b-fec7-4648-89c8-4504ee9f0763', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_2_11_1103213023_1697379598_Yosua Gery Tampubolon.pdf', '2023-10-15 21:19:58.034438');
INSERT INTO public.preliminary_assignment_answer VALUES ('962c9f74-fbbe-429c-8549-1cdbc452d085', '92bc4850-3e8b-43de-991c-cbc0cbfc2973', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_3_24_1103213148_1697379643_Ketut Satria Wibisana.pdf', '2023-10-15 21:20:43.374837');
INSERT INTO public.preliminary_assignment_answer VALUES ('e527b9c1-01f2-4680-b665-b57789ed74e8', 'e1711913-4449-424e-9971-0dc1b2df54ec', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_5_3_38_1103210235_1697380037_Fahrul Rozi.pdf', '2023-10-15 21:27:17.740403');
INSERT INTO public.preliminary_assignment_answer VALUES ('b0a1a3f0-7978-490f-893d-7a818889371b', '85a5a2e0-c6ca-49bb-bd8b-6ded878910c0', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_5_4_43_1103204209_1697380171_Rizal Nugraha.pdf', '2023-10-15 21:29:31.083991');
INSERT INTO public.preliminary_assignment_answer VALUES ('be7c0dc6-d6f2-4ef2-987c-6f094022359f', '42bc411f-05c3-4b88-8048-2485652262a0', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_5_3_37_1103210161_1697380517_Muhammad Afif Fadhlurrahman.pdf', '2023-10-15 21:35:17.581854');
INSERT INTO public.preliminary_assignment_answer VALUES ('f429ee0d-9477-4fdb-85c9-799c61451277', '8797d3dc-985f-4578-9597-e41c291a80ee', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_3_16_1103228174_1697380712_Surya Wahyu Saputra.pdf', '2023-10-15 21:38:32.692193');
INSERT INTO public.preliminary_assignment_answer VALUES ('2a8307ad-bdfc-439e-8075-eb3ed294254e', 'ad44b9a1-6e6f-4bcd-a4d5-5b42d9d9b0df', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_4_2_29_1103204193_1697381006_Muhammad Fariq Taqi Pasai.pdf', '2023-10-15 21:43:26.171764');
INSERT INTO public.preliminary_assignment_answer VALUES ('5072b956-7483-4cce-b1c6-d157327b00d9', 'c6450bc6-80c5-4030-bb78-ddbd627c9b79', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_1_3_6_1103210216_1697381149_Muhammad Ashlah Afifi.pdf', '2023-10-15 21:45:49.856672');
INSERT INTO public.preliminary_assignment_answer VALUES ('753c90d4-582d-4332-b5c0-047061d08e56', '90b83e6c-39be-4e3c-9a52-8ba1e18d25cd', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_2_12_1103213196_1697381647_Haldi Alfiansyach.pdf', '2023-10-15 21:54:07.565075');
INSERT INTO public.preliminary_assignment_answer VALUES ('3f6aceb1-85cd-4e1d-b498-0f962883046a', 'a4ca3698-4b0f-4365-a1d6-de117a5303d4', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_4_4_36_1103213107_1697382509_Terryanda Naufaldo Arhaby.pdf', '2023-10-15 22:08:29.081122');
INSERT INTO public.preliminary_assignment_answer VALUES ('208fb544-1f02-4b68-b3d4-6a0eb4bf0da5', 'a2c3d372-01c7-4c4a-ab4d-3051adaece9c', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_2_12_1103213119_1697382692_Cetta Maulana Andhika.pdf', '2023-10-15 22:11:32.038521');
INSERT INTO public.preliminary_assignment_answer VALUES ('6c960faa-c325-4606-8aef-8e44fd2177fa', 'f9752fa8-e1ec-445d-aee8-67979f69a807', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_2_12_1103213110_1697382807_Aldo Nitehe Lase.pdf', '2023-10-15 22:13:27.279713');
INSERT INTO public.preliminary_assignment_answer VALUES ('9bd5ea67-644c-4e78-84e4-267db9cd5bba', 'ec2ede40-d833-41d6-a7e3-3b7fb3d29c4f', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_4_28_1103213120_1697382814_Ferdinant Hutajulu.pdf', '2023-10-15 22:13:34.024473');
INSERT INTO public.preliminary_assignment_answer VALUES ('9b4d11f5-871c-47c0-bf7b-4621a1e26274', 'b4d76d32-10e6-4756-9041-22fa0c0d888d', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_1_3_6_1103210218_1697382858_Dimas Ahmad Noorsaid.pdf', '2023-10-15 22:14:18.086793');
INSERT INTO public.preliminary_assignment_answer VALUES ('c6e8be5f-6c62-4fd3-a922-a02288946566', '6c8d8504-af2c-4490-ad1f-2f6207abf2b1', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_1_3_8_1103213195_1697383052_Putri Amelia Suhendi.pdf', '2023-10-15 22:17:32.554946');
INSERT INTO public.preliminary_assignment_answer VALUES ('8c2af692-7772-476c-87b1-bea50b066195', 'bfc0c806-13f3-43cb-81de-16655994e5e9', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_2_10_1103210125_1697383510_Hafiz Muhammad Fadhel.pdf', '2023-10-15 22:25:10.472388');
INSERT INTO public.preliminary_assignment_answer VALUES ('7091f559-1c2c-4d64-afdf-6f309e038d32', '4457956d-c5a1-42c7-a13a-db09f5177d39', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_3_13_1103192203_1697383520_Nauval Muhamad Fachrezi Wiradiredja Karnabi.pdf', '2023-10-15 22:25:20.589959');
INSERT INTO public.preliminary_assignment_answer VALUES ('90473ce4-6f5d-48c0-879c-6b6b8c6ba75f', '23b6f539-39cc-4ae7-b0d3-1b2a0e4f6ef7', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_5_3_37_1103210017_1697383545_Axel David.pdf', '2023-10-15 22:25:45.600388');
INSERT INTO public.preliminary_assignment_answer VALUES ('6646e8e7-fa31-4b8a-8c63-f67058c5738e', '296a2beb-3d7c-431d-bb16-7eb74354661c', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_4_26_1103213003_1697383636_Arif Muhammad Laduni.pdf', '2023-10-15 22:27:16.132385');
INSERT INTO public.preliminary_assignment_answer VALUES ('ddc82779-1300-435c-a5ca-873536c22ae3', '0cbdcf27-49bb-402e-b251-53dd00f4d900', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_4_28_1103213175_1697384153_M.Jamil Al-Munawar.pdf', '2023-10-15 22:35:53.323967');
INSERT INTO public.preliminary_assignment_answer VALUES ('ff9aba65-fccd-42f5-a6ad-fc72e83c549d', 'e92c3b78-27ea-4f7f-bef1-adee943274c8', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_4_26_1103210207_1697384248_Nicholas Alvito Diandra.pdf', '2023-10-15 22:37:28.24765');
INSERT INTO public.preliminary_assignment_answer VALUES ('f1a861e6-07c4-4d46-9b27-69d39ea1674a', '26bb0a24-fe4e-4228-a4b7-7f98792ac7ac', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_5_4_41_1103200008_1697384490_Taufik Kurahman Sasmita.pdf', '2023-10-15 22:41:30.209218');
INSERT INTO public.preliminary_assignment_answer VALUES ('f2cdc8f1-586e-4b69-88f8-283a7ec44e92', '73ec3d5a-18a6-41db-88b6-ba45e397989f', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_4_25_1103210154_1697384709_Parikesit.pdf', '2023-10-15 22:45:09.536539');
INSERT INTO public.preliminary_assignment_answer VALUES ('a6a9bec5-e079-436b-85ab-27eeb63e6b09', '5be26b61-9de8-42b9-ad5e-193fba771223', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_4_26_1103213005_1697384742_Muhamad Hilmi Haidar.pdf', '2023-10-15 22:45:42.227074');
INSERT INTO public.preliminary_assignment_answer VALUES ('deb08206-085a-4dbf-9dfb-b2fdd4e82f0f', 'fc2de8b4-0286-492c-a54c-5fdd4cfac5ae', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_3_22_1103210177_1697384851_Muhammad Farrel Ahadi Tama.docx', '2023-10-15 22:47:31.811298');
INSERT INTO public.preliminary_assignment_answer VALUES ('83ae5b59-06ed-4304-9776-01a3948b4d69', '9dace393-b0f7-4704-9019-3e64535fc0d4', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_2_10_1103210143_1697384870_M Tsani Faishal Azhar.pdf', '2023-10-15 22:47:50.906333');
INSERT INTO public.preliminary_assignment_answer VALUES ('9d9c98ae-9c6c-442a-907d-2ae99a1dec31', 'fc19b85b-4ce4-4653-8875-eb6798fd0b41', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_4_25_1103210037_1697384977_Danny Hamtar Pangestu.pdf', '2023-10-15 22:49:37.978007');
INSERT INTO public.preliminary_assignment_answer VALUES ('c558deb3-51d6-4ab8-86e0-03bb47252bb7', '608ccf06-a149-4ae8-8151-c1d21e786794', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_4_2_30_1103210226_1697385055_Kansha Aidil Fitri Bramantya.pdf', '2023-10-15 22:50:55.041924');
INSERT INTO public.preliminary_assignment_answer VALUES ('84dda583-fe51-47fd-830e-49267efb6cf6', '507f578c-ba2c-4568-b924-857e1969e6e9', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_1_2_2_1103210192_1697385183_Muhamad Rizq Rihaz.pdf', '2023-10-15 22:53:03.821985');
INSERT INTO public.preliminary_assignment_answer VALUES ('dcb60667-4774-4948-b94e-687bd12629e3', '0bbf98dc-e951-4348-9799-001152c3ea59', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_4_2_30_1103210238_1697385235_Yubi Madhania Sahid.pdf', '2023-10-15 22:53:55.13656');
INSERT INTO public.preliminary_assignment_answer VALUES ('e19969df-d655-458f-8d5b-5f91617c8d2c', 'bdea13ed-266f-4c65-8436-7abff6c1a086', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_4_4_35_1103210230_1697385324_Jovandy Julio.pdf', '2023-10-15 22:55:24.645611');
INSERT INTO public.preliminary_assignment_answer VALUES ('c3268a7a-8577-4eb2-84a1-c5da461b7c2e', '64cca02b-f938-49d6-88b7-744f3780bf51', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_3_21_1103174185_1697385459_Raihan Elsar Kusuma.docx', '2023-10-15 22:57:39.892153');
INSERT INTO public.preliminary_assignment_answer VALUES ('626897d3-0091-4c73-b456-df609a7d11e6', '0c28e72c-c825-41fd-ab11-22aba776fdab', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_1_3_8_1103213224_1697385710_Valentino Rangga Perkasa.pdf', '2023-10-15 23:01:50.448775');
INSERT INTO public.preliminary_assignment_answer VALUES ('d593f584-7cc9-43a9-bb0c-8648d8c5a5c0', '4e9aed4c-4fbe-4e80-9211-00f4554e3d4b', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_1_3_5_1103204090_1697385860_Awal Fitwah Riansyah.pdf', '2023-10-15 23:04:20.387303');
INSERT INTO public.preliminary_assignment_answer VALUES ('8ce319ae-1a0d-450b-b2dd-3efa6d13fda8', '40e7e6c7-b907-4ad4-ae02-f5029aa8b873', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_2_11_1103213077_1697386358_Muhammad Raihan Butar-Butar.pdf', '2023-10-15 23:12:38.176094');
INSERT INTO public.preliminary_assignment_answer VALUES ('c1bbe2b7-258d-4062-b52d-5cf093b5ffa4', '5743a36b-003c-4077-9fe6-a70444a67ff4', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_1_2_3_1103210222_1697386416_Rafi Rabbani Ekananda.pdf', '2023-10-15 23:13:36.631674');
INSERT INTO public.preliminary_assignment_answer VALUES ('abb22aaf-96ce-450b-88a3-7ffcc2927e3b', '7c20cad9-a56e-452d-a143-d8edb40514f9', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_1_3_6_1103210056_1697386849_Nisrina Nurjauza Fasya.pdf', '2023-10-15 23:20:49.57008');
INSERT INTO public.preliminary_assignment_answer VALUES ('5f7a9c76-306a-4df2-a364-a7554cba90ef', 'feb68149-4e41-44ae-b58d-5679329c1102', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_3_13_1103202117_1697386886_Muhammad Alfat Imanda.pdf', '2023-10-15 23:21:26.385326');
INSERT INTO public.preliminary_assignment_answer VALUES ('95804383-6a38-4997-974a-ade8dd5262b4', 'd9d5df69-4008-4504-9524-a9e68682eeb8', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_2_4_20_1103213165_1697386934_Kinanti Aria Widaswara.pdf', '2023-10-15 23:22:14.804547');
INSERT INTO public.preliminary_assignment_answer VALUES ('28721c3e-c2ec-4b7b-bf8f-e1e75f3d054a', '39f96cc0-589e-417b-8c3e-ac9a1179d655', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_4_2_32_1103228244_1697387161_Cristian Yulma Wibowo.pdf', '2023-10-15 23:26:01.824679');
INSERT INTO public.preliminary_assignment_answer VALUES ('6cf06beb-6768-486c-8634-a312dbe4c9f5', 'ddbc2a0c-8808-47b7-98a5-efe5007bf688', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_4_2_29_1103204099_1697387450_Mauricio Bethoven Tigauw.pdf', '2023-10-15 23:30:50.518091');
INSERT INTO public.preliminary_assignment_answer VALUES ('b278bea2-22ae-4ac7-9db2-42ed85c53c2b', 'e8e996c6-ce01-4844-8160-ab954f71daa3', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_5_4_42_1103202197_1697387779_Rafly Suryadharma.pdf', '2023-10-15 23:36:19.785019');
INSERT INTO public.preliminary_assignment_answer VALUES ('ff29ab50-cd23-44ba-bffc-723febf91aa9', 'f7ad0bef-ff5c-49b4-a443-8aef910a7a82', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_3_3_23_1103213013_1697388140_Adrian Kuman Firmansah.pdf', '2023-10-15 23:42:20.152788');
INSERT INTO public.preliminary_assignment_answer VALUES ('5b11004d-2ac3-478a-9a16-876fc1e37a2b', '7a2c65e3-527f-42ef-ba28-afec3e632d7b', 'df28dc73-a270-456d-82d3-08b2430fe807', 'PreliminaryAssignment/TP2/Submission/TP2_1_3_6_1103210231_1697388545_Juvenli Lubis.pdf', '2023-10-15 23:49:05.011069');


                                                                                                                                                                                                                                                                                                     3377.dat                                                                                            0000600 0004000 0002000 00000000002 14513257403 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3379.dat                                                                                            0000600 0004000 0002000 00000060232 14513257403 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public.student VALUES ('011df7c2-abdd-4256-a983-ef9eb139934b', 'c4dce86c-33c9-47fc-a53d-a4d8317b9db7', NULL, 30, 4, 2);
INSERT INTO public.student VALUES ('06288022-4c8d-4ebb-916a-7238b2019cbb', '67997e18-8ed0-46b5-9308-5ead13f63938', NULL, 0, 6, 4);
INSERT INTO public.student VALUES ('0857f1eb-51ed-4ebe-89f4-5ce7b527264c', '2b8b0646-5227-41a6-8e46-ddcc642bab36', NULL, 42, 5, 4);
INSERT INTO public.student VALUES ('0ab8e217-cadc-4d56-8115-e4b3e3756078', 'f450efb6-6fe3-4ce6-90bf-aa759cfb1621', NULL, 11, 2, 2);
INSERT INTO public.student VALUES ('0b18f918-e713-4a67-a802-4414aaef3775', '2cde92e9-99d4-41aa-85be-4cad9b20341d', NULL, 42, 5, 4);
INSERT INTO public.student VALUES ('0c28e72c-c825-41fd-ab11-22aba776fdab', '268b4ff2-f7d7-4384-9624-f1d9fcee1662', NULL, 8, 1, 3);
INSERT INTO public.student VALUES ('0cbdcf27-49bb-402e-b251-53dd00f4d900', '9cca6392-d7d5-4798-80f7-5fbb2b50e828', NULL, 28, 3, 4);
INSERT INTO public.student VALUES ('0ebab45a-4677-406d-a6f1-47cebbb833f3', '50ea9984-945d-4e3e-8a86-78726c090bdb', NULL, 0, 6, 1);
INSERT INTO public.student VALUES ('0ebc46f4-5393-4644-84ad-9bf78df6670f', '92ace503-8463-421f-8ec7-912b46dcbf5a', NULL, 16, 2, 3);
INSERT INTO public.student VALUES ('17cdecfc-306c-4314-81d5-62ad1e52e7f3', '699c7d23-fd9b-448f-9f92-cd8febc70662', NULL, 33, 4, 4);
INSERT INTO public.student VALUES ('182ed8a7-7581-42e8-971c-216cc07290fb', '8db20d27-3196-4fb0-865f-8807672c46d1', NULL, 18, 2, 4);
INSERT INTO public.student VALUES ('20fc67fd-be0f-4d74-8c88-3f160b612766', 'a09e4d9f-3565-4ad7-b9e5-620674536272', NULL, 27, 3, 4);
INSERT INTO public.student VALUES ('226a3b48-f80b-4b34-9d15-c4ef816b1fc2', '8120697d-72e7-4732-a314-1237c482eb36', NULL, 19, 2, 4);
INSERT INTO public.student VALUES ('23b6f539-39cc-4ae7-b0d3-1b2a0e4f6ef7', '8cfff2cb-f745-455e-a3ca-323b13ebf7f6', NULL, 37, 5, 3);
INSERT INTO public.student VALUES ('253b0792-f9df-4426-91c8-9a582885e80e', '9ba57c8d-f905-476e-a9e8-e379b8b78203', NULL, 41, 5, 4);
INSERT INTO public.student VALUES ('26bb0a24-fe4e-4228-a4b7-7f98792ac7ac', 'd35cd56b-5428-433d-893d-d27878c2300b', NULL, 41, 5, 4);
INSERT INTO public.student VALUES ('2f960340-3f32-4bb5-b339-838d2e3e2d97', '685598de-fd3c-460e-8ce5-c45c24c57649', NULL, 40, 5, 3);
INSERT INTO public.student VALUES ('3007739a-415d-4034-ad44-15331f95c57a', '7c147b51-1926-4ed7-aea3-5bb9bd8bab29', NULL, 17, 2, 4);
INSERT INTO public.student VALUES ('31dc59e0-37c7-410c-8c1c-996e6bd3dfed', '80f469d1-1b14-4191-9f9b-7c6c54917714', NULL, 0, 6, 2);
INSERT INTO public.student VALUES ('3300b6aa-f8df-4b99-b673-ff1d86faeab9', '43e88e58-3b26-44c0-af9a-d3975f65c240', NULL, 0, 6, 1);
INSERT INTO public.student VALUES ('350bb263-b14d-4a37-a5fe-30c444e02ca0', '0be8b7c7-bb8d-4c33-858d-5fb699c3b6b4', NULL, 9, 2, 2);
INSERT INTO public.student VALUES ('36368383-ea6c-47b8-9dba-f9284c5466e6', '65f26690-68a0-46e4-b067-e928bec57a90', NULL, 0, 6, 2);
INSERT INTO public.student VALUES ('39b62831-ebf2-4aad-bbdd-1970c01799d4', '46f074d4-e018-4ce9-9c01-39aad7593fcc', NULL, 33, 4, 4);
INSERT INTO public.student VALUES ('3a95fc88-f84c-4eb2-bbb1-4c425677e859', '653e2b2c-9418-4389-9465-ec3eccf07710', NULL, 25, 3, 4);
INSERT INTO public.student VALUES ('40e7e6c7-b907-4ad4-ae02-f5029aa8b873', '329f9f06-c089-4fd2-9754-fba0fe1e91e1', NULL, 11, 2, 2);
INSERT INTO public.student VALUES ('42bc411f-05c3-4b88-8048-2485652262a0', '5d5f2119-561d-438c-b356-536a0478a3b1', NULL, 37, 5, 3);
INSERT INTO public.student VALUES ('4a1e5bb2-c9d3-430e-9e4a-70968cb363d1', 'a9c8cce0-322a-4d53-8a72-dbf1615e9d20', NULL, 9, 2, 2);
INSERT INTO public.student VALUES ('4afe4fa0-b948-47a0-9d67-597b8f865329', '184657e3-564e-4f63-895f-588bd3e2a9ed', NULL, 13, 2, 3);
INSERT INTO public.student VALUES ('4e9aed4c-4fbe-4e80-9211-00f4554e3d4b', '8228ed68-9b8f-413d-a268-795c4587f630', NULL, 5, 1, 3);
INSERT INTO public.student VALUES ('4fffd7a9-6de2-4b64-a3cf-a6964bd79a1a', '66f82658-a541-4113-8c75-1688b661bed6', NULL, 44, 5, 4);
INSERT INTO public.student VALUES ('507f578c-ba2c-4568-b924-857e1969e6e9', '88e5855e-556a-4160-8f89-0ef19679d8b9', NULL, 2, 1, 2);
INSERT INTO public.student VALUES ('52e10d7f-1ced-4212-bc7d-d49cac0d3657', 'affdd851-47d5-48f4-81b2-1a1836a98da3', NULL, 14, 2, 3);
INSERT INTO public.student VALUES ('55305736-b35f-45a6-b9ab-5e080c2d0137', '6231188e-387c-445b-a10b-5cacbac697bc', NULL, 0, 6, 3);
INSERT INTO public.student VALUES ('55bee84c-30ce-4bdc-9524-6ae151c3d1dc', 'f19e477c-4cda-468d-bcf6-d34db440df51', NULL, 0, 6, 4);
INSERT INTO public.student VALUES ('5743a36b-003c-4077-9fe6-a70444a67ff4', 'ec1cc6e7-3775-4e34-b753-bbbf9321b5b9', NULL, 3, 1, 2);
INSERT INTO public.student VALUES ('576ce59d-b90b-4fb5-abef-7d5b94c3e887', 'ec6fc6fb-88a8-4f19-b3a9-06145a17c4cb', NULL, 0, 6, 3);
INSERT INTO public.student VALUES ('5be26b61-9de8-42b9-ad5e-193fba771223', 'be9a0d2a-6c47-42a1-b0b9-7ed9d9347418', NULL, 26, 3, 4);
INSERT INTO public.student VALUES ('5cd18e10-999a-4782-851a-87122eeca430', '1b44e834-cc19-46cf-bea3-e4e82c00a6cd', NULL, 9, 2, 2);
INSERT INTO public.student VALUES ('5ce91a76-4257-489a-8bff-0c34f7e927ae', 'db502cd9-10d1-499b-93cb-07ba9f2bdec9', NULL, 5, 1, 3);
INSERT INTO public.student VALUES ('5e7b5fa3-452d-4b48-b5ff-f52a8e1f9e31', '326ef8cb-2b48-4657-a6c7-6e64c7751267', NULL, 27, 3, 4);
INSERT INTO public.student VALUES ('5ec1cad0-171b-4ef1-9ef9-ca8631f0ee86', 'b1994c4b-8314-48ab-8667-6bfb36b1b475', NULL, 31, 4, 2);
INSERT INTO public.student VALUES ('608ccf06-a149-4ae8-8151-c1d21e786794', '68952171-ea28-4750-a8a7-b2919652da3b', NULL, 30, 4, 2);
INSERT INTO public.student VALUES ('60e1337c-e027-4975-b76d-bbb9c9f3bf74', '10926025-bd46-4fca-9180-d51b68edb29b', NULL, 24, 3, 3);
INSERT INTO public.student VALUES ('64cca02b-f938-49d6-88b7-744f3780bf51', '5bdafbd2-20a1-42fa-8937-bc3652c86ba8', NULL, 21, 3, 3);
INSERT INTO public.student VALUES ('6c8d8504-af2c-4490-ad1f-2f6207abf2b1', '3677eaae-754a-4126-afcd-771f42df79cc', NULL, 8, 1, 3);
INSERT INTO public.student VALUES ('6cab6730-58bb-4f72-a1c1-59675d458385', 'b13639bc-222f-468b-ba57-780c465381d6', NULL, 21, 3, 3);
INSERT INTO public.student VALUES ('6f492848-1f87-4c1e-8608-d735c16e6b3f', '8630deb1-035a-40ba-8f36-5c175341e3d9', NULL, 35, 4, 4);
INSERT INTO public.student VALUES ('6fe5ec09-1418-4c02-be66-43bbf49bfa2b', '22fbc1c0-7ecd-461c-a86b-b61f49115d94', NULL, 4, 1, 2);
INSERT INTO public.student VALUES ('70502c10-9651-47de-83ad-de63d39bf0ad', '5b50f73a-3e9a-4eea-bf73-4cc09efcc592', NULL, 7, 1, 3);
INSERT INTO public.student VALUES ('70f4561b-feed-422c-a60c-ceeea70c9501', 'a7b09623-08b2-4710-a14e-e27f0ba240a5', NULL, 31, 4, 2);
INSERT INTO public.student VALUES ('7183b688-d3c2-4727-85c6-31d7e86c3991', '3a91a744-77fe-40cd-9ac6-a21e2e3230fd', NULL, 0, 6, 4);
INSERT INTO public.student VALUES ('74cbc96f-032f-4979-9f5f-7b63c2ba808f', '429eee9e-6648-4f78-8f2e-9822505f5c19', NULL, 39, 5, 3);
INSERT INTO public.student VALUES ('79fcc9cd-3b98-4d30-b0ef-96bfb020f242', 'c5e525fa-8e5e-4895-a2f0-4f3c69046b09', NULL, 37, 5, 3);
INSERT INTO public.student VALUES ('7c20cad9-a56e-452d-a143-d8edb40514f9', 'bf14578c-0175-406f-8cbc-0a7a091a78d7', NULL, 6, 1, 3);
INSERT INTO public.student VALUES ('7cd9dd91-809f-45fc-904a-eed3f515b2db', '826b4ff5-c6f7-482b-bd9a-f3cd91698e94', NULL, 20, 2, 4);
INSERT INTO public.student VALUES ('80b2c981-d30a-4b98-ba25-2309f82f935a', 'd79dd58f-f2e0-41a4-be81-09568ef46b0a', NULL, 15, 2, 3);
INSERT INTO public.student VALUES ('814dddf6-7efa-4522-b06f-06f770ccbfa0', '0555a1bb-8f88-422c-8965-6cda3c0943b6', NULL, 24, 3, 3);
INSERT INTO public.student VALUES ('85a5a2e0-c6ca-49bb-bd8b-6ded878910c0', '20b40579-85d2-40ef-899f-3cebb5d572fa', NULL, 43, 5, 4);
INSERT INTO public.student VALUES ('8797d3dc-985f-4578-9597-e41c291a80ee', '5ab07350-f3df-4481-aa96-a984e2520a99', NULL, 16, 2, 3);
INSERT INTO public.student VALUES ('88238d17-7c5b-4980-976e-ddb7e128a1b8', 'aece9f08-b0f0-4ea4-bafe-64c93466f11a', NULL, 18, 2, 4);
INSERT INTO public.student VALUES ('8874dcaa-66bd-4318-8a9e-0523952afde4', '9be12c09-edf8-4e1e-809d-8eb8fe029020', NULL, 33, 4, 4);
INSERT INTO public.student VALUES ('88b9586c-f428-4d80-8a17-1a0d198dded1', 'f4a17dfb-1b96-4877-8c09-cafa419c302d', NULL, 40, 5, 3);
INSERT INTO public.student VALUES ('8aab2e94-d3b3-4422-bd85-21a1e80242c2', '055cd344-ae24-4aef-9446-bfa13c9f2f58', NULL, 7, 1, 3);
INSERT INTO public.student VALUES ('8d448874-8cbc-4007-90a0-ca46e162ff70', '5941e612-a2d5-4a1d-a82e-96d197fa21b5', NULL, 43, 5, 4);
INSERT INTO public.student VALUES ('8ddd6d1b-1e57-45f8-b360-8b409072f504', '183ec4e5-e439-47cc-a559-14d06e7d2aac', NULL, 1, 1, 2);
INSERT INTO public.student VALUES ('8e682aec-f8c4-403a-ab5f-1e883f182253', '6b606471-525c-4313-adae-f07ef5920bfa', NULL, 43, 5, 4);
INSERT INTO public.student VALUES ('8f70b01a-d9fa-4b7d-bd93-6fe228a62ade', '11e28a5e-fa10-4d51-8fa6-9f30b6548ff7', NULL, 5, 1, 3);
INSERT INTO public.student VALUES ('92bc4850-3e8b-43de-991c-cbc0cbfc2973', '9f2587f1-3c7e-454e-a9ff-b68460826f94', NULL, 24, 3, 3);
INSERT INTO public.student VALUES ('936216a8-03fd-4ab8-b2d1-cc6a2819176d', 'ef6a181e-48a7-48d9-b698-ed264086eeb1', NULL, 32, 4, 2);
INSERT INTO public.student VALUES ('71fc2b04-67e2-416b-9b07-2ff620028182', 'e84f02a6-e5b7-4d22-a43e-b44077f734e8', 'TK-45-01', 3, 1, 2);
INSERT INTO public.student VALUES ('1cef610c-c53c-40b1-8ac7-6c1efe406daf', '62dad917-672c-4212-abfc-8dada39edfc0', 'TK-45-05', 34, 4, 4);
INSERT INTO public.student VALUES ('61338313-3120-4179-8ea6-c34ba0d99dcb', 'f8bfc20c-b9e5-4e5b-aefe-5d6204607d59', 'TK-45-05', 34, 4, 4);
INSERT INTO public.student VALUES ('08194b9e-2871-4860-8551-b6e9b6f56cbd', '1b2d1c22-549c-42b2-8cb8-9a2a85441ffe', 'TK-45-06', 38, 5, 3);
INSERT INTO public.student VALUES ('11fafbd4-9643-45f6-adba-2c29390f8081', 'c930d19f-08cb-42c2-ba64-319d0963742d', 'TK-45-06', 39, 5, 3);
INSERT INTO public.student VALUES ('29ff8c27-1307-4e86-93c7-750edbe466e8', 'b16a308c-6823-465a-929d-f4a9812081eb', 'TK-45-05', 39, 5, 3);
INSERT INTO public.student VALUES ('760a7e98-3f32-4383-ad68-7458b46f84cc', 'e02ac8e4-f1f3-4252-85d4-7f72faa7ca43', 'TK-45-02', 14, 2, 3);
INSERT INTO public.student VALUES ('21597d8a-fd2b-4a67-b933-4ae5b02dda89', 'eefd78ff-6c61-4c3d-94a8-f4c6601d0ae0', 'TK-45-05', 36, 4, 4);
INSERT INTO public.student VALUES ('0a6a875d-037a-4ddc-b0b3-35c01621035f', 'c9a781e8-965f-427a-a0ab-da3933460dfd', 'TK-45-05', 3, 1, 2);
INSERT INTO public.student VALUES ('81f7501c-6f78-4f0b-8cc7-806073bb5d3b', 'a2679f3b-4ffc-4a72-a850-f928de386dd8', 'TK-45-01', 1, 1, 2);
INSERT INTO public.student VALUES ('6d9de2b8-dc62-4285-94fc-661420864ddc', 'db74c675-f54f-46c1-a59b-d54918a1b327', 'Tk-45-01', 29, 4, 2);
INSERT INTO public.student VALUES ('652dcaca-f030-446d-a483-8ac851faa79a', 'add61e4c-bb8c-4e87-a3a5-b8f6debba791', 'TK-45-02', 18, 2, 4);
INSERT INTO public.student VALUES ('675f0992-61e4-4b5b-b613-989c5cb6c438', '29a4ce84-69d2-4751-b063-c4c234fb4971', 'TK-45-01', 30, 4, 2);
INSERT INTO public.student VALUES ('602868af-0f82-42f3-851d-ec6837c26b75', '464b8efb-df0b-4859-a2f5-cebb1bbf1357', 'TK-45-04', 1, 1, 2);
INSERT INTO public.student VALUES ('448eb646-fd9a-47b7-965c-6413d669e074', 'd154d382-8838-42c9-b30e-cb2e2ae99ce2', 'TK-45-03', 44, 5, 4);
INSERT INTO public.student VALUES ('8a6ee596-1724-45ad-b495-096ede6bd53e', '68e7fa31-c028-46a8-9315-0b3dfd97be57', 'TK-45-01', 23, 3, 3);
INSERT INTO public.student VALUES ('024eea18-c484-49ab-8548-4c782be36115', '2aeb2e15-8dbe-402d-94c2-fae34897d73e', 'TK-45-05', 36, 4, 4);
INSERT INTO public.student VALUES ('69fc02a7-af8a-4939-b366-20ce4ec5eea1', '869eea8e-a421-44d9-b3af-246c5eac40ce', 'TK-45-01', 29, 4, 2);
INSERT INTO public.student VALUES ('354e3b7b-309c-4d9d-9098-c983bb2f1e84', 'c3ee6172-ad06-4633-8e9a-9d8cb02517e4', 'TK-45-05', 26, 3, 4);
INSERT INTO public.student VALUES ('7ab73913-a6f3-46ff-acd3-c18cee0b4c31', '0c31dad7-fb20-4a3b-8c66-cb6ddb8fe52e', 'TK-45-02', 18, 2, 4);
INSERT INTO public.student VALUES ('59a81368-89cc-477a-b06c-00129a6944de', '97620bae-cba1-4a17-a3a5-4c9c0314b41d', 'tk-45-01', 17, 2, 4);
INSERT INTO public.student VALUES ('69cb96b7-5d78-46a8-bf32-c3372259b95c', '8122ffca-b4c2-4877-9d79-9f5dc2f9a864', 'TK-45-05', 19, 2, 4);
INSERT INTO public.student VALUES ('1bb25d2b-f204-44ba-bacc-f3e384b56eac', 'cbc3b84d-8316-4464-b5a0-683dc73b1fc6', 'TK-45-05', 39, 5, 3);
INSERT INTO public.student VALUES ('586e9e09-f3eb-43e0-b5f5-67ae3d6c258a', '968eb2e5-f74e-4db0-b49e-c9500671896e', 'TK-45-03', 40, 5, 3);
INSERT INTO public.student VALUES ('8455449f-2cdb-449d-87a3-9e63e27a0fc4', 'e21d99b8-51e9-4642-93af-a9f26a5cb3c3', 'TK-45-01', 4, 1, 2);
INSERT INTO public.student VALUES ('8ab303b4-afac-469e-ae55-dbc0a2551541', 'f7cdbb35-8f21-4618-b64d-3e36375ed18c', 'TK-45-06', 44, 5, 4);
INSERT INTO public.student VALUES ('5e501775-56f9-42e1-9d1c-b304427be815', '2bf40059-11d5-49f6-973b-535a945cb785', 'TK-45-02', 31, 4, 2);
INSERT INTO public.student VALUES ('90b83e6c-39be-4e3c-9a52-8ba1e18d25cd', '2e419dd4-15ec-4dcd-93e4-47d7e594d77b', 'TK-45-04', 12, 2, 2);
INSERT INTO public.student VALUES ('39f96cc0-589e-417b-8c3e-ac9a1179d655', 'c1ff9ef0-b967-4f26-9a29-03fffba5c350', 'TKX-46-01', 32, 4, 2);
INSERT INTO public.student VALUES ('296a2beb-3d7c-431d-bb16-7eb74354661c', '21e68af6-60a5-4898-ac3c-43e5bd0ff645', 'TK-45-03', 26, 3, 4);
INSERT INTO public.student VALUES ('73ec3d5a-18a6-41db-88b6-ba45e397989f', '95e6f6df-24bf-4699-b09b-09d3e56f4662', 'TK-45-03', 25, 3, 4);
INSERT INTO public.student VALUES ('0bbf98dc-e951-4348-9799-001152c3ea59', '6060d1ea-8fdb-4ef8-a2e5-05ea5ffec228', 'TK-45-02', 30, 4, 2);
INSERT INTO public.student VALUES ('94024e7d-eb03-4f10-983c-2c7b69e88cd1', 'e9e69c81-1bab-409f-856e-e1fd4112974a', NULL, 2, 1, 2);
INSERT INTO public.student VALUES ('946c84c2-8bc4-4fa9-87c1-2979066ac448', '13346232-0556-4fa8-8d83-91d89ef16ec0', NULL, 11, 2, 2);
INSERT INTO public.student VALUES ('95005ed0-8de7-4592-ac19-6f47f227264f', '8204287c-5a06-4fd6-a474-c8fc066397d1', NULL, 36, 4, 4);
INSERT INTO public.student VALUES ('9dace393-b0f7-4704-9019-3e64535fc0d4', '4afe69c1-57f9-4505-91bc-7fec6fc6d507', NULL, 10, 2, 2);
INSERT INTO public.student VALUES ('a13b242b-fec7-4648-89c8-4504ee9f0763', 'db184c93-9260-41c9-be14-461816fd5d96', NULL, 11, 2, 2);
INSERT INTO public.student VALUES ('a36c0369-832a-4f55-9229-12d198c1ea01', '64e39a49-ab77-4ab8-8e61-8691e1753c22', NULL, 15, 2, 3);
INSERT INTO public.student VALUES ('a3a8063a-33d0-4190-8569-483a7929882c', '0f3bd64b-4284-4563-ab1e-9dad95c2f903', NULL, 23, 3, 3);
INSERT INTO public.student VALUES ('a4ca3698-4b0f-4365-a1d6-de117a5303d4', '3c43bf73-7435-4f9a-8bd7-318bb64a80e7', NULL, 36, 4, 4);
INSERT INTO public.student VALUES ('a8a553c4-126a-4ebf-b0be-f71e91366ccb', '2a93e77f-da05-47b8-b454-d506bec3ed2b', NULL, 27, 3, 4);
INSERT INTO public.student VALUES ('ab455f69-af8b-48dd-9402-f57263626417', 'dfa492eb-6dbc-44b2-aea5-6e4402c1ced1', NULL, 21, 3, 3);
INSERT INTO public.student VALUES ('ad44b9a1-6e6f-4bcd-a4d5-5b42d9d9b0df', 'c0447ff0-0a2b-4157-9529-da90abec4863', NULL, 29, 4, 2);
INSERT INTO public.student VALUES ('b4d76d32-10e6-4756-9041-22fa0c0d888d', 'eb353447-af9e-4a16-967e-7272d4081da7', NULL, 6, 1, 3);
INSERT INTO public.student VALUES ('b610c83e-0c40-4138-a338-9e30b86c9c6f', '7741617b-a18a-417c-855f-7d12e6e72cd8', NULL, 10, 2, 2);
INSERT INTO public.student VALUES ('b80422be-e773-4e22-af68-1a8f77ea4364', '38b18c68-e082-4fd1-8a17-e27e31f143a8', NULL, 41, 5, 4);
INSERT INTO public.student VALUES ('bdea13ed-266f-4c65-8436-7abff6c1a086', 'ca5bf518-ff91-4cdf-b66e-11486ad04802', NULL, 35, 4, 4);
INSERT INTO public.student VALUES ('be63eab3-f9f7-4f97-affa-7c8811ec0606', '4371f459-38d1-4d40-b001-79b017414056', NULL, 4, 1, 2);
INSERT INTO public.student VALUES ('bedfafec-b9c0-4d95-9d44-f68fdc510ac1', 'cd114468-5a83-42c6-8afe-19df71cc5bcf', NULL, 33, 4, 4);
INSERT INTO public.student VALUES ('bfc0c806-13f3-43cb-81de-16655994e5e9', '2101d7f3-0bf9-4403-9599-fba8a8ae09db', NULL, 10, 2, 2);
INSERT INTO public.student VALUES ('c141319f-47eb-4aaf-8d20-799e81e81ca9', 'c13faed5-8b0a-443b-8530-de429f39a4fc', NULL, 7, 1, 3);
INSERT INTO public.student VALUES ('c161d558-6f74-4f8b-919d-a6658c3cb088', '2afe3f9f-b578-4c4c-9bdf-083f38eefe45', NULL, 15, 2, 3);
INSERT INTO public.student VALUES ('c2472ea5-26cc-4b22-9808-d2037812d3c3', '39017351-14ca-4e72-8550-7874d94ab961', NULL, 0, 6, 2);
INSERT INTO public.student VALUES ('c6450bc6-80c5-4030-bb78-ddbd627c9b79', '2cb0e5af-52b3-48bf-bf16-7915e453136f', NULL, 6, 1, 3);
INSERT INTO public.student VALUES ('c6986d5c-a927-4070-9007-80312fbf004e', '4e7bf3b8-eadb-4cb3-aa3f-02bf2ad70fce', NULL, 31, 4, 2);
INSERT INTO public.student VALUES ('c8c75af8-20a4-46b4-9c44-c483e18a6a46', '158bdc20-2951-4b81-9b0b-2051b891e158', NULL, 42, 5, 4);
INSERT INTO public.student VALUES ('c8e1e75e-c4fa-40e3-b66c-20923ff9017f', '225ee408-bdd2-4360-b5b8-2b0eca4f7001', NULL, 17, 2, 4);
INSERT INTO public.student VALUES ('d1929b00-34ec-4cca-b6ef-f2c5e155cb39', '14176c89-0dd8-493c-a5a5-7fc797ab44e9', NULL, 20, 2, 4);
INSERT INTO public.student VALUES ('d2616b30-9e1a-4341-b093-0d55e68eba61', '111dd4af-3dbc-4dbb-89bf-96ca37c6e62a', NULL, 8, 1, 3);
INSERT INTO public.student VALUES ('d3a40254-8699-4557-947d-1068ed0cacb2', '5c1dd55b-41df-4f4a-b73b-2a625506c10c', NULL, 0, 6, 3);
INSERT INTO public.student VALUES ('d4815544-6b1e-4136-a456-581d497a2c3c', 'c152ca58-3caa-4359-b719-8064410402af', NULL, 17, 2, 4);
INSERT INTO public.student VALUES ('d4daa625-f9fe-485e-866b-d5b33cd0f926', 'b0e02f85-a939-4188-86fd-340ecc601a96', NULL, 3, 1, 2);
INSERT INTO public.student VALUES ('d74a36f3-39ae-41d7-9859-7d770ccf7422', '351d8c64-e517-4856-b812-4a0d6c7c2f66', NULL, 16, 2, 3);
INSERT INTO public.student VALUES ('d9d5df69-4008-4504-9524-a9e68682eeb8', '17d0e440-325b-4e68-8f75-f3067744df15', NULL, 20, 2, 4);
INSERT INTO public.student VALUES ('d9dbcebe-8f24-42ec-b169-118a50cfeb89', '3972bd62-08fa-4e86-b6f8-61486601f391', NULL, 27, 3, 4);
INSERT INTO public.student VALUES ('da209847-f4e4-406a-8453-8dce6dda4007', '7afcc64c-76c7-44c7-b0c7-79ad8d0d3d0e', NULL, 28, 3, 4);
INSERT INTO public.student VALUES ('dc86ef66-af92-4139-89e1-0a3a1c60cab4', 'a6a4d181-fce8-49aa-a4c4-a2cb992d4961', NULL, 14, 2, 3);
INSERT INTO public.student VALUES ('ddb5633c-de02-4bfe-ab35-814bea89a1c0', 'a6407fb2-8836-4a0e-b578-55636258f955', NULL, 32, 4, 2);
INSERT INTO public.student VALUES ('ddbc2a0c-8808-47b7-98a5-efe5007bf688', '45c67861-ac20-4ad7-8e98-31f795b7c4bb', NULL, 29, 4, 2);
INSERT INTO public.student VALUES ('e1711913-4449-424e-9971-0dc1b2df54ec', '0cea1243-cca1-4ac4-95f5-bc2dcde29ab4', NULL, 38, 5, 3);
INSERT INTO public.student VALUES ('e2608986-a747-478a-9881-318216e2da3f', '00f0a1ab-4a3e-4424-a963-d59ffac94e82', NULL, 34, 4, 4);
INSERT INTO public.student VALUES ('e571a26e-45ce-4ec2-838b-a6ddccb4f203', '2faf9cad-db79-4136-90d3-eaca063644f1', NULL, 35, 4, 4);
INSERT INTO public.student VALUES ('e7aabfd6-08b4-4c1e-a5fd-fa58f0f5e1df', 'b77549a6-56e5-4c2e-899f-b9fdcd349521', NULL, 41, 5, 4);
INSERT INTO public.student VALUES ('e831d1a2-28cb-40b3-bebc-c98bf8493fef', '3349d4e4-f0d2-4b1b-b81d-5a4463fe08e4', NULL, 9, 2, 2);
INSERT INTO public.student VALUES ('e8ce74d6-aa71-439b-85a0-3104e7596e15', 'd6212ffe-84c3-4e25-8999-adc7e36b0bce', NULL, 21, 3, 3);
INSERT INTO public.student VALUES ('e8e996c6-ce01-4844-8160-ab954f71daa3', '928f8188-1a15-4f53-88ce-fa6e9f2ec02f', NULL, 42, 5, 4);
INSERT INTO public.student VALUES ('e92c3b78-27ea-4f7f-bef1-adee943274c8', 'fbd4b03f-9036-4bff-ba7a-c6af507047e6', NULL, 26, 3, 4);
INSERT INTO public.student VALUES ('ebc42502-3cf7-4ca4-8149-635d8d9f6713', 'd7d16572-2367-4262-ab73-74bb6fbd9f96', NULL, 32, 4, 2);
INSERT INTO public.student VALUES ('ec2ede40-d833-41d6-a7e3-3b7fb3d29c4f', '2e7190d3-f000-41e9-83e7-673731b00bc1', NULL, 28, 3, 4);
INSERT INTO public.student VALUES ('ee3b7bb5-127b-40d8-adb4-8dded40b28a2', '822f0314-18a4-44e5-a121-d0c765e37f47', NULL, 7, 1, 3);
INSERT INTO public.student VALUES ('f4dbe7e1-5c0f-4815-96fd-1f1374b48c29', 'c5811fd6-a0d1-47b4-8f97-9b4e33e89fd8', NULL, 25, 3, 4);
INSERT INTO public.student VALUES ('f6eefd73-1592-48fd-99be-a915f24c5b7c', '649d0ec0-06fa-4631-8d3e-c5c6de050e83', NULL, 8, 1, 3);
INSERT INTO public.student VALUES ('f724e7f4-76f2-48e9-93d0-c9b6f4b47a78', '664cc3ad-b89e-4a1e-b32d-dd4bef06553e', NULL, 22, 3, 3);
INSERT INTO public.student VALUES ('f7ad0bef-ff5c-49b4-a443-8aef910a7a82', 'b44546cc-c824-4f26-bba4-e631214f382c', NULL, 23, 3, 3);
INSERT INTO public.student VALUES ('f9752fa8-e1ec-445d-aee8-67979f69a807', '2999454d-0987-44d3-9927-9ebc51d0ceb6', NULL, 12, 2, 2);
INSERT INTO public.student VALUES ('fae04374-5165-448e-840e-5771a58e3884', '418d2792-019d-4018-98ef-2f1138229007', NULL, 13, 2, 3);
INSERT INTO public.student VALUES ('fc260979-cf70-4d03-8c63-34c217b4733e', '90629d4c-1d41-4c4c-99bc-0a3ea9dbd4f1', NULL, 5, 1, 3);
INSERT INTO public.student VALUES ('fc2de8b4-0286-492c-a54c-5fdd4cfac5ae', '9e3b0787-7fb2-4d98-8f9a-022087275667', NULL, 22, 3, 3);
INSERT INTO public.student VALUES ('feb68149-4e41-44ae-b58d-5679329c1102', 'bf757bf6-22af-467b-a975-0fa66273094a', NULL, 13, 2, 3);
INSERT INTO public.student VALUES ('1942cb5c-82c2-479f-b7c8-eef3b3512549', '3c70aa21-9a7c-47a4-aea4-2895638d6d37', 'TK-44-06', 0, 6, 1);
INSERT INTO public.student VALUES ('b6d78b0c-2c8d-4d5f-ac16-215647011bd3', 'c086fcc5-edf3-4fe0-bf83-bfe21a383fbc', 'TK-45-01', 22, 3, 3);
INSERT INTO public.student VALUES ('7a2c65e3-527f-42ef-ba28-afec3e632d7b', '768d8b84-035c-4649-9682-505339150c3e', 'TK-45-06', 6, 1, 3);
INSERT INTO public.student VALUES ('fc19b85b-4ce4-4653-8875-eb6798fd0b41', 'a61e4660-d0b4-44cd-8add-332942ef3837', 'TK-45-03', 25, 3, 4);
INSERT INTO public.student VALUES ('a48b81c6-7848-4d73-ad0b-d7dd2218fe44', '3c481f2f-3962-4780-bd9c-70f68c829a75', 'TK-45-04', 12, 2, 2);
INSERT INTO public.student VALUES ('f03e3ef3-de2e-4442-9a15-f5d3827e73f2', 'a6648989-cbb2-4c37-b31e-6b249da504b5', 'TK-45-01', 28, 3, 4);
INSERT INTO public.student VALUES ('edb236c4-454b-4e8a-8caf-d7f3e7fea396', 'b7d1ba27-bdad-43e8-b9e5-81d338858bac', 'TK-45-05', 35, 4, 4);
INSERT INTO public.student VALUES ('bfd0e22b-74e8-467a-a314-87f8ac653637', '0f728847-334f-4499-8515-7616f385d0a2', 'TK-45-04', 2, 1, 2);
INSERT INTO public.student VALUES ('a54db17a-2d49-4ede-ac23-eb7057345ee7', 'e2253199-7c7e-4ebc-b475-d70d7392ea45', 'TK-45-04', 38, 5, 3);
INSERT INTO public.student VALUES ('0e0b0fe1-3485-44bf-ac7d-4bdfb3388ab8', 'ab6aca93-e173-435b-9aaf-1bfcc1c4ef42', 'TK-45-02', 19, 2, 4);
INSERT INTO public.student VALUES ('ea994389-ac70-49e0-9e95-0efafb836471', 'b764de4a-8769-429d-b354-293968e48480', 'TK-45-02', 2, 1, 2);
INSERT INTO public.student VALUES ('d1a1f56c-ed79-4e51-be8f-b1c0206aae1d', 'b6e42f4a-1951-4613-b87e-6f3c9b538861', 'TK-45-05', 38, 5, 3);
INSERT INTO public.student VALUES ('3f863fff-e470-4870-8612-9e298b028b37', '3952ad8b-d2c3-444d-aa8e-0c45e54e3a53', 'TK-45-04', 40, 5, 3);
INSERT INTO public.student VALUES ('32a0c702-fe7f-4eb2-a6d9-dfe42bc4d126', '69dfd4d0-c9c4-4b93-bbf2-0ad7471f0a3f', 'TK-45-03', 44, 5, 4);
INSERT INTO public.student VALUES ('aa385c52-63a4-47cd-acea-bd665a0036d2', '8f186478-c18e-4ac5-9ad3-2b9fa4ada8be', 'TK-45-05', 34, 4, 4);
INSERT INTO public.student VALUES ('be9d365d-acda-46bc-b9aa-e77f53c7cfc7', '87f58b43-4dcd-4c3d-b30e-4f3475d6ce0e', 'TK-45-03', 22, 3, 3);
INSERT INTO public.student VALUES ('a2c3d372-01c7-4c4a-ab4d-3051adaece9c', 'c12e2b5a-84d1-4051-bd71-7811a33df90d', 'TK-45-04', 12, 2, 2);
INSERT INTO public.student VALUES ('9e3f4cd8-6f6a-44a7-b7d9-1b4ad3aa8ba3', 'e8a302fd-d750-41d3-b79b-2a6e91b01b3b', 'TK-45-04', 37, 5, 3);
INSERT INTO public.student VALUES ('b6c47359-e794-4f52-9cc6-d4a8c14583c6', '8455bb09-77fe-4026-99ab-1f65f5d6aeee', 'TK-45-04', 1, 1, 2);
INSERT INTO public.student VALUES ('4457956d-c5a1-42c7-a13a-db09f5177d39', '89b9d58a-6910-4b6f-885c-f74c2352d895', 'TK-43-06', 13, 2, 3);
INSERT INTO public.student VALUES ('e05757e6-f6af-44ac-9af6-f4c093c34623', '7b6dbf81-0fb6-48f8-aebf-02febe60b89e', 'TK-45-04', 10, 2, 2);
INSERT INTO public.student VALUES ('c41937e7-30e9-4dce-b03b-7082c19db76b', '655779d6-095f-4b60-880e-a2c9755541ca', 'TKX-46-01', 20, 2, 4);
INSERT INTO public.student VALUES ('d4ea6f0b-4ec2-41ed-b922-e75403441989', '8d4dfac8-2adc-4db3-b020-7c91123f07b4', 'TK-45-01', 4, 1, 2);
INSERT INTO public.student VALUES ('d3a39ba4-345c-410a-a2a0-0514385978aa', '1e63bea4-257a-426c-8913-4b15d0004830', 'TK-45-03', 24, 3, 3);
INSERT INTO public.student VALUES ('dd125722-aff1-4aef-9974-a99dbe4c1d21', '42188308-49c3-469f-a8b0-4fd60eb2a585', 'TK-45-06', 23, 3, 3);
INSERT INTO public.student VALUES ('1ff2d510-ed63-4a04-8ff1-5336f43e454f', '8b9e96d3-b1e7-43ca-a8ab-1fe97bfe0912', 'TK-45-03', 43, 5, 4);
INSERT INTO public.student VALUES ('ba238f23-2f9d-4d4f-829f-c5b4710c4b6d', 'd433b746-ec97-4685-a8e9-acc339a82503', 'TK-45-02', 19, 2, 4);


                                                                                                                                                                                                                                                                                                                                                                      3375.dat                                                                                            0000600 0004000 0002000 00000271246 14513257404 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO public."user" VALUES ('54a6b5bf-4955-463d-9c07-69f031e41938', '1103202211', '1103202211@student.telkomuniversity.ac.id', 'Giovanni Nathaniel', '1103202211', 'AEzWhGtmEjmq8m/pV0aJR4wwUGClyKwX3ukdAeWW1Oqm9PgqK2+y5pLNLawH7ssylg==', 'Assistant', '081977691607', NULL);
INSERT INTO public."user" VALUES ('682a67c1-d270-48c6-bc20-16e012029274', '1103201244', '1103201244@student.telkomuniversity.ac.id', 'Muhammad Hilmy Aziz', '1103201244', 'AAbYKmBHn2v5+qLEB/t4wPgHOd4dnJ58IQEfS4CWOgbwuK1rkCMfTXUCM5+dckX7dA==', 'Assistant', '089654491695', NULL);
INSERT INTO public."user" VALUES ('7e23f9f6-7dda-48c4-a72e-1713e3073594', '1103200110', '1103200110@student.telkomuniversity.ac.id', 'Lazzuardi Sholehuddin Nursuhud', '1103200110', 'AHDgqtNvgkK4UgqAdbULuOWwDCBUisosESoWPCmIYRZTtJFlwIu4trNaBfYgO3zMbg==', 'Assistant', '085939531660', NULL);
INSERT INTO public."user" VALUES ('7e9c7497-4098-47ca-8a0d-dc15be88dbb7', '1103204040', '1103204040@student.telkomuniversity.ac.id', 'Muhammad Tharreq An Nahl', '1103204040', 'ACImjupA4jd+l96OxfNedagjfZj9esaWvTWQNJs54HUmKZeq7ODXL0SKaq8/LURC1g==', 'Assistant', '082256403992', NULL);
INSERT INTO public."user" VALUES ('83b7ede9-28a7-43a2-8de0-e06962e0ca23', '1103204104', '1103204104@student.telkomuniversity.ac.id', 'Akbar Prastowo', '1103204104', 'AFCRkarkse+V7pK4cOYJaIoQ3IZw95/1SBRcj+jEitmZ85UBxYWDR9pAHvluOwPhmQ==', 'Assistant', '085773375384', NULL);
INSERT INTO public."user" VALUES ('21e68af6-60a5-4898-ac3c-43e5bd0ff645', '1103213003', '1103213003@student.telkomuniversity.ac.id', 'Arif Muhammad Laduni', '1103213003', 'AJ+g0X6GJMwwB9DkPg5Q9JP186qWUit9bcTc0M4AY9NaZj6E00bo8TpRbKvMXMQw/Q==', 'Student', '+6289606476304', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIyMWU2OGFmNi02MGE1LTQ4OTgtYWMzYy00M2U1YmQwZmY2NDUiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4MzcxNywiZXhwIjoxNjk3MzkwOTE3LCJpYXQiOjE2OTczODM3MTd9.4VszLpDhWzvZiadeLmqYwZrvIlg7A7GA-tXGToGL7RI');
INSERT INTO public."user" VALUES ('111dd4af-3dbc-4dbb-89bf-96ca37c6e62a', '1103213149', '1103213149@student.telkomuniversity.ac.id', 'Daffa Fathir Fajri', '1103213149', 'AMeI4gBlQY04gAGvIIAzHC9qeZXmwiA7RTrWyVoCBjYckiqgTF3qbqqaXQrJeT/Cjg==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIxMTFkZDRhZi0zZGJjLTRkYmItODliZi05NmNhMzdjNmU2MmEiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzQzMzc4MiwiZXhwIjoxNjk3NDQwOTgyLCJpYXQiOjE2OTc0MzM3ODJ9.UZZrkZ88eaMh3UtDEoUNv0bTc05HLxen5Ma0hiJoUHo');
INSERT INTO public."user" VALUES ('9c13d239-3a24-4979-9b62-070e9a986c99', '1103201246', '1103201246@student.telkomuniversity.ac.id', 'Muhammad Haekal Panderadja Pasi', '1103201246', 'AJfLPIF23XL6JplWR3PzcRfbEB9Jzzc1AwJCfE4uTsZV5wRaKI7MF+F+QStMrYwTaA==', 'Assistant', '085794172533', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI5YzEzZDIzOS0zYTI0LTQ5NzktOWI2Mi0wNzBlOWE5ODZjOTkiLCJyb2xlIjoiQXNzaXN0YW50Iiwic2VlbGFic190b2tlbiI6Ijc1Ym8zMTBocTQ5NjYwamNvNTZ1bXBuZDE2OHJnc3NmIiwibmJmIjoxNjk3NDM2MDkxLCJleHAiOjE2OTc0NDMyOTEsImlhdCI6MTY5NzQzNjA5MX0.6i3ymdlx0L3ixEHxviMMbYn4I91vBmNQW_KJCctWQ8E');
INSERT INTO public."user" VALUES ('442bbc33-4fae-4684-8119-453117234973', '1103204166', '1103204166@student.telkomuniversity.ac.id', 'Harits Maulana Muzakki', '1103204166', 'AHB7Px08ZeN9MJXdbfpBAX0asDCmvmClhVsXYccrZXV12cP+Dem1+v/iVcYz7imCBQ==', 'Assistant', '085161746300', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI0NDJiYmMzMy00ZmFlLTQ2ODQtODExOS00NTMxMTcyMzQ5NzMiLCJyb2xlIjoiQXNzaXN0YW50Iiwic2VlbGFic190b2tlbiI6IjUxOGU1Mm5odTBtam5xdTVjc21zdTZvaWcxN2RrbmRoIiwibmJmIjoxNjk3NDUyNzg3LCJleHAiOjE2OTc0NTk5ODcsImlhdCI6MTY5NzQ1Mjc4N30.TP4DSrjznGllGaZAB_4WIsOB7UwBhAnvyfnwAoMRxd8');
INSERT INTO public."user" VALUES ('11e28a5e-fa10-4d51-8fa6-9f30b6548ff7', '1103200148', '1103200148@student.telkomuniversity.ac.id', 'Ahmad Luthfi Muhajir Munandar', '1103200148', 'AIfMjvA3X8PoMLsAyPvM0luxxe2Magwn+sw3h42jT4KBi5q/lMR85lbC27OUxO1xzA==', 'Student', NULL, NULL);
INSERT INTO public."user" VALUES ('184657e3-564e-4f63-895f-588bd3e2a9ed', '1103202020', '1103202020@student.telkomuniversity.ac.id', 'Topaz Tauhid', '1103202020', 'ANYpDTJ2HypNaIo5DW/d4ms82ANOHD6YYcEt7D+n3nXcMd53bKw4IBkeZxyT2nwedw==', 'Student', NULL, NULL);
INSERT INTO public."user" VALUES ('0555a1bb-8f88-422c-8965-6cda3c0943b6', '1103213130', '1103213130@student.telkomuniversity.ac.id', 'Ibrahim Bintang Rismayadi Putra', '1103213130', 'AGObTRU0+8uKv4LSFqZlyvi2pOKLCYeK5r2UfbzyKc63X3t17VlgIdIxGDHbJ2+I8Q==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIwNTU1YTFiYi04Zjg4LTQyMmMtODk2NS02Y2RhM2MwOTQzYjYiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MTE3NCwiZXhwIjoxNjk3MzU4Mzc0LCJpYXQiOjE2OTczNTExNzR9.8DLraAmPpb3wkKi03BPVKx3WGg6IhQ3lZgU1f1GXeI4');
INSERT INTO public."user" VALUES ('183ec4e5-e439-47cc-a559-14d06e7d2aac', '1103210052', '1103210052@student.telkomuniversity.ac.id', 'Kinanti Rahayu Az-Zahra', '1103210052', 'AL16paXbGt2vxcibgvEHa7HiRgzqJIvjr20VFF4NmvGgQV1Z2iJCfthy0T6O6mwsWA==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIxODNlYzRlNS1lNDM5LTQ3Y2MtYTU1OS0xNGQwNmU3ZDJhYWMiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1NTgwNywiZXhwIjoxNjk3MzYzMDA3LCJpYXQiOjE2OTczNTU4MDd9.uPSZN6szR4taUgEsjjme-RsCxO7uV6XONwc52gqzzgc');
INSERT INTO public."user" VALUES ('0f728847-334f-4499-8515-7616f385d0a2', '1103210185', '1103210185@student.telkomuniversity.ac.id', 'Nella Aprilia', '1103210185', 'AEwvMBdRxUMRL8cTx82JIKJDNK921CbxWtzywZLkMpz/tChmPcDBSkZFHQdZsqgepw==', 'Student', '081316459043', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIwZjcyODg0Ny0zMzRmLTQ0OTktODUxNS03NjE2ZjM4NWQwYTIiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1ODQ2MCwiZXhwIjoxNjk3MzY1NjYwLCJpYXQiOjE2OTczNTg0NjB9.ToBxaR2zx-W2oriQVzALJvaH-9bglrKNeqvU3RF_A4o');
INSERT INTO public."user" VALUES ('0be8b7c7-bb8d-4c33-858d-5fb699c3b6b4', '1103210031', '1103210031@student.telkomuniversity.ac.id', 'Ikhsan Meiza', '1103210031', 'ADUyjzUCmA2ZE8CMBEULwYev3B3StEQY7fmYWnDL/gaHSfr9gFIkgGiM7USDBmU6EQ==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIwYmU4YjdjNy1iYjhkLTRjMzMtODU4ZC01ZmI2OTljM2I2YjQiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3NDA0MCwiZXhwIjoxNjk3MzgxMjQwLCJpYXQiOjE2OTczNzQwNDB9.9xeEMkHVDQ3B5bm5iJa3eZeN74URvvev5iBFWhvqx3w');
INSERT INTO public."user" VALUES ('0f3bd64b-4284-4563-ab1e-9dad95c2f903', '1103213118', '1103213118@student.telkomuniversity.ac.id', 'Rafiandi Normansyah', '1103213118', 'AKxTPMIOUA12KBcEevhhqFbg/rZYm1QNMATBQi5y3i+BLqqp7czzz1sV73bm/wSzsA==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIwZjNiZDY0Yi00Mjg0LTQ1NjMtYWIxZS05ZGFkOTVjMmY5MDMiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3MDMzOCwiZXhwIjoxNjk3Mzc3NTM4LCJpYXQiOjE2OTczNzAzMzh9.WfdpX61lBh5XBVfcItNJMJVQhWiOx5j3XzR3Y6QRwPE');
INSERT INTO public."user" VALUES ('13346232-0556-4fa8-8d83-91d89ef16ec0', '1103213070', '1103213070@student.telkomuniversity.ac.id', 'Mohamad Rayi Dwi Putra', '1103213070', 'AGbsE5YOq9CDpnOi4WY40TiutwL5UJZS75h4u0tj+Vzkq3HwUu5EvwU7HQv4BRz7QA==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIxMzM0NjIzMi0wNTU2LTRmYTgtOGQ4My05MWQ4OWVmMTZlYzAiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3NDM3OCwiZXhwIjoxNjk3MzgxNTc4LCJpYXQiOjE2OTczNzQzNzh9.utr7ceviBbiF6ePI0izrgLwqHeMnUbKp8YfWiED7tHk');
INSERT INTO public."user" VALUES ('1e63bea4-257a-426c-8913-4b15d0004830', '1103213160', '1103213160@student.telkomuniversity.ac.id', 'Iffat Dzikra', '1103213160', 'AFT9WnybrC/cIgKpuXbf62mqPL3O39HdtAFpttcZn8fd/I0xEST3iq1V/IH3Yd88CA==', 'Student', '082347577983', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIxZTYzYmVhNC0yNTdhLTQyNmMtODkxMy00YjE1ZDAwMDQ4MzAiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3NjgyMiwiZXhwIjoxNjk3Mzg0MDIyLCJpYXQiOjE2OTczNzY4MjJ9.7V2mFB8h1lHIAMjUkRweyC58_kzE88oYG3g7qpV_Gnk');
INSERT INTO public."user" VALUES ('0cea1243-cca1-4ac4-95f5-bc2dcde29ab4', '1103210235', '1103210235@student.telkomuniversity.ac.id', 'Fahrul Rozi', '1103210235', 'ADHmycpI6vUjrZw4bUWvCWVUCkB5u3OYnSBNGvU31E3LTmwVUGnb6+aXcM7JHHcN2w==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIwY2VhMTI0My1jY2ExLTRhYzQtOTVmNS1iYzJkY2RlMjlhYjQiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4MDAxNSwiZXhwIjoxNjk3Mzg3MjE1LCJpYXQiOjE2OTczODAwMTV9.KNw4xFOPHBGFCtFktFpSmyzeA7zGLfGLl8vRmbmwpOU');
INSERT INTO public."user" VALUES ('3677eaae-754a-4126-afcd-771f42df79cc', '1103213195', '1103213195@student.telkomuniversity.ac.id', 'Putri Amelia Suhendi', '1103213195', 'AM47eqoYsXArVi0sG/G0rl8PXWUxLx8A8aFhQClDxe7BcsW0HTwNkCsAGy7REeWWRg==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIzNjc3ZWFhZS03NTRhLTQxMjYtYWZjZC03NzFmNDJkZjc5Y2MiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4Mjg5OCwiZXhwIjoxNjk3MzkwMDk4LCJpYXQiOjE2OTczODI4OTh9.k5W3xVZZORlchLehLI3CNiqhSoiB276M7Uxoh5mqqSA');
INSERT INTO public."user" VALUES ('3c43bf73-7435-4f9a-8bd7-318bb64a80e7', '1103213107', '1103213107@student.telkomuniversity.ac.id', 'Terryanda Naufaldo Arhaby', '1103213107', 'AIOUeB2+5ssfz0wGNVov7Kh0fyfQGzZrB+kO/8cgTAgKvPwJvTwJTP2B4fVVEzZJ6g==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIzYzQzYmY3My03NDM1LTRmOWEtOGJkNy0zMThiYjY0YTgwZTciLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4MjI4MSwiZXhwIjoxNjk3Mzg5NDgxLCJpYXQiOjE2OTczODIyODF9.4Qb9xiEXaM5NGMD3yXt8_XF7J55zxpTle2dKPzab5Q0');
INSERT INTO public."user" VALUES ('2b8b0646-5227-41a6-8e46-ddcc642bab36', '1103204158', '1103204158@student.telkomuniversity.ac.id', 'A Muh Rifqy Mukhrifat', '1103204158', 'AFHMKLL7vlmvL1pwB+2hPq4kYGyXHbfedWEgWUmJ7kBrU8G8ZBsBZwcz3JJfq33kJQ==', 'Student', NULL, NULL);
INSERT INTO public."user" VALUES ('4afe69c1-57f9-4505-91bc-7fec6fc6d507', '1103210143', '1103210143@student.telkomuniversity.ac.id', 'M Tsani Faishal Azhar', '1103210143', 'AA7XPnx7o3NvzEo5k85EJr8tujSKvRASNSTfwBMPlzu0ILXgPyBzkIP/TJjskuujZA==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI0YWZlNjljMS01N2Y5LTQ1MDUtOTFiYy03ZmVjNmZjNmQ1MDciLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4NDcwOSwiZXhwIjoxNjk3MzkxOTA5LCJpYXQiOjE2OTczODQ3MDl9.p3R6gbqaCVdxq6_ia3w79ODtnJWQw36n5iqW6hFC97g');
INSERT INTO public."user" VALUES ('43e88e58-3b26-44c0-af9a-d3975f65c240', '0000000001', 'gal@student.telkomuniversity.ac.id', 'Galih Karya Gemilang', 'gal', 'AGE6fpUqN9vaHafHdAXWG48FfeS1dC8OD+C0mYj6Dl2m0EIkXxxFHdFPV+A1kLiY5Q==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI0M2U4OGU1OC0zYjI2LTQ0YzAtYWY5YS1kMzk3NWY2NWMyNDAiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM5MDA1OCwiZXhwIjoxNjk3Mzk3MjU4LCJpYXQiOjE2OTczOTAwNTh9.huriHq7gJgsbsZXh58nkvOwbK2wI1ZJm58bCUN3SXdU');
INSERT INTO public."user" VALUES ('3a91a744-77fe-40cd-9ac6-a21e2e3230fd', '0000000009', 'req@student.telkomuniversity.ac.id', 'Muhammad Tharreq An Nahl', 'req', 'ALWeL/WCPqTnXggoVYHHBEJs/7DB46oOP3SyXfdfoQ6Q5MMiLe0W/KrT07bvW+Mb0A==', 'Student', NULL, NULL);
INSERT INTO public."user" VALUES ('46f074d4-e018-4ce9-9c01-39aad7593fcc', '1103202128', '1103202128@student.telkomuniversity.ac.id', 'R.Moch. Neildi Pratama', '1103202128', 'AN6IgH6WDSbvqmV3NNv6nLfHnsPAx6oj1alDhXTv2b2AEsJL+JIWvWx2BpmZi0xFpg==', 'Student', NULL, NULL);
INSERT INTO public."user" VALUES ('2bf40059-11d5-49f6-973b-535a945cb785', '1103228239', '1103228239@student.telkomuniversity.ac.id', 'Aldi Febrian Yuwono Putra', '1103228239', 'AGMMUiY5N906IIsLtEoMteq30gfJ6UzLmCTsrYkSpue1RxxFrsz55bvyXjrwmgyeSQ==', 'Student', '082116022134', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIyYmY0MDA1OS0xMWQ1LTQ5ZjYtOTczYi01MzVhOTQ1Y2I3ODUiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3OTI0MSwiZXhwIjoxNjk3Mzg2NDQxLCJpYXQiOjE2OTczNzkyNDF9.cTVgERFWBvww3XlNaEr050gtfP2HKm1lPwp8lwUArtw');
INSERT INTO public."user" VALUES ('326ef8cb-2b48-4657-a6c7-6e64c7751267', '1103213045', '1103213045@student.telkomuniversity.ac.id', 'Khalishah', '1103213045', 'ACZEUSbksKSQZh3QDvATLaq4Xr7/+vO/XT54+1KUIdkuoiAUJdMlULwFRul3Gs1Ymg==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIzMjZlZjhjYi0yYjQ4LTQ2NTctYTZjNy02ZTY0Yzc3NTEyNjciLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MDY1NSwiZXhwIjoxNjk3MzU3ODU1LCJpYXQiOjE2OTczNTA2NTV9.OmsEtdhWypmJHBR32gc9J0YcbJDxWMNC644mjYKxKGI');
INSERT INTO public."user" VALUES ('429eee9e-6648-4f78-8f2e-9822505f5c19', '1103213098', '1103213098@student.telkomuniversity.ac.id', 'Anda Figo Haq', '1103213098', 'AAa/s7nizmvflR+SB6X4ggtwZEJUlQpjXg/3KXp7XfSJ4iYu548ccZS3sTUH03dUGQ==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI0MjllZWU5ZS02NjQ4LTRmNzgtOGYyZS05ODIyNTA1ZjVjMTkiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MzI4NSwiZXhwIjoxNjk3MzYwNDg1LCJpYXQiOjE2OTczNTMyODV9.5ZqZQzBbMznPsHCZMbTzx9gVLG9wsCs8IzIbbp5jSlk');
INSERT INTO public."user" VALUES ('4e7bf3b8-eadb-4cb3-aa3f-02bf2ad70fce', '1103228238', '1103228238@student.telkomuniversity.ac.id', 'Eka Milenia Ramadhani', '1103228238', 'AJMKDT1p0CQF9pMaVQyFd95DVBqd3cnRshfiQavBp+2/Q3J0K5Tnn9+pLiOW5hViDA==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI0ZTdiZjNiOC1lYWRiLTRjYjMtYWEzZi0wMmJmMmFkNzBmY2UiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3NTY2MywiZXhwIjoxNjk3MzgyODYzLCJpYXQiOjE2OTczNzU2NjN9.ppz1_1GuF9amjTEBg7Tcpc-gE3WOvazXgUyAmC_CIlM');
INSERT INTO public."user" VALUES ('2a93e77f-da05-47b8-b454-d506bec3ed2b', '1103213055', '1103213055@student.telkomuniversity.ac.id', 'Nabila Putri Rihan', '1103213055', 'AIe8DZwXiAXwvRQ0OvQanq5avDLorClV/P4Fqo+xUVGcmbCwDN0bB15D0HOVTmxrfQ==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIyYTkzZTc3Zi1kYTA1LTQ3YjgtYjQ1NC1kNTA2YmVjM2VkMmIiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1Njg1MiwiZXhwIjoxNjk3MzY0MDUyLCJpYXQiOjE2OTczNTY4NTJ9.hYnR1j_uFw5ik_HoWajCjVsv6600g3atNX-a3uYfy3E');
INSERT INTO public."user" VALUES ('351d8c64-e517-4856-b812-4a0d6c7c2f66', '1103213178', '1103213178@student.telkomuniversity.ac.id', 'Badi Rafli Rizky Purnama', '1103213178', 'AHe4BOZqG94+LVJc/6Nfjrt7Bqlk4ApbZdS2MIsrqBoy63UpBBXGXt7HvwhSQNGWXg==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIzNTFkOGM2NC1lNTE3LTQ4NTYtYjgxMi00YTBkNmM3YzJmNjYiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3MDcyNCwiZXhwIjoxNjk3Mzc3OTI0LCJpYXQiOjE2OTczNzA3MjR9.Mq23swJeHSqSu-Z9EQ8tBhM3wRExbLOntL4pg2i6qQs');
INSERT INTO public."user" VALUES ('22fbc1c0-7ecd-461c-a86b-b61f49115d94', '1103213088', '1103213088@student.telkomuniversity.ac.id', 'Ariq Nurcahyo Saputra', '1103213088', 'AKnguhsoEiBjVdwtvmhHs510atFpjg6eKShNfonvtSsYb8JTW/5upTJFn6Pu7Pd3IA==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIyMmZiYzFjMC03ZWNkLTQ2MWMtYTg2Yi1iNjFmNDkxMTVkOTQiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM2MDA4NiwiZXhwIjoxNjk3MzY3Mjg2LCJpYXQiOjE2OTczNjAwODZ9.k9un8nz4Vy9pUE9ArnR4Y7nEmMWesqZxvB1tbC0LDF4');
INSERT INTO public."user" VALUES ('2afe3f9f-b578-4c4c-9bdf-083f38eefe45', '1103213166', '1103213166@student.telkomuniversity.ac.id', 'Yusran Yasir', '1103213166', 'AM0OksQBTAk6i174Zv5LMSsdJvU6GQ3rro3LOCNMXXxb9j20IDMBcjhNlGKzQZysEw==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIyYWZlM2Y5Zi1iNTc4LTRjNGMtOWJkZi0wODNmMzhlZWZlNDUiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3MDYyOCwiZXhwIjoxNjk3Mzc3ODI4LCJpYXQiOjE2OTczNzA2Mjh9.AUa7FnVy0xTdFDtu0SXvliDacgVzXEtspQxfcOMOJIc');
INSERT INTO public."user" VALUES ('2faf9cad-db79-4136-90d3-eaca063644f1', '1103210236', '1103210236@student.telkomuniversity.ac.id', 'Sam Alim Ramadhan', '1103210236', 'ALWaStpGlsXUwRM+gjq4pIJ2HANXyXX/THsqjFLNydShCR+fzQn1z8eTqvRgo41vOw==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIyZmFmOWNhZC1kYjc5LTQxMzYtOTBkMy1lYWNhMDYzNjQ0ZjEiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3NjkzNSwiZXhwIjoxNjk3Mzg0MTM1LCJpYXQiOjE2OTczNzY5MzV9.huXJDGTs-Exhrb00MkdSvnUoi1OlBXURMSD1CtVHIIY');
INSERT INTO public."user" VALUES ('3972bd62-08fa-4e86-b6f8-61486601f391', '1103213040', '1103213040@student.telkomuniversity.ac.id', 'Ahmad Fadlulloh', '1103213040', 'AD/T4rewgmuvoiXyxsVGd2kvLQLFxYCKA4MZwoAkWzy6qOATr1vnc9jcw1iC6oHdQw==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIzOTcyYmQ2Mi0wOGZhLTRlODYtYjZmOC02MTQ4NjYwMWYzOTEiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3ODI5OSwiZXhwIjoxNjk3Mzg1NDk5LCJpYXQiOjE2OTczNzgyOTl9.grQxsSagSqBDDh8UwN34GSh91wh8RPJftMOp0y-y2lg');
INSERT INTO public."user" VALUES ('268b4ff2-f7d7-4384-9624-f1d9fcee1662', '1103213224', '1103213224@student.telkomuniversity.ac.id', 'Valentino Rangga Perkasa', '1103213224', 'AKfBAFoOcrv3yoblF2BscOWNB/WDXl74jjmqG5FRWIlVXrixWWzmSRNDI7ermvwR6A==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIyNjhiNGZmMi1mN2Q3LTQzODQtOTYyNC1mMWQ5ZmNlZTE2NjIiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4MDE2MCwiZXhwIjoxNjk3Mzg3MzYwLCJpYXQiOjE2OTczODAxNjB9.FPOu2hrPMJ4A1ipRgFD-TTH5Rd3DeqIJXWZp9ZqzMlM');
INSERT INTO public."user" VALUES ('6060d1ea-8fdb-4ef8-a2e5-05ea5ffec228', '1103210238', '1103210238@student.telkomuniversity.ac.id', 'Yubi Madhania Sahid', '1103210238', 'ACHfRPd+jh/W3SNR965NvFKCFMmuYh3Evqhp4GAe1tAwnUK5fYXPFwmAw6jJn38xJA==', 'Student', '082259118324', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI2MDYwZDFlYS04ZmRiLTRlZjgtYTJlNS0wNWVhNWZmZWMyMjgiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzQ0OTU1MSwiZXhwIjoxNjk3NDU2NzUxLCJpYXQiOjE2OTc0NDk1NTF9.8JUHDX5XqDErD5Nr3SDMuQ_ZixjwA0OaUHwK5g7Lo-w');
INSERT INTO public."user" VALUES ('5c1dd55b-41df-4f4a-b73b-2a625506c10c', '0000000007', 'laz@student.telkomuniversity.ac.id', 'Lazzuardi Sholehuddin Nursuhud', 'laz', 'AGuQeLFaagzHjH/AkWEvq30Dxtf6YeOt5QxcOi/enGwbOUA2IVHgwuSqZFXAopvqaw==', 'Student', NULL, NULL);
INSERT INTO public."user" VALUES ('68952171-ea28-4750-a8a7-b2919652da3b', '1103210226', '1103210226@student.telkomuniversity.ac.id', 'Kansha Aidil Fitri Bramantya', '1103210226', 'APyb+vEQ+xcUET7ZCuQ52EHS07G86cuQrYfRUv+bb9hg446z4YGfJjBC7/yvuI9WDA==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI2ODk1MjE3MS1lYTI4LTQ3NTAtYThhNy1iMjkxOTY1MmRhM2IiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4NDkzNCwiZXhwIjoxNjk3MzkyMTM0LCJpYXQiOjE2OTczODQ5MzR9.l0NNIyi7GCUKVj8RqpDKpsLQdLQiEpVuueoFNkhkeuU');
INSERT INTO public."user" VALUES ('6231188e-387c-445b-a10b-5cacbac697bc', '0000000008', 'amy@student.telkomuniversity.ac.id', 'Muhammad Hilmy Aziz', 'amy', 'AES0yhmjlMvvRWuf6hrv+bB/AUe68mOwjp7s9M8tr9oCmgumLzrdMohLhNxRw9aB3A==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI2MjMxMTg4ZS0zODdjLTQ0NWItYTEwYi01Y2FjYmFjNjk3YmMiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzQ3MTU5MSwiZXhwIjoxNjk3NDc4NzkxLCJpYXQiOjE2OTc0NzE1OTF9.t9fUl0wX-amy483o1hSfDDz_EulgNuiPqZF-2kLZfO0');
INSERT INTO public."user" VALUES ('65f26690-68a0-46e4-b067-e928bec57a90', '0000000004', 'heh@student.telkomuniversity.ac.id', 'Muhammad Haekal Panderadja Pasi', 'heh', 'AIIwf24qFcCVs1JNOOahgeMBxNlZTdeDrCZAi7A/6B7GJqP8XHLSDqM+A87Q9TBpZg==', 'Student', NULL, NULL);
INSERT INTO public."user" VALUES ('664cc3ad-b89e-4a1e-b32d-dd4bef06553e', '1103210053', '1103210053@student.telkomuniversity.ac.id', 'Muhammad Abyan Ridhan Siregar', '1103210053', 'ADvHN3Hcw5wnb42/aiZTheswIYrCE7hSOYDxJKpmVmePEosYQFbJ8miQNaBLsFmzcQ==', 'Student', NULL, NULL);
INSERT INTO public."user" VALUES ('699c7d23-fd9b-448f-9f92-cd8febc70662', '1103202215', '1103202215@student.telkomuniversity.ac.id', 'Kreshna Putra Sudewo', '1103202215', 'AAm3VAbVks0AGMag5RvVccqijZDI/vY38mki6iqTuWum+c0yvHGUoi1hEDTK9mW9mw==', 'Student', NULL, NULL);
INSERT INTO public."user" VALUES ('80f469d1-1b14-4191-9f9b-7c6c54917714', '0000000003', 'ket@student.telkomuniversity.ac.id', 'Rizky Ramadhani Syam', 'ket', 'AIWnRMyyZu/PVOzlEs0yxw5IePLYk7gu0jhvl0N9U9chHM249ucbVlu0dj8P8tzkhA==', 'Student', NULL, NULL);
INSERT INTO public."user" VALUES ('5b50f73a-3e9a-4eea-bf73-4cc09efcc592', '1103213026', '1103213026@student.telkomuniversity.ac.id', 'Ribhi Gusti Zio', '1103213026', 'AN7UoVO79aGjfU5kuK41GTf7X6+cE2VeEf4j48gT2uKEemXs1qfbU2awhSwIywydlA==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI1YjUwZjczYS0zZTlhLTRlZWEtYmY3My00Y2MwOWVmY2M1OTIiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MDQ5MCwiZXhwIjoxNjk3MzU3NjkwLCJpYXQiOjE2OTczNTA0OTB9.b0s3MZdUKvutXy3G21zhZ_TF0pnQrp6xgIMAFo2TI6E');
INSERT INTO public."user" VALUES ('826b4ff5-c6f7-482b-bd9a-f3cd91698e94', '1103228145', '1103228145@student.telkomuniversity.ac.id', 'Muhammad Nur Maajid', '1103228145', 'AFiR4HwB9kG0eudYFLBPXoElMelU0vCt5ciJluUJQavGyIyakCtJwZ4t6dyGvGEvLg==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI4MjZiNGZmNS1jNmY3LTQ4MmItYmQ5YS1mM2NkOTE2OThlOTQiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MDUyNywiZXhwIjoxNjk3MzU3NzI3LCJpYXQiOjE2OTczNTA1Mjd9.iI1eGmx72MH72RsFgQJ8qX2a1Bo3PypjSjznVMi4aJQ');
INSERT INTO public."user" VALUES ('64e39a49-ab77-4ab8-8e61-8691e1753c22', '1103210220', '1103210220@student.telkomuniversity.ac.id', 'Dwi Saputra Sopar Siagian', '1103210220', 'AH0o3s99Z/AL5gSEBOUaMQArUh3BDNVwD/4bYWyfDilnRo3EtNU7nF73bA5F7fu9ng==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI2NGUzOWE0OS1hYjc3LTRhYjgtOGU2MS04NjkxZTE3NTNjMjIiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MzQzMSwiZXhwIjoxNjk3MzYwNjMxLCJpYXQiOjE2OTczNTM0MzF9.1uH1YNyo3LJBdW6GGP_fyCYry1sGPQdr2_gFN41GUSo');
INSERT INTO public."user" VALUES ('822f0314-18a4-44e5-a121-d0c765e37f47', '1103213044', '1103213044@student.telkomuniversity.ac.id', 'Ameliani Kusmayadi', '1103213044', 'AC0lRyHVMmxYazQ3y1tZjEUW4xdVtjwNUZwWIpHdilE9iRwb86I241kBUPCPiphxbA==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI4MjJmMDMxNC0xOGE0LTQ0ZTUtYTEyMS1kMGM3NjVlMzdmNDciLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1NjM0NywiZXhwIjoxNjk3MzYzNTQ3LCJpYXQiOjE2OTczNTYzNDd9.-EBJCzW5YxY-AwkloVz5Uq9RCi4i8qYcJjDtIsqWvxg');
INSERT INTO public."user" VALUES ('6b606471-525c-4313-adae-f07ef5920bfa', '1103204174', '1103204174@student.telkomuniversity.ac.id', 'Yuliani', '1103204174', 'AITHLY/l/otFljzGb2azC67HigU2yKwLBztRTujU0DI9aRGkv6UQUcsBTWeccudJ5A==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI2YjYwNjQ3MS01MjVjLTQzMTMtYWRhZS1mMDdlZjU5MjBiZmEiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM2MDMyMCwiZXhwIjoxNjk3MzY3NTIwLCJpYXQiOjE2OTczNjAzMjB9.D1hp3Nsud7tPZgCS40k1w122dtsnky8nWfu8l2GrYV4');
INSERT INTO public."user" VALUES ('649d0ec0-06fa-4631-8d3e-c5c6de050e83', '1103213073', '1103213073@student.telkomuniversity.ac.id', 'Kivlan Hakeem Arrouf', '1103213073', 'AJITqzXcA3x7zqi2HJ4lP9wyQiHT5SHFEUvDNT2hran+P7rCwV+BvV/nvcS0sEDy9w==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI2NDlkMGVjMC0wNmZhLTQ2MzEtOGQzZS1jNWM2ZGUwNTBlODMiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM2MDIwNiwiZXhwIjoxNjk3MzY3NDA2LCJpYXQiOjE2OTczNjAyMDZ9.mZMfFNWq0mlZVoXs1bgkk-nA-tDk7Kgb0B-Ev0fJ4k0');
INSERT INTO public."user" VALUES ('7c147b51-1926-4ed7-aea3-5bb9bd8bab29', '1103210187', '1103210187@student.telkomuniversity.ac.id', 'Amelia Putri Aniyanto', '1103210187', 'AKu0VQCM2bjHMbL6hgiO0eC4tGiLHBZisBx5mOMsGvZSjwdQKpGUx59mcq4S83jPHQ==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI3YzE0N2I1MS0xOTI2LTRlZDctYWVhMy01YmI5YmQ4YmFiMjkiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM2NDMzNCwiZXhwIjoxNjk3MzcxNTM0LCJpYXQiOjE2OTczNjQzMzR9.i3j_rO6LCJlnsp40ZHygNmxn4IvSet8s9y4Z-MCuKYE');
INSERT INTO public."user" VALUES ('8120697d-72e7-4732-a314-1237c482eb36', '1103213109', '1103213109@student.telkomuniversity.ac.id', 'Muhammad Nur Ridhwan', '1103213109', 'ABYzI9jUAB39g8BtjkY0pZx4vn7dKR+RfI0JU7OzJpPwKoiyilDf8S3NCvBJspc0tw==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI4MTIwNjk3ZC03MmU3LTQ3MzItYTMxNC0xMjM3YzQ4MmViMzYiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3MzIwMSwiZXhwIjoxNjk3MzgwNDAxLCJpYXQiOjE2OTczNzMyMDF9.oe1-psuQFKhHECzART8pyMqfCZjNWFsKIgMNV24oPWs');
INSERT INTO public."user" VALUES ('62dad917-672c-4212-abfc-8dada39edfc0', '1103210024', '1103210024@student.telkomuniversity.ac.id', 'Mizan Ghazy Praraya', '1103210024', 'ALgVIciw6Zqe2/uhP8szQw+lRJq9MP79+lLUDoInRjOCb8t77HytF7sXXFd/6+ODAA==', 'Student', '085974322362', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI2MmRhZDkxNy02NzJjLTQyMTItYWJmYy04ZGFkYTM5ZWRmYzAiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM2ODA4NSwiZXhwIjoxNjk3Mzc1Mjg1LCJpYXQiOjE2OTczNjgwODV9.GW_GMmGgvx5FZeWoFQwXwrA6_3zaVciyzaAta5xowEM');
INSERT INTO public."user" VALUES ('5ab07350-f3df-4481-aa96-a984e2520a99', '1103228174', '1103228174@student.telkomuniversity.ac.id', 'Surya Wahyu Saputra', '1103228174', 'ABw7tKFLQxWvJ//XUUQ5fu6mskK4b48NlxeVNIELLcm5CfhcMCJiLO/iLfVl8DR+Tw==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI1YWIwNzM1MC1mM2RmLTQ0ODEtYWE5Ni1hOTg0ZTI1MjBhOTkiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3Mzc2NywiZXhwIjoxNjk3MzgwOTY3LCJpYXQiOjE2OTczNzM3Njd9.6SLXzlzaZ08usuRQwF5tlqzw6zOfC78oTN2KwkuL1Ss');
INSERT INTO public."user" VALUES ('7741617b-a18a-417c-855f-7d12e6e72cd8', '1103210210', '1103210210@student.telkomuniversity.ac.id', 'Muhammad Rayyan Aqiilah Manna', '1103210210', 'AHlqoD6JRkXldOcQzXLobVaHNVAGSHNA9HIv5ujzs6kCaA9wUcbVPcK07Mk8/jWV+w==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI3NzQxNjE3Yi1hMThhLTQxN2MtODU1Zi03ZDEyZTZlNzJjZDgiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3NzA2MCwiZXhwIjoxNjk3Mzg0MjYwLCJpYXQiOjE2OTczNzcwNjB9.DP-m_X2HtSM-g7g73nvuppIgmS8mMOObyy_1qZqp728');
INSERT INTO public."user" VALUES ('2e419dd4-15ec-4dcd-93e4-47d7e594d77b', '1103213196', '1103213196@student.telkomuniversity.ac.id', 'Haldi Alfiansyach', '1103213196', 'AOpNvhL4IE/O2RDi1hYgMxyWj4/RrRIwbGXoq55FX0psEXix+/qUe1EyBgjbaGFoTg==', 'Student', '087724794233', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIyZTQxOWRkNC0xNWVjLTRkY2QtOTNlNC00N2Q3ZTU5NGQ3N2IiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4MTYzNCwiZXhwIjoxNjk3Mzg4ODM0LCJpYXQiOjE2OTczODE2MzR9.iESEMCraW1LalUXsre7oARIv-gwf9_SRi80aB4fkgkg');
INSERT INTO public."user" VALUES ('88e5855e-556a-4160-8f89-0ef19679d8b9', '1103210192', '1103210192@student.telkomuniversity.ac.id', 'Muhamad Rizq Rihaz', '1103210192', 'ACimg/k/t2g203ZcTBLQta6l9p0oBYJNtJ/6FCgiP+Z71HbbAoAbY9UF/3ooosm2SQ==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI4OGU1ODU1ZS01NTZhLTQxNjAtOGY4OS0wZWYxOTY3OWQ4YjkiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4NDc3NiwiZXhwIjoxNjk3MzkxOTc2LCJpYXQiOjE2OTczODQ3NzZ9.Cd8gYjpDrIeDgc8ZKWGaASOuKrqXiCDnmHBpqBJ7-sE');
INSERT INTO public."user" VALUES ('95e6f6df-24bf-4699-b09b-09d3e56f4662', '1103210154', '1103210154@student.telkomuniversity.ac.id', 'Parikesit', '1103210154', 'ANGiIlm/j8DsU9CpbseWXAGA7u/bshRDbOQIgPopnsjr4hkcQk48lClEOMpw8JVytg==', 'Student', '081293627646', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI5NWU2ZjZkZi0yNGJmLTQ2OTktYjA5Yi0wOWQzZTU2ZjQ2NjIiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4NDc2MywiZXhwIjoxNjk3MzkxOTYzLCJpYXQiOjE2OTczODQ3NjN9.SqjPDYrDtL1YlZWK9fKS1H_G7SwqgsqeT-3_YasFexU');
INSERT INTO public."user" VALUES ('90629d4c-1d41-4c4c-99bc-0a3ea9dbd4f1', '1103202153', '1103202153@student.telkomuniversity.ac.id', 'Muhammad Sadam Erlangga', '1103202153', 'ACo5oUeCuZUOEKrMWDBZ7mtmKsHtHQnuGKB8PMs9t8Ez/zaG7zb2U9zeREr2Katm2Q==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI5MDYyOWQ0Yy0xZDQxLTRjNGMtOTliYy0wYTNlYTlkYmQ0ZjEiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzQ0MTgwNCwiZXhwIjoxNjk3NDQ5MDA0LCJpYXQiOjE2OTc0NDE4MDR9.NFiXqcRLVUqWlP8MQ15FaXafsilKETZw892utR1z_Ls');
INSERT INTO public."user" VALUES ('9be12c09-edf8-4e1e-809d-8eb8fe029020', '1103203219', '1103203219@student.telkomuniversity.ac.id', 'Muhammad Ikhwan Maulana', '1103203219', 'ANGAtHBVjeJKne5NbH7mxSZ3LiEjJTLBIwoWvqQuEh+/AI1inI/1F3Vy2X6FYId7sA==', 'Student', NULL, NULL);
INSERT INTO public."user" VALUES ('a9c8cce0-322a-4d53-8a72-dbf1615e9d20', '1103204053', '1103204053@student.telkomuniversity.ac.id', 'Anjas Rahmanta Cahya Wijaya', '1103204053', 'AD7DA0brSODU9bJveODjD75Mnj62Ux8YURmc7LZusY1pF/Fu/LZxXbCjkWcHxCVgQw==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJhOWM4Y2NlMC0zMjJhLTRkNTMtOGE3Mi1kYmYxNjE1ZTlkMjAiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MjE5MSwiZXhwIjoxNjk3MzU5MzkxLCJpYXQiOjE2OTczNTIxOTF9.1gThiO6-j6yqxgdPoj6ODuGQb2jdijfrA9L10sRnIjU');
INSERT INTO public."user" VALUES ('a6648989-cbb2-4c37-b31e-6b249da504b5', '1103213117', '1103213117@student.telkomuniversity.ac.id', 'Anita Firda Nuralifah', '1103213117', 'AAVza61a6662YT3Y0RdnHYa5Mmk4+KObLcVT2CX3376AQbpKlKvaFG7YvQ4lnHJ+aw==', 'Student', '081367248899', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJhNjY0ODk4OS1jYmIyLTRjMzctYjMxZS02YjI0OWRhNTA0YjUiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MDUwMywiZXhwIjoxNjk3MzU3NzAzLCJpYXQiOjE2OTczNTA1MDN9.e-queBWRGo-sIccd1JNqe-b0jbA_zSY2F1tGFgyzSg4');
INSERT INTO public."user" VALUES ('a6407fb2-8836-4a0e-b578-55636258f955', '1103228243', '1103228243@student.telkomuniversity.ac.id', 'Rega Candra Kirana', '1103228243', 'ANToE4w82TMuf10//cFRqdKxSPB8G+8+B9Xe0EX/m9JKvbvIqhqqazUHjFipwJgbxw==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJhNjQwN2ZiMi04ODM2LTRhMGUtYjU3OC01NTYzNjI1OGY5NTUiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MzQ5MCwiZXhwIjoxNjk3MzYwNjkwLCJpYXQiOjE2OTczNTM0OTB9.b8vmn8rqekN5FAxyUoU3Oi_xPkRdHojWN7cOLVtO5N8');
INSERT INTO public."user" VALUES ('a09e4d9f-3565-4ad7-b9e5-620674536272', '1103213039', '1103213039@student.telkomuniversity.ac.id', 'Az - Zahra Chikal Erliandi', '1103213039', 'AFy1nqMTidR1vDmW09Z8A7PeYRCrpuWvRF1GOgap7i9HcpNiTNzPksfSbILNsm6SdA==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJhMDllNGQ5Zi0zNTY1LTRhZDctYjllNS02MjA2NzQ1MzYyNzIiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MzM0NywiZXhwIjoxNjk3MzYwNTQ3LCJpYXQiOjE2OTczNTMzNDd9.4kVnr--Q1bJBJayG1Zdkv-9KozJ4c8tGsHJ5MsQs_Mg');
INSERT INTO public."user" VALUES ('a6a4d181-fce8-49aa-a4c4-a2cb992d4961', '1103210193', '1103210193@student.telkomuniversity.ac.id', 'Arif Al Imran', '1103210193', 'ANOh3x3nenBGjudN9kbw3yDWkNhkzC5AhC/RIbxzqWcXywKt3nDfj9hwXc1aVpYoAg==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJhNmE0ZDE4MS1mY2U4LTQ5YWEtYTRjNC1hMmNiOTkyZDQ5NjEiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1Nzk0OCwiZXhwIjoxNjk3MzY1MTQ4LCJpYXQiOjE2OTczNTc5NDh9.13_k39svl7K1emeZmKrE0PelkrQIF_JYE8b6rGADWnc');
INSERT INTO public."user" VALUES ('8630deb1-035a-40ba-8f36-5c175341e3d9', '1103210211', '1103210211@student.telkomuniversity.ac.id', 'Muhammad Raflika Dwiyansyah', '1103210211', 'APy4KPdFLbjw4MJd3zaMpckdqG5BGYCbLZ8MaaY3jZqaiGFcIq4gwnhEnNQn13zg4w==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI4NjMwZGViMS0wMzVhLTQwYmEtOGYzNi01YzE3NTM0MWUzZDkiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM2ODUyMSwiZXhwIjoxNjk3Mzc1NzIxLCJpYXQiOjE2OTczNjg1MjF9.hVJcV0Q-lPKlbVN-w9BWwhBnsEiNgV9Tqp98nE_h8zQ');
INSERT INTO public."user" VALUES ('a7b09623-08b2-4710-a14e-e27f0ba240a5', '1103228182', '1103228182@student.telkomuniversity.ac.id', 'Reza Rizky Adha', '1103228182', 'ANG4X4aMbEn9YxhVwKAwXLTUy1nzHzZdBsOXnsEvRjYvwN7eRd3xKHCUVGs6AGWzDw==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJhN2IwOTYyMy0wOGIyLTQ3MTAtYTE0ZS1lMjdmMGJhMjQwYTUiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1OTMwNywiZXhwIjoxNjk3MzY2NTA3LCJpYXQiOjE2OTczNTkzMDd9.TpdWJy8WIzs8WdQmnBdsxxzfEBFXprxTdIlYolxw7p4');
INSERT INTO public."user" VALUES ('9f2587f1-3c7e-454e-a9ff-b68460826f94', '1103213148', '1103213148@student.telkomuniversity.ac.id', 'Ketut Satria Wibisana', '1103213148', 'AJq4HbHEnaLp/5jioTXWc57ac3+Djodxtgm+5wrcOCajofMGyCP0taHGTIDG+TAiQQ==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI5ZjI1ODdmMS0zYzdlLTQ1NGUtYTlmZi1iNjg0NjA4MjZmOTQiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3OTQ4NSwiZXhwIjoxNjk3Mzg2Njg1LCJpYXQiOjE2OTczNzk0ODV9._h3Gcs5jn-n1e5Xo-de5pcvo-vPRNSaWTz1SkClYm3Y');
INSERT INTO public."user" VALUES ('affdd851-47d5-48f4-81b2-1a1836a98da3', '1103210103', '1103210103@student.telkomuniversity.ac.id', 'Tri Mulia Bahar', '1103210103', 'ALiEpMCoSDIb0MUQ+jPyhymri3sPiuhaCLHF6jSI30MLqTXh/pmWpVEXHyzpJFhgIQ==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJhZmZkZDg1MS00N2Q1LTQ4ZjQtODFiMi0xYTE4MzZhOThkYTMiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM2NjA4NSwiZXhwIjoxNjk3MzczMjg1LCJpYXQiOjE2OTczNjYwODV9.5vW5BerjqYwbmf06hKtM4yTqf5_pNpjfODSdbwkCESI');
INSERT INTO public."user" VALUES ('b1994c4b-8314-48ab-8667-6bfb36b1b475', '1103228233', '1103228233@student.telkomuniversity.ac.id', 'Mochamad Permana Ash Shidiq', '1103228233', 'AH47xSX8isRce/LUrFV9Jmaf4N2Z7Uwy+LyQpE5hXBAVz1Q4mDikMA2rrto16v8/6Q==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJiMTk5NGM0Yi04MzE0LTQ4YWItODY2Ny02YmZiMzZiMWI0NzUiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3MjE3MiwiZXhwIjoxNjk3Mzc5MzcyLCJpYXQiOjE2OTczNzIxNzJ9.hySm62LNzeC8uc0D6WI1ZuaM5aiit6ElvRAWLlLQPis');
INSERT INTO public."user" VALUES ('b0e02f85-a939-4188-86fd-340ecc601a96', '1103213002', '1103213002@student.telkomuniversity.ac.id', 'Purwantoro Aji Nugroho', '1103213002', 'AB9yEQDqIMvAuyUaoTNVxmcsgyPOs6ZftTdERIkobvzTRkNgKIUdtfJGimFs0Dhdyw==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJiMGUwMmY4NS1hOTM5LTQxODgtODZmZC0zNDBlY2M2MDFhOTYiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3NTkxMywiZXhwIjoxNjk3MzgzMTEzLCJpYXQiOjE2OTczNzU5MTN9.hKn9_5iv11sU6l68uF4Jnk5H-l3DyctfbbA8dshr_YQ');
INSERT INTO public."user" VALUES ('8b9e96d3-b1e7-43ca-a8ab-1fe97bfe0912', '1103210050', '1103210050@student.telkomuniversity.ac.id', 'Afdzuliah Nuranti', '1103210050', 'ADuEPJr3DdMk7T2ubSplxSttrSckaqwIv0UfUkgAMk30C6m+5YMuf4dCOr0qwWZYkg==', 'Student', '081223362122', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI4YjllOTZkMy1iMWU3LTQzY2EtYThhYi0xZmU5N2JmZTA5MTIiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3ODY0NSwiZXhwIjoxNjk3Mzg1ODQ1LCJpYXQiOjE2OTczNzg2NDV9.lpgstEYLZN35Lg8MR320KxDjf-Anfv_ndDt81zzD3Y8');
INSERT INTO public."user" VALUES ('d35cd56b-5428-433d-893d-d27878c2300b', '1103200008', '1103200008@student.telkomuniversity.ac.id', 'Taufik Kurahman Sasmita', '1103200008', 'AIeNJNoP/LFTct6sZisYjadPpmcFbSlyUZY5K0GGVVrssFkAXw3tn6MKu1NlGNxy3w==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJkMzVjZDU2Yi01NDI4LTQzM2QtODkzZC1kMjc4NzhjMjMwMGIiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4NDI5OCwiZXhwIjoxNjk3MzkxNDk4LCJpYXQiOjE2OTczODQyOTh9.KjJpu51Zu-jknwMV90JU3SZmss3gAYlp5DwwByC_Ajw');
INSERT INTO public."user" VALUES ('b77549a6-56e5-4c2e-899f-b9fdcd349521', '1103201247', '1103201247@student.telkomuniversity.ac.id', 'Ibrahim Maulana', '1103201247', 'AJJN+DxEXyp6wI/k1drNmb0wr/uYY3G/x+2lXnXJvMiWdCEOx7hki535F5x6LBX2YA==', 'Student', NULL, NULL);
INSERT INTO public."user" VALUES ('bf14578c-0175-406f-8cbc-0a7a091a78d7', '1103210056', '1103210056@student.telkomuniversity.ac.id', 'Nisrina Nurjauza Fasya', '1103210056', 'AMrFe67Oh1s3GoZQ6yQwLrAs1qB2l3i9GwzwnTd7CD+eRK67U7+kYnZPkUJuhyGfRQ==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJiZjE0NTc4Yy0wMTc1LTQwNmYtOGNiYy0wYTdhMDkxYTc4ZDciLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4NDM4NiwiZXhwIjoxNjk3MzkxNTg2LCJpYXQiOjE2OTczODQzODZ9.8rKAMdSrqjzXqfZ6YmcgKTX3R-OB_Xl3TdT01Qzf_Pg');
INSERT INTO public."user" VALUES ('ca5bf518-ff91-4cdf-b66e-11486ad04802', '1103210230', '1103210230@student.telkomuniversity.ac.id', 'Jovandy Julio', '1103210230', 'AKUcicvwYCE4G0wPvFXZ3xLHRaqUTk/D+f5c1IZ+Yu+a0R0yU9aVOVaR3pnt3LAShg==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJjYTViZjUxOC1mZjkxLTRjZGYtYjY2ZS0xMTQ4NmFkMDQ4MDIiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4NDkxMCwiZXhwIjoxNjk3MzkyMTEwLCJpYXQiOjE2OTczODQ5MTB9.NpdgM1PH3hnrofYZcJKd00DAIZ5pyhqiJYQatZdm-iA');
INSERT INTO public."user" VALUES ('d433b746-ec97-4685-a8e9-acc339a82503', '1103213043', '1103213043@student.telkomuniversity.ac.id', 'Cholasih Ryan Maulana', '1103213043', 'ABJMPfpthzFOx2+XVAdjJjJ3EH0My9JohzkEI4pm5INoZtKx5C8YAtUnfBwV4zUg5w==', 'Student', '081325161711', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJkNDMzYjc0Ni1lYzk3LTQ2ODUtYThlOS1hY2MzMzlhODI1MDMiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzQ0OTQ2OSwiZXhwIjoxNjk3NDU2NjY5LCJpYXQiOjE2OTc0NDk0Njl9.6v9LwREVwKtwsJjDqi-b1Vi61v68tl-k1tFJU-TO9As');
INSERT INTO public."user" VALUES ('c5e525fa-8e5e-4895-a2f0-4f3c69046b09', '1103210132', '1103210132@student.telkomuniversity.ac.id', 'Muhammad Jibran Hady', '1103210132', 'AEsUerFIU229gEnYlo61a6gD+FC3yCd7TInQxRKkeGpbxgp9uK+Vn431CwjJCAn4Dw==', 'Student', NULL, NULL);
INSERT INTO public."user" VALUES ('d7d16572-2367-4262-ab73-74bb6fbd9f96', '1103228242', '1103228242@student.telkomuniversity.ac.id', 'Ilyasin Bintang Anugrah', '1103228242', 'ABunUrjRGN/PEVVrpho6bAlUNPdmvz8CNRwCiXsytuCkDSPC7TUGhj1Eg8i5EpNRUA==', 'Student', NULL, NULL);
INSERT INTO public."user" VALUES ('db502cd9-10d1-499b-93cb-07ba9f2bdec9', '1103202161', '1103202161@student.telkomuniversity.ac.id', 'Mochammad Harier Rizki', '1103202161', 'AKBY6gkhb0geNHMDGntopkHgUJMMtC+/GhW1kzNCoIWjM7URshuFjrTElM8uOFl13g==', 'Student', NULL, NULL);
INSERT INTO public."user" VALUES ('dfa492eb-6dbc-44b2-aea5-6e4402c1ced1', '1103203221', '1103203221@student.telkomuniversity.ac.id', 'Shubqy Yoega Pratama', '1103203221', 'AOmN/4CDuFB18oanHJuryih20mFNTje+Rh3OwQ47C616OwfihL/s+LymN8XLO22HFw==', 'Student', NULL, NULL);
INSERT INTO public."user" VALUES ('d79dd58f-f2e0-41a4-be81-09568ef46b0a', '1103210208', '1103210208@student.telkomuniversity.ac.id', 'Ardius Eben Ezer Simanjuntak', '1103210208', 'AFuCR0vdBglZIblVrhA6XGSUA8XcwZIpAHZjyZvInTE8q7kWOJQtNLKg9SBFp/G1pQ==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJkNzlkZDU4Zi1mMmUwLTQxYTQtYmU4MS0wOTU2OGVmNDZiMGEiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MDgxOCwiZXhwIjoxNjk3MzU4MDE4LCJpYXQiOjE2OTczNTA4MTh9.xBbrpedl1fdOluwzNVnbmUuRtjV9G2JMPfiTfj7PUII');
INSERT INTO public."user" VALUES ('cd114468-5a83-42c6-8afe-19df71cc5bcf', '1103204033', '1103204033@student.telkomuniversity.ac.id', 'Rheza Ilham Firmansyah', '1103204033', 'ACGywzOMtg6n9WzC61/xcBWhFXSiwBtozT2vexFgScNxXUQpS4u2RPukTa/K2t9ruQ==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJjZDExNDQ2OC01YTgzLTQyYzYtOGFmZS0xOWRmNzFjYzViY2YiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MjQ2NiwiZXhwIjoxNjk3MzU5NjY2LCJpYXQiOjE2OTczNTI0NjZ9.U-cl6zwhEzDO4VtWt1cmytT3F3Dz4An95e74kQdxJ-Y');
INSERT INTO public."user" VALUES ('c5811fd6-a0d1-47b4-8f97-9b4e33e89fd8', '1103210102', '1103210102@student.telkomuniversity.ac.id', 'Raihana Fawaz', '1103210102', 'AMmRVAPO0f7kY4F5bJ0wQiKqptdQImcY+6ftWxXq2lpNx8V8exYnpPAPO7bdk2H5jA==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJjNTgxMWZkNi1hMGQxLTQ3YjQtOGY5Ny05YjRlMzNlODlmZDgiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1NDkyMiwiZXhwIjoxNjk3MzYyMTIyLCJpYXQiOjE2OTczNTQ5MjJ9.Ewa13TtLfvIzNZdn-Js9cfC02DT3OA0a0ixHpTWcVCY');
INSERT INTO public."user" VALUES ('db74c675-f54f-46c1-a59b-d54918a1b327', '1103210008', '1103210008@student.telkomuniversity.ac.id', 'Muhammad Thoriq Zam', '1103210008', 'AOtajnNWr2h9r2H39bmdswZiIE2MNWqGvDFUXzJU8z1npp/Fcsm7uq+W2lsg+3UrsQ==', 'Student', '082179191243', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJkYjc0YzY3NS1mNTRmLTQ2YzEtYTU5Yi1kNTQ5MThhMWIzMjciLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MDU1NiwiZXhwIjoxNjk3MzU3NzU2LCJpYXQiOjE2OTczNTA1NTZ9.TqwiXGaGjlUj9hmVQ5Qla1Qhh1W-kuDMZOGlhBqWOBk');
INSERT INTO public."user" VALUES ('e02ac8e4-f1f3-4252-85d4-7f72faa7ca43', '1103210202', '1103210202@student.telkomuniversity.ac.id', 'Hendri Maulana Azwar', '1103210202', 'AMKLOsic6bXN/w1koJl6KgrHRPlgPp3pX/iS176jhUOLwJ402y1WDu+49vO5JZfOJA==', 'Student', '082268770988', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJlMDJhYzhlNC1mMWYzLTQyNTItODVkNC03ZjcyZmFhN2NhNDMiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1Mzc5MiwiZXhwIjoxNjk3MzYwOTkyLCJpYXQiOjE2OTczNTM3OTJ9.Iw7PlAwGp6kG70AfuIBF1VdP5xpmBzCj38rf43Hv0tY');
INSERT INTO public."user" VALUES ('b764de4a-8769-429d-b354-293968e48480', '1103210172', '1103210172@student.telkomuniversity.ac.id', 'Faiz Hibatullah', '1103210172', 'AO7f34VBRPr+BjvSVyn4adS3ZmrjdBNZk4rXL6ZmRN9ggffC3DEvbUAqRRMGOthF6Q==', 'Student', '082126137088', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJiNzY0ZGU0YS04NzY5LTQyOWQtYjM1NC0yOTM5NjhlNDg0ODAiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1OTQwNiwiZXhwIjoxNjk3MzY2NjA2LCJpYXQiOjE2OTczNTk0MDZ9.VdA_VqAFH0K4yDx8m_LDWJwLYLtQvxfvxeryWVlyFbs');
INSERT INTO public."user" VALUES ('e8a302fd-d750-41d3-b79b-2a6e91b01b3b', '1103210064', '1103210064@student.telkomuniversity.ac.id', 'Farhan Rizki Fauzi', '1103210064', 'ACYtE1bo6iUp6MA2NzvzOcYC177BDvWMshWbtTU9TWK+X/7vpeaIaCaNdVniAhOCfQ==', 'Student', '89662060909', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJlOGEzMDJmZC1kNzUwLTQxZDMtYjc5Yi0yYTZlOTFiMDFiM2IiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1OTU5MSwiZXhwIjoxNjk3MzY2NzkxLCJpYXQiOjE2OTczNTk1OTF9.T4fQd7UADn7mFOBR8Js_a5Yn0K3Is7v7BvTdriTjO5I');
INSERT INTO public."user" VALUES ('cbc3b84d-8316-4464-b5a0-683dc73b1fc6', '1103213033', '1103213033@student.telkomuniversity.ac.id', 'Andreas Hasiholan Sinaga', '1103213033', 'AMYSG6CamjdIQSkJZcyybXwE0JB1U0fTvyGFkvtaVInj1/AOhvj5L78IezS/OeuLFg==', 'Student', '081279641451', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJjYmMzYjg0ZC04MzE2LTQ0NjQtYjVhMC02ODNkYzczYjFmYzYiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3MTY0MCwiZXhwIjoxNjk3Mzc4ODQwLCJpYXQiOjE2OTczNzE2NDB9.Imqtf4FM0mgm8Wf9NZC_A7poWf6WMXvvn-yqQ7Spa-k');
INSERT INTO public."user" VALUES ('c13faed5-8b0a-443b-8530-de429f39a4fc', '1103213019', '1103213019@student.telkomuniversity.ac.id', 'Abdi Muhammad Rizky', '1103213019', 'AGf1Oo2SbEzfFJpxzCg3PY8j35U+8fwBfjZUbv89k52jkpUpie290c7Nb+2NdMgaNw==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJjMTNmYWVkNS04YjBhLTQ0M2ItODUzMC1kZTQyOWYzOWE0ZmMiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3Nzk4OSwiZXhwIjoxNjk3Mzg1MTg5LCJpYXQiOjE2OTczNzc5ODl9.Dxy0l1slcSPh4b5EYQTQR4ACw0PTbPp5NY8san_5FmI');
INSERT INTO public."user" VALUES ('db184c93-9260-41c9-be14-461816fd5d96', '1103213023', '1103213023@student.telkomuniversity.ac.id', 'Yosua Gery Tampubolon', '1103213023', 'AKTI5OetG0zsERUUdxaTT2BMz6xwSsHDHGgLQWR1JA6VpVyjqKxSpox6sXvEgmx8hA==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJkYjE4NGM5My05MjYwLTQxYzktYmUxNC00NjE4MTZmZDVkOTYiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3OTI2NCwiZXhwIjoxNjk3Mzg2NDY0LCJpYXQiOjE2OTczNzkyNjR9.-yQwmncI1E7_7fm-iN3YXLzNVIV9aEJ0yuprztHHetI');
INSERT INTO public."user" VALUES ('f19e477c-4cda-468d-bcf6-d34db440df51', '0000000011', 'nat@student.telkomuniversity.ac.id', 'Giovanni Nathaniel', 'nat', 'AIwLoPNwZOEUqXEdi5OGLmq6EQjlT5y2VVmpAs1zt6vegyOOz1CL5OiPyCIQ98gKmQ==', 'Student', NULL, NULL);
INSERT INTO public."user" VALUES ('2101d7f3-0bf9-4403-9599-fba8a8ae09db', '1103210125', '1103210125@student.telkomuniversity.ac.id', 'Hafiz Muhammad Fadhel', '1103210125', 'AN4XJUiJGgCfAO80HHzTUvWQt/ORIiveISBKeg5ieLCV/LmsTySDmxNxra6P9AwCww==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIyMTAxZDdmMy0wYmY5LTQ0MDMtOTU5OS1mYmE4YThhZTA5ZGIiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4MzE5NywiZXhwIjoxNjk3MzkwMzk3LCJpYXQiOjE2OTczODMxOTd9.QoPxxyKOcS6HfuB9fiS1DEZZbsOEKPCCPM15iAUKqAQ');
INSERT INTO public."user" VALUES ('50ea9984-945d-4e3e-8a86-78726c090bdb', '0000000002', 'pia@student.telkomuniversity.ac.id', 'Alifia Mutiara Rahma', 'pia', 'ALLxYWrXMxt+Kp8pqO1O5Hba3cfFD4tymMaGI7nKbYySkShMDL/u94NPrWlGbZbKLg==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI1MGVhOTk4NC05NDVkLTRlM2UtOGE4Ni03ODcyNmMwOTBiZGIiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM0ODkwNSwiZXhwIjoxNjk3MzU2MTA1LCJpYXQiOjE2OTczNDg5MDV9.lY3_NjaJ3KO8wDRpXAfAEXwHn1GZd0sAeKLJd4GmMuo');
INSERT INTO public."user" VALUES ('fbd4b03f-9036-4bff-ba7a-c6af507047e6', '1103210207', '1103210207@student.telkomuniversity.ac.id', 'Nicholas Alvito Diandra', '1103210207', 'AHrdcGMOS9YATWOIZNJMkDfEDo2oD3egz4pioz8+aCFdV9a+0dzKMo1TSBn77j1tkA==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJmYmQ0YjAzZi05MDM2LTRiZmYtYmE3YS1jNmFmNTA3MDQ3ZTYiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4MzkwMywiZXhwIjoxNjk3MzkxMTAzLCJpYXQiOjE2OTczODM5MDN9.02o2BhYK9riu9dIHO1O7NjpynDM5aLu-bYLhrtrEPF4');
INSERT INTO public."user" VALUES ('ec6fc6fb-88a8-4f19-b3a9-06145a17c4cb', '0000000006', 'sam@student.telkomuniversity.ac.id', 'Samuel Robert Romulus Sidabalok', 'sam', 'AI7xtQc4k2cQtzPLm0Gm+8QIWBNfrnG30DjGugSm/78ctVfJ6bhiRhX4OS6eTfsIEA==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJlYzZmYzZmYi04OGE4LTRmMTktYjNhOS0wNjE0NWExN2M0Y2IiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzQzMzc5OCwiZXhwIjoxNjk3NDQwOTk4LCJpYXQiOjE2OTc0MzM3OTh9.WFFcjnc7iXxErp-yvDjLB-O-GDT__8636yrfOiNwCfQ');
INSERT INTO public."user" VALUES ('3c70aa21-9a7c-47a4-aea4-2895638d6d37', '0000000000', 'pun@student.telkomuniversity.ac.id', 'Harvan Nurluthfi Irawan', 'pun', 'ANduooQcWb3F6V3XNnJwjjCIHH3sLXzs99/ei1H7/uMpSlDtnbRbnfnFAHuLnqHLSQ==', 'Student', '0895343739958', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIzYzcwYWEyMS05YTdjLTQ3YTQtYWVhNC0yODk1NjM4ZDZkMzciLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM5MDA4NCwiZXhwIjoxNjk3Mzk3Mjg0LCJpYXQiOjE2OTczOTAwODR9.Nw2Zt2QQbQruZEXbqGBsLjOhQ97D7nSDzXdZE13nipc');
INSERT INTO public."user" VALUES ('67997e18-8ed0-46b5-9308-5ead13f63938', '0000000010', 'gtr@student.telkomuniversity.ac.id', 'Harits Maulana Muzakki', 'gtr', 'AII6F+mG+gLiszkwQaTWrqH91qXbRm0n4pBhv+cj7iCWgG6swrNjLvgC5MKW3+XYLQ==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI2Nzk5N2UxOC04ZWQwLTQ2YjUtOTMwOC01ZWFkMTNmNjM5MzgiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzQ1Mjc0MCwiZXhwIjoxNjk3NDU5OTQwLCJpYXQiOjE2OTc0NTI3NDB9.UEAlssdQ_F9-1wzZxOuCAEIrHdZJDB25bdMh6K1XqUc');
INSERT INTO public."user" VALUES ('39017351-14ca-4e72-8550-7874d94ab961', '0000000005', 'owo@student.telkomuniversity.ac.id', 'Akbar Prastowo', 'owo', 'AOLYTCbG3ce97njgy8tl9p+BI8o8j6R+pVxuJ7MoU9Nf39Jf7ehOles3s19MAbeQmw==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIzOTAxNzM1MS0xNGNhLTRlNzItODU1MC03ODc0ZDk0YWI5NjEiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1NzM1NSwiZXhwIjoxNjk3MzY0NTU1LCJpYXQiOjE2OTczNTczNTV9.gxYWPQApAUmAJ_o7mIJbaPiiswKSt1JL_2N1xgl9AE4');
INSERT INTO public."user" VALUES ('66f82658-a541-4113-8c75-1688b661bed6', '1103213092', '1103213092@student.telkomuniversity.ac.id', 'Raditya Ghifari Aljabbar', '1103213092', 'AIqdXK0116sqtP/NnZhX7p/uFyl17LJSu2l7oo/ZVHMy3zMVQsC4wRXa8vnyQLgDBA==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI2NmY4MjY1OC1hNTQxLTQxMTMtOGM3NS0xNjg4YjY2MWJlZDYiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MDQ2OCwiZXhwIjoxNjk3MzU3NjY4LCJpYXQiOjE2OTczNTA0Njh9.GgwIp15kK4MwlQKc-JQDmCO73oKC5CXSpUjqeQOI1rE');
INSERT INTO public."user" VALUES ('3349d4e4-f0d2-4b1b-b81d-5a4463fe08e4', '1103210038', '1103210038@student.telkomuniversity.ac.id', 'Rafi Fadhlurrahman', '1103210038', 'AMilFMv3F5HQNzGsrN7SJUHn/uNAogPFJYxwQQTynleMqugPpj/UGL/fPZJNKbL/Zg==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIzMzQ5ZDRlNC1mMGQyLTRiMWItYjgxZC01YTQ0NjNmZTA4ZTQiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MDQ4NSwiZXhwIjoxNjk3MzU3Njg1LCJpYXQiOjE2OTczNTA0ODV9.s1euzF1tBQmC7yQHiPs9jfjuRlS_nlTe3j0ur0xirFQ');
INSERT INTO public."user" VALUES ('e84f02a6-e5b7-4d22-a43e-b44077f734e8', '1103213080', 'rfndhaslam@student.telkomuniversity.ac.id', 'Muhammad Rafindha Aslam', 'rfndhaslam', 'ADZKetz+NwwM95hkQ2pPfFkWJSsafXYErGAMCZLlUi+eY2MiSphW3KglhQSJGEs1Xg==', 'Student', '088901742261', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJlODRmMDJhNi1lNWI3LTRkMjItYTQzZS1iNDQwNzdmNzM0ZTgiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MDYxMSwiZXhwIjoxNjk3MzU3ODExLCJpYXQiOjE2OTczNTA2MTF9.BMqoWvX96YGNUE3vLF3HgaIWC0kIFLzhS7mTltr7z2U');
INSERT INTO public."user" VALUES ('e9e69c81-1bab-409f-856e-e1fd4112974a', '1103210174', '1103210174@student.telkomuniversity.ac.id', 'Irawan Mardiansyah', '1103210174', 'AGAl0u7xBAkV4nVrbSWdk7TFO3sNlwWCq//CsvGXWC5XivePYC206E/eOdzd+XZbCw==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJlOWU2OWM4MS0xYmFiLTQwOWYtODU2ZS1lMWZkNDExMjk3NGEiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MzM4NCwiZXhwIjoxNjk3MzYwNTg0LCJpYXQiOjE2OTczNTMzODR9.KyAGML86MKTfN1N6-Hvaka0GFu8X4N6G26BS9nnadpg');
INSERT INTO public."user" VALUES ('f4a17dfb-1b96-4877-8c09-cafa419c302d', '1103213162', '1103213162@student.telkomuniversity.ac.id', 'M.Rakan Bagus', '1103213162', 'ANZHey5tSceyrah0Cl9fNStzXYDbVk1+LuObIlxPgftKxfXOkwWVY4TwN7Rm3OHs+g==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJmNGExN2RmYi0xYjk2LTQ4NzctOGMwOS1jYWZhNDE5YzMwMmQiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MTY2NCwiZXhwIjoxNjk3MzU4ODY0LCJpYXQiOjE2OTczNTE2NjR9.FBBZLldilHX5lrTM8LtCQX7HaJkzZPlvB_hyYrvvnMU');
INSERT INTO public."user" VALUES ('ef6a181e-48a7-48d9-b698-ed264086eeb1', '1103228241', '1103228241@student.telkomuniversity.ac.id', 'Mohammad Jody Hermawan', '1103228241', 'ADxxmK0k9qqlb/D8tTRdvAlH61vdpM1zPegKG11I/m39wu5+Gon4H48mkWeYFmgGfg==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJlZjZhMTgxZS00OGE3LTQ4ZDktYjY5OC1lZDI2NDA4NmVlYjEiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MzQzMywiZXhwIjoxNjk3MzYwNjMzLCJpYXQiOjE2OTczNTM0MzN9.TjSJ6D7BQ6Wk0VtVnjuPQc7psc9ZN_jnt8RhjTR_upA');
INSERT INTO public."user" VALUES ('f7cdbb35-8f21-4618-b64d-3e36375ed18c', '1103210066', '1103210066@student.telkomuniversity.ac.id', 'Miftah Farid Maulana', '1103210066', 'ABHf5PRHyKeUoqieLwkEtYNhaTGtArTPWvyhKAB3YiKVrxjQMi2rc0UH545fOu+Ejw==', 'Student', '895631952596', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJmN2NkYmIzNS04ZjIxLTQ2MTgtYjY0ZC0zZTM2Mzc1ZWQxOGMiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3NDU0MCwiZXhwIjoxNjk3MzgxNzQwLCJpYXQiOjE2OTczNzQ1NDB9.kdoVoKM2mM2IfpCdmAzUIfPeKN-2I9IVAHcdzA-OfqM');
INSERT INTO public."user" VALUES ('f450efb6-6fe3-4ce6-90bf-aa759cfb1621', '1103213048', '1103213048@student.telkomuniversity.ac.id', 'Dheandra Alfarrelwijaya', '1103213048', 'AONgZ8Konv/AJr5wsv+oTgR1zZFdvbva++aUhWgqfcAptILzmoHxUumxsARw1xqFpA==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJmNDUwZWZiNi02ZmUzLTRjZTYtOTBiZi1hYTc1OWNmYjE2MjEiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3MTQxNywiZXhwIjoxNjk3Mzc4NjE3LCJpYXQiOjE2OTczNzE0MTd9.iEu_U7vJ0O4ENdW9cdVO_gKtn0rcdE8fqVQ3dRQMLqs');
INSERT INTO public."user" VALUES ('c9a781e8-965f-427a-a0ab-da3933460dfd', '1103213072', '1103213072@student.telkomuniversity.ac.id', 'Muhammad Hafizh Reyhan', '1103213072', 'AHuDGftS0Sz7GHh0WxSWGzscqoE/ivYz+u7Tzyp3GZrkgCBVXkv2z7R04GPUjnCk+w==', 'Student', '085740923744', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJjOWE3ODFlOC05NjVmLTQyN2EtYTBhYi1kYTM5MzM0NjBkZmQiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3NDQ2NywiZXhwIjoxNjk3MzgxNjY3LCJpYXQiOjE2OTczNzQ0Njd9.ob35G4gANSXYY76sQOUiwwjZUgglN5-w0y0S6byv3iE');
INSERT INTO public."user" VALUES ('b13639bc-222f-468b-ba57-780c465381d6', '1103210042', '1103210042@student.telkomuniversity.ac.id', 'Muhammad Mirza Fauzan Martono', '1103210042', 'AA5d13F4+zRW5lTqmixkwsKJC0lgPiTABgPZs3BVl49FjJnK9K8G1NWim1GdgU/XnQ==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJiMTM2MzliYy0yMjJmLTQ2OGItYmE1Ny03ODBjNDY1MzgxZDYiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MDQ4OSwiZXhwIjoxNjk3MzU3Njg5LCJpYXQiOjE2OTczNTA0ODl9.unoH9ci1UC-eEIfaU_w6ei1HF8Xu7L-e8NF09PEodco');
INSERT INTO public."user" VALUES ('8204287c-5a06-4fd6-a474-c8fc066397d1', '1103213150', '1103213150@student.telkomuniversity.ac.id', 'Mohammad Rasly Rasyid', '1103213150', 'AOw8lVpIBtEBmgjHbcLuVLengcpKUhDJLak3YxgW//thh/Qx6JAdX7SyyCR5aTCTeA==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI4MjA0Mjg3Yy01YTA2LTRmZDYtYTQ3NC1jOGZjMDY2Mzk3ZDEiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MDQ5MywiZXhwIjoxNjk3MzU3NjkzLCJpYXQiOjE2OTczNTA0OTN9.q9rSORmiuboXA1q-XLLYdyG1lUoClbZrz0Y1sQGJjKw');
INSERT INTO public."user" VALUES ('7afcc64c-76c7-44c7-b0c7-79ad8d0d3d0e', '1103213085', '1103213085@student.telkomuniversity.ac.id', 'Ramzy Athaya Muhammad', '1103213085', 'ABAk1eFHK44u8TnWVkYOvnXIneEKzcQVkH+obd151+rjdRb0YoKaSA5ee+5rJJNVNQ==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI3YWZjYzY0Yy03NmM3LTQ0YzctYjBjNy03OWFkOGQwZDNkMGUiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MDUyMCwiZXhwIjoxNjk3MzU3NzIwLCJpYXQiOjE2OTczNTA1MjB9.wvG8HqeD-ETDpsqOc3Z3zvhyn1wFxUkW0CrBHR93zSg');
INSERT INTO public."user" VALUES ('158bdc20-2951-4b81-9b0b-2051b891e158', '1103202162', '1103202162@student.telkomuniversity.ac.id', 'Sadam Poriskova Marchiano', '1103202162', 'AP5XV8ULeoMls9Jo9aMzWWpHQYJ1b7iLyA37meEnOX7YkYsk6TVS4ysANclG3KUcug==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIxNThiZGMyMC0yOTUxLTRiODEtOWIwYi0yMDUxYjg5MWUxNTgiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MDYwMywiZXhwIjoxNjk3MzU3ODAzLCJpYXQiOjE2OTczNTA2MDN9.QJ-Qve44V6o_-il7CXKLzqmjtFdRtMNfY5TBh57tHYs');
INSERT INTO public."user" VALUES ('c086fcc5-edf3-4fe0-bf83-bfe21a383fbc', '1103210184', '1103210184@student.telkomuniversity.ac.id', 'Hafidz Shidiq', '1103210184', 'AL3dCaxPF7R6v00byK1YS43/BgabgDEIFRntCgS2Gg8Rh4egimBGpnPFo94TNzWeww==', 'Student', '085158318772', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJjMDg2ZmNjNS1lZGYzLTRmZTAtYmY4My1iZmUyMWEzODNmYmMiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MDY3MCwiZXhwIjoxNjk3MzU3ODcwLCJpYXQiOjE2OTczNTA2NzB9.OAfr1JQ_F0tnJkw3s5jJDSK1kAifrOqTp7KRiimrSXo');
INSERT INTO public."user" VALUES ('653e2b2c-9418-4389-9465-ec3eccf07710', '1103210001', '1103210001@student.telkomuniversity.ac.id', 'Muhamad Afri Marliansyah', '1103210001', 'AKVOqQveNghYQnZpVeOjxNcDDtsFx04GuUPVwuA9K1rTmelwALzYifMq87FO5Sb0zA==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI2NTNlMmIyYy05NDE4LTQzODktOTQ2NS1lYzNlY2NmMDc3MTAiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MDcxOSwiZXhwIjoxNjk3MzU3OTE5LCJpYXQiOjE2OTczNTA3MTl9.X7IG_SVaPs4qgmKkbNqxy7Du4ow3NP7c4aY_GSlyghU');
INSERT INTO public."user" VALUES ('3c481f2f-3962-4780-bd9c-70f68c829a75', '1103213084', '1103213084@student.telkomuniversity.ac.id', 'Ilham Khodar Trijaya', '1103213084', 'AAWpQ/oTPyQ0YAUgoXRhYJ0738USrAAOrowsDwyC4YxKGwlUjh/tlQGKFNTFjGVkBw==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIzYzQ4MWYyZi0zOTYyLTQ3ODAtYmQ5Yy03MGY2OGM4MjlhNzUiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MTgwMSwiZXhwIjoxNjk3MzU5MDAxLCJpYXQiOjE2OTczNTE4MDF9.nnNsPnUlaovvzLso2uMjucsmcaF3ZZGVAsV73xXKTSA');
INSERT INTO public."user" VALUES ('928f8188-1a15-4f53-88ce-fa6e9f2ec02f', '1103202197', '1103202197@student.telkomuniversity.ac.id', 'Rafly Suryadharma', '1103202197', 'AFZ6SRovp3OMZOZkecqMWjoTWSfYiA3d5VxguaQdripGJicOXmGSKySZYCOl0UszgA==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI5MjhmODE4OC0xYTE1LTRmNTMtODhjZS1mYTZlOWYyZWMwMmYiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4MjI3MCwiZXhwIjoxNjk3Mzg5NDcwLCJpYXQiOjE2OTczODIyNzB9.FFdYA5NJ18bfp2xISWWtbG-40xrWUTIhWhNSTXOw2j8');
INSERT INTO public."user" VALUES ('1b2d1c22-549c-42b2-8cb8-9a2a85441ffe', '1103210206', '1103210206@student.telkomuniversity.ac.id', 'Andika Pratama', '1103210206', 'ADVnAwUnKgS00zyOGfC4NABZGLN3XG1/XyKhUBCFqf31fjPyD/drtW0ih4Q2GjH01Q==', 'Student', '081770964440', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIxYjJkMWMyMi01NDljLTQyYjItOGNiOC05YTJhODU0NDFmZmUiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MTAzOCwiZXhwIjoxNjk3MzU4MjM4LCJpYXQiOjE2OTczNTEwMzh9.liW0kYSIMotgQ8FdEGhu3-cPOK6lalTdxQoYUmjBdPc');
INSERT INTO public."user" VALUES ('c4dce86c-33c9-47fc-a53d-a4d8317b9db7', '1103213054', '1103213054@student.telkomuniversity.ac.id', 'Amalul Anugrah Amin', '1103213054', 'AOYqU1D7k8pDV96wwoglHtGQrAucWrqPv/hWh3wqu6BpiF4EjD5comZRbvbKLjuRgw==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJjNGRjZTg2Yy0zM2M5LTQ3ZmMtYTUzZC1hNGQ4MzE3YjlkYjciLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3ODM1NCwiZXhwIjoxNjk3Mzg1NTU0LCJpYXQiOjE2OTczNzgzNTR9.P6rwCcpTmfypNx3GrssSy3JtdgFeZEEitYxQdYfHdZU');
INSERT INTO public."user" VALUES ('92ace503-8463-421f-8ec7-912b46dcbf5a', '1103228181', '1103228181@student.telkomuniversity.ac.id', 'Dery Hidayat', '1103228181', 'ABgAV6v131AWopLJJZCy+0tfjHnORtSyDzYgoGsU3mOZI/EvrK0426wtC0WcOahyvg==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI5MmFjZTUwMy04NDYzLTQyMWYtOGVjNy05MTJiNDZkY2JmNWEiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MjE3OSwiZXhwIjoxNjk3MzU5Mzc5LCJpYXQiOjE2OTczNTIxNzl9.DpVnOGCfOmnnZK91d-p-L8S5xEUXlOGg75n1tswEflc');
INSERT INTO public."user" VALUES ('c930d19f-08cb-42c2-ba64-319d0963742d', '1103213114', '1103213114@student.telkomuniversity.ac.id', 'Andreas Wahyu Prayogo', '1103213114', 'AKVFQrQLjCHcrTcpRiwHc423OxUb3uX14Hzuu3/Cm3O4m8iYIjArJv1Ff27UWeZ5pA==', 'Student', '081239439682', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJjOTMwZDE5Zi0wOGNiLTQyYzItYmE2NC0zMTlkMDk2Mzc0MmQiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MjE3NywiZXhwIjoxNjk3MzU5Mzc3LCJpYXQiOjE2OTczNTIxNzd9.be-dy45GmLzjzjVBgADKq0DKOs96Lxd5E2M_hSoEffQ');
INSERT INTO public."user" VALUES ('b16a308c-6823-465a-929d-f4a9812081eb', '1103213091', '1103213091@student.telkomuniversity.ac.id', 'Rizki Ramadhan', '1103213091', 'AKAAKX+ypBoWHTp14sTRNO8WKSxpO1uT/KysjRtihm0oaSKrHr+HJSR1KG2k2Rf4mA==', 'Student', '082125116822', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJiMTZhMzA4Yy02ODIzLTQ2NWEtOTI5ZC1mNGE5ODEyMDgxZWIiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3NzAxMiwiZXhwIjoxNjk3Mzg0MjEyLCJpYXQiOjE2OTczNzcwMTJ9.h1IOt_6GQgZ4H-qxnbm0NfcYATzpvZjNTLvMgHU68W0');
INSERT INTO public."user" VALUES ('f8bfc20c-b9e5-4e5b-aefe-5d6204607d59', '1103210113', '1103210113@student.telkomuniversity.ac.id', 'Syahrul Reza Ananda', '1103210113', 'ANZEu/oxFTI+C4gCbJIBWHYnU+Gg4K9hrWDSrzNPdIeKqql7iSBqtXyDjlm80EKQEw==', 'Student', '08987544838', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJmOGJmYzIwYy1iOWU1LTRlNWItYWVmZS01ZDYyMDQ2MDdkNTkiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3MjE2NiwiZXhwIjoxNjk3Mzc5MzY2LCJpYXQiOjE2OTczNzIxNjZ9.Ob9qBIogd21a3liD3U4SvAoc9Vr6SsH9vSYuKw4F6Uc');
INSERT INTO public."user" VALUES ('b7d1ba27-bdad-43e8-b9e5-81d338858bac', '1103213065', '1103213065@student.telkomuniversity.ac.id', 'Sulthan Nauval Abdillah', '1103213065', 'AAgPQG+n9tMILcuYGvvfEo+oAY6Koks7GODNpi39A94pahhFsEgBdAITy+mL/EWe/A==', 'Student', '085155447969', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJiN2QxYmEyNy1iZGFkLTQzZTgtYjllNS04MWQzMzg4NThiYWMiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MjI4NiwiZXhwIjoxNjk3MzU5NDg2LCJpYXQiOjE2OTczNTIyODZ9.eUe2WwjAOJadbuvjnD67ix59pgRPzHxU_dSmAVGnLAQ');
INSERT INTO public."user" VALUES ('2cb0e5af-52b3-48bf-bf16-7915e453136f', '1103210216', '1103210216@student.telkomuniversity.ac.id', 'Muhammad Ashlah Afifi', '1103210216', 'AOnNn5OCoTzZqTiOZlqC8o+3HS9QV1xjHcYsE7sUTDro1RiARfYZMf8Mn4lTzujIkg==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIyY2IwZTVhZi01MmIzLTQ4YmYtYmYxNi03OTE1ZTQ1MzEzNmYiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4MTY5NywiZXhwIjoxNjk3Mzg4ODk3LCJpYXQiOjE2OTczODE2OTd9.vEea9KuhLh5LUZZvDVrEbCwdrGXfGgmW6rymnyesgQ8');
INSERT INTO public."user" VALUES ('eefd78ff-6c61-4c3d-94a8-f4c6601d0ae0', '1103213144', '1103213144@student.telkomuniversity.ac.id', 'Muhammad Alfi Syahrin', '1103213144', 'AKpmWm3i4dCxoXS9MFKaLTaXw1oY5tp7OKXK1bHLUKt0dYFOK/cnnkf9TuqCy6CxXw==', 'Student', '081287886135', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJlZWZkNzhmZi02YzYxLTRjM2QtOTRhOC1mNGM2NjAxZDBhZTAiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MjI1MSwiZXhwIjoxNjk3MzU5NDUxLCJpYXQiOjE2OTczNTIyNTF9.jAZr3-DA5fXOBf7zmEvMWYpHiYOkRa8ii2QLixCdDps');
INSERT INTO public."user" VALUES ('ab6aca93-e173-435b-9aaf-1bfcc1c4ef42', '1103213068', '1103213068@student.telkomuniversity.ac.id', 'Rayhan Daffa Aulya Putra', '1103213068', 'ABQYbu9zspGO+TxuSdBKBOE9vuYd9/m9l2Uztoln2pIygesERzkBnbM+UpGTy48eRA==', 'Student', '081273867938', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJhYjZhY2E5My1lMTczLTQzNWItOWFhZi0xYmZjYzFjNGVmNDIiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MjY4NSwiZXhwIjoxNjk3MzU5ODg1LCJpYXQiOjE2OTczNTI2ODV9.hdnvLHZqRjyVWIX0tpQ-QGwzaf4cEfnoSyeDVawUH0I');
INSERT INTO public."user" VALUES ('a2679f3b-4ffc-4a72-a850-f928de386dd8', '1103210158', '1103210158@student.telkomuniversity.ac.id', 'Rizqy Asyraff Athallah', '1103210158', 'AA06qDMJUktv/lipUo3X5+VF8iHJ4/lo/ZlyHqa0CEYmbMMsHPxdqcHuCXjB04mKaQ==', 'Student', '089662650108', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJhMjY3OWYzYi00ZmZjLTRhNzItYTg1MC1mOTI4ZGUzODZkZDgiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MjY0NiwiZXhwIjoxNjk3MzU5ODQ2LCJpYXQiOjE2OTczNTI2NDZ9.o43OifdffUqbo-VHrw24XveRnRSrQXc1ZIjaT6-nU4A');
INSERT INTO public."user" VALUES ('b98dcc67-4558-430e-9cee-c9ee9554d0d2', '1103204086', '1103204086@student.telkomuniversity.ac.id', 'Rizky Ramadhani Syam', '1103204086', 'AIhGLQBLD5cdtONolZNm6m7n+o0mC7S7MVLEQfosCmX7Ym+JMwp4gevMkAxFZFD1Rg==', 'Assistant', '085156930589', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJiOThkY2M2Ny00NTU4LTQzMGUtOWNlZS1jOWVlOTU1NGQwZDIiLCJyb2xlIjoiQXNzaXN0YW50Iiwic2VlbGFic190b2tlbiI6IjNrZHRnZmZxa3NpcHA1b2cwczY5cHFoZW51cnJxOTdrIiwibmJmIjoxNjk3NDUyNTU2LCJleHAiOjE2OTc0NTk3NTYsImlhdCI6MTY5NzQ1MjU1Nn0.HyUpJtXs0Np7KLDrSsCbjK6sU2c45HdN7NyXaz6Q3-M');
INSERT INTO public."user" VALUES ('9ba57c8d-f905-476e-a9e8-e379b8b78203', '1103202133', '1103202133@student.telkomuniversity.ac.id', 'Fahar Nail Hakim', '1103202133', 'AG+zN+YOC2+IU8XWooAshFlj2Zp4hjoX9SQqa97CwGwehSlMeALNmXpmUEaao4+MbA==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI5YmE1N2M4ZC1mOTA1LTQ3NmUtYTllOC1lMzc5YjhiNzgyMDMiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MzQxMywiZXhwIjoxNjk3MzYwNjEzLCJpYXQiOjE2OTczNTM0MTN9.kRSNwfuBull-N_FkkyNYHgL8vU22mJUEC7TI8lahqaM');
INSERT INTO public."user" VALUES ('685598de-fd3c-460e-8ce5-c45c24c57649', '1103213131', '1103213131@student.telkomuniversity.ac.id', 'Muhammad Musyaffakul Harisna', '1103213131', 'ANJtonsVnh5Yhw4F6SQ5CqtsijADh83C2PRSJhSirxiwGrIPF6kq5JN47xKc14YXig==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI2ODU1OThkZS1mZDNjLTQ2MGUtOGNlNS1jNDVjMjRjNTc2NDkiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MzQ1MSwiZXhwIjoxNjk3MzYwNjUxLCJpYXQiOjE2OTczNTM0NTF9.hxQiWPvI48bFWvNvSC7M-dYmAfez6sOiKuKC_a9gBf4');
INSERT INTO public."user" VALUES ('29a4ce84-69d2-4751-b063-c4c234fb4971', '1103213122', '1103213122@student.telkomuniversity.ac.id', 'Fakhriy Dzakwan Alinanda Sudrajat', '1103213122', 'ADmT1c4PdxZIHsoBfC2XV5r1P0yBSCPeW9Mgas57wkZlQRiskefXXg6ns7KeZQ4Aww==', 'Student', '085249513009', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIyOWE0Y2U4NC02OWQyLTQ3NTEtYjA2My1jNGMyMzRmYjQ5NzEiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3MjU4NSwiZXhwIjoxNjk3Mzc5Nzg1LCJpYXQiOjE2OTczNzI1ODV9.fsUw07QnxunJRXSpNz5gyQLbr_L5RH76oFEx1Gmp2Yw');
INSERT INTO public."user" VALUES ('b6e42f4a-1951-4613-b87e-6f3c9b538861', '1103210205', '1103210205@student.telkomuniversity.ac.id', 'Hero Kartiko', '1103210205', 'AHFfGqrJyhT6To+Y2CoJ1Tf4UOc9Tfk+gD7FQDcUo6P8N1YmC1WssskntYQHdwMFlQ==', 'Student', '081251283712', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJiNmU0MmY0YS0xOTUxLTQ2MTMtYjg3ZS02ZjNjOWI1Mzg4NjEiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1MzYzNiwiZXhwIjoxNjk3MzYwODM2LCJpYXQiOjE2OTczNTM2MzZ9.wGxTruia64PsaS40jZYUDRIzBnHkFSP15R3sgQTUfGM');
INSERT INTO public."user" VALUES ('e2253199-7c7e-4ebc-b475-d70d7392ea45', '1103210189', '1103210189@student.telkomuniversity.ac.id', 'James Mesakh Prakoso', '1103210189', 'AIpleGg3FjZqeYhfA+efykH70qeaOHzHF3d2yZmpGCwwfYV8lbgxza8Tkravv1cLPw==', 'Student', '087796871712', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJlMjI1MzE5OS03YzdlLTRlYmMtYjQ3NS1kNzBkNzM5MmVhNDUiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3NTc1NSwiZXhwIjoxNjk3MzgyOTU1LCJpYXQiOjE2OTczNzU3NTV9.7gjR0i6IY_Ux6t8vMbD-t2IgZshTRRW-NwJrfBIv1Bk');
INSERT INTO public."user" VALUES ('464b8efb-df0b-4859-a2f5-cebb1bbf1357', '1103210032', '1103210032@student.telkomuniversity.ac.id', 'Angelica Sharon Amelia Simanjuntak', '1103210032', 'AOSqYoCrmOBJtSB4RN0+SagwxMx9cajNfQD1feP37ETqe6AJ4an4NoqoHAcgowteaA==', 'Student', '08113993221', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI0NjRiOGVmYi1kZjBiLTQ4NTktYTJmNS1jZWJiMWJiZjEzNTciLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM2MTMxMywiZXhwIjoxNjk3MzY4NTEzLCJpYXQiOjE2OTczNjEzMTN9.JDJWH81yU-hX_HHqm-cjZ0HvA0rxM5lcbulNvc3GQZY');
INSERT INTO public."user" VALUES ('c152ca58-3caa-4359-b719-8064410402af', '1103210146', '1103210146@student.telkomuniversity.ac.id', 'Rey Rizqi Anugerah', '1103210146', 'AKBVdJ4RySR1BL1a7zUek8b8d7HYF6jdPMInBNxvrNC8yrVWGb+CqYpSovG8pfJL0A==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJjMTUyY2E1OC0zY2FhLTQzNTktYjcxOS04MDY0NDEwNDAyYWYiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1NTA3OCwiZXhwIjoxNjk3MzYyMjc4LCJpYXQiOjE2OTczNTUwNzh9.hLtxoC0Cx9wKZwIJJ1urIPMzPA25Lncbn1X-_zIQ_Zs');
INSERT INTO public."user" VALUES ('225ee408-bdd2-4360-b5b8-2b0eca4f7001', '1103210009', '1103210009@student.telkomuniversity.ac.id', 'Muhammad Fadhil Nararya Basuki', '1103210009', 'APCAQAqPCvxviwD3RHyp1pPh28OdluL9aNW6vPZm4K99FhPa+aAbufVJzeULFIwrEQ==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIyMjVlZTQwOC1iZGQyLTQzNjAtYjViOC0yYjBlY2E0ZjcwMDEiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1NTY2MywiZXhwIjoxNjk3MzYyODYzLCJpYXQiOjE2OTczNTU2NjN9.LVl7FSJdCJHKjysxzAV8GNMlmJMdbOWk3EOijjFKGNA');
INSERT INTO public."user" VALUES ('87f58b43-4dcd-4c3d-b30e-4f3475d6ce0e', '1103210057', '1103210057@student.telkomuniversity.ac.id', 'Yogi Wijaya', '1103210057', 'ACpuJ8t4iN4kJhqOoLD2z7lAKvY753PFMleeO8y9GbpgMFi7PNyS8QChvSe36O6KOg==', 'Student', '087835288794', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI4N2Y1OGI0My00ZGNkLTRjM2QtYjMwZS00ZjM0NzVkNmNlMGUiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM2OTg1MSwiZXhwIjoxNjk3Mzc3MDUxLCJpYXQiOjE2OTczNjk4NTF9.9gRv47Tf6BhAY_Faft2WphD-8WCN2tGl7PqrKltzKO4');
INSERT INTO public."user" VALUES ('2aeb2e15-8dbe-402d-94c2-fae34897d73e', '1103213078', '1103213078@student.telkomuniversity.ac.id', 'Azmi Taqiuddin Syah', '1103213078', 'AP09YAkqjdXlTGIUm/ObTq9vd9AXJ8USGu+/1ubKhQfboEj7faoZDSKI4GqSbUH8TA==', 'Student', '082170002410', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIyYWViMmUxNS04ZGJlLTQwMmQtOTRjMi1mYWUzNDg5N2Q3M2UiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1NjgzMiwiZXhwIjoxNjk3MzY0MDMyLCJpYXQiOjE2OTczNTY4MzJ9.j_tOqf69Zk5Q0gqx9AP4qKNgSF_Vq0PGNpvQgf61CQQ');
INSERT INTO public."user" VALUES ('add61e4c-bb8c-4e87-a3a5-b8f6debba791', '1103213025', '1103213025@student.telkomuniversity.ac.id', 'Azizah Rahma Asri', '1103213025', 'ADcOpuHIImisGtnQB4uScxZe+rY+NNShk55I6VuZxQ394m7y4QNmHMbc0lwF6ifxbw==', 'Student', '081374537811', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJhZGQ2MWU0Yy1iYjhjLTRlODctYTNhNS1iOGY2ZGViYmE3OTEiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzQ0OTU0OSwiZXhwIjoxNjk3NDU2NzQ5LCJpYXQiOjE2OTc0NDk1NDl9.-56HCprZxfmV0JYgO5A6XHsnhSHev9GvMHaRRIFIjC0');
INSERT INTO public."user" VALUES ('cef34a97-7a25-44ab-8c50-806f6b9ca902', '1103202098', '1103202098@student.telkomuniversity.ac.id', 'Galih Karya Gemilang', '1103202098', 'ABSKU9AEy66Mk85PXnDDCXqqbd+lYnFgeZ6+eGk3PaTii7QZcTEgtyAu11/1gTHwZQ==', 'Assistant', '085862056069', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJjZWYzNGE5Ny03YTI1LTQ0YWItOGM1MC04MDZmNmI5Y2E5MDIiLCJyb2xlIjoiQXNzaXN0YW50Iiwic2VlbGFic190b2tlbiI6ImMxNzhidXRjOXFmbzRtOGNpZnRkMHA2NDZvYTlkYXV2IiwibmJmIjoxNjk3NDUyNjIyLCJleHAiOjE2OTc0NTk4MjIsImlhdCI6MTY5NzQ1MjYyMn0.lBwZQHJOuSoPRhsUW4Nk_6Kj-o9sn2HAo1VxoDApKFw');
INSERT INTO public."user" VALUES ('8db20d27-3196-4fb0-865f-8807672c46d1', '1103213028', '1103213028@student.telkomuniversity.ac.id', 'Faraday Barr Fatahillah', '1103213028', 'AOB2M8YXuKXpg+kSxUdGyuUGS8nMTQEdTsmgXu2Zo5bgukT6QChLLhw66ntL7YRFDg==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI4ZGIyMGQyNy0zMTk2LTRmYjAtODY1Zi04ODA3NjcyYzQ2ZDEiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1OTU3NCwiZXhwIjoxNjk3MzY2Nzc0LCJpYXQiOjE2OTczNTk1NzR9.n4XfceFViR3R3rKWpViIrfEPCNNMqp2YtRfuwj2K6-s');
INSERT INTO public."user" VALUES ('d154d382-8838-42c9-b30e-cb2e2ae99ce2', '1103210063', '1103210063@student.telkomuniversity.ac.id', 'Andhika Yudha Pradana', '1103210063', 'ANsMTsTzcVEaDZUfr6ceJp/k60fGYDUUJso7d3zZAUXEC+iiYkHgz6kjm4YYUICNsA==', 'Student', '08111119280', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJkMTU0ZDM4Mi04ODM4LTQyYzktYjMwZS1jYjJlMmFlOTljZTIiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1Nzc5MCwiZXhwIjoxNjk3MzY0OTkwLCJpYXQiOjE2OTczNTc3OTB9.dDCL2mm__q_SqpkJIuDu9-QoTlLng1wN5r2IVyiWqEI');
INSERT INTO public."user" VALUES ('00f0a1ab-4a3e-4424-a963-d59ffac94e82', '1103210156', '1103210156@student.telkomuniversity.ac.id', 'Keresna Destin Permana', '1103210156', 'AJPGa2JhHJZpJHk5q/Tffh0HYflWhejfH4yoakhDbd16p6KGR+r1WqfO4NSrXhe2pw==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIwMGYwYTFhYi00YTNlLTQ0MjQtYTk2My1kNTlmZmFjOTRlODIiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1Nzg4MiwiZXhwIjoxNjk3MzY1MDgyLCJpYXQiOjE2OTczNTc4ODJ9.QdJM2iZL-96PCzXBSUdyVqUEFnBZFImSu5Spy6AX624');
INSERT INTO public."user" VALUES ('869eea8e-a421-44d9-b3af-246c5eac40ce', '1103210128', '1103210128@student.telkomuniversity.ac.id', 'Mochamad Arief Dermawan', '1103210128', 'AGUZoP02OVEmYt0VpE0TzgM1631SoyE3D+Lz7Q14gsXU+TjvcrQ338RtOtauaCsIeg==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI4NjllZWE4ZS1hNDIxLTQ0ZDktYjNhZi0yNDZjNWVhYzQwY2UiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1ODA3NCwiZXhwIjoxNjk3MzY1Mjc0LCJpYXQiOjE2OTczNTgwNzR9.lcCs3KCcNoTnYMiH7dIMUcgxIyHSeeh948GyPuag2wE');
INSERT INTO public."user" VALUES ('c3ee6172-ad06-4633-8e9a-9d8cb02517e4', '1103213012', '1103213012@student.telkomuniversity.ac.id', 'Tito Alfarabi Biwarno', '1103213012', 'ALv2Vj012myhJOWvWlw6kRvF3YMTIYdvx8hj/M2F5iJv8UiGdTS12KbzDhp/3diDOA==', 'Student', '082246441923', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJjM2VlNjE3Mi1hZDA2LTQ2MzMtOGU5YS05ZDhjYjAyNTE3ZTQiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1ODAyMSwiZXhwIjoxNjk3MzY1MjIxLCJpYXQiOjE2OTczNTgwMjF9.AcwgEK7pVgTVyGFCTSdjTZ1lrfbNGHqPcasVI1j5ZNU');
INSERT INTO public."user" VALUES ('38b18c68-e082-4fd1-8a17-e27e31f143a8', '1103202047', '1103202047@student.telkomuniversity.ac.id', 'Jhose Immanuel Sembiring', '1103202047', 'AGDXcliSrjUhzfkpDmhsHMBP4vuzoIGBGPiL4F3YJcCYu8CBIpybdGD93vTEkT0htg==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIzOGIxOGM2OC1lMDgyLTRmZDEtOGExNy1lMjdlMzFmMTQzYTgiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1OTAwOSwiZXhwIjoxNjk3MzY2MjA5LCJpYXQiOjE2OTczNTkwMDl9.c6N_g2rdqe2awa5cEJhWfC5q_fTtBn68RU01GQOr_IY');
INSERT INTO public."user" VALUES ('0c31dad7-fb20-4a3b-8c66-cb6ddb8fe52e', '1103213036', '1103213036@student.telkomuniversity.ac.id', 'Atanasius Pradiptha Sampurno', '1103213036', 'AMr/B6jnAJZgXpCqgmuML6QdLOdpI3PsMsLDJOs1Sga7QIMKN/R+2LNYeX7l/msFxQ==', 'Student', '081318823156', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIwYzMxZGFkNy1mYjIwLTRhM2ItOGM2Ni1jYjZkZGI4ZmU1MmUiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1OTA2NSwiZXhwIjoxNjk3MzY2MjY1LCJpYXQiOjE2OTczNTkwNjV9.ifyQU1pWg0m_ldB2xbYppBIloZA12oigjc50x2C7Kys');
INSERT INTO public."user" VALUES ('69dfd4d0-c9c4-4b93-bbf2-0ad7471f0a3f', '1103210097', '1103210097@student.telkomuniversity.ac.id', 'Difi Rahmaniza', '1103210097', 'AKs8gSYaWalLf74qs/N4A9A8M8k0nuKM49CiqpQtmJyfnJrIaLG2DJ4MCvcJ0we16w==', 'Student', '081266331026', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI2OWRmZDRkMC1jOWM0LTRiOTMtYmJmMi0wYWQ3NDcxZjBhM2YiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM1OTQ2NSwiZXhwIjoxNjk3MzY2NjY1LCJpYXQiOjE2OTczNTk0NjV9.1JIOfi0PziqQ6yfS9z73pEsI9SyfD3-4o6X9H2QbO6I');
INSERT INTO public."user" VALUES ('8122ffca-b4c2-4877-9d79-9f5dc2f9a864', '1103213059', '1103213059@student.telkomuniversity.ac.id', 'Panji Christoper Silalahi', '1103213059', 'ABHvkhQTE1jpgQUGB21eNU32x6kbQUIWiGTlU4FzqCmFgM7po3jD2qllwm0yvmIpIw==', 'Student', '081375282670', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI4MTIyZmZjYS1iNGMyLTQ4NzctOWQ3OS05ZjVkYzJmOWE4NjQiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM2MDMzNywiZXhwIjoxNjk3MzY3NTM3LCJpYXQiOjE2OTczNjAzMzd9.47gNDDOBkna5fEHmradMqkXrpqnWYIIoe2dQK8ku7WE');
INSERT INTO public."user" VALUES ('2999454d-0987-44d3-9927-9ebc51d0ceb6', '1103213110', '1103213110@student.telkomuniversity.ac.id', 'Aldo Nitehe Lase', '1103213110', 'APrUg91b9g1cCeEBBSDpuza12Cvid647ITiRe6Hz0b4jOoOwTv98+AZmcti2uY7MuQ==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIyOTk5NDU0ZC0wOTg3LTQ0ZDMtOTkyNy05ZWJjNTFkMGNlYjYiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4MjU5OSwiZXhwIjoxNjk3Mzg5Nzk5LCJpYXQiOjE2OTczODI1OTl9.FOlsXtmOgAmrBc6iBLVIf6o7FOoDIOLTt67xNtKj4-E');
INSERT INTO public."user" VALUES ('c12e2b5a-84d1-4051-bd71-7811a33df90d', '1103213119', '1103213119@student.telkomuniversity.ac.id', 'Cetta Maulana Andhika', '1103213119', 'AP+YfOBU55coXkYphVX+a0fxzZpn10YhTs7mdNKDgvE67G/mixPdnnzjnsLoOxD7Lw==', 'Student', '085156175273', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJjMTJlMmI1YS04NGQxLTQwNTEtYmQ3MS03ODExYTMzZGY5MGQiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3NjM1OSwiZXhwIjoxNjk3MzgzNTU5LCJpYXQiOjE2OTczNzYzNTl9.Azcqw6RAUAkbO8i3Iuq88C_YRgX4A0Tfo2rKKx6ERiI');
INSERT INTO public."user" VALUES ('329f9f06-c089-4fd2-9754-fba0fe1e91e1', '1103213077', '1103213077@student.telkomuniversity.ac.id', 'Muhammad Raihan Butar-Butar', '1103213077', 'AHyyum/Mw53/s9qlLLM3jJpFFdi5RBvnwv0pjY7h7ZmcATNr/emdmn3NtrJ0ho2GkA==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIzMjlmOWYwNi1jMDg5LTRmZDItOTc1NC1mYmEwZmUxZTkxZTEiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4NjA5MSwiZXhwIjoxNjk3MzkzMjkxLCJpYXQiOjE2OTczODYwOTF9.8LxGXvyiX8UocJgOsWbeLRkKmyqwD4ymE3xVP2fg-WM');
INSERT INTO public."user" VALUES ('68e7fa31-c028-46a8-9315-0b3dfd97be57', '1103213007', '1103213007@student.telkomuniversity.ac.id', 'Rizki Aprilia Rahman', '1103213007', 'ABib/vTDCzqV0wwCYXLFgWNglvKkjPVjCQ1zyFlTcJ1x778Kc11tPlR7TcQN7mmllA==', 'Student', '085649991594', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI2OGU3ZmEzMS1jMDI4LTQ2YTgtOTMxNS0wYjNkZmQ5N2JlNTciLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM2MTgxNywiZXhwIjoxNjk3MzY5MDE3LCJpYXQiOjE2OTczNjE4MTd9.IwIrbz0BRp-zhWwu1FfxvzVndIKu8yrVUHcsc9LwFK0');
INSERT INTO public."user" VALUES ('7b6dbf81-0fb6-48f8-aebf-02febe60b89e', '1103213011', '1103213011@student.telkomuniversity.ac.id', 'Muhammad Faiz Anindyo Widodo', '1103213011', 'AMzpr0BUhehzuDsNXIhiOgGFGXLAM9/nIlYyiQeYcV8yYTLYErNk3B42zfqx2XxkjA==', 'Student', '0895384283170', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI3YjZkYmY4MS0wZmI2LTQ4ZjgtYWViZi0wMmZlYmU2MGI4OWUiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM2MTc0NCwiZXhwIjoxNjk3MzY4OTQ0LCJpYXQiOjE2OTczNjE3NDR9.phTogt-zARqP8DvjnrhlUd3sin8CI5oHg0jYenYxEec');
INSERT INTO public."user" VALUES ('c1ff9ef0-b967-4f26-9a29-03fffba5c350', '1103228244', '1103228244@student.telkomuniversity.ac.id', 'Cristian Yulma Wibowo', '1103228244', 'AGvUtbgrVvd2e8felMgXr7rYm6+a16N88xBvGvbTr8rPMyixVZd90VNvfR/BoMxJvA==', 'Student', '085867677480', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJjMWZmOWVmMC1iOTY3LTRmMjYtOWEyOS0wM2ZmZmJhNWMzNTAiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4MjU4NCwiZXhwIjoxNjk3Mzg5Nzg0LCJpYXQiOjE2OTczODI1ODR9.6jsGAnZ7CLE1YdHU9VubS59FgrM6sKhjyUesk16LR9U');
INSERT INTO public."user" VALUES ('968eb2e5-f74e-4db0-b49e-c9500671896e', '1103213136', '1103213136@student.telkomuniversity.ac.id', 'Fadhil Dzikri Aqila', '1103213136', 'AMY/WBr5BgBoWK+d3iizpe5N/PooX8rqE3Ibeb5iz3S/25h4T1IGXerYFMFyG0C8mg==', 'Student', '089611420620', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI5NjhlYjJlNS1mNzRlLTRkYjAtYjQ5ZS1jOTUwMDY3MTg5NmUiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM2NjIwNiwiZXhwIjoxNjk3MzczNDA2LCJpYXQiOjE2OTczNjYyMDZ9.R-HW-hnWXjGT5Ko2S-ipW0jB9yRJpTM7UJUgMKCRx8c');
INSERT INTO public."user" VALUES ('655779d6-095f-4b60-880e-a2c9755541ca', '1103228240', '1103228240@student.telkomuniversity.ac.id', 'Khairi Hibatullah Ridho', '1103228240', 'AM3kbHSXDZfk9Qb3ZkhNCyCGi9X7b3dtgqlgFFRfvcvQpJm0KCYr0nTWqYn+Ptyvsw==', 'Student', '082315933232', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI2NTU3NzlkNi0wOTVmLTRiNjAtODgwZS1hMmM5NzU1NTQxY2EiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM2MjI0NywiZXhwIjoxNjk3MzY5NDQ3LCJpYXQiOjE2OTczNjIyNDd9.6XQtVgTza9v2RQ9i6sE45kQP0QjznxPSmIIg19NSfnQ');
INSERT INTO public."user" VALUES ('97620bae-cba1-4a17-a3a5-4c9c0314b41d', '1103210201', '1103210201@student.telkomuniversity.ac.id', 'Yohanes Yogas Herlambang', '1103210201', 'AK70VWvk2JBMznG9lafmW+VUmxyoKKZ5tYJusxSGfha4Bc94fsmJzPJmsLjGHdY9Aw==', 'Student', '089665730322', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI5NzYyMGJhZS1jYmExLTRhMTctYTNhNS00YzljMDMxNGI0MWQiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM2Mjc3MiwiZXhwIjoxNjk3MzY5OTcyLCJpYXQiOjE2OTczNjI3NzJ9._eHtM4fE4hi_nr0M0paFgBzX7tnydu8gPUewxy4dSNE');
INSERT INTO public."user" VALUES ('4371f459-38d1-4d40-b001-79b017414056', '1103213090', '1103213090@student.telkomuniversity.ac.id', 'Maulidiatama Akbar', '1103213090', 'AL4DyxPp78VH0ifd2tPtysWFlblSnyyUEIN8oPuPA3VnWj690jIkL7fbTd5kk7gKpA==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI0MzcxZjQ1OS0zOGQxLTRkNDAtYjAwMS03OWIwMTc0MTQwNTYiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3MzU3MSwiZXhwIjoxNjk3MzgwNzcxLCJpYXQiOjE2OTczNzM1NzF9.xmHjWGIHYJdvwkQZEZzSLyR9y3rBQyyP3BJU6peAFBc');
INSERT INTO public."user" VALUES ('8d4dfac8-2adc-4db3-b020-7c91123f07b4', '1103213164', '1103213164@student.telkomuniversity.ac.id', 'Arkan Fayiz Naharudin', '1103213164', 'AChzbnWrWZx2b7mo+7hiWslVAQqonmsfdCq0I07QdEPF3+f87okU0aim7crXPAFWyw==', 'Student', '085960359214', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI4ZDRkZmFjOC0yYWRjLTRkYjMtYjAyMC03YzkxMTIzZjA3YjQiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM2MzU2OCwiZXhwIjoxNjk3MzcwNzY4LCJpYXQiOjE2OTczNjM1Njh9.1gvKNYnZGk6Y9Ub1dBN2_1n45vRN7iTN-tZH0pAHDoM');
INSERT INTO public."user" VALUES ('e21d99b8-51e9-4642-93af-a9f26a5cb3c3', '1103213152', '1103213152@student.telkomuniversity.ac.id', 'Satya Athaya Daniswara', '1103213152', 'ANuFsiaj+YEOE1Kl7NTLLSYBqxUYmCOnTnB8BUqG6HEekwA4dDU4yzuX/fywxIVqgQ==', 'Student', '089630145969', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJlMjFkOTliOC01MWU5LTQ2NDItOTNhZi1hOWYyNmE1Y2IzYzMiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3MDc2MCwiZXhwIjoxNjk3Mzc3OTYwLCJpYXQiOjE2OTczNzA3NjB9.qvQrAi1mZixQB9C9m7iUx23DmvDQzs7jti1JW51FORk');
INSERT INTO public."user" VALUES ('10926025-bd46-4fca-9180-d51b68edb29b', '1103213127', '1103213127@student.telkomuniversity.ac.id', 'Irfan Fathoni', '1103213127', 'ABgWPJ+5Ak/+dYEltkl2Pk4ZAD/Mni08HH9zTCaEKCWQuKLNTIj+OuUjTZbqzJ39ag==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIxMDkyNjAyNS1iZDQ2LTRmY2EtOTE4MC1kNTFiNjhlZGIyOWIiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3MTY1NiwiZXhwIjoxNjk3Mzc4ODU2LCJpYXQiOjE2OTczNzE2NTZ9.27PEPqhLzp3Xq-0lmMB0gaY1Y7yFKRvNyt4P7FATwMg');
INSERT INTO public."user" VALUES ('8228ed68-9b8f-413d-a268-795c4587f630', '1103204090', '1103204090@student.telkomuniversity.ac.id', 'Awal Fitwah Riansyah', '1103204090', 'ALtV1DJJnI/6FSKkcxaS+fWQ3n39qfaZFcwysSlD0WY9A2emofnQB5MTxz+Y+h2/kw==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI4MjI4ZWQ2OC05YjhmLTQxM2QtYTI2OC03OTVjNDU4N2Y2MzAiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4NTY4NCwiZXhwIjoxNjk3MzkyODg0LCJpYXQiOjE2OTczODU2ODR9.yhIGQAFFV2iinTCU4n-Y4BGS72jKVEisf-cD0Mo0YQE');
INSERT INTO public."user" VALUES ('8f186478-c18e-4ac5-9ad3-2b9fa4ada8be', '1103210018', '1103210018@student.telkomuniversity.ac.id', 'Muhammad Nadhim Abdirrahman', '1103210018', 'AFzwXBiUZ9OSOnObk4c6UgxPQ3e59f1ZVRIZhF7mzej9qdv7SOve1IEEAp4bV/5ftQ==', 'Student', '08115436444', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI4ZjE4NjQ3OC1jMThlLTRhYzUtOWFkMy0yYjlmYTRhZGE4YmUiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM2NjQ0NywiZXhwIjoxNjk3MzczNjQ3LCJpYXQiOjE2OTczNjY0NDd9.il8QS2WUMoKVdOA6oFcHU82OQwzb39SdR8neaBd3McY');
INSERT INTO public."user" VALUES ('418d2792-019d-4018-98ef-2f1138229007', '1103190033', '1103190033@student.telkomuniversity.ac.id', 'Haridhova Pangestillah', '1103190033', 'AMBsSiPsK7H7eIVowErXN8x6pGsHfq1+vmmyccqswjQ0ktF10w8MyljHCPxyOB+0LA==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI0MThkMjc5Mi0wMTlkLTQwMTgtOThlZi0yZjExMzgyMjkwMDciLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM2Nzc5NywiZXhwIjoxNjk3Mzc0OTk3LCJpYXQiOjE2OTczNjc3OTd9.hzNO4tumDKq4U3XC24ttA0o1yfBrbAtlx_NiSnREpxE');
INSERT INTO public."user" VALUES ('14176c89-0dd8-493c-a5a5-7fc797ab44e9', '1103228224', '1103228224@student.telkomuniversity.ac.id', 'Muhammad Bustanul Arifin Nur Fathurrahman', '1103228224', 'AO5IcYjIZibxvqjcj8+fW6oZAqZcNO2bur2hd6puNj4NgmwxBwSfzzJ2kjEa1gg4HQ==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIxNDE3NmM4OS0wZGQ4LTQ5M2MtYTVhNS03ZmM3OTdhYjQ0ZTkiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM2OTM5NywiZXhwIjoxNjk3Mzc2NTk3LCJpYXQiOjE2OTczNjkzOTd9.oE0BZjc_NugUJO-WvbOntAP8yOO3pw1ENdl2ywaxjLs');
INSERT INTO public."user" VALUES ('5941e612-a2d5-4a1d-a82e-96d197fa21b5', '1103204185', '1103204185@student.telkomuniversity.ac.id', 'Rafif Ariasa', '1103204185', 'AIuNNVdOyaQtMISRDPe1S/mdaWrIiUL49vaVplQR4FgXaq+RkkV4B9wLmGdThOcEtg==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI1OTQxZTYxMi1hMmQ1LTRhMWQtYTgyZS05NmQxOTdmYTIxYjUiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3MjkwOCwiZXhwIjoxNjk3MzgwMTA4LCJpYXQiOjE2OTczNzI5MDh9.Kya83VKUAzJBz-M5rEOi0Uv7jD5X7dEVyqWn9tibVr8');
INSERT INTO public."user" VALUES ('d6212ffe-84c3-4e25-8999-adc7e36b0bce', '1103210035', '1103210035@student.telkomuniversity.ac.id', 'Dafa Rhesa Sudibyo', '1103210035', 'ANyZ5AG1aq4eQRraKo3Eb2iXHmlcmqrZPSzqXX/5ZOAZvL071XYEIrRBoaywqcE+tA==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJkNjIxMmZmZS04NGMzLTRlMjUtODk5OS1hZGM3ZTM2YjBiY2UiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3MzMyNCwiZXhwIjoxNjk3MzgwNTI0LCJpYXQiOjE2OTczNzMzMjR9.85oe-DZGvMmOFcTy17NG5wGqTLAGZI5El5MVFkl5GlQ');
INSERT INTO public."user" VALUES ('8455bb09-77fe-4026-99ab-1f65f5d6aeee', '1103210101', '1103210101@student.telkomuniversity.ac.id', 'Eva Fiorina Siahaan', '1103210101', 'AAQgneG1j+MWCzxnFriFWY6N5+0EweLqwVXAzzR3cstIpisukKgMvIEEDbpTt2Hpmg==', 'Student', '081265255233', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI4NDU1YmIwOS03N2ZlLTQwMjYtOTlhYi0xZjY1ZjVkNmFlZWUiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3MzMxNiwiZXhwIjoxNjk3MzgwNTE2LCJpYXQiOjE2OTczNzMzMTZ9.AFC1OVWp2Un3eAxM0Z7u0lipcdnIfO3REGxRqlW9tnk');
INSERT INTO public."user" VALUES ('a61e4660-d0b4-44cd-8add-332942ef3837', '1103210037', '1103210037@student.telkomuniversity.ac.id', 'Danny Hamtar Pangestu', '1103210037', 'ADvQKQE2zuM3i7HATvujdEt1+Up4TiDSlPUzVoINUXwwo6wWwWN0PzS7Jbqbq41ANA==', 'Student', '085382701759', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJhNjFlNDY2MC1kMGI0LTQ0Y2QtOGFkZC0zMzI5NDJlZjM4MzciLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4NDkyOSwiZXhwIjoxNjk3MzkyMTI5LCJpYXQiOjE2OTczODQ5Mjl9.dntHNBEUcYTq_AwC49_gncA28zC_lUdxNVUZ21t1y7k');
INSERT INTO public."user" VALUES ('055cd344-ae24-4aef-9446-bfa13c9f2f58', '1103213051', '1103213051@student.telkomuniversity.ac.id', 'Daffa Muhammad Irfan', '1103213051', 'ABqutbMWvjrvyb8SQUFAx9NsY+MS7f6bBpdMcCXnvoHDTgWo1GIQgHuMm4ZJaVeHgQ==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIwNTVjZDM0NC1hZTI0LTRhZWYtOTQ0Ni1iZmExM2M5ZjJmNTgiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3NDQxNCwiZXhwIjoxNjk3MzgxNjE0LCJpYXQiOjE2OTczNzQ0MTR9.bSJLsEwv06MbKsPhJtlQOZK93H0cbVry1RIoPbT7kaE');
INSERT INTO public."user" VALUES ('17d0e440-325b-4e68-8f75-f3067744df15', '1103213165', '1103213165@student.telkomuniversity.ac.id', 'Kinanti Aria Widaswara', '1103213165', 'AKwHER7h/UnpdecTq9Vd7zc+Zh+0XR6kNI2UPprBkhFEoeTmG/Q1ahf08d+4HzxKpg==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIxN2QwZTQ0MC0zMjViLTRlNjgtOGY3NS1mMzA2Nzc0NGRmMTUiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4NjcyOSwiZXhwIjoxNjk3MzkzOTI5LCJpYXQiOjE2OTczODY3Mjl9.bC4mmerJT23siQxKnnQ5T1ToAR4dbBUlBuuDGcc2T_E');
INSERT INTO public."user" VALUES ('1b44e834-cc19-46cf-bea3-e4e82c00a6cd', '1103210094', '1103210094@student.telkomuniversity.ac.id', 'Irman Prayista', '1103210094', 'AIlU7wCnOPaF9mY1LOnFtKMpuQ0sc3gKc/XlUWHZHshgtqgSNNsPFrQ8k8iez57fPA==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIxYjQ0ZTgzNC1jYzE5LTQ2Y2YtYmVhMy1lNGU4MmMwMGE2Y2QiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzQxNDgwOCwiZXhwIjoxNjk3NDIyMDA4LCJpYXQiOjE2OTc0MTQ4MDh9.AY2-6Yu8ZMsDMNmXH8Ww-rHPeriy9PoKiSbMAF7QzZo');
INSERT INTO public."user" VALUES ('aece9f08-b0f0-4ea4-bafe-64c93466f11a', '1103213021', '1103213021@student.telkomuniversity.ac.id', 'Diaz Abdi', '1103213021', 'APrXtJugZhqMYfF6N+f3CZwLBQANOINc8wYDaetd5OUfyk81Ujyg28P/vZV8reRwyw==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJhZWNlOWYwOC1iMGYwLTRlYTQtYmFmZS02NGM5MzQ2NmYxMWEiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3NzkwNiwiZXhwIjoxNjk3Mzg1MTA2LCJpYXQiOjE2OTczNzc5MDZ9.-H5z6Buc9q5Eu95DUlHuaEvrT5E49lRAROdqdVTAvr0');
INSERT INTO public."user" VALUES ('2cde92e9-99d4-41aa-85be-4cad9b20341d', '1103204167', '1103204167@student.telkomuniversity.ac.id', 'Muhammad Alfachri Asmi', '1103204167', 'AJYEjQjXQxtfUfwUm5AfWNSSjArhvJF+b/JsYlAvD8P1XnIt98Xq8aYqldmobno6tw==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIyY2RlOTJlOS05OWQ0LTQxYWEtODViZS00Y2FkOWIyMDM0MWQiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3Nzk1MSwiZXhwIjoxNjk3Mzg1MTUxLCJpYXQiOjE2OTczNzc5NTF9.XsZDckqk_WS8mpxKpnzJyXWafuYLsi8dE3KiFAbApyQ');
INSERT INTO public."user" VALUES ('42188308-49c3-469f-a8b0-4fd60eb2a585', '1103213034', '1103213034@student.telkomuniversity.ac.id', 'Geral Nius Bakhan', '1103213034', 'ABO9jLFJ7ocUXmBFKKPN1/5uQ+hOGZSWPU55L2xuCeEmL/HEYz9ygUjUpW5S7CFssg==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI0MjE4ODMwOC00OWMzLTQ2OWYtYThiMC00ZmQ2MGViMmE1ODUiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3NzkzNCwiZXhwIjoxNjk3Mzg1MTM0LCJpYXQiOjE2OTczNzc5MzR9.JTlBK0aDY_jx5Jld46RWUQmFRE9X2S-VDrQyP0z99Pg');
INSERT INTO public."user" VALUES ('3952ad8b-d2c3-444d-aa8e-0c45e54e3a53', '1103213155', '1103213155@student.telkomuniversity.ac.id', 'Mohamad Iqbal Rizky Maulana', '1103213155', 'AEoSBse2P/WE1c6ryyV6/onV8isD9Q4nX92TI5B5JCr5lQ9mrzrOqNz/ecyzeKAnpw==', 'Student', '081282271802', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIzOTUyYWQ4Yi1kMmMzLTQ0NGQtYWE4ZS0wYzQ1ZTU0ZTNhNTMiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3ODU5OCwiZXhwIjoxNjk3Mzg1Nzk4LCJpYXQiOjE2OTczNzg1OTh9.2QdBMsZe9kCRp4JGZvcPNBdrqBy3w5OC0nXSXTZCfVs');
INSERT INTO public."user" VALUES ('c0447ff0-0a2b-4157-9529-da90abec4863', '1103204193', '1103204193@student.telkomuniversity.ac.id', 'Muhammad Fariq Taqi Pasai', '1103204193', 'AJCpe15Ed2SZgWIcQdOl3qvR6iAKHNI8XAREvpkhWsUlGeNmqssQXvp3B/icsb72HA==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJjMDQ0N2ZmMC0wYTJiLTQxNTctOTUyOS1kYTkwYWJlYzQ4NjMiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM3ODkzNywiZXhwIjoxNjk3Mzg2MTM3LCJpYXQiOjE2OTczNzg5Mzd9.owKA9_M1LI5HDY2lfH66T8PAidr5kQcEKGyefMKO6zc');
INSERT INTO public."user" VALUES ('20b40579-85d2-40ef-899f-3cebb5d572fa', '1103204209', '1103204209@student.telkomuniversity.ac.id', 'Rizal Nugraha', '1103204209', 'AL30bGOJDmr86sEl4r4SpDZ25+VIAnygYwzrAFoUgOK3RQ7mLgWNv7BB3ecVqQk5aA==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIyMGI0MDU3OS04NWQyLTQwZWYtODk5Zi0zY2ViYjVkNTcyZmEiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4MDA0NiwiZXhwIjoxNjk3Mzg3MjQ2LCJpYXQiOjE2OTczODAwNDZ9.ZTND1JNwpa_XlUC1FIDtLxlsoINlvfX41mToeSERqLY');
INSERT INTO public."user" VALUES ('9cca6392-d7d5-4798-80f7-5fbb2b50e828', '1103213175', '1103213175@student.telkomuniversity.ac.id', 'M.Jamil Al-Munawar', '1103213175', 'ABIyPWARUFh5kHyhCPf/jLRQ97CG9fzHviTRntIgCxsXfd5jEzUn30QgzhE4vT87lg==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI5Y2NhNjM5Mi1kN2Q1LTQ3OTgtODBmNy01ZmJiMmI1MGU4MjgiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4MDE4NSwiZXhwIjoxNjk3Mzg3Mzg1LCJpYXQiOjE2OTczODAxODV9.QrfpLiYa6oqmb-AvEDbg_k34WYhbmQrKEP8Qg2JZIow');
INSERT INTO public."user" VALUES ('5d5f2119-561d-438c-b356-536a0478a3b1', '1103210161', '1103210161@student.telkomuniversity.ac.id', 'Muhammad Afif Fadhlurrahman', '1103210161', 'ANXslEbrJBcLoz6anypfzf1cKL8Oo/5Tx5BUfLUxOqLcXovsXEkGtjEKL2Et+9EZYw==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI1ZDVmMjExOS01NjFkLTQzOGMtYjM1Ni01MzZhMDQ3OGEzYjEiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4MDM1NywiZXhwIjoxNjk3Mzg3NTU3LCJpYXQiOjE2OTczODAzNTd9.7QEffFgQuyJefNeeGHOUi6QaL81xyhoGHMGg3anvj4Y');
INSERT INTO public."user" VALUES ('eb353447-af9e-4a16-967e-7272d4081da7', '1103210218', '1103210218@student.telkomuniversity.ac.id', 'Dimas Ahmad Noorsaid', '1103210218', 'ALG+tnymq1aM0dFt7ErzSUfTaWYsrppTuDJ1/vez+PQU5wlKYFtddogtjkd2s/NrXg==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJlYjM1MzQ0Ny1hZjllLTRhMTYtOTY3ZS03MjcyZDQwODFkYTciLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4Mjc4NCwiZXhwIjoxNjk3Mzg5OTg0LCJpYXQiOjE2OTczODI3ODR9.EC76MEB9-kAGiMhYr7u6tzhPl_QfbFu1CtKDaXqXaGo');
INSERT INTO public."user" VALUES ('768d8b84-035c-4649-9682-505339150c3e', '1103210231', '1103210231@student.telkomuniversity.ac.id', 'Juvenli Lubis', '1103210231', 'ALO+gGQcKhObe/SWRBHRAp1KEYBmXWgMtAYGqBXz0YBs9izsWm4MR028UV0JThZQIA==', 'Student', '085262141641', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI3NjhkOGI4NC0wMzVjLTQ2NDktOTY4Mi01MDUzMzkxNTBjM2UiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4MzIyNywiZXhwIjoxNjk3MzkwNDI3LCJpYXQiOjE2OTczODMyMjd9.aiQi1Ig2r3RQmicLXIwAepjhk07m6nkUj3-Ec79W9lk');
INSERT INTO public."user" VALUES ('8cfff2cb-f745-455e-a3ca-323b13ebf7f6', '1103210017', '1103210017@student.telkomuniversity.ac.id', 'Axel David', '1103210017', 'AISepWhV/u5sVUdVjSY7GB1NYQKXxtEKWVPrynQaOAyRfl88SfOfVgZEMk3zb5CVyw==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI4Y2ZmZjJjYi1mNzQ1LTQ1NWUtYTNjYS0zMjNiMTNlYmY3ZjYiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4MzMxMiwiZXhwIjoxNjk3MzkwNTEyLCJpYXQiOjE2OTczODMzMTJ9.KXv1duNEKX-xFBPFUvY0eYpZXJrhu84wM_Aus_LFicc');
INSERT INTO public."user" VALUES ('89b9d58a-6910-4b6f-885c-f74c2352d895', '1103192203', '1103192203@student.telkomuniversity.ac.id', 'Nauval Muhamad Fachrezi Wiradiredja Karnabi', '1103192203', 'AIn2ESsDsv3rus0TtCTDGqvyby/uITGv1P1YzE16frUOptSOFxfp7RZxW6Q+90ZkzQ==', 'Student', '081210904458', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI4OWI5ZDU4YS02OTEwLTRiNmYtODg1Yy1mNzRjMjM1MmQ4OTUiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4MzM5OSwiZXhwIjoxNjk3MzkwNTk5LCJpYXQiOjE2OTczODMzOTl9.aaZ5aQ-ZpfFetWSmtdVh3auLuXo3Lms13PH1i1_Y0K4');
INSERT INTO public."user" VALUES ('2e7190d3-f000-41e9-83e7-673731b00bc1', '1103213120', '1103213120@student.telkomuniversity.ac.id', 'Ferdinant Hutajulu', '1103213120', 'AGIEr7grK2EFyjRhJ48LLpVmjlw+cwuKMOshZAoyxHNYHXRgw10QBWXfGe6IXIZs5g==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIyZTcxOTBkMy1mMDAwLTQxZTktODNlNy02NzM3MzFiMDBiYzEiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4MzgzNCwiZXhwIjoxNjk3MzkxMDM0LCJpYXQiOjE2OTczODM4MzR9.xmiJHYpIJw82Rgx2uTtnMpHTjTp9I6sqcn5WxCK_BK0');
INSERT INTO public."user" VALUES ('be9a0d2a-6c47-42a1-b0b9-7ed9d9347418', '1103213005', '1103213005@student.telkomuniversity.ac.id', 'Muhamad Hilmi Haidar', '1103213005', 'ACDufi/jJeuu4yzUg2AM1Unnlk0FMU2DMFUVGOXsC7fVOdWBOeglA5t6EM3zPGnD/A==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJiZTlhMGQyYS02YzQ3LTQyYTEtYjBiOS03ZWQ5ZDkzNDc0MTgiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4NDYzNiwiZXhwIjoxNjk3MzkxODM2LCJpYXQiOjE2OTczODQ2MzZ9.FgroAuN6T4Toe_3l333ioFFSv_NuFlcd1hkb3K5wRqM');
INSERT INTO public."user" VALUES ('d487f962-b159-4a7f-9375-caec12ab043f', '1103204012', '1103204012@student.telkomuniversity.ac.id', 'Samuel Robert Romulus Sidabalok', '1103204012', 'AMbaTwGm775rkiQ+CapH6QWfvGU12JDF2WCyAgW7PaDXG5jRpGdRNZ08wvj6qxmpTg==', 'Assistant', '082130706225', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJkNDg3Zjk2Mi1iMTU5LTRhN2YtOTM3NS1jYWVjMTJhYjA0M2YiLCJyb2xlIjoiQXNzaXN0YW50Iiwic2VlbGFic190b2tlbiI6IjcxbG1nM2V0cmVpbDM2bDlobXA1c3NuYWYydTk1bWIwIiwibmJmIjoxNjk3NDM0NDM0LCJleHAiOjE2OTc0NDE2MzQsImlhdCI6MTY5NzQzNDQzNH0.E0ZulCexhf7nk2PJdq51XkgK8OoZiOsAWEANkorRUVg');
INSERT INTO public."user" VALUES ('9e3b0787-7fb2-4d98-8f9a-022087275667', '1103210177', '1103210177@student.telkomuniversity.ac.id', 'Muhammad Farrel Ahadi Tama', '1103210177', 'AJrn8lEwkvb+zNmodSvdaSPaMuYHeFpGPZa+cHdgvraIy/hKHdJ6OtEdjBLp56Badg==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI5ZTNiMDc4Ny03ZmIyLTRkOTgtOGY5YS0wMjIwODcyNzU2NjciLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4NDc0MiwiZXhwIjoxNjk3MzkxOTQyLCJpYXQiOjE2OTczODQ3NDJ9.7nnzkbabqgq_CLIPUoMxEHGMVzJOeuHjyTwad24les4');
INSERT INTO public."user" VALUES ('5bdafbd2-20a1-42fa-8937-bc3652c86ba8', '1103174185', '1103174185@student.telkomuniversity.ac.id', 'Raihan Elsar Kusuma', '1103174185', 'AGX5k9YLG29y+Joy+ukkpQTD2F4+WSykdirrGP1LfaALlcOEoA5bBlK2CrQ8AUYqcA==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI1YmRhZmJkMi0yMGExLTQyZmEtODkzNy1iYzM2NTJjODZiYTgiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4NTM2NSwiZXhwIjoxNjk3MzkyNTY1LCJpYXQiOjE2OTczODUzNjV9.8TZkzE_hEIaaMyOEFoDW1YPf4SssRqUiztUjrMvpvcc');
INSERT INTO public."user" VALUES ('ec1cc6e7-3775-4e34-b753-bbbf9321b5b9', '1103210222', '1103210222@student.telkomuniversity.ac.id', 'Rafi Rabbani Ekananda', '1103210222', 'AIlqAGVGcVnGeAPBML+SEz9fuGNm8b4+D08KMO5J6WFoFpaNez+ydutC6jGwyfSs1A==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJlYzFjYzZlNy0zNzc1LTRlMzQtYjc1My1iYmJmOTMyMWI1YjkiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4NjM2NiwiZXhwIjoxNjk3MzkzNTY2LCJpYXQiOjE2OTczODYzNjZ9.M5TwtUVQrNMG9mjDwt96HvOfFmMEwaQOP6gXYxwnobA');
INSERT INTO public."user" VALUES ('bf757bf6-22af-467b-a975-0fa66273094a', '1103202117', '1103202117@student.telkomuniversity.ac.id', 'Muhammad Alfat Imanda', '1103202117', 'AD6kd4EtvLc5T4ShO33wCTnSEq3Xaoen9uV9GRnOLqts7RH+5jeht6TDq7tpxglT3A==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJiZjc1N2JmNi0yMmFmLTQ2N2ItYTk3NS0wZmE2NjI3MzA5NGEiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4Njc5MywiZXhwIjoxNjk3MzkzOTkzLCJpYXQiOjE2OTczODY3OTN9.0ksQKVhhNMhFvyumr0OcKwmTA5v2Y3XGxVR_lrCJIxc');
INSERT INTO public."user" VALUES ('45c67861-ac20-4ad7-8e98-31f795b7c4bb', '1103204099', '1103204099@student.telkomuniversity.ac.id', 'Mauricio Bethoven Tigauw', '1103204099', 'AKT55ZYrUa5FYY+AD1uteJmdBv6b15umG9n1+mU+ELbdFRt++SIWiarmn9gq5ZvOaw==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiI0NWM2Nzg2MS1hYzIwLTRhZDctOGU5OC0zMWY3OTViN2M0YmIiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4NzM0NSwiZXhwIjoxNjk3Mzk0NTQ1LCJpYXQiOjE2OTczODczNDV9.BwajcGRzpcixGS2veMwPB9Nh62LD5Y1Pn66f2CE7MuY');
INSERT INTO public."user" VALUES ('b44546cc-c824-4f26-bba4-e631214f382c', '1103213013', '1103213013@student.telkomuniversity.ac.id', 'Adrian Kuman Firmansah', '1103213013', 'AF/5piRX3lMxjkbzIldOAv03D3sumnXD8RW2yi+Bsd6ZTDpg5LMiWQdVcmhRIr8fuw==', 'Student', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJiNDQ1NDZjYy1jODI0LTRmMjYtYmJhNC1lNjMxMjE0ZjM4MmMiLCJyb2xlIjoiU3R1ZGVudCIsIm5iZiI6MTY5NzM4NzgxMywiZXhwIjoxNjk3Mzk1MDEzLCJpYXQiOjE2OTczODc4MTN9.fJ6Lo4d1z0Bz97k_hC0xYKKVj-zIQFaoSO2znFCuim0');
INSERT INTO public."user" VALUES ('d359819e-181b-4283-aeac-ebcddb0a06ee', '1103204038', 'whitefall@student.telkomuniversity.ac.id', 'Harvan Nurluthfi Irawan', 'whitefall', 'ACUbf9Hl82+Np5AguhxTYgfXEi+ZlGu52gUtZ9YxquC93jboTav+86FesDZshHBH/Q==', 'Assistant', '0895343739958', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiJkMzU5ODE5ZS0xODFiLTQyODMtYWVhYy1lYmNkZGIwYTA2ZWUiLCJyb2xlIjoiQXNzaXN0YW50Iiwic2VlbGFic190b2tlbiI6InM3cjdtNzZ2MHIwczBmMm5kNjc3dG5jaTl1dWU0Y2VkIiwibmJmIjoxNjk3NDUyNDY1LCJleHAiOjE2OTc0NTk2NjUsImlhdCI6MTY5NzQ1MjQ2NX0.AXJtNNpUHgE-BgHYsF-bWhLRhB6VClXnu3r3kHuDzfg');
INSERT INTO public."user" VALUES ('322e8299-d1b9-4dc2-b4e4-bd1ffd1da519', '1103200025', '1103200025@student.telkomuniversity.ac.id', 'Alifia Mutiara Rahma', '1103200025', 'AC2wN8RDg5C9j+uUsOylLzlP5g2qTU0oLgkxgUuUHLSljHhOSl28SWiISz7KKxk76g==', 'Assistant', '085155121460', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIzMjJlODI5OS1kMWI5LTRkYzItYjRlNC1iZDFmZmQxZGE1MTkiLCJyb2xlIjoiQXNzaXN0YW50Iiwic2VlbGFic190b2tlbiI6IjJ2dmRuY2k3dWswOXJodDE0aGxkc2R0Ym05NTRiYzg4IiwibmJmIjoxNjk3NDUyNTY2LCJleHAiOjE2OTc0NTk3NjYsImlhdCI6MTY5NzQ1MjU2Nn0.eZ4qlTWCCdAZRe14B-Tucwfk0UjH9l8dxb7NyQKQ72Y');


                                                                                                                                                                                                                                                                                                                                                          restore.sql                                                                                         0000600 0004000 0002000 00000025252 14513257404 0015377 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 15.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE sealab;
--
-- Name: sealab; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE sealab WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C.UTF-8';


ALTER DATABASE sealab OWNER TO postgres;

\connect sealab

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: __EFMigrationsHistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."__EFMigrationsHistory" (
    migration_id character varying(150) NOT NULL,
    product_version character varying(32) NOT NULL
);


ALTER TABLE public."__EFMigrationsHistory" OWNER TO postgres;

--
-- Name: assistant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.assistant (
    id uuid NOT NULL,
    id_user uuid NOT NULL,
    code text,
    "position" text
);


ALTER TABLE public.assistant OWNER TO postgres;

--
-- Name: module; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.module (
    id uuid NOT NULL,
    seelabs_id integer NOT NULL,
    name text,
    is_pa_open boolean NOT NULL,
    is_prt_open boolean NOT NULL
);


ALTER TABLE public.module OWNER TO postgres;

--
-- Name: pre_test_option; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pre_test_option (
    id uuid NOT NULL,
    id_question uuid NOT NULL,
    option text,
    is_true boolean NOT NULL
);


ALTER TABLE public.pre_test_option OWNER TO postgres;

--
-- Name: pre_test_question; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pre_test_question (
    id uuid NOT NULL,
    id_module uuid NOT NULL,
    type text,
    question text,
    file_path text
);


ALTER TABLE public.pre_test_question OWNER TO postgres;

--
-- Name: preliminary_assignment_answer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.preliminary_assignment_answer (
    id uuid NOT NULL,
    id_student uuid NOT NULL,
    id_module uuid NOT NULL,
    file_path text,
    submit_time timestamp without time zone NOT NULL
);


ALTER TABLE public.preliminary_assignment_answer OWNER TO postgres;

--
-- Name: preliminary_assignment_question; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.preliminary_assignment_question (
    id uuid NOT NULL,
    id_module uuid NOT NULL,
    type text,
    question text,
    answer_key text,
    file_path text
);


ALTER TABLE public.preliminary_assignment_question OWNER TO postgres;

--
-- Name: student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student (
    id uuid NOT NULL,
    id_user uuid NOT NULL,
    classroom text,
    "group" integer NOT NULL,
    day integer NOT NULL,
    shift integer NOT NULL
);


ALTER TABLE public.student OWNER TO postgres;

--
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    id uuid NOT NULL,
    nim text,
    email text,
    name text,
    username text,
    password text,
    role text,
    phone text,
    app_token text
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- Data for Name: __EFMigrationsHistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3373.dat

--
-- Data for Name: assistant; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3378.dat

--
-- Data for Name: module; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3374.dat

--
-- Data for Name: pre_test_option; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3380.dat

--
-- Data for Name: pre_test_question; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3376.dat

--
-- Data for Name: preliminary_assignment_answer; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3381.dat

--
-- Data for Name: preliminary_assignment_question; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3377.dat

--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3379.dat

--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/3375.dat

--
-- Name: __EFMigrationsHistory pk___ef_migrations_history; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT pk___ef_migrations_history PRIMARY KEY (migration_id);


--
-- Name: assistant pk_assistant; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assistant
    ADD CONSTRAINT pk_assistant PRIMARY KEY (id);


--
-- Name: module pk_module; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.module
    ADD CONSTRAINT pk_module PRIMARY KEY (id);


--
-- Name: pre_test_option pk_pre_test_option; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pre_test_option
    ADD CONSTRAINT pk_pre_test_option PRIMARY KEY (id);


--
-- Name: pre_test_question pk_pre_test_question; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pre_test_question
    ADD CONSTRAINT pk_pre_test_question PRIMARY KEY (id);


--
-- Name: preliminary_assignment_answer pk_preliminary_assignment_answer; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preliminary_assignment_answer
    ADD CONSTRAINT pk_preliminary_assignment_answer PRIMARY KEY (id);


--
-- Name: preliminary_assignment_question pk_preliminary_assignment_question; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preliminary_assignment_question
    ADD CONSTRAINT pk_preliminary_assignment_question PRIMARY KEY (id);


--
-- Name: student pk_student; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT pk_student PRIMARY KEY (id);


--
-- Name: user pk_user; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT pk_user PRIMARY KEY (id);


--
-- Name: ix_assistant_id_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_assistant_id_user ON public.assistant USING btree (id_user);


--
-- Name: ix_pre_test_option_id_question; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_pre_test_option_id_question ON public.pre_test_option USING btree (id_question);


--
-- Name: ix_pre_test_question_id_module; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_pre_test_question_id_module ON public.pre_test_question USING btree (id_module);


--
-- Name: ix_preliminary_assignment_answer_id_module; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_preliminary_assignment_answer_id_module ON public.preliminary_assignment_answer USING btree (id_module);


--
-- Name: ix_preliminary_assignment_answer_id_student; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_preliminary_assignment_answer_id_student ON public.preliminary_assignment_answer USING btree (id_student);


--
-- Name: ix_preliminary_assignment_question_id_module; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_preliminary_assignment_question_id_module ON public.preliminary_assignment_question USING btree (id_module);


--
-- Name: ix_student_id_user; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_student_id_user ON public.student USING btree (id_user);


--
-- Name: assistant fk_assistant_user_id_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.assistant
    ADD CONSTRAINT fk_assistant_user_id_user FOREIGN KEY (id_user) REFERENCES public."user"(id) ON DELETE CASCADE;


--
-- Name: pre_test_option fk_pre_test_option_pre_test_question_id_question; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pre_test_option
    ADD CONSTRAINT fk_pre_test_option_pre_test_question_id_question FOREIGN KEY (id_question) REFERENCES public.pre_test_question(id) ON DELETE CASCADE;


--
-- Name: pre_test_question fk_pre_test_question_module_id_module; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pre_test_question
    ADD CONSTRAINT fk_pre_test_question_module_id_module FOREIGN KEY (id_module) REFERENCES public.module(id) ON DELETE CASCADE;


--
-- Name: preliminary_assignment_answer fk_preliminary_assignment_answer_module_id_module; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preliminary_assignment_answer
    ADD CONSTRAINT fk_preliminary_assignment_answer_module_id_module FOREIGN KEY (id_module) REFERENCES public.module(id) ON DELETE CASCADE;


--
-- Name: preliminary_assignment_answer fk_preliminary_assignment_answer_student_id_student; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preliminary_assignment_answer
    ADD CONSTRAINT fk_preliminary_assignment_answer_student_id_student FOREIGN KEY (id_student) REFERENCES public.student(id) ON DELETE CASCADE;


--
-- Name: preliminary_assignment_question fk_preliminary_assignment_question_module_id_module; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preliminary_assignment_question
    ADD CONSTRAINT fk_preliminary_assignment_question_module_id_module FOREIGN KEY (id_module) REFERENCES public.module(id) ON DELETE CASCADE;


--
-- Name: student fk_student_user_id_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT fk_student_user_id_user FOREIGN KEY (id_user) REFERENCES public."user"(id) ON DELETE CASCADE;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
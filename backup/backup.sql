PGDMP     )                    w            tareaNCapas    11.2    11.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    32806    tareaNCapas    DATABASE     �   CREATE DATABASE "tareaNCapas" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_El Salvador.1252' LC_CTYPE = 'Spanish_El Salvador.1252';
    DROP DATABASE "tareaNCapas";
             postgres    false            �            1259    32807    empleado    TABLE     �   CREATE TABLE public.empleado (
    idempleado integer NOT NULL,
    nombreempleado character varying(250),
    edadempleado integer,
    generoempleado character(1),
    estadoempleado boolean,
    idsucursal integer
);
    DROP TABLE public.empleado;
       public         postgres    false            �            1259    32810    empleado_idempleado_seq    SEQUENCE     �   CREATE SEQUENCE public.empleado_idempleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.empleado_idempleado_seq;
       public       postgres    false    196                       0    0    empleado_idempleado_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.empleado_idempleado_seq OWNED BY public.empleado.idempleado;
            public       postgres    false    197            �            1259    32812    sucursal    TABLE     3  CREATE TABLE public.sucursal (
    idsucursal integer NOT NULL,
    nombresucursal character varying(250),
    ubicacionsucursal character varying(250),
    horarioentrada time without time zone,
    horariosalida time without time zone,
    numeromesas integer,
    nombregerente character varying(250)
);
    DROP TABLE public.sucursal;
       public         postgres    false            �            1259    32818    sucursal_idsucursal_seq    SEQUENCE     �   CREATE SEQUENCE public.sucursal_idsucursal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.sucursal_idsucursal_seq;
       public       postgres    false    198                       0    0    sucursal_idsucursal_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.sucursal_idsucursal_seq OWNED BY public.sucursal.idsucursal;
            public       postgres    false    199            �            1259    32820    usuario    TABLE     |   CREATE TABLE public.usuario (
    nombreusuario character varying(250) NOT NULL,
    claveusuario character varying(250)
);
    DROP TABLE public.usuario;
       public         postgres    false            �
           2604    32823    empleado idempleado    DEFAULT     z   ALTER TABLE ONLY public.empleado ALTER COLUMN idempleado SET DEFAULT nextval('public.empleado_idempleado_seq'::regclass);
 B   ALTER TABLE public.empleado ALTER COLUMN idempleado DROP DEFAULT;
       public       postgres    false    197    196            �
           2604    32824    sucursal idsucursal    DEFAULT     z   ALTER TABLE ONLY public.sucursal ALTER COLUMN idsucursal SET DEFAULT nextval('public.sucursal_idsucursal_seq'::regclass);
 B   ALTER TABLE public.sucursal ALTER COLUMN idsucursal DROP DEFAULT;
       public       postgres    false    199    198            
          0    32807    empleado 
   TABLE DATA               x   COPY public.empleado (idempleado, nombreempleado, edadempleado, generoempleado, estadoempleado, idsucursal) FROM stdin;
    public       postgres    false    196   �                 0    32812    sucursal 
   TABLE DATA               �   COPY public.sucursal (idsucursal, nombresucursal, ubicacionsucursal, horarioentrada, horariosalida, numeromesas, nombregerente) FROM stdin;
    public       postgres    false    198                    0    32820    usuario 
   TABLE DATA               >   COPY public.usuario (nombreusuario, claveusuario) FROM stdin;
    public       postgres    false    200                     0    0    empleado_idempleado_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.empleado_idempleado_seq', 40, true);
            public       postgres    false    197                       0    0    sucursal_idsucursal_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.sucursal_idsucursal_seq', 28, true);
            public       postgres    false    199            �
           2606    32826    empleado empleado_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (idempleado);
 @   ALTER TABLE ONLY public.empleado DROP CONSTRAINT empleado_pkey;
       public         postgres    false    196            �
           2606    32828    sucursal sucursal_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.sucursal
    ADD CONSTRAINT sucursal_pkey PRIMARY KEY (idsucursal);
 @   ALTER TABLE ONLY public.sucursal DROP CONSTRAINT sucursal_pkey;
       public         postgres    false    198            �
           2606    32830    usuario usuario_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (nombreusuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public         postgres    false    200            �
           2606    32831 !   empleado empleado_idsucursal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_idsucursal_fkey FOREIGN KEY (idsucursal) REFERENCES public.sucursal(idsucursal);
 K   ALTER TABLE ONLY public.empleado DROP CONSTRAINT empleado_idsucursal_fkey;
       public       postgres    false    196    2701    198            
      x�m�K�@��u�)8���b��uC|� ��Af0���K���i|���h��2����x��hj�'�
a%�#���_��P3��#��͐",_V����L�0�!"��fi�"b��� "_ÃV          Y   x�32�.M.-*N�Q0�M�LNL������������
��ccN�ԢԼ�TC.#s�F#$�F�5qY 4#i4Ưј+F��� 2�-O         $   x�KN,��/�uH�M���K���4426����� �>.     
(* autogenerated from rfc1813 *)
From Perennial.goose_lang Require Import prelude.
From Perennial.goose_lang Require Import ffi.disk_prelude.

Definition PROGRAM : expr := #(U32 100003).
Theorem PROGRAM_t Γ : Γ ⊢ PROGRAM : uint32T.
Proof. typecheck. Qed.

Definition VERSION : expr := #(U32 3).
Theorem VERSION_t Γ : Γ ⊢ VERSION : uint32T.
Proof. typecheck. Qed.

Definition NFS3_FHSIZE : expr := #(U32 64).
Theorem NFS3_FHSIZE_t Γ : Γ ⊢ NFS3_FHSIZE : uint32T.
Proof. typecheck. Qed.

Definition NFS3_COOKIEVERFSIZE : expr := #(U32 8).
Theorem NFS3_COOKIEVERFSIZE_t Γ : Γ ⊢ NFS3_COOKIEVERFSIZE : uint32T.
Proof. typecheck. Qed.

Definition NFS3_CREATEVERFSIZE : expr := #(U32 8).
Theorem NFS3_CREATEVERFSIZE_t Γ : Γ ⊢ NFS3_CREATEVERFSIZE : uint32T.
Proof. typecheck. Qed.

Definition NFS3_WRITEVERFSIZE : expr := #(U32 8).
Theorem NFS3_WRITEVERFSIZE_t Γ : Γ ⊢ NFS3_WRITEVERFSIZE : uint32T.
Proof. typecheck. Qed.

Definition Uint64: ty := uint64T.

Definition Uint32: ty := uint32T.

Definition Filename3: ty := stringT.

Definition Nfspath3: ty := stringT.

Definition Fileid3: ty := Uint64.

Definition Cookie3: ty := Uint64.

Definition Cookieverf3: ty := arrayT byteT.

Definition Createverf3: ty := arrayT byteT.

Definition Writeverf3: ty := arrayT byteT.

Definition Uid3: ty := Uint32.

Definition Gid3: ty := Uint32.

Definition Size3: ty := Uint64.

Definition Offset3: ty := Uint64.

Definition Mode3: ty := Uint32.

Definition Count3: ty := Uint32.

Definition Nfsstat3: ty := uint32T.

Definition NFS3_OK : expr := #(U32 0).
Theorem NFS3_OK_t Γ : Γ ⊢ NFS3_OK : Nfsstat3.
Proof. typecheck. Qed.

Definition NFS3ERR_PERM : expr := #(U32 1).
Theorem NFS3ERR_PERM_t Γ : Γ ⊢ NFS3ERR_PERM : Nfsstat3.
Proof. typecheck. Qed.

Definition NFS3ERR_NOENT : expr := #(U32 2).
Theorem NFS3ERR_NOENT_t Γ : Γ ⊢ NFS3ERR_NOENT : Nfsstat3.
Proof. typecheck. Qed.

Definition NFS3ERR_IO : expr := #(U32 5).
Theorem NFS3ERR_IO_t Γ : Γ ⊢ NFS3ERR_IO : Nfsstat3.
Proof. typecheck. Qed.

Definition NFS3ERR_NXIO : expr := #(U32 6).
Theorem NFS3ERR_NXIO_t Γ : Γ ⊢ NFS3ERR_NXIO : Nfsstat3.
Proof. typecheck. Qed.

Definition NFS3ERR_ACCES : expr := #(U32 13).
Theorem NFS3ERR_ACCES_t Γ : Γ ⊢ NFS3ERR_ACCES : Nfsstat3.
Proof. typecheck. Qed.

Definition NFS3ERR_EXIST : expr := #(U32 17).
Theorem NFS3ERR_EXIST_t Γ : Γ ⊢ NFS3ERR_EXIST : Nfsstat3.
Proof. typecheck. Qed.

Definition NFS3ERR_XDEV : expr := #(U32 18).
Theorem NFS3ERR_XDEV_t Γ : Γ ⊢ NFS3ERR_XDEV : Nfsstat3.
Proof. typecheck. Qed.

Definition NFS3ERR_NODEV : expr := #(U32 19).
Theorem NFS3ERR_NODEV_t Γ : Γ ⊢ NFS3ERR_NODEV : Nfsstat3.
Proof. typecheck. Qed.

Definition NFS3ERR_NOTDIR : expr := #(U32 20).
Theorem NFS3ERR_NOTDIR_t Γ : Γ ⊢ NFS3ERR_NOTDIR : Nfsstat3.
Proof. typecheck. Qed.

Definition NFS3ERR_ISDIR : expr := #(U32 21).
Theorem NFS3ERR_ISDIR_t Γ : Γ ⊢ NFS3ERR_ISDIR : Nfsstat3.
Proof. typecheck. Qed.

Definition NFS3ERR_INVAL : expr := #(U32 22).
Theorem NFS3ERR_INVAL_t Γ : Γ ⊢ NFS3ERR_INVAL : Nfsstat3.
Proof. typecheck. Qed.

Definition NFS3ERR_FBIG : expr := #(U32 27).
Theorem NFS3ERR_FBIG_t Γ : Γ ⊢ NFS3ERR_FBIG : Nfsstat3.
Proof. typecheck. Qed.

Definition NFS3ERR_NOSPC : expr := #(U32 28).
Theorem NFS3ERR_NOSPC_t Γ : Γ ⊢ NFS3ERR_NOSPC : Nfsstat3.
Proof. typecheck. Qed.

Definition NFS3ERR_ROFS : expr := #(U32 30).
Theorem NFS3ERR_ROFS_t Γ : Γ ⊢ NFS3ERR_ROFS : Nfsstat3.
Proof. typecheck. Qed.

Definition NFS3ERR_MLINK : expr := #(U32 31).
Theorem NFS3ERR_MLINK_t Γ : Γ ⊢ NFS3ERR_MLINK : Nfsstat3.
Proof. typecheck. Qed.

Definition NFS3ERR_NAMETOOLONG : expr := #(U32 63).
Theorem NFS3ERR_NAMETOOLONG_t Γ : Γ ⊢ NFS3ERR_NAMETOOLONG : Nfsstat3.
Proof. typecheck. Qed.

Definition NFS3ERR_NOTEMPTY : expr := #(U32 66).
Theorem NFS3ERR_NOTEMPTY_t Γ : Γ ⊢ NFS3ERR_NOTEMPTY : Nfsstat3.
Proof. typecheck. Qed.

Definition NFS3ERR_DQUOT : expr := #(U32 69).
Theorem NFS3ERR_DQUOT_t Γ : Γ ⊢ NFS3ERR_DQUOT : Nfsstat3.
Proof. typecheck. Qed.

Definition NFS3ERR_STALE : expr := #(U32 70).
Theorem NFS3ERR_STALE_t Γ : Γ ⊢ NFS3ERR_STALE : Nfsstat3.
Proof. typecheck. Qed.

Definition NFS3ERR_REMOTE : expr := #(U32 71).
Theorem NFS3ERR_REMOTE_t Γ : Γ ⊢ NFS3ERR_REMOTE : Nfsstat3.
Proof. typecheck. Qed.

Definition NFS3ERR_BADHANDLE : expr := #(U32 10001).
Theorem NFS3ERR_BADHANDLE_t Γ : Γ ⊢ NFS3ERR_BADHANDLE : Nfsstat3.
Proof. typecheck. Qed.

Definition NFS3ERR_NOT_SYNC : expr := #(U32 10002).
Theorem NFS3ERR_NOT_SYNC_t Γ : Γ ⊢ NFS3ERR_NOT_SYNC : Nfsstat3.
Proof. typecheck. Qed.

Definition NFS3ERR_BAD_COOKIE : expr := #(U32 10003).
Theorem NFS3ERR_BAD_COOKIE_t Γ : Γ ⊢ NFS3ERR_BAD_COOKIE : Nfsstat3.
Proof. typecheck. Qed.

Definition NFS3ERR_NOTSUPP : expr := #(U32 10004).
Theorem NFS3ERR_NOTSUPP_t Γ : Γ ⊢ NFS3ERR_NOTSUPP : Nfsstat3.
Proof. typecheck. Qed.

Definition NFS3ERR_TOOSMALL : expr := #(U32 10005).
Theorem NFS3ERR_TOOSMALL_t Γ : Γ ⊢ NFS3ERR_TOOSMALL : Nfsstat3.
Proof. typecheck. Qed.

Definition NFS3ERR_SERVERFAULT : expr := #(U32 10006).
Theorem NFS3ERR_SERVERFAULT_t Γ : Γ ⊢ NFS3ERR_SERVERFAULT : Nfsstat3.
Proof. typecheck. Qed.

Definition NFS3ERR_BADTYPE : expr := #(U32 10007).
Theorem NFS3ERR_BADTYPE_t Γ : Γ ⊢ NFS3ERR_BADTYPE : Nfsstat3.
Proof. typecheck. Qed.

Definition NFS3ERR_JUKEBOX : expr := #(U32 10008).
Theorem NFS3ERR_JUKEBOX_t Γ : Γ ⊢ NFS3ERR_JUKEBOX : Nfsstat3.
Proof. typecheck. Qed.

Definition Ftype3: ty := uint32T.

Definition NF3REG : expr := #(U32 1).
Theorem NF3REG_t Γ : Γ ⊢ NF3REG : Ftype3.
Proof. typecheck. Qed.

Definition NF3DIR : expr := #(U32 2).
Theorem NF3DIR_t Γ : Γ ⊢ NF3DIR : Ftype3.
Proof. typecheck. Qed.

Definition NF3BLK : expr := #(U32 3).
Theorem NF3BLK_t Γ : Γ ⊢ NF3BLK : Ftype3.
Proof. typecheck. Qed.

Definition NF3CHR : expr := #(U32 4).
Theorem NF3CHR_t Γ : Γ ⊢ NF3CHR : Ftype3.
Proof. typecheck. Qed.

Definition NF3LNK : expr := #(U32 5).
Theorem NF3LNK_t Γ : Γ ⊢ NF3LNK : Ftype3.
Proof. typecheck. Qed.

Definition NF3SOCK : expr := #(U32 6).
Theorem NF3SOCK_t Γ : Γ ⊢ NF3SOCK : Ftype3.
Proof. typecheck. Qed.

Definition NF3FIFO : expr := #(U32 7).
Theorem NF3FIFO_t Γ : Γ ⊢ NF3FIFO : Ftype3.
Proof. typecheck. Qed.

Module Specdata3.
  Definition S := struct.decl [
    "Specdata1" :: Uint32;
    "Specdata2" :: Uint32
  ].
End Specdata3.

Module Nfs_fh3.
  Definition S := struct.decl [
    "Data" :: slice.T byteT
  ].
End Nfs_fh3.

Module Nfstime3.
  Definition S := struct.decl [
    "Seconds" :: Uint32;
    "Nseconds" :: Uint32
  ].
End Nfstime3.

Module Fattr3.
  Definition S := struct.decl [
    "Ftype" :: Ftype3;
    "Mode" :: Mode3;
    "Nlink" :: Uint32;
    "Uid" :: Uid3;
    "Gid" :: Gid3;
    "Size" :: Size3;
    "Used" :: Size3;
    "Rdev" :: struct.t Specdata3.S;
    "Fsid" :: Uint64;
    "Fileid" :: Fileid3;
    "Atime" :: struct.t Nfstime3.S;
    "Mtime" :: struct.t Nfstime3.S;
    "Ctime" :: struct.t Nfstime3.S
  ].
End Fattr3.

Module Post_op_attr.
  Definition S := struct.decl [
    "Attributes_follow" :: boolT;
    "Attributes" :: struct.t Fattr3.S
  ].
End Post_op_attr.

Module Wcc_attr.
  Definition S := struct.decl [
    "Size" :: Size3;
    "Mtime" :: struct.t Nfstime3.S;
    "Ctime" :: struct.t Nfstime3.S
  ].
End Wcc_attr.

Module Pre_op_attr.
  Definition S := struct.decl [
    "Attributes_follow" :: boolT;
    "Attributes" :: struct.t Wcc_attr.S
  ].
End Pre_op_attr.

Module Wcc_data.
  Definition S := struct.decl [
    "Before" :: struct.t Pre_op_attr.S;
    "After" :: struct.t Post_op_attr.S
  ].
End Wcc_data.

Module Post_op_fh3.
  Definition S := struct.decl [
    "Handle_follows" :: boolT;
    "Handle" :: struct.t Nfs_fh3.S
  ].
End Post_op_fh3.

Definition Time_how: ty := uint32T.

Definition DONT_CHANGE : expr := #(U32 0).
Theorem DONT_CHANGE_t Γ : Γ ⊢ DONT_CHANGE : Time_how.
Proof. typecheck. Qed.

Definition SET_TO_SERVER_TIME : expr := #(U32 1).
Theorem SET_TO_SERVER_TIME_t Γ : Γ ⊢ SET_TO_SERVER_TIME : Time_how.
Proof. typecheck. Qed.

Definition SET_TO_CLIENT_TIME : expr := #(U32 2).
Theorem SET_TO_CLIENT_TIME_t Γ : Γ ⊢ SET_TO_CLIENT_TIME : Time_how.
Proof. typecheck. Qed.

Module Set_mode3.
  Definition S := struct.decl [
    "Set_it" :: boolT;
    "Mode" :: Mode3
  ].
End Set_mode3.

Module Set_uid3.
  Definition S := struct.decl [
    "Set_it" :: boolT;
    "Uid" :: Uid3
  ].
End Set_uid3.

Module Set_gid3.
  Definition S := struct.decl [
    "Set_it" :: boolT;
    "Gid" :: Gid3
  ].
End Set_gid3.

Module Set_size3.
  Definition S := struct.decl [
    "Set_it" :: boolT;
    "Size" :: Size3
  ].
End Set_size3.

Module Set_atime.
  Definition S := struct.decl [
    "Set_it" :: Time_how;
    "Atime" :: struct.t Nfstime3.S
  ].
End Set_atime.

Module Set_mtime.
  Definition S := struct.decl [
    "Set_it" :: Time_how;
    "Mtime" :: struct.t Nfstime3.S
  ].
End Set_mtime.

Module Sattr3.
  Definition S := struct.decl [
    "Mode" :: struct.t Set_mode3.S;
    "Uid" :: struct.t Set_uid3.S;
    "Gid" :: struct.t Set_gid3.S;
    "Size" :: struct.t Set_size3.S;
    "Atime" :: struct.t Set_atime.S;
    "Mtime" :: struct.t Set_mtime.S
  ].
End Sattr3.

Module Diropargs3.
  Definition S := struct.decl [
    "Dir" :: struct.t Nfs_fh3.S;
    "Name" :: Filename3
  ].
End Diropargs3.

Definition NFS_PROGRAM : expr := #(U32 100003).
Theorem NFS_PROGRAM_t Γ : Γ ⊢ NFS_PROGRAM : uint32T.
Proof. typecheck. Qed.

Definition NFS_V3 : expr := #(U32 3).
Theorem NFS_V3_t Γ : Γ ⊢ NFS_V3 : uint32T.
Proof. typecheck. Qed.

Definition NFSPROC3_NULL : expr := #(U32 0).
Theorem NFSPROC3_NULL_t Γ : Γ ⊢ NFSPROC3_NULL : uint32T.
Proof. typecheck. Qed.

Definition NFSPROC3_GETATTR : expr := #(U32 1).
Theorem NFSPROC3_GETATTR_t Γ : Γ ⊢ NFSPROC3_GETATTR : uint32T.
Proof. typecheck. Qed.

Definition NFSPROC3_SETATTR : expr := #(U32 2).
Theorem NFSPROC3_SETATTR_t Γ : Γ ⊢ NFSPROC3_SETATTR : uint32T.
Proof. typecheck. Qed.

Definition NFSPROC3_LOOKUP : expr := #(U32 3).
Theorem NFSPROC3_LOOKUP_t Γ : Γ ⊢ NFSPROC3_LOOKUP : uint32T.
Proof. typecheck. Qed.

Definition NFSPROC3_ACCESS : expr := #(U32 4).
Theorem NFSPROC3_ACCESS_t Γ : Γ ⊢ NFSPROC3_ACCESS : uint32T.
Proof. typecheck. Qed.

Definition NFSPROC3_READLINK : expr := #(U32 5).
Theorem NFSPROC3_READLINK_t Γ : Γ ⊢ NFSPROC3_READLINK : uint32T.
Proof. typecheck. Qed.

Definition NFSPROC3_READ : expr := #(U32 6).
Theorem NFSPROC3_READ_t Γ : Γ ⊢ NFSPROC3_READ : uint32T.
Proof. typecheck. Qed.

Definition NFSPROC3_WRITE : expr := #(U32 7).
Theorem NFSPROC3_WRITE_t Γ : Γ ⊢ NFSPROC3_WRITE : uint32T.
Proof. typecheck. Qed.

Definition NFSPROC3_CREATE : expr := #(U32 8).
Theorem NFSPROC3_CREATE_t Γ : Γ ⊢ NFSPROC3_CREATE : uint32T.
Proof. typecheck. Qed.

Definition NFSPROC3_MKDIR : expr := #(U32 9).
Theorem NFSPROC3_MKDIR_t Γ : Γ ⊢ NFSPROC3_MKDIR : uint32T.
Proof. typecheck. Qed.

Definition NFSPROC3_SYMLINK : expr := #(U32 10).
Theorem NFSPROC3_SYMLINK_t Γ : Γ ⊢ NFSPROC3_SYMLINK : uint32T.
Proof. typecheck. Qed.

Definition NFSPROC3_MKNOD : expr := #(U32 11).
Theorem NFSPROC3_MKNOD_t Γ : Γ ⊢ NFSPROC3_MKNOD : uint32T.
Proof. typecheck. Qed.

Definition NFSPROC3_REMOVE : expr := #(U32 12).
Theorem NFSPROC3_REMOVE_t Γ : Γ ⊢ NFSPROC3_REMOVE : uint32T.
Proof. typecheck. Qed.

Definition NFSPROC3_RMDIR : expr := #(U32 13).
Theorem NFSPROC3_RMDIR_t Γ : Γ ⊢ NFSPROC3_RMDIR : uint32T.
Proof. typecheck. Qed.

Definition NFSPROC3_RENAME : expr := #(U32 14).
Theorem NFSPROC3_RENAME_t Γ : Γ ⊢ NFSPROC3_RENAME : uint32T.
Proof. typecheck. Qed.

Definition NFSPROC3_LINK : expr := #(U32 15).
Theorem NFSPROC3_LINK_t Γ : Γ ⊢ NFSPROC3_LINK : uint32T.
Proof. typecheck. Qed.

Definition NFSPROC3_READDIR : expr := #(U32 16).
Theorem NFSPROC3_READDIR_t Γ : Γ ⊢ NFSPROC3_READDIR : uint32T.
Proof. typecheck. Qed.

Definition NFSPROC3_READDIRPLUS : expr := #(U32 17).
Theorem NFSPROC3_READDIRPLUS_t Γ : Γ ⊢ NFSPROC3_READDIRPLUS : uint32T.
Proof. typecheck. Qed.

Definition NFSPROC3_FSSTAT : expr := #(U32 18).
Theorem NFSPROC3_FSSTAT_t Γ : Γ ⊢ NFSPROC3_FSSTAT : uint32T.
Proof. typecheck. Qed.

Definition NFSPROC3_FSINFO : expr := #(U32 19).
Theorem NFSPROC3_FSINFO_t Γ : Γ ⊢ NFSPROC3_FSINFO : uint32T.
Proof. typecheck. Qed.

Definition NFSPROC3_PATHCONF : expr := #(U32 20).
Theorem NFSPROC3_PATHCONF_t Γ : Γ ⊢ NFSPROC3_PATHCONF : uint32T.
Proof. typecheck. Qed.

Definition NFSPROC3_COMMIT : expr := #(U32 21).
Theorem NFSPROC3_COMMIT_t Γ : Γ ⊢ NFSPROC3_COMMIT : uint32T.
Proof. typecheck. Qed.

Module GETATTR3args.
  Definition S := struct.decl [
    "Object" :: struct.t Nfs_fh3.S
  ].
End GETATTR3args.

Module GETATTR3resok.
  Definition S := struct.decl [
    "Obj_attributes" :: struct.t Fattr3.S
  ].
End GETATTR3resok.

Module GETATTR3res.
  Definition S := struct.decl [
    "Status" :: Nfsstat3;
    "Resok" :: struct.t GETATTR3resok.S
  ].
End GETATTR3res.

Module Sattrguard3.
  Definition S := struct.decl [
    "Check" :: boolT;
    "Obj_ctime" :: struct.t Nfstime3.S
  ].
End Sattrguard3.

Module SETATTR3args.
  Definition S := struct.decl [
    "Object" :: struct.t Nfs_fh3.S;
    "New_attributes" :: struct.t Sattr3.S;
    "Guard" :: struct.t Sattrguard3.S
  ].
End SETATTR3args.

Module SETATTR3resok.
  Definition S := struct.decl [
    "Obj_wcc" :: struct.t Wcc_data.S
  ].
End SETATTR3resok.

Module SETATTR3resfail.
  Definition S := struct.decl [
    "Obj_wcc" :: struct.t Wcc_data.S
  ].
End SETATTR3resfail.

Module SETATTR3res.
  Definition S := struct.decl [
    "Status" :: Nfsstat3;
    "Resok" :: struct.t SETATTR3resok.S;
    "Resfail" :: struct.t SETATTR3resfail.S
  ].
End SETATTR3res.

Module LOOKUP3args.
  Definition S := struct.decl [
    "What" :: struct.t Diropargs3.S
  ].
End LOOKUP3args.

Module LOOKUP3resok.
  Definition S := struct.decl [
    "Object" :: struct.t Nfs_fh3.S;
    "Obj_attributes" :: struct.t Post_op_attr.S;
    "Dir_attributes" :: struct.t Post_op_attr.S
  ].
End LOOKUP3resok.

Module LOOKUP3resfail.
  Definition S := struct.decl [
    "Dir_attributes" :: struct.t Post_op_attr.S
  ].
End LOOKUP3resfail.

Module LOOKUP3res.
  Definition S := struct.decl [
    "Status" :: Nfsstat3;
    "Resok" :: struct.t LOOKUP3resok.S;
    "Resfail" :: struct.t LOOKUP3resfail.S
  ].
End LOOKUP3res.

Definition ACCESS3_READ : expr := #(U32 1).
Theorem ACCESS3_READ_t Γ : Γ ⊢ ACCESS3_READ : uint32T.
Proof. typecheck. Qed.

Definition ACCESS3_LOOKUP : expr := #(U32 2).
Theorem ACCESS3_LOOKUP_t Γ : Γ ⊢ ACCESS3_LOOKUP : uint32T.
Proof. typecheck. Qed.

Definition ACCESS3_MODIFY : expr := #(U32 4).
Theorem ACCESS3_MODIFY_t Γ : Γ ⊢ ACCESS3_MODIFY : uint32T.
Proof. typecheck. Qed.

Definition ACCESS3_EXTEND : expr := #(U32 8).
Theorem ACCESS3_EXTEND_t Γ : Γ ⊢ ACCESS3_EXTEND : uint32T.
Proof. typecheck. Qed.

Definition ACCESS3_DELETE : expr := #(U32 16).
Theorem ACCESS3_DELETE_t Γ : Γ ⊢ ACCESS3_DELETE : uint32T.
Proof. typecheck. Qed.

Definition ACCESS3_EXECUTE : expr := #(U32 32).
Theorem ACCESS3_EXECUTE_t Γ : Γ ⊢ ACCESS3_EXECUTE : uint32T.
Proof. typecheck. Qed.

Module ACCESS3args.
  Definition S := struct.decl [
    "Object" :: struct.t Nfs_fh3.S;
    "Access" :: Uint32
  ].
End ACCESS3args.

Module ACCESS3resok.
  Definition S := struct.decl [
    "Obj_attributes" :: struct.t Post_op_attr.S;
    "Access" :: Uint32
  ].
End ACCESS3resok.

Module ACCESS3resfail.
  Definition S := struct.decl [
    "Obj_attributes" :: struct.t Post_op_attr.S
  ].
End ACCESS3resfail.

Module ACCESS3res.
  Definition S := struct.decl [
    "Status" :: Nfsstat3;
    "Resok" :: struct.t ACCESS3resok.S;
    "Resfail" :: struct.t ACCESS3resfail.S
  ].
End ACCESS3res.

Module READLINK3args.
  Definition S := struct.decl [
    "Symlink" :: struct.t Nfs_fh3.S
  ].
End READLINK3args.

Module READLINK3resok.
  Definition S := struct.decl [
    "Symlink_attributes" :: struct.t Post_op_attr.S;
    "Data" :: Nfspath3
  ].
End READLINK3resok.

Module READLINK3resfail.
  Definition S := struct.decl [
    "Symlink_attributes" :: struct.t Post_op_attr.S
  ].
End READLINK3resfail.

Module READLINK3res.
  Definition S := struct.decl [
    "Status" :: Nfsstat3;
    "Resok" :: struct.t READLINK3resok.S;
    "Resfail" :: struct.t READLINK3resfail.S
  ].
End READLINK3res.

Module READ3args.
  Definition S := struct.decl [
    "File" :: struct.t Nfs_fh3.S;
    "Offset" :: Offset3;
    "Count" :: Count3
  ].
End READ3args.

Module READ3resok.
  Definition S := struct.decl [
    "File_attributes" :: struct.t Post_op_attr.S;
    "Count" :: Count3;
    "Eof" :: boolT;
    "Data" :: slice.T byteT
  ].
End READ3resok.

Module READ3resfail.
  Definition S := struct.decl [
    "File_attributes" :: struct.t Post_op_attr.S
  ].
End READ3resfail.

Module READ3res.
  Definition S := struct.decl [
    "Status" :: Nfsstat3;
    "Resok" :: struct.t READ3resok.S;
    "Resfail" :: struct.t READ3resfail.S
  ].
End READ3res.

Definition Stable_how: ty := uint32T.

Definition UNSTABLE : expr := #(U32 0).
Theorem UNSTABLE_t Γ : Γ ⊢ UNSTABLE : Stable_how.
Proof. typecheck. Qed.

Definition DATA_SYNC : expr := #(U32 1).
Theorem DATA_SYNC_t Γ : Γ ⊢ DATA_SYNC : Stable_how.
Proof. typecheck. Qed.

Definition FILE_SYNC : expr := #(U32 2).
Theorem FILE_SYNC_t Γ : Γ ⊢ FILE_SYNC : Stable_how.
Proof. typecheck. Qed.

Module WRITE3args.
  Definition S := struct.decl [
    "File" :: struct.t Nfs_fh3.S;
    "Offset" :: Offset3;
    "Count" :: Count3;
    "Stable" :: Stable_how;
    "Data" :: slice.T byteT
  ].
End WRITE3args.

Module WRITE3resok.
  Definition S := struct.decl [
    "File_wcc" :: struct.t Wcc_data.S;
    "Count" :: Count3;
    "Committed" :: Stable_how;
    "Verf" :: Writeverf3
  ].
End WRITE3resok.

Module WRITE3resfail.
  Definition S := struct.decl [
    "File_wcc" :: struct.t Wcc_data.S
  ].
End WRITE3resfail.

Module WRITE3res.
  Definition S := struct.decl [
    "Status" :: Nfsstat3;
    "Resok" :: struct.t WRITE3resok.S;
    "Resfail" :: struct.t WRITE3resfail.S
  ].
End WRITE3res.

Definition Createmode3: ty := uint32T.

Definition UNCHECKED : expr := #(U32 0).
Theorem UNCHECKED_t Γ : Γ ⊢ UNCHECKED : Createmode3.
Proof. typecheck. Qed.

Definition GUARDED : expr := #(U32 1).
Theorem GUARDED_t Γ : Γ ⊢ GUARDED : Createmode3.
Proof. typecheck. Qed.

Definition EXCLUSIVE : expr := #(U32 2).
Theorem EXCLUSIVE_t Γ : Γ ⊢ EXCLUSIVE : Createmode3.
Proof. typecheck. Qed.

Module Createhow3.
  Definition S := struct.decl [
    "Mode" :: Createmode3;
    "Obj_attributes" :: struct.t Sattr3.S;
    "Verf" :: Createverf3
  ].
End Createhow3.

Module CREATE3args.
  Definition S := struct.decl [
    "Where" :: struct.t Diropargs3.S;
    "How" :: struct.t Createhow3.S
  ].
End CREATE3args.

Module CREATE3resok.
  Definition S := struct.decl [
    "Obj" :: struct.t Post_op_fh3.S;
    "Obj_attributes" :: struct.t Post_op_attr.S;
    "Dir_wcc" :: struct.t Wcc_data.S
  ].
End CREATE3resok.

Module CREATE3resfail.
  Definition S := struct.decl [
    "Dir_wcc" :: struct.t Wcc_data.S
  ].
End CREATE3resfail.

Module CREATE3res.
  Definition S := struct.decl [
    "Status" :: Nfsstat3;
    "Resok" :: struct.t CREATE3resok.S;
    "Resfail" :: struct.t CREATE3resfail.S
  ].
End CREATE3res.

Module MKDIR3args.
  Definition S := struct.decl [
    "Where" :: struct.t Diropargs3.S;
    "Attributes" :: struct.t Sattr3.S
  ].
End MKDIR3args.

Module MKDIR3resok.
  Definition S := struct.decl [
    "Obj" :: struct.t Post_op_fh3.S;
    "Obj_attributes" :: struct.t Post_op_attr.S;
    "Dir_wcc" :: struct.t Wcc_data.S
  ].
End MKDIR3resok.

Module MKDIR3resfail.
  Definition S := struct.decl [
    "Dir_wcc" :: struct.t Wcc_data.S
  ].
End MKDIR3resfail.

Module MKDIR3res.
  Definition S := struct.decl [
    "Status" :: Nfsstat3;
    "Resok" :: struct.t MKDIR3resok.S;
    "Resfail" :: struct.t MKDIR3resfail.S
  ].
End MKDIR3res.

Module Symlinkdata3.
  Definition S := struct.decl [
    "Symlink_attributes" :: struct.t Sattr3.S;
    "Symlink_data" :: Nfspath3
  ].
End Symlinkdata3.

Module SYMLINK3args.
  Definition S := struct.decl [
    "Where" :: struct.t Diropargs3.S;
    "Symlink" :: struct.t Symlinkdata3.S
  ].
End SYMLINK3args.

Module SYMLINK3resok.
  Definition S := struct.decl [
    "Obj" :: struct.t Post_op_fh3.S;
    "Obj_attributes" :: struct.t Post_op_attr.S;
    "Dir_wcc" :: struct.t Wcc_data.S
  ].
End SYMLINK3resok.

Module SYMLINK3resfail.
  Definition S := struct.decl [
    "Dir_wcc" :: struct.t Wcc_data.S
  ].
End SYMLINK3resfail.

Module SYMLINK3res.
  Definition S := struct.decl [
    "Status" :: Nfsstat3;
    "Resok" :: struct.t SYMLINK3resok.S;
    "Resfail" :: struct.t SYMLINK3resfail.S
  ].
End SYMLINK3res.

Module Devicedata3.
  Definition S := struct.decl [
    "Dev_attributes" :: struct.t Sattr3.S;
    "Spec" :: struct.t Specdata3.S
  ].
End Devicedata3.

Module Mknoddata3.
  Definition S := struct.decl [
    "Ftype" :: Ftype3;
    "Device" :: struct.t Devicedata3.S;
    "Pipe_attributes" :: struct.t Sattr3.S
  ].
End Mknoddata3.

Module MKNOD3args.
  Definition S := struct.decl [
    "Where" :: struct.t Diropargs3.S;
    "What" :: struct.t Mknoddata3.S
  ].
End MKNOD3args.

Module MKNOD3resok.
  Definition S := struct.decl [
    "Obj" :: struct.t Post_op_fh3.S;
    "Obj_attributes" :: struct.t Post_op_attr.S;
    "Dir_wcc" :: struct.t Wcc_data.S
  ].
End MKNOD3resok.

Module MKNOD3resfail.
  Definition S := struct.decl [
    "Dir_wcc" :: struct.t Wcc_data.S
  ].
End MKNOD3resfail.

Module MKNOD3res.
  Definition S := struct.decl [
    "Status" :: Nfsstat3;
    "Resok" :: struct.t MKNOD3resok.S;
    "Resfail" :: struct.t MKNOD3resfail.S
  ].
End MKNOD3res.

Module REMOVE3args.
  Definition S := struct.decl [
    "Object" :: struct.t Diropargs3.S
  ].
End REMOVE3args.

Module REMOVE3resok.
  Definition S := struct.decl [
    "Dir_wcc" :: struct.t Wcc_data.S
  ].
End REMOVE3resok.

Module REMOVE3resfail.
  Definition S := struct.decl [
    "Dir_wcc" :: struct.t Wcc_data.S
  ].
End REMOVE3resfail.

Module REMOVE3res.
  Definition S := struct.decl [
    "Status" :: Nfsstat3;
    "Resok" :: struct.t REMOVE3resok.S;
    "Resfail" :: struct.t REMOVE3resfail.S
  ].
End REMOVE3res.

Module RMDIR3args.
  Definition S := struct.decl [
    "Object" :: struct.t Diropargs3.S
  ].
End RMDIR3args.

Module RMDIR3resok.
  Definition S := struct.decl [
    "Dir_wcc" :: struct.t Wcc_data.S
  ].
End RMDIR3resok.

Module RMDIR3resfail.
  Definition S := struct.decl [
    "Dir_wcc" :: struct.t Wcc_data.S
  ].
End RMDIR3resfail.

Module RMDIR3res.
  Definition S := struct.decl [
    "Status" :: Nfsstat3;
    "Resok" :: struct.t RMDIR3resok.S;
    "Resfail" :: struct.t RMDIR3resfail.S
  ].
End RMDIR3res.

Module RENAME3args.
  Definition S := struct.decl [
    "From" :: struct.t Diropargs3.S;
    "To" :: struct.t Diropargs3.S
  ].
End RENAME3args.

Module RENAME3resok.
  Definition S := struct.decl [
    "Fromdir_wcc" :: struct.t Wcc_data.S;
    "Todir_wcc" :: struct.t Wcc_data.S
  ].
End RENAME3resok.

Module RENAME3resfail.
  Definition S := struct.decl [
    "Fromdir_wcc" :: struct.t Wcc_data.S;
    "Todir_wcc" :: struct.t Wcc_data.S
  ].
End RENAME3resfail.

Module RENAME3res.
  Definition S := struct.decl [
    "Status" :: Nfsstat3;
    "Resok" :: struct.t RENAME3resok.S;
    "Resfail" :: struct.t RENAME3resfail.S
  ].
End RENAME3res.

Module LINK3args.
  Definition S := struct.decl [
    "File" :: struct.t Nfs_fh3.S;
    "Link" :: struct.t Diropargs3.S
  ].
End LINK3args.

Module LINK3resok.
  Definition S := struct.decl [
    "File_attributes" :: struct.t Post_op_attr.S;
    "Linkdir_wcc" :: struct.t Wcc_data.S
  ].
End LINK3resok.

Module LINK3resfail.
  Definition S := struct.decl [
    "File_attributes" :: struct.t Post_op_attr.S;
    "Linkdir_wcc" :: struct.t Wcc_data.S
  ].
End LINK3resfail.

Module LINK3res.
  Definition S := struct.decl [
    "Status" :: Nfsstat3;
    "Resok" :: struct.t LINK3resok.S;
    "Resfail" :: struct.t LINK3resfail.S
  ].
End LINK3res.

Module READDIR3args.
  Definition S := struct.decl [
    "Dir" :: struct.t Nfs_fh3.S;
    "Cookie" :: Cookie3;
    "Cookieverf" :: Cookieverf3;
    "Count" :: Count3
  ].
End READDIR3args.

Module Entry3.
  Definition S := struct.decl [
    "Fileid" :: Fileid3;
    "Name" :: Filename3;
    "Cookie" :: Cookie3;
    "Nextentry" :: refT anyT
  ].
End Entry3.

Module Dirlist3.
  Definition S := struct.decl [
    "Entries" :: struct.ptrT Entry3.S;
    "Eof" :: boolT
  ].
End Dirlist3.

Module READDIR3resok.
  Definition S := struct.decl [
    "Dir_attributes" :: struct.t Post_op_attr.S;
    "Cookieverf" :: Cookieverf3;
    "Reply" :: struct.t Dirlist3.S
  ].
End READDIR3resok.

Module READDIR3resfail.
  Definition S := struct.decl [
    "Dir_attributes" :: struct.t Post_op_attr.S
  ].
End READDIR3resfail.

Module READDIR3res.
  Definition S := struct.decl [
    "Status" :: Nfsstat3;
    "Resok" :: struct.t READDIR3resok.S;
    "Resfail" :: struct.t READDIR3resfail.S
  ].
End READDIR3res.

Module READDIRPLUS3args.
  Definition S := struct.decl [
    "Dir" :: struct.t Nfs_fh3.S;
    "Cookie" :: Cookie3;
    "Cookieverf" :: Cookieverf3;
    "Dircount" :: Count3;
    "Maxcount" :: Count3
  ].
End READDIRPLUS3args.

Module Entryplus3.
  Definition S := struct.decl [
    "Fileid" :: Fileid3;
    "Name" :: Filename3;
    "Cookie" :: Cookie3;
    "Name_attributes" :: struct.t Post_op_attr.S;
    "Name_handle" :: struct.t Post_op_fh3.S;
    "Nextentry" :: refT anyT
  ].
End Entryplus3.

Module Dirlistplus3.
  Definition S := struct.decl [
    "Entries" :: struct.ptrT Entryplus3.S;
    "Eof" :: boolT
  ].
End Dirlistplus3.

Module READDIRPLUS3resok.
  Definition S := struct.decl [
    "Dir_attributes" :: struct.t Post_op_attr.S;
    "Cookieverf" :: Cookieverf3;
    "Reply" :: struct.t Dirlistplus3.S
  ].
End READDIRPLUS3resok.

Module READDIRPLUS3resfail.
  Definition S := struct.decl [
    "Dir_attributes" :: struct.t Post_op_attr.S
  ].
End READDIRPLUS3resfail.

Module READDIRPLUS3res.
  Definition S := struct.decl [
    "Status" :: Nfsstat3;
    "Resok" :: struct.t READDIRPLUS3resok.S;
    "Resfail" :: struct.t READDIRPLUS3resfail.S
  ].
End READDIRPLUS3res.

Module FSSTAT3args.
  Definition S := struct.decl [
    "Fsroot" :: struct.t Nfs_fh3.S
  ].
End FSSTAT3args.

Module FSSTAT3resok.
  Definition S := struct.decl [
    "Obj_attributes" :: struct.t Post_op_attr.S;
    "Tbytes" :: Size3;
    "Fbytes" :: Size3;
    "Abytes" :: Size3;
    "Tfiles" :: Size3;
    "Ffiles" :: Size3;
    "Afiles" :: Size3;
    "Invarsec" :: Uint32
  ].
End FSSTAT3resok.

Module FSSTAT3resfail.
  Definition S := struct.decl [
    "Obj_attributes" :: struct.t Post_op_attr.S
  ].
End FSSTAT3resfail.

Module FSSTAT3res.
  Definition S := struct.decl [
    "Status" :: Nfsstat3;
    "Resok" :: struct.t FSSTAT3resok.S;
    "Resfail" :: struct.t FSSTAT3resfail.S
  ].
End FSSTAT3res.

Definition FSF3_LINK : expr := #(U32 1).
Theorem FSF3_LINK_t Γ : Γ ⊢ FSF3_LINK : uint32T.
Proof. typecheck. Qed.

Definition FSF3_SYMLINK : expr := #(U32 2).
Theorem FSF3_SYMLINK_t Γ : Γ ⊢ FSF3_SYMLINK : uint32T.
Proof. typecheck. Qed.

Definition FSF3_HOMOGENEOUS : expr := #(U32 8).
Theorem FSF3_HOMOGENEOUS_t Γ : Γ ⊢ FSF3_HOMOGENEOUS : uint32T.
Proof. typecheck. Qed.

Definition FSF3_CANSETTIME : expr := #(U32 16).
Theorem FSF3_CANSETTIME_t Γ : Γ ⊢ FSF3_CANSETTIME : uint32T.
Proof. typecheck. Qed.

Module FSINFO3args.
  Definition S := struct.decl [
    "Fsroot" :: struct.t Nfs_fh3.S
  ].
End FSINFO3args.

Module FSINFO3resok.
  Definition S := struct.decl [
    "Obj_attributes" :: struct.t Post_op_attr.S;
    "Rtmax" :: Uint32;
    "Rtpref" :: Uint32;
    "Rtmult" :: Uint32;
    "Wtmax" :: Uint32;
    "Wtpref" :: Uint32;
    "Wtmult" :: Uint32;
    "Dtpref" :: Uint32;
    "Maxfilesize" :: Size3;
    "Time_delta" :: struct.t Nfstime3.S;
    "Properties" :: Uint32
  ].
End FSINFO3resok.

Module FSINFO3resfail.
  Definition S := struct.decl [
    "Obj_attributes" :: struct.t Post_op_attr.S
  ].
End FSINFO3resfail.

Module FSINFO3res.
  Definition S := struct.decl [
    "Status" :: Nfsstat3;
    "Resok" :: struct.t FSINFO3resok.S;
    "Resfail" :: struct.t FSINFO3resfail.S
  ].
End FSINFO3res.

Module PATHCONF3args.
  Definition S := struct.decl [
    "Object" :: struct.t Nfs_fh3.S
  ].
End PATHCONF3args.

Module PATHCONF3resok.
  Definition S := struct.decl [
    "Obj_attributes" :: struct.t Post_op_attr.S;
    "Linkmax" :: Uint32;
    "Name_max" :: Uint32;
    "No_trunc" :: boolT;
    "Chown_restricted" :: boolT;
    "Case_insensitive" :: boolT;
    "Case_preserving" :: boolT
  ].
End PATHCONF3resok.

Module PATHCONF3resfail.
  Definition S := struct.decl [
    "Obj_attributes" :: struct.t Post_op_attr.S
  ].
End PATHCONF3resfail.

Module PATHCONF3res.
  Definition S := struct.decl [
    "Status" :: Nfsstat3;
    "Resok" :: struct.t PATHCONF3resok.S;
    "Resfail" :: struct.t PATHCONF3resfail.S
  ].
End PATHCONF3res.

Module COMMIT3args.
  Definition S := struct.decl [
    "File" :: struct.t Nfs_fh3.S;
    "Offset" :: Offset3;
    "Count" :: Count3
  ].
End COMMIT3args.

Module COMMIT3resok.
  Definition S := struct.decl [
    "File_wcc" :: struct.t Wcc_data.S;
    "Verf" :: Writeverf3
  ].
End COMMIT3resok.

Module COMMIT3resfail.
  Definition S := struct.decl [
    "File_wcc" :: struct.t Wcc_data.S
  ].
End COMMIT3resfail.

Module COMMIT3res.
  Definition S := struct.decl [
    "Status" :: Nfsstat3;
    "Resok" :: struct.t COMMIT3resok.S;
    "Resfail" :: struct.t COMMIT3resfail.S
  ].
End COMMIT3res.

Definition MNTPATHLEN3 : expr := #(U32 1024).
Theorem MNTPATHLEN3_t Γ : Γ ⊢ MNTPATHLEN3 : uint32T.
Proof. typecheck. Qed.

Definition MNTNAMLEN3 : expr := #(U32 255).
Theorem MNTNAMLEN3_t Γ : Γ ⊢ MNTNAMLEN3 : uint32T.
Proof. typecheck. Qed.

Definition FHSIZE3 : expr := #(U32 64).
Theorem FHSIZE3_t Γ : Γ ⊢ FHSIZE3 : uint32T.
Proof. typecheck. Qed.

Definition Fhandle3: ty := slice.T byteT.

Definition Dirpath3: ty := stringT.

Definition Name3: ty := stringT.

Definition Mountstat3: ty := uint32T.

Definition MNT3_OK : expr := #(U32 0).
Theorem MNT3_OK_t Γ : Γ ⊢ MNT3_OK : Mountstat3.
Proof. typecheck. Qed.

Definition MNT3ERR_PERM : expr := #(U32 1).
Theorem MNT3ERR_PERM_t Γ : Γ ⊢ MNT3ERR_PERM : Mountstat3.
Proof. typecheck. Qed.

Definition MNT3ERR_NOENT : expr := #(U32 2).
Theorem MNT3ERR_NOENT_t Γ : Γ ⊢ MNT3ERR_NOENT : Mountstat3.
Proof. typecheck. Qed.

Definition MNT3ERR_IO : expr := #(U32 5).
Theorem MNT3ERR_IO_t Γ : Γ ⊢ MNT3ERR_IO : Mountstat3.
Proof. typecheck. Qed.

Definition MNT3ERR_ACCES : expr := #(U32 13).
Theorem MNT3ERR_ACCES_t Γ : Γ ⊢ MNT3ERR_ACCES : Mountstat3.
Proof. typecheck. Qed.

Definition MNT3ERR_NOTDIR : expr := #(U32 20).
Theorem MNT3ERR_NOTDIR_t Γ : Γ ⊢ MNT3ERR_NOTDIR : Mountstat3.
Proof. typecheck. Qed.

Definition MNT3ERR_INVAL : expr := #(U32 22).
Theorem MNT3ERR_INVAL_t Γ : Γ ⊢ MNT3ERR_INVAL : Mountstat3.
Proof. typecheck. Qed.

Definition MNT3ERR_NAMETOOLONG : expr := #(U32 63).
Theorem MNT3ERR_NAMETOOLONG_t Γ : Γ ⊢ MNT3ERR_NAMETOOLONG : Mountstat3.
Proof. typecheck. Qed.

Definition MNT3ERR_NOTSUPP : expr := #(U32 10004).
Theorem MNT3ERR_NOTSUPP_t Γ : Γ ⊢ MNT3ERR_NOTSUPP : Mountstat3.
Proof. typecheck. Qed.

Definition MNT3ERR_SERVERFAULT : expr := #(U32 10006).
Theorem MNT3ERR_SERVERFAULT_t Γ : Γ ⊢ MNT3ERR_SERVERFAULT : Mountstat3.
Proof. typecheck. Qed.

Definition MOUNT_PROGRAM : expr := #(U32 100005).
Theorem MOUNT_PROGRAM_t Γ : Γ ⊢ MOUNT_PROGRAM : uint32T.
Proof. typecheck. Qed.

Definition MOUNT_V3 : expr := #(U32 3).
Theorem MOUNT_V3_t Γ : Γ ⊢ MOUNT_V3 : uint32T.
Proof. typecheck. Qed.

Definition MOUNTPROC3_NULL : expr := #(U32 0).
Theorem MOUNTPROC3_NULL_t Γ : Γ ⊢ MOUNTPROC3_NULL : uint32T.
Proof. typecheck. Qed.

Definition MOUNTPROC3_MNT : expr := #(U32 1).
Theorem MOUNTPROC3_MNT_t Γ : Γ ⊢ MOUNTPROC3_MNT : uint32T.
Proof. typecheck. Qed.

Definition MOUNTPROC3_DUMP : expr := #(U32 2).
Theorem MOUNTPROC3_DUMP_t Γ : Γ ⊢ MOUNTPROC3_DUMP : uint32T.
Proof. typecheck. Qed.

Definition MOUNTPROC3_UMNT : expr := #(U32 3).
Theorem MOUNTPROC3_UMNT_t Γ : Γ ⊢ MOUNTPROC3_UMNT : uint32T.
Proof. typecheck. Qed.

Definition MOUNTPROC3_UMNTALL : expr := #(U32 4).
Theorem MOUNTPROC3_UMNTALL_t Γ : Γ ⊢ MOUNTPROC3_UMNTALL : uint32T.
Proof. typecheck. Qed.

Definition MOUNTPROC3_EXPORT : expr := #(U32 5).
Theorem MOUNTPROC3_EXPORT_t Γ : Γ ⊢ MOUNTPROC3_EXPORT : uint32T.
Proof. typecheck. Qed.

Module Mountres3_ok.
  Definition S := struct.decl [
    "Fhandle" :: Fhandle3;
    "Auth_flavors" :: slice.T uint32T
  ].
End Mountres3_ok.

Module Mountres3.
  Definition S := struct.decl [
    "Fhs_status" :: Mountstat3;
    "Mountinfo" :: struct.t Mountres3_ok.S
  ].
End Mountres3.

Module Mount3.
  Definition S := struct.decl [
    "Ml_hostname" :: Name3;
    "Ml_directory" :: Dirpath3;
    "Ml_next" :: refT anyT
  ].
End Mount3.

Module Mountopt3.
  Definition S := struct.decl [
    "P" :: struct.ptrT Mount3.S
  ].
End Mountopt3.

Module Groups3.
  Definition S := struct.decl [
    "Gr_name" :: Name3;
    "Gr_next" :: refT anyT
  ].
End Groups3.

Module Exports3.
  Definition S := struct.decl [
    "Ex_dir" :: Dirpath3;
    "Ex_groups" :: struct.ptrT Groups3.S;
    "Ex_next" :: refT anyT
  ].
End Exports3.

Module Exportsopt3.
  Definition S := struct.decl [
    "P" :: struct.ptrT Exports3.S
  ].
End Exportsopt3.

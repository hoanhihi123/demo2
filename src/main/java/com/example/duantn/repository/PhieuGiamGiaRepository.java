package com.example.duantn.repository;

import com.example.duantn.model.ChiTietSanPham;
import com.example.duantn.model.PhieuGiamGia;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface PhieuGiamGiaRepository extends JpaRepository<PhieuGiamGia, UUID> {
    @Query(value = "select * from PhieuGiamGia where soLuong > 0  and NgayKetThuc >= GETDATE() and NgayBatDau <= GETDATE()  ",nativeQuery = true)
    List<PhieuGiamGia>getAll();

    @Query(value = "select  count(*) from PhieuGiamGia where soLuong > 0  and NgayKetThuc >= GETDATE()",
            countQuery = "select  count(*) from PhieuGiamGia where soLuong > 0  and NgayKetThuc >= GETDATE()", nativeQuery = true)
    public Page<PhieuGiamGia> getAll(Pageable pageable);

    // hoan code
    @Query(value = "SELECT *\n" +
            "FROM PhieuGiamGia\n" +
            "where soLuong > 0  and NgayKetThuc >= GETDATE() and NgayBatDau <= GETDATE() \n" +
            "ORDER BY \n" +
            "    CASE \n" +
            "        WHEN HinhThucGiam = N'tiền mặt' THEN GiaTriGiam\n" +
            "        WHEN HinhThucGiam = '%' THEN  ( :tongTienDonHang * (GiaTriGiam  / 100))\n" +
            "\t\telse 0\n" +
            "    END desc;",nativeQuery = true)
    List<PhieuGiamGia>getAll_voiTongTien(@Param("tongTienDonHang") Double tongTienDonHang);

    @Query(value = "SELECT *\n" +
            "FROM PhieuGiamGia\n" +
            "where soLuong > 0  and NgayKetThuc >= GETDATE() and NgayBatDau <= GETDATE() \n" +
            "ORDER BY \n" +
            "    CASE \n" +
            "        WHEN HinhThucGiam = N'tiền mặt' THEN GiaTriGiam\n" +
            "        WHEN HinhThucGiam = '%' THEN  ( :tongTienDonHang * (GiaTriGiam  / 100))\n" +
            "\t\telse 0\n" +
            "    END desc;",
            countQuery = "SELECT * FROM PhieuGiamGia where soLuong > 0  and NgayKetThuc >= GETDATE() and NgayBatDau <= GETDATE() ", nativeQuery = true)
    public Page<PhieuGiamGia> getAll_tongTienDonHang(Pageable pageable , @Param("tongTienDonHang") Double tongTienDonHang);

    @Query(value = "select  * from PhieuGiamGia " +
                    "where Concat(PhieuGiamGia.ten) like %:textSearch%\n",
            nativeQuery = true)
    public Page<PhieuGiamGia> getAll(@Param("textSearch") String textSearch, Pageable pageable);
}

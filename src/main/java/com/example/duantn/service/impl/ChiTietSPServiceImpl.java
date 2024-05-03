package com.example.duantn.service.impl;

import com.example.duantn.model.*;
import com.example.duantn.repository.ChiTietSanPhamRepository;
import com.example.duantn.repository.LoaiSanPhamRepository;
import com.example.duantn.request.ChiTietSanPham_theoSanPham_soLuong;
import com.example.duantn.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
public class ChiTietSPServiceImpl implements BaseService<ChiTietSanPham> {
    @Autowired
    ChiTietSanPhamRepository repo_chiTietSanPham;

    @Autowired
    LoaiSanPhamRepository repo_loaiSanPham;

    @Override
    public Page<ChiTietSanPham> layDanhSach(Pageable pageable) {
        return repo_chiTietSanPham.getAll(pageable);
    }

    public List<ChiTietSanPham> layDanhSachTheoIDSanPham(UUID idSanPham) {
        return repo_chiTietSanPham.getAll(idSanPham);
    }

    public List<ChiTietSanPham> layDanhSachTheoIDSanPham_searchTrangThai(Integer trangThai, UUID idSanPham) {
        return repo_chiTietSanPham.getAllTheoTrangThai(idSanPham, trangThai);
    }


    @Override
    public Page<ChiTietSanPham> layDanhSach(String textSearch, Pageable pageable) {
        if(textSearch!=null){
            return repo_chiTietSanPham.getAll(textSearch, pageable);
        }

        return repo_chiTietSanPham.getAll(pageable);
    }

    public void capNhatGiaTriGiamNull(){
        repo_chiTietSanPham.capNhatCacGiaTriSP_isNull();
    }


    @Override
    public void xoa(UUID id) {
        repo_chiTietSanPham.updateTrangThaiSanPhamCT(id);
    }

    public void capNhatTrangThaiSanPhamCT(UUID id) {
        repo_chiTietSanPham.updateTrangThaiSanPhamCT(id);
    }

    @Override
    public void themMoi(ChiTietSanPham entity) {
        repo_chiTietSanPham.save(entity);
    }

    public ChiTietSanPham themMoi_traVeKetQua(ChiTietSanPham chiTietSanPham) {
        return repo_chiTietSanPham.save(chiTietSanPham);
    }

    public ChiTietSanPham capNhat_traVeKetQua(ChiTietSanPham chiTietSanPham) {
        return repo_chiTietSanPham.save(chiTietSanPham);
    }

    @Override
    public void capNhat(ChiTietSanPham entity) {
        repo_chiTietSanPham.save(entity);
    }

    @Override
    public ChiTietSanPham chiTietTheoId(UUID id) {
        return repo_chiTietSanPham.findById(id).orElse(null);
    }

    @Override
    public List<ChiTietSanPham> layDanhSachTheoTen(String ten) {
        return null;
    }

    @Override
    public List<ChiTietSanPham> layDanhSach() {
        return repo_chiTietSanPham.getAll();
    }

    public void capNhatSoLuongSauKhiDatHang(Integer soLuongMua, UUID idChiTietSP) {
        repo_chiTietSanPham.updateSoLuong(soLuongMua, idChiTietSP);
    }

    public  List<LoaiSanPham> layTatCa_idLoaiSP_distinct_trongChiTietSP(){
        List<UUID> dsId_loaiSP = new ArrayList<>();
        List<LoaiSanPham> dsLoaiSanPham = new ArrayList<>();
        dsId_loaiSP = repo_chiTietSanPham.getAllLoaiSanPham_coTrongChiTietSP();
        dsLoaiSanPham = repo_loaiSanPham.findAll();

        List<LoaiSanPham> dsLoaiSanPhamNew = new ArrayList<>();
        for(LoaiSanPham x : dsLoaiSanPham){
            for(UUID id : dsId_loaiSP){
                if(id.equals(x.getId())){
                    dsLoaiSanPhamNew.add(x);
                }
            }
        }

        return dsLoaiSanPhamNew;
    }

    public  List<ChiTietSanPham> layDanhSachSanPham_soLuongLonHon_0(Pageable pageable){
        return (List<ChiTietSanPham>) repo_chiTietSanPham.getAllProductLonHon_0(pageable);
    }


    // getListIDMauSacFromSanPhamChiTiet_byIdSanPham
    public  List<UUID> layDanhSachIDMauSacTuSanPhamCT_bangIdSanPham(UUID idSanPham){
        return repo_chiTietSanPham.getListIDMauSacFromSanPhamChiTiet_byIdSanPham(idSanPham);
    }

    // getListSanPhamChiTietTheo_idSanPham
    public  List<ChiTietSanPham> layDanhSachSPCT_theoIDSanPham(UUID idSanPham){
        return repo_chiTietSanPham.getListSanPhamChiTietTheo_idSanPham(idSanPham);
    }

    // getListSanPhamCT_theoIdMauSac_IdSanPham
    public  List<ChiTietSanPham> layDanhSachSPCT_theoIDSanPham_va_ID_mauSac(UUID idSanPham, UUID idMauSac){
        return repo_chiTietSanPham.getListSanPhamCT_theoIdMauSac_IdSanPham(idSanPham,idMauSac);
    }

    // getListUUID_SanPham_fromChiTietSP
    public  List<UUID> layDanhSach_IdSanPham_trongSanPhamCT(){
        return repo_chiTietSanPham.getListUUID_SanPham_fromChiTietSP();
    }

    // lay so luong trong kho bang idSanPhamChiTiet
    public Integer laySoLuongTrongKho(UUID idSanPhamCT){
        return  repo_chiTietSanPham.getSoLuong_byIdSanPhamChiTiet(idSanPhamCT);
    }

    public void xoaSanPhamChiTietTheoTrangThai(Integer trangThai){
        repo_chiTietSanPham.xoaSanPhamChiTietTheoTrangThai(trangThai);
    }

    public List<ChiTietSanPham> danhSachSanPhamTimKiem(
             UUID idKichCo,
            UUID idLoaiSP,
             UUID idMauSac,
            String tenSP
    ){
        return repo_chiTietSanPham.timKiemSanPhamTaiQuay(idKichCo, idLoaiSP, idMauSac, tenSP);
    }

    public Page<ChiTietSanPham> danhSachSanPhamTimKiem_phanTrang(
            UUID idKichCo,
            UUID idLoaiSP,
            UUID idMauSac,
            String tenSP,
            Pageable pageable
    ){
        return repo_chiTietSanPham.timKiemSanPhamTaiQuay_phanTrang(idKichCo, idLoaiSP, idMauSac, tenSP,pageable);
    }

}

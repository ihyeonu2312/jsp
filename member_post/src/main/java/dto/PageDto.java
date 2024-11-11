package dto;

import lombok.Data;

@Data
public class PageDto {
    private Criteria cri;
    private int total; // 총 페이지 갯수
    private int startPage; // 1 페이지 시작 버튼 번호
    private int endPage; // 10 페이지 종료 버튼 번호

    private int pageCount; // 페이지 버튼 갯수

    // 페이지 이동 이전 이후 계산용 필드
    private boolean prev;
    private boolean next;
    private boolean doublePrev;
    private boolean doubleNext;
    
    
    public PageDto(int total) {
        this(new Criteria(), total);
    }

    public PageDto(Criteria cri, int total) {
        this(cri, total, 10);
    }

    public PageDto(Criteria cri, int total, int pageCount) {
        this.cri = cri;
        this.total = total;
        this.pageCount = pageCount;
        endPage = (cri.getPage() + pageCount - 1) / pageCount * pageCount;
        startPage = endPage - pageCount + 1;

        int realEnd = (total + cri.getAmount() - 1) / cri.getAmount();

        if(realEnd < endPage) {
            endPage = realEnd;
        }

        //
        
        prev = cri.getPage() > 1;
        next = cri.getPage() < realEnd;
        doublePrev = startPage > 1;
        doubleNext = endPage < realEnd;
        
    }
    
    
    public static void main(String[] args) {
        PageDto dto = new PageDto(255);
        System.out.println(dto);
    }
}
# Julia wrapper for header: /usr/local/include/libavutil/imgutils.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


export
    av_image_fill_max_pixsteps,
    av_image_get_linesize,
    av_image_fill_linesizes,
    av_image_fill_pointers,
    av_image_alloc,
    av_image_copy_plane,
    av_image_copy,
    av_image_check_size,
    ff_set_systematic_pal2


function av_image_fill_max_pixsteps(max_pixsteps,max_pixstep_comps,pixdesc)
    ccall((:av_image_fill_max_pixsteps,libavutil),Void,(Ptr{Cint},Ptr{Cint},Ptr{AVPixFmtDescriptor}),max_pixsteps,max_pixstep_comps,pixdesc)
end

function av_image_get_linesize(pix_fmt::PixelFormat,width::Integer,plane::Integer)
    ccall((:av_image_get_linesize,libavutil),Cint,(PixelFormat,Cint,Cint),pix_fmt,width,plane)
end

function av_image_fill_linesizes(linesizes,pix_fmt::PixelFormat,width::Integer)
    ccall((:av_image_fill_linesizes,libavutil),Cint,(Ptr{Cint},PixelFormat,Cint),linesizes,pix_fmt,width)
end

function av_image_fill_pointers(data,pix_fmt::PixelFormat,height::Integer,ptr,linesizes)
    ccall((:av_image_fill_pointers,libavutil),Cint,(Ptr{Ptr{Uint8}},PixelFormat,Cint,Ptr{Uint8},Ptr{Cint}),data,pix_fmt,height,ptr,linesizes)
end

function av_image_alloc(pointers,linesizes,w::Integer,h::Integer,pix_fmt::PixelFormat,align::Integer)
    ccall((:av_image_alloc,libavutil),Cint,(Ptr{Ptr{Uint8}},Ptr{Cint},Cint,Cint,PixelFormat,Cint),pointers,linesizes,w,h,pix_fmt,align)
end

function av_image_copy_plane(dst,dst_linesize::Integer,src,src_linesize::Integer,bytewidth::Integer,height::Integer)
    ccall((:av_image_copy_plane,libavutil),Void,(Ptr{Uint8},Cint,Ptr{Uint8},Cint,Cint,Cint),dst,dst_linesize,src,src_linesize,bytewidth,height)
end

function av_image_copy(dst_data,dst_linesizes,src_data,src_linesizes,pix_fmt::PixelFormat,width::Integer,height::Integer)
    ccall((:av_image_copy,libavutil),Void,(Ptr{Ptr{Uint8}},Ptr{Cint},Ptr{Ptr{Uint8}},Ptr{Cint},PixelFormat,Cint,Cint),dst_data,dst_linesizes,src_data,src_linesizes,pix_fmt,width,height)
end

function av_image_check_size(w::Integer,h::Integer,log_offset::Integer,log_ctx)
    ccall((:av_image_check_size,libavutil),Cint,(Uint32,Uint32,Cint,Ptr{Void}),w,h,log_offset,log_ctx)
end

function ff_set_systematic_pal2(pal,pix_fmt::PixelFormat)
    ccall((:ff_set_systematic_pal2,libavutil),Cint,(Ptr{Uint32},PixelFormat),pal,pix_fmt)
end

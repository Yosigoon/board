package org.yosi.web;

import java.awt.image.BufferedImage;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

public class UploadController {
	
	@GetMapping("/input")
	public void input() {
		
	}
	
	@PostMapping("/")
	public @ResponseBody String upload(MultipartFile file) throws Exception{
		
		UUID uuid = UUID.randomUUID();
		
		String uploadName = uuid.toString() + "_" + file.getOriginalFilename();
		
		OutputStream out = new FileOutputStream("C:\\Users\\bit\\Desktop\\img" + file.getOriginalFilename());
		
		FileCopyUtils.copy(file.getInputStream(), out);
		
		BufferedImage origin = ImageIO.read(file.getInputStream());
		
		BufferedImage desImg = Scalr.resize(origin, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT, 100);
		
		String thumnail = "th_" + uploadName;
		
		ImageIO.write(desImg, "jpg", new FileOutputStream("C:\\Users\\bit\\Desktop\\img"+thumnail));
		
		return thumnail;
		
	}

}

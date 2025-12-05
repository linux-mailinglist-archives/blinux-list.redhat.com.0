Return-Path: <blinux-list+bncBDYIZZNASAHRBNMHZXEQMGQECL7KPRQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-xf48.google.com (mail-qv1-xf48.google.com [IPv6:2607:f8b0:4864:20::f48])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE22CA948D
	for <lists+blinux-list@lfdr.de>; Fri, 05 Dec 2025 21:42:31 +0100 (CET)
Received: by mail-qv1-xf48.google.com with SMTP id 6a1803df08f44-8823f4666absf50553676d6.0
        for <lists+blinux-list@lfdr.de>; Fri, 05 Dec 2025 12:42:31 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1764967350; cv=pass;
        d=google.com; s=arc-20240605;
        b=hzaWh+2ho1JK5f40w8J7xHUZLbr+7xXEVIreaIfJaKMUuH8cYE+e/Z0EtkyOmQIhNw
         38Bp1hcC/YfDPJ8T4RnPCbZ1r5257kEtGC//Ikhs0XaxpiCFjbx+KxDw74P1dFzA2QvE
         3PfEgIDTbmM6wxIJxWJT0gEG+XBR8UfunjrUgQjIf/vEezdGTpzj8uPF/byZlp7+rMdX
         mMZtkYN3a6lMN+nJSqR2WGpWYZzfqaSc+7hbVaugUe1WbAhaw/klrSvYDIDlO/CbZynI
         iS/QSCNSdGa9jlxNHOudYsTRssJi9I5GPPf74D8NGoA8XzpDOfe1y9a2b4YjfAHlwK/j
         SdAw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:sender:dkim-signature;
        bh=5A1cOsWSkxOP9Dz8ih81OczaqZD172MmCRBVq3Fg33w=;
        fh=4nYCcgcRzDO4qQO1QYkRebkws1oJSczM3gc3QeVKE5M=;
        b=J3bCyg+D6jq1V9R3RdzZuwcW6pHf7x0rB6LxTeOrv7mZKbf3OwceXxUtcT2KIFd0AA
         xY44dekCE2NnZ3BooPVgjKB6WZES3mTyeZnHbHFDmMs1rJ7/Gnk2ExCzz6c/lC/7RQxk
         7/LmMCuLgGGaayPGtMTeoLdt3Zl55cJP2y0oBfM0FSfWkLgHvmjZRsPxxMQOHi9hZpAp
         V1ZnnMVi3Md9qxT6gwog4urqGXA9Wx9nnUtPA5wULWPc+JAm5X9OcQbFt95pV6ouvEhZ
         c3QOyy+NX840PSCdLdY2l/yoaXnnAFMu+zKAJActA3Ub6sSzUgjzX7mrRnAu/gJ+PDk4
         zGRw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=Kld97krr;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.219.49 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1764967350; x=1765572150; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-language:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5A1cOsWSkxOP9Dz8ih81OczaqZD172MmCRBVq3Fg33w=;
        b=h0Ies4lCkuj5yMGJWKScThbyItsxnc4lyBp4PSYpniSvKihrT3HtrjTMBHOts9mDC4
         wRTGP1SvJ5bbhPQg+VgrnSKAFJcgL7E+aJ8+pxlNL1OF6tMP+LOsTu/dh6o8/bzomXUn
         8g3ECBxgfhLo0+uS2uvqle65MLEN7Mn2b51m/baZuQkieIN9nw8c75MCCMKFhxO1L812
         KC/3pVhOPL+CVszMiEPbR+KuY8C/PgpuUVLPstl/2e2jKkUyt8AgtcW1R3tFtvTcEKAx
         0x5fuw/dOjTmDr1KgpKbsV616x/pWHecTc+pYqcuRTBiyqfyqBgpTEicUA/NULcCvieV
         2TKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764967350; x=1765572150;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-gg:delivered-to:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5A1cOsWSkxOP9Dz8ih81OczaqZD172MmCRBVq3Fg33w=;
        b=ii4mALpVTl8j5RjVAe8OI3tXSoPfj/KOk0kwcWTrsozr9fq7pC45pUppW2cLg+n/Ey
         Nz8iY7lcB9PKEVL5vHLkq9Fhx54uStUPJY1UVEv+NGBuN4Aodzt70H7rf3LUnlkCt6HJ
         gQiVX6tsizI/icF2RToN+qOlxeWXlq67M58VIpBC1sDgpyCzbORJtXYdfSVr9ogThHaq
         jK05bj55xXKrtzcbZrM+hnusT+w/nvKAqBQc4ictILCdtLX76YkguRXmu7t5NVDEURjR
         +L+yLm+fhROg0QpLCpEaSSA3TOAkc72o62KLEcrey0YjdFfMs3nZdF6AHcqlzMhEz+wm
         gs3g==
Sender: blinux-list@redhat.com
X-Forwarded-Encrypted: i=3; AJvYcCXAcbeVx3wS3qAA+r4U5jNjtGiOuRX6lw/9dzYPkSUgAfSIo3jloBHpxNJ0nVp1v1NXBxUYKg==@lfdr.de
X-Gm-Message-State: AOJu0Yz6RTRmZAwmDL0PCJjxLjL9Y/N2YVjIoK8Wc8uBkv46gjFBHS8E
	N6csYVEeUpQInKRf8hpIow7UOga8TKUwUxcnkXP/wYCUJlBb775wky4F9J3SHV+VQGs=
X-Google-Smtp-Source: AGHT+IEwzatUd3J5V0dvoPLvS9B1poPO6xA86z+yyGdGovacxhBaFJTwwGXs0iL9y0t+7suVyGnLvw==
X-Received: by 2002:a05:6214:c45:b0:880:477a:9950 with SMTP id 6a1803df08f44-8883dc49948mr6827846d6.61.1764967349794;
        Fri, 05 Dec 2025 12:42:29 -0800 (PST)
X-BeenThere: blinux-list@redhat.com; h="AWVwgWZsCM3VPUYe5pF6Zf/36rxqLmplkN+IXDw+0ikF7rSFQQ=="
Received: by 2002:a05:6214:5e08:b0:880:803b:bd47 with SMTP id
 6a1803df08f44-88825e4f635ls39582176d6.1.-pod-prod-05-us; Fri, 05 Dec 2025
 12:42:28 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCXox2nFPCM9B5fIxB1RKxIB5z7z6iQ0onKX1q7+7m28WtWoaeT3U6vaHWfDhb8PcqNRwPsegQ3I6Om4Rg==@gapps.redhat.com
X-Received: by 2002:a05:6214:468f:b0:886:3fd2:ea79 with SMTP id 6a1803df08f44-8883db61988mr6934116d6.28.1764967348635;
        Fri, 05 Dec 2025 12:42:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1764967348; cv=pass;
        d=google.com; s=arc-20240605;
        b=HGmo7i5o8R2HoI2gT+/4fkh42H/ZaDbD/dikulE65SDyzcs25bloeSvHzNTkKNqvJE
         +rUEh7eyyu4W3wD04A71F/nhKx5u5umqWwlkWVJQ63YQD2EZrbbh2KMb32fv56Krnoq1
         lidXfC7sRHzy26iniwiCGlNSu08/Fb4rckiTDLecM5IvJebXGcf6iYnKYjK1/xnYxpFz
         0h8iIACX4IgLNjzoCAhYuiVJv5TwDVoymjI7H8OxaqhPyzYQuDkVdrDsglJI7wQjMjhc
         RpN+TAbRFTd91FoRNciyVYuQMKY2YNIsF/n2aE895EKxbs4443pV0UYSp8DYMlWfjRR3
         R0+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:delivered-to;
        bh=3penUOArw6QOt8QUZZtF5c7+eWpQTA+xtSXj2/lQdT4=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=M5lO+PLtPwTl3yOp0ML+nnPAvhrYw6mQUtufCvzJDBbufPjpRYeizvlskWNxjhw6/7
         nGk7jUvuQR5x8GfisIwnb2OhNHUdNPR981uTz/V0XZ0Ln/Vay/Cebzr1K6Xw6Xd/a0g+
         YMFEyqKhmsQZ4Rk2jKB4He2DFjC3ewwVzo9p60IP+hifoyY46iaCuTdZvZcC1sJkB4zT
         lAOs2fzRKHqa+UVa5iXw7g3dm0uUjI6qZx+acYgTIoiQGYbYTdKabe/NqR7wuQanewGs
         IQI/oLg6Fnqu6xhSk9zLzsofJ9xZJ3ao9oUNDZKdGPDfmqrkM3NbuCaERg79dFD7hn7C
         YKdg==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=Kld97krr;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.219.49 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 6a1803df08f44-888284b18b1si70237886d6.444.2025.12.05.12.42.28
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 12:42:28 -0800 (PST)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.219.49 as permitted sender) client-ip=209.85.219.49;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-662-Rg46aQ_9PXmDw8YuNPPNow-1; Fri,
 05 Dec 2025 15:42:27 -0500
X-MC-Unique: Rg46aQ_9PXmDw8YuNPPNow-1
X-Mimecast-MFC-AGG-ID: Rg46aQ_9PXmDw8YuNPPNow_1764967346
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 74271195608F
	for <blinux-list@gapps.redhat.com>; Fri,  5 Dec 2025 20:42:26 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 6F9C019560BD; Fri,  5 Dec 2025 20:42:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.90])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6CDD219560B4
	for <blinux-list@redhat.com>; Fri,  5 Dec 2025 20:42:26 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E01F3180035A
	for <blinux-list@redhat.com>; Fri,  5 Dec 2025 20:42:25 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1764967345;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=3penUOArw6QOt8QUZZtF5c7+eWpQTA+xtSXj2/lQdT4=;
	b=M6kby2UgNC+cNZ1CIZE+Zo+KuhHe3Tdfd9NM0Prh4h7XBdXGu8kzvXViiLjO2J9OVbUYRn
	SJaph9R0QCzKmbbNPFflRlSLSBj9FwqiFiX3Kuxnv/fdNH18tVnGOp1VynTC8+VVw+/UkF
	TQgAz6A/1hdcv/i0G5L2no6EIPjWy94cHBVb7O5QFWU6aCcO9XwI9zZQeurV8aGXUHWaNr
	j9/1MnvdPsfpaj0WfV/N0UmECqYpPBT7uIGOg6sSF3cKrqK/MlixBxvZ5YWNUJWGmNGviB
	dTy2Ub/QFt72ezj3/hVwJ8M2VVaCcnBeA0IpihyVKNZVmAjbOBwi9R7xvohtKA==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1764967345; a=rsa-sha256;
	cv=none;
	b=U6gSDSuhMjYlXiULSiblG5vJv/y//QuR6NpsC9SLim8iCZlqIdGGIo5+xo/QXm3KAijOQS
	MUvgJwG9OxpBAkeeNMR6jqXqi0WrVOMWh/OSgEg31CA5ZdcRVCqjxeiaQf2vjZAdGoHAgG
	qDwHuGZ4HZ3yR1fTQ8AJkmT7bwAK+8Hv6K5JBzHJMRoIxMJ5aTVdlEC8V7TpylDqWNnE2Y
	itjlFOjN+A1alp5rNJM4B9U1GZ4aJu995CYgncIj4FeXd5ks7Zk0Fi4Yyq2idbBDmpS80s
	AJZlv0OmknJAupOMQwRTxSxq4kCSEpN6DAyH5ZBQPzq+4pW7lDAjoe7oPcsBZg==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=Kld97krr;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (relay.mimecast.com: domain of jackson.rodney.1970@gmail.com designates 209.85.219.49 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com
 [209.85.219.49]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-589-xFu5HPRdM7Sh9o-HiQX2Lw-1; Fri, 05 Dec 2025 15:42:23 -0500
X-MC-Unique: xFu5HPRdM7Sh9o-HiQX2Lw-1
X-Mimecast-MFC-AGG-ID: xFu5HPRdM7Sh9o-HiQX2Lw_1764967343
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-8824ce9812cso24164926d6.0
        for <blinux-list@redhat.com>; Fri, 05 Dec 2025 12:42:23 -0800 (PST)
X-Gm-Gg: ASbGncsIn5e5OJqSmO6CGygZ1/r/HKZKodF3uCCczMc4bn2UTFjArCE2LBBssNfBoMg
	rXWdsrlnaDmvNf5/foEd/ibh8l0jhxWE77l8EL5/X5xvs/P716atto2fpgCBIyvB8KdMofgulv7
	1QJXfP67W/BE5TKks9i7AkkiYiIefIz2uKAvPAZG8YQJjvQolA2dnYlRMjxS1MNQRbml0Kf49qB
	ByRA/mJiTXhfWP9XOLuLAleFfJ9FpZ9JTn7hEhEkfskaJRJbX/Yv4UpzydU/Jhts7Lgz25aqTuW
	KL3vYeej/pNfGfvgAhX10Hv9fnMnrxn9evk4gtk8CVl8fwOOl5L08SLjmAVCshzWhIgqnv00JAn
	8c0NszqsuS3aWPwjZfk8amdPCTxsjoGbqStziiB1QWd/jDfupNxtb8A971FGXSr2VGWHrgyBBg1
	+k7BsTBrPg7SlJRqK65b4gQcaJW6vxYNRfC106Lv9icpM3ajWTwa9ye0ycQLyzYlFfNHjhE3MKA
	VywEArAMqaxAOOY
X-Received: by 2002:a05:6214:488d:b0:87c:208b:9556 with SMTP id 6a1803df08f44-8883db617b2mr6847886d6.30.1764967342661;
        Fri, 05 Dec 2025 12:42:22 -0800 (PST)
Received: from [192.168.4.30] (63-142-94-63-142-94-164.cpe.sparklight.net. [63.142.94.164])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88827f4d19csm41971036d6.17.2025.12.05.12.42.21
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Dec 2025 12:42:22 -0800 (PST)
Message-ID: <6de1a01b-3d7d-454e-a633-1e4044fc9801@gmail.com>
Date: Fri, 5 Dec 2025 14:42:20 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: info on zorin
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <fb6ed94a-668d-47ac-a86d-190ece52d55f@protonmail.com>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <fb6ed94a-668d-47ac-a86d-190ece52d55f@protonmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 9jX3sq9L91H8cq79L_QKcDUVJTOZVRo427tjJlOBVK0_1764967343
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=Kld97krr;       arc=pass (i=1
 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass
 fromdomain=gmail.com);       spf=pass (google.com: domain of
 jackson.rodney.1970@gmail.com designates 209.85.219.49 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

wanted to know if anyone here has used Zorin and if it works pretty good.

and does it keep Orca fairly up to date?

Rodney

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


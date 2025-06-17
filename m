Return-Path: <blinux-list+bncBCFJ3VNT5EIBBZPPYXBAMGQE5EO5XJQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C110ADCEFE
	for <lists+blinux-list@lfdr.de>; Tue, 17 Jun 2025 16:12:56 +0200 (CEST)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6fb2910dd04sf103843516d6.0
        for <lists+blinux-list@lfdr.de>; Tue, 17 Jun 2025 07:12:56 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1750169575; cv=pass;
        d=google.com; s=arc-20240605;
        b=TrpkLAK8IOaL+el/wNYpBLZXikyS8FaHmW/2ebowt0uSu7WVCibOppZ2mkC/RgNln4
         GgqQEHMWSKG28uLmVn4vrF1MKxSfoyiWrS+OHVTw1jPNJzL7V4lfytqgiDX0vedIN2od
         pSmc44p5aX/ZeZhhkwQ7DQENJN4PWi2K0W/sf9qXuljDeA2kvOjUnLkxYQpSTV70Zb90
         u+MuaI7jHx6tPsdl5MRBUJN0EEIjU2HD78UY6yP5jInNfyz2D/SHmJrApPcfhD0jDpgF
         6g6b1m/DJ0X2PiFfAo+8BlwgCPsxkMU2Feyevb9MYPsKhBZvL5Emo2m9eNhCqsm7r3cc
         yBTg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=DDT1TFCUxmkICTiN8Fqh7gPoKasElOrE9HkoS/MTd0w=;
        fh=DvjlRUJ9m71UP+5VF4KARV3FVp1daeQAMkP72tneNkE=;
        b=iVp9X9EIhID4f8oF//Ybv+5C+eFyr5RMzH0LpPGilkrwgOShVholDGLy4BdpNMlKpL
         0dLgvuLgQkA2LkiDGiJINnMfqGxfVGSM83Bz27hXxUz3wnm3SBBJYM21BeP7JJQTBQZi
         vM5hL1vUv4iArhJbIRawaxHd/99LSsjMBccN9jIm44msLGqgkIgeQVC2ep+ZX6yYCvKA
         XQrRsjCQLOnWUqOYN1OJzZTSmnm0d8xI+DnZp/gP+nytffKU9wlhFkLa6+zDRPu8ibIO
         B9P1eA0ueb5vv9tIPwoNhTVGcC33Qbs53WgNbnrFI1mPsuU9ZtQFupZIECnmEOBeRwyd
         SZxw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=hI0rAm54;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.210.48 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750169575; x=1750774375;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:date
         :message-id:subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DDT1TFCUxmkICTiN8Fqh7gPoKasElOrE9HkoS/MTd0w=;
        b=IOF4HzFZqfgs9dYBwI4QxjGqv4do7h14S0WpGZlWx7KZoHXcK9aCZSxU4OV807RdGM
         I2vDj0RpCjcwln1XWoe+dv/P4hv6E3KXkp3PzI3bieHY0fG2RvJsHTpwU5iFlSIYOlrx
         QkTqnN6HVFUb1G6Wa7GOM8pX6AobbdyEG1QSDYyJuVeFnAkHpIckLlbNfdGKE45b7Yu1
         emROYQ3YxiYgdr1O87g8L+J7bsTTiceVe/CKhgvn7r7whyGkwn2jCIiLgWpsf/JtyQUN
         LzM23AmkOvf95anDsZGvkX0ouiT7RhapoPN4swWPnJNV/JEtYf3lZX5s3/iFk0weaKwS
         l68A==
X-Forwarded-Encrypted: i=3; AJvYcCUk1Ce0JVZcHDTuHJr40qv3zDFF84RKAzXvAsXjBRNa6LwVQQZPA1FHo0jirrD0MeGpobN20g==@lfdr.de
X-Gm-Message-State: AOJu0YxFj5B8ZNfNHKgBW6EzGhkSiGDarrtkt2bOqqN3oQa8tFK3MB+k
	Ay+etpLh4dJqTfimMzZ940fnu6NnPaAka05ibgIoyX/X/arLsWCqLsjsZLNnnizzBE0=
X-Google-Smtp-Source: AGHT+IES+xa7rIWYB6hE9Um/29/Ni7t43L5tTQnG+EwYKnWYDEG9/t8N/CXTTSERdIQ9G54EWFTTzA==
X-Received: by 2002:a05:6214:27e4:b0:6fa:bedb:f61d with SMTP id 6a1803df08f44-6fb47725ccfmr207796246d6.14.1750169574274;
        Tue, 17 Jun 2025 07:12:54 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZcF/2Ep29CLGaDEeNCBZ9eVezS5XX8HdxLwwv7mFE50yw==
Received: by 2002:ad4:5965:0:b0:6fa:bc23:a7c2 with SMTP id 6a1803df08f44-6fb35573333ls96007516d6.2.-pod-prod-02-us;
 Tue, 17 Jun 2025 07:12:53 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVWuafWpKa7bPKwA2qoWJIQK/xnDoe9/YoqR4AcMAdaLayapnpZOhhbISxFONp8iMlPsl9AFCUB++w7fw==@gapps.redhat.com
X-Received: by 2002:a05:6102:442b:b0:4e5:9c06:39d8 with SMTP id ada2fe7eead31-4e7f60f09fcmr9092382137.5.1750169573066;
        Tue, 17 Jun 2025 07:12:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1750169573; cv=pass;
        d=google.com; s=arc-20240605;
        b=HpRaLKO5nr5cKu4osGOm1y4z+LSisN1CeeOLUR8zgC1QGWhAhO8h3R4i3aWm5DtRgg
         oq97htYx/oVJMTTBBXEvf7RTnqHIF89HorXoIE5Covat4MUPaOkDfuO11JcPMTm8JRPS
         MTCmqfr97Kgcij5LXyoVBOt2MZO2SHZzKdpdbE3mJaFYyLDm7MfpSbFlkCSz3TdHvOKC
         Gt/seklCAX7k+RA13jQqFnASLj6L0Xd5LTZVqLrz5to0AeiHBmRWpW2qigYnKFsYJO0p
         73USQiV+ZS3utllNPA5opg0eBH2GucCETrQuBSpZwAPle11I6zMIHHeMnrX/7AbRC0zz
         FVAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:date:message-id:subject:mime-version
         :from:dkim-signature:delivered-to;
        bh=qNey9PuJG3vuw866oWGMfxgPtfL7GVo4RdzcVRdllJE=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=Xd638Xe77ULcy/BMlWTg4nleJQ/VHIwbJwxDaQ9jEq3V+bOFe/koFRetmFXTpjDPwr
         /OfrUpmLfdLFrm3a6JcihJ9oVdDo4uFvCv9i7asSJSmZD8c9vhtjfq7uORTGXJX+hh1s
         KkjClQTaxTH95+YqwPjKDKXQp4YoYXtXs8L4nk99J3xDjyJfmGG9aKuYwSFYdK/4p03j
         c7KBqOD59jeU6JlQpkymLPutTDA3pdcsRPDv1GgGfBv30pAlWqCyzUkeVcnS9lt8lxDU
         fu5dVglhwLul/OwJgXYJ0BeA7RhTLVEEoFIjOo5C00L5oA8DBFZMhgREslYl4Cc2N1i7
         NTZw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=hI0rAm54;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.210.48 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id ada2fe7eead31-4e7fa28518esi1696273137.662.2025.06.17.07.12.52
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 07:12:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of dcrone215@gmail.com designates 209.85.210.48 as permitted sender) client-ip=209.85.210.48;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-384-4cFiM2T4Omy_OJ9C1VTlMQ-1; Tue,
 17 Jun 2025 10:12:51 -0400
X-MC-Unique: 4cFiM2T4Omy_OJ9C1VTlMQ-1
X-Mimecast-MFC-AGG-ID: 4cFiM2T4Omy_OJ9C1VTlMQ_1750169570
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BDA41195608A
	for <blinux-list@gapps.redhat.com>; Tue, 17 Jun 2025 14:12:50 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id BA24819560B0; Tue, 17 Jun 2025 14:12:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B771319560A3
	for <blinux-list@redhat.com>; Tue, 17 Jun 2025 14:12:50 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2E3DE195608A
	for <blinux-list@redhat.com>; Tue, 17 Jun 2025 14:12:50 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1750169569;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=qNey9PuJG3vuw866oWGMfxgPtfL7GVo4RdzcVRdllJE=;
	b=IXDrN3kJG1fC7PzWD9GUPINpRuAu49cbE5tL3f+WrRNy4A4IGIpZuD7nBVydS10/UJfHOF
	4ntHShROK2OzCPgT/cZla2ImPavXEXJCc/NojxvtaymJdzYm4MHwtfPaI+gvWmgOweMVbn
	muWM+JC5RLRtUuUCYYfpYBLAnGxGGjH3d/dDNWiXR7GoolsMHqUPz7nbrdgsbJumAJ6LQu
	ehl5OMyyAhB31UCe6R95UrPW0/4BIYHmkQ9ZWV8i+FWN7U7+8ijz6cCuVrNzRwDkLxP8Ow
	lrjiEpYLavvJVcfpS4nFpcwpkIUpoaJQZ1eeEk8ZzEZG4olkrIdj3e46oRwL0A==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1750169569; a=rsa-sha256;
	cv=none;
	b=KWMrs9pmmm3amsH40yHb+KPB4Mhsw/Ck50aaWbxnjKCjyxbJ/5Zb6ApIJ1MufveNyQbYhT
	EE5oJVSEMi/v1jJostJ+6c3mdkql2iZ4Y+rrk1CDpk96P8H2IDteRJrEYsTM6elkH6ydjm
	y3VpX3gppISa7YoswaOT+ur/c5EgF89pPKTyAAb9mCI5oOh0UpMirRcgmWGZGd9kzFvxX+
	0Dy8oz/ROc+pTrH7d3bGNuKDKTDo93NHmMEiF0wVjHTS/Qvn+UPOsvpyYGXnVg1bg5xIR+
	7IPhZxWwwKZKmgSwxci2j0lUPPdWVPxOn8CHY4pW1L08OBOdmX7mntG+C6SBaQ==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=hI0rAm54;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (relay.mimecast.com: domain of dcrone215@gmail.com designates 209.85.210.48 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
 [209.85.210.48]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-449-CvTP9SM7NsexMprLSCTL2g-1; Tue, 17 Jun 2025 10:12:48 -0400
X-MC-Unique: CvTP9SM7NsexMprLSCTL2g-1
X-Mimecast-MFC-AGG-ID: CvTP9SM7NsexMprLSCTL2g_1750169567
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-72c09f8369cso1788469a34.3
        for <blinux-list@redhat.com>; Tue, 17 Jun 2025 07:12:48 -0700 (PDT)
X-Gm-Gg: ASbGncsd5E4S2pb/QkgSQ63yPdS5bHfKSKw3INpUNKKyXJH7KE2zcbYZjSCRMBmz0nT
	uF5xLZbeiyG2DoVSRn8/701Aeh0RM3q3zV2KyY7LoMNgazpFtsausMODwuP0h3cFXywi457yGnJ
	2BxIx3y+nmFFk7NjbVd9UDt+X/B0cSO5BU4vb+dGqFljn0sl+xOXe+fPppvlR6wKFNyjvNuZ4yY
	jslCp7UCrgk0CDRoZsGZ6oYwrzC8NPIRhMCW84zoiz0/nTYjw/4MlgbanMGd8kXTl7IL6X+ba9b
	I5AveYj3dK4wkPdCMxsWW4VzLdBsj+CHem1O0HremmBzQF0zaWHQkH8VyyJ+OAwLAd26y+9akY/
	MHAWJlbAz92Q3Go2aIZfJbBNGCXYqnTTB20aplbfIIIPyKg==
X-Received: by 2002:a05:6830:8209:b0:72a:10ec:3542 with SMTP id 46e09a7af769-73a36318969mr8180014a34.13.1750169567255;
        Tue, 17 Jun 2025 07:12:47 -0700 (PDT)
Received: from smtpclient.apple (c-76-138-99-100.hsd1.tn.comcast.net. [76.138.99.100])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-73a283dc01fsm1575605a34.3.2025.06.17.07.12.46
        for <blinux-list@redhat.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Jun 2025 07:12:47 -0700 (PDT)
From: Daniel Crone <dcrone215@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.600.51.1.1\))
Subject: linux and shell books
Message-Id: <0AD5E3C6-1C2A-4452-96BA-4836BBAA4166@gmail.com>
Date: Tue, 17 Jun 2025 09:12:36 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: GPR2gyJAfCwwbeSwhkncKOu3EfJimXBTOH8vIyV_caE_1750169567
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Original-Sender: dcrone215@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=hI0rAm54;       arc=pass (i=1
 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass
 fromdomain=gmail.com);       spf=pass (google.com: domain of
 dcrone215@gmail.com designates 209.85.210.48 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
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

I found that Bookshare has books on linux and shell scripting.
Thought someone might like to know.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


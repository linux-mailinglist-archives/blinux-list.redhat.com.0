Return-Path: <blinux-list+bncBDGI3AUYYYCBBV63566AMGQE7ISKCYI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8F9A236A4
	for <lists+blinux-list@lfdr.de>; Thu, 30 Jan 2025 22:23:37 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-467b19b5641sf24481321cf.3
        for <lists+blinux-list@lfdr.de>; Thu, 30 Jan 2025 13:23:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738272216; cv=pass;
        d=google.com; s=arc-20240605;
        b=EzRGh7VFNn0fmfp2pS8OQ/s+6q4iOY5w+CbeVcSD4YL5CSsIJQ8H2JdCgnLlhy1I4O
         WxedRGtWEQgsn03GPky6v7UvjEP+z2k14c2OO8bRexEppTmHc8c+9MQZa9aG+XrMOGsM
         GiIXFFGHtT9/JUT6VWb97n/L9x6ZRHqQBuGTpSd6yJe8tvpoEJzo6NCclpiFQgwRq5E8
         iR0KEcnv/+mKqJDH7z6RsS7q3W4DyiDZ+z4BwgLIHe7l3xRDzbj3jvl4optvdLznUrLB
         Jz62vN2GoOihSoFsykhGtFDPuNub5zDnw6A+oM8sk2rQ0HJwzHbInXrP7X5SV+n5Jg5U
         jGbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:mime-version:message-id
         :subject:to:from:date:delivered-to;
        bh=tC0Fqls9Hnb+g8EaVCdOECd0TCZYSjBXWJS8YvPiLsw=;
        fh=db9+jdBYf+Rtr+s1e3Cg1siyuVAa7sbGjKVHXYY2kuI=;
        b=DMD8DjIxUa7EljX2uw4QB4i7ETe5IJfnyHx38b9PbQ5L9hfdjk9fUjj+JFgf/31GEN
         WTZVft5V6KruYnnL2AKEm3c1i5IyvTCLhevdN61RiUNjHon4XDaJvI6w9ohVcC5MGzdS
         SmCV3r49EVRIB1m0DbtTtV9eM7rRlCQD/HKpzHR2ZgpXJ9gR0Xa7cv2yp9F4bpX9otNd
         cE3xUhfC3yJafmcufB/ZLaX1qzI3Tt4iPYo1+aa3F62Unku6nECpjF/CnLUY17wFc1T8
         4O9l2+HAQjLOC1SMOF4HU7UD3vycquXkHYh6MgTY6N+TUTk4UylLz8sYjOc9qpaqZy1X
         8leg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738272216; x=1738877016;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:message-id:subject:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tC0Fqls9Hnb+g8EaVCdOECd0TCZYSjBXWJS8YvPiLsw=;
        b=Aw3gyYd+lgqYqAjFVmj7a/CgBiD7+ocOC7W/Qane/LDtXhxu/4eEvkO7sAx0bSQYIu
         GiTpWGhLrcUxSPl/7zhe/wlFE0M7waCzvaFXPytUk3PV5vE0YGI0EkhE++3UsJmhRlwP
         SGPowUN2SpQjmBZvlgidZWj2EH+sjHhd3y9SNklLaBXUGV3OLSd8WuMgzpoKE/0IlJkM
         vNPRflOVVz9BWNEp98wclFvcSYz3oN/POkc9YlfQZJbF+p60+w1rX2BMtDWsMfAb6odp
         RfOW2KIuBKPUvfZ7IETm4yvfzISBv/lTvoqq37lRGv8Rc3tjsckNeF8NGUq0RPRytp8C
         Rlfg==
X-Forwarded-Encrypted: i=2; AJvYcCXMmySfX72qSinVhuq/FNpkZEdRW6Wc+rp1/3XHTA3/En0LlP5YdLpuQemMc4BRd8cllpXQKw==@lfdr.de
X-Gm-Message-State: AOJu0Yy/NAhcmfVpT5ZV0fENykRF66Bac6hcO+yp9lcuYdM/zUtYKZEY
	ZrMicXRygiKBLV7Yp9cmLPMOcavHe2Bazy2VHWnGo003+25KTiDZBxbPxdPAAFk=
X-Google-Smtp-Source: AGHT+IEh2S8QcpCpSW0bvkRklW75K3SYUCxU0rniM325QQWKS3L8DP1EgQklNf125qe99XwJJ/hrQQ==
X-Received: by 2002:a05:6214:3007:b0:6dd:d3b:de38 with SMTP id 6a1803df08f44-6e243bb8914mr144344906d6.16.1738272216011;
        Thu, 30 Jan 2025 13:23:36 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:6d06:0:b0:469:63f:ce11 with SMTP id d75a77b69052e-46fdce99e80ls20750721cf.0.-pod-prod-05-us;
 Thu, 30 Jan 2025 13:23:34 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXhUgq4Ni/uB4XKQaSpiytu6fdt0GOHQ+vRWUcx4rTWitVTRdEWCkGo7g7vkUNfiuRv1lQsGyD8BsBAcQ==@gapps.redhat.com
X-Received: by 2002:a05:622a:285:b0:461:169e:d2dc with SMTP id d75a77b69052e-46fd0ba3b44mr149926141cf.49.1738272214806;
        Thu, 30 Jan 2025 13:23:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738272214; cv=none;
        d=google.com; s=arc-20240605;
        b=idZsjtGYCsnQVVhLOEwZUq9iMzmfWQYvXsJxX8DjwAsp7Nlibfp5AddZWTtv5plcLf
         TZxai05syaGoNcCjVMWjhawolnYUivko7GxcjS1XMvBhV6KfYxyXPbXYfAs9gfh4g2T1
         KU/yrXpAwc8fkMAx/mSpjityBZaX91AdibvBJuQTQPlsjLeFD2TF9kI2XY+I2+XNBjY/
         tlhXbzC9bxsF0RnRnwpdum9PSclXgiveK1oBN2i/joWfEB8uDT4VFSHQU09amvAjKkrh
         c6Cnqk+Jr7bB+L7N1OJ4F1L4hKjUEKLHrTX00O/otrN6BqChTmulLyLg5Atut3zdc85G
         IWSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :delivered-to;
        bh=3rIo1A5NwnIfFmBPDFeMPAzF3bXehRZ3WauJihIHDr8=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=ky5qzcyGFMmDDYgODpAsIbYCxvcQtzOUX6hz65nKovDqysCzB04USsmIhX/rXV+vZ1
         I5pOxBvEHGNvPBSCEckR6qb8/1T3zUUHO+Uw2nLMUkN7rBdPdFbWy+ElL1BAIlQOwnXf
         48B2q2XIexhpH0i+WBYW9DPkKKwhiaQMY5zLbIj10RvTl6KRqc2yI2DJKyxtUPHx29u9
         uKa2BtRxKJopso+0jl/jcdy4vTwAu6ukBIrYVyCeWdawALVRCNqISWXTXWiEQvnVRkIZ
         uRF/fLAyWP1K3KjeGwD6ZNUFq4xe/KjtFO7Zm6332w/w+2TXl6oCpRs5qwhecPbA9ujA
         ZtDA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-46fdf1e4c74si23819331cf.572.2025.01.30.13.23.34
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jan 2025 13:23:34 -0800 (PST)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-14-m4N9cKfFM0Wdf7IVCWQp8A-1; Thu,
 30 Jan 2025 16:23:33 -0500
X-MC-Unique: m4N9cKfFM0Wdf7IVCWQp8A-1
X-Mimecast-MFC-AGG-ID: m4N9cKfFM0Wdf7IVCWQp8A
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 895631800370
	for <blinux-list@gapps.redhat.com>; Thu, 30 Jan 2025 21:23:32 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 6854819560AA; Thu, 30 Jan 2025 21:23:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 65D9019560A3
	for <blinux-list@redhat.com>; Thu, 30 Jan 2025 21:23:32 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D8B8819560B2
	for <blinux-list@redhat.com>; Thu, 30 Jan 2025 21:23:31 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-214-KdHbxdzxO2Cho2_Akysvaw-1; Thu,
 30 Jan 2025 16:23:25 -0500
X-MC-Unique: KdHbxdzxO2Cho2_Akysvaw-1
X-Mimecast-MFC-AGG-ID: KdHbxdzxO2Cho2_Akysvaw
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
	by mailbackend.panix.com (Postfix) with ESMTP id 4YkX7d0PDhz1C0B
	for <blinux-list@redhat.com>; Thu, 30 Jan 2025 16:23:25 -0500 (EST)
Received: by panix5.panix.com (Postfix, from userid 20196)
	id 4YkX7d07VVzfYm; Thu, 30 Jan 2025 16:23:25 -0500 (EST)
Date: Thu, 30 Jan 2025 16:23:25 -0500
From: Rudy Vener <salt@panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: orca+mate+firefox tutorial suggestions requested
Message-ID: <Z5vtzSncAsVlFYgN@panix.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: I86gxSgPcQ-lO6LCErmnyYovNsu6ja9cgWKzdPqq0ys_1738272205
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Tc1rBPKUieTpLZQEYZxBzJKsU7fKiMQn-iIDrzyHkjA_1738272212
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: salt@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
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


I finally got orca and mate running on my linux system and now have to
learn to use them. Can anyone suggest a tutorial geared to blind users. Who
don't use a mouse?
Assume I know absolutely nothing about the GUI interface. Which is absolutely
true since
until now I've only used the text console and have quickly determined
that trial and error will get me nowhere fast.

Thanks for any suggested tutorials.

-- 
Rudy Vener

Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
Latest Limerick - California Pipe Dreaming Of Secession https://limerickdude.substack.com/p/california-pipe-dreaming-of-secession
Website: http://www.rudyvener.com

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


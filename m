Return-Path: <blinux-list+bncBDM4LSNO5MHBBMF47PBAMGQEZJ4LBOI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 32144AEBEE0
	for <lists+blinux-list@lfdr.de>; Fri, 27 Jun 2025 20:08:51 +0200 (CEST)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5e2a31f75sf690802885a.1
        for <lists+blinux-list@lfdr.de>; Fri, 27 Jun 2025 11:08:51 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1751047730; cv=pass;
        d=google.com; s=arc-20240605;
        b=Z7lLKr1B06+08tFEjGlqrhmfagLJe9gknsZl6xc020n5ZiqlffICd/M+rcZizNiiBd
         5p1rxw0s9BpR4ohPVBf7wWF1v+IGoo7lozLSBecEdWE4JhCsOM64wZMQcQIuyFOUNCFY
         Eg86UjVwMeuDzVgR0AJPqVh73rADDWmEPbp8wJhLzPiBdEjfTXgXBSdg62ZUXUs5g961
         wqmUmLfSMVbjGVl32LHDhYh9xPu1UFA5B3oJwCkA1Ce6JbLy3fU1GUUrXS8Q1y384alo
         w0eZkLo0TDs156ogbebCn6gIdz9vtUiM0XfeBLYThtw4oj5vvQxzBt6jx75udry1pbda
         BRlA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=t/oeaiFtbswFIzIwxWE6pBsQD4LD0nXQk9kQR+fUYBw=;
        fh=8LJrQc1+W3dSROvvu8fNHYDdrww3EBxBNPglvN6Sm9U=;
        b=YOx0I3YEjWeuDL1GXYa9nT67tianfEWMq2kg9OrpdlgWEonYkqt2PNpELxMYomu2gf
         1WPTpdNP6r4vgwQ79y9+lYfoIAAkmDty5x4QMuqGKJWKqd1ekaW+lYoZRKRtHIOhClpC
         sNLZqA0ScUwK3tJKLdR+rhhtGWLCsIvt7FzAp+ZguoZmeMumzrS+wT8ujHhXQl/G7sMD
         9a88KmYHHnXbtEL5fxWvCMXoI2V/msGhCelOeYhF12yb9WJrzbZBBYO1uWNT9V8THpsW
         Nrr+2o+oDSQEHFc+UuKT6zXiq727I+Tzpybpljj/ecpgb6H9OpHhu/3xYhaTR7MIHlWC
         hFjA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@mail.com header.s=s1089575 header.b=OSGNccv4;
       arc=pass (i=1 spf=pass spfdomain=mail.com dkim=pass dkdomain=mail.com dmarc=pass fromdomain=mail.com);
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751047730; x=1751652530;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t/oeaiFtbswFIzIwxWE6pBsQD4LD0nXQk9kQR+fUYBw=;
        b=MOKIJnUS/wO0MEg7+7iB71Ln9oUNsRxXeQUXKe0q6lyo8R5oySHzT9LBL4E6uqcVsQ
         6r7eEPI0D9mkwxHqaHbdQBvdoPUivsxpywpN+gQrdtgjxnrvwPsn8Zqz6/9+WgVjXoCC
         F6jpwswFjRhF8v/m9HoTEqabhNW2V5YIo+WWOtd/aijF6iEK27XD/hKti/3Ja1mkyPby
         EpsFAlBfOoFf1f++zDdchX4jcvFKItZdld0swGpxmpDJQOD2Zy8msPN5eV/QsvFGyQUv
         Kdh7zilGr7T9sZaGxwOiATbmnDS8vMaj0hWgUmoN0zOhPIhPbZd35NUbAV+s1Y+KVxYO
         2Gfw==
X-Forwarded-Encrypted: i=3; AJvYcCVFtNrQUmUA8VKm8yw4qeWO5xJh+WTodJLrMbwD0aH5NdCLS7Q/v6jySdBTazPMwOd/d75LIQ==@lfdr.de
X-Gm-Message-State: AOJu0YyZ0cT6peQUIeqMub0pQrv/OzSbM3oSOilXwx09hTND86+vd8Bl
	HYAzJBUkucQbl4eNP2QJvudHCfkClMHvCGECi8y9YUwf5kl6LvQR/T6mbYAQ5o3c4Ls=
X-Google-Smtp-Source: AGHT+IGN0Vj1fnlHW9nqYVqJF/NHB2IJWx18+HzwbrrC8SDzq7VqarrWTZn3o1SQ4uzmmlvwhOXziQ==
X-Received: by 2002:a05:620a:3f01:b0:7ce:cb67:1ddf with SMTP id af79cd13be357-7d4439b27d6mr505465085a.49.1751047729171;
        Fri, 27 Jun 2025 11:08:49 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZdMhse1mzHqJXppBNkFUoEjqGYKrPw2XT/xW4e7XJDiDQ==
Received: by 2002:ac8:7f54:0:b0:4a6:f986:ef80 with SMTP id d75a77b69052e-4a7f41872d9ls41952591cf.1.-pod-prod-04-us;
 Fri, 27 Jun 2025 11:08:48 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCXPeWjlk+cWlY888GwP89qLkhxxMcNXHDPK//zw+5VGzgSm5i7+wR5atDLZJhE4BzT+G2dFEItOfmLTfg==@gapps.redhat.com
X-Received: by 2002:a05:622a:1984:b0:4a7:f5d3:1d87 with SMTP id d75a77b69052e-4a7fcb296abmr71910731cf.46.1751047728090;
        Fri, 27 Jun 2025 11:08:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751047728; cv=pass;
        d=google.com; s=arc-20240605;
        b=hd28MuaKuuIcut6DMSbORPMS0vV5uT1ZOsi29jSrEpVvGgbCKXmNahxl+RSChaPjIO
         Rc4hEgwHdJl74NcuYM77zEmKc5CKoCTPye90QW08zJPVAFr6138sX50PBWhGFL1o/M/q
         L5gDgkD4OmwbP+wQnghsaVLKuHF6xGb35wSwrIjepeXy4hVlfs2HsdL7MlU9ulg9Y0BQ
         LgqbfhggY07nmChX15Uf1Ev1s9DcTrH27ysiCc4zOJ2QxPzEaSZXFWlsfRccJqW6YYyq
         EoZxuwjh1xpi78skjgG9iwsnDG5iIWe7EwFysFml0tVMUO/Szy8Tg5KzEzOxeurBitKd
         eMYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature:delivered-to;
        bh=OkE6/dKixn6ad1VWYgH/d3lT+y7Ja2G70Lu4cUun+U8=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=ZLknteU9HcdN3zgEUYvSReQksB1A0BhxW8rLGjuIH+JTfmECts1K/S4t/4+vvkPotF
         0SNuhE1hkURoGSFq7HP1/q+n6r7icyPU+wm0UTuHDwcuNhRZRu+G165QiecbBQOa4W20
         ErWJOI64U7//WKPeX07ChS1aEe4W+wOcYKJ/RYUnHdkvib2RHFm8oUGdsSbJeRn8Jm3A
         9FbLZm1t1DtbDg7Rn+jYPKHo28fyv503I+bqSCUsr9mp0H2RjENbg8Lg975D125g2dBc
         O1Ap7Hm40XNi0VLmDJrkEY/ShAYD2zOJRUrWXyLZabkKgvVMEmr1BOiChPGrH3tchdm0
         OX+Q==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@mail.com header.s=s1089575 header.b=OSGNccv4;
       arc=pass (i=1 spf=pass spfdomain=mail.com dkim=pass dkdomain=mail.com dmarc=pass fromdomain=mail.com);
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-4a7fc1e6cadsi28811051cf.236.2025.06.27.11.08.47
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 11:08:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) client-ip=74.208.4.201;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-12-R6T58NvQMzSyCGywRGUbbw-1; Fri,
 27 Jun 2025 14:08:46 -0400
X-MC-Unique: R6T58NvQMzSyCGywRGUbbw-1
X-Mimecast-MFC-AGG-ID: R6T58NvQMzSyCGywRGUbbw_1751047724
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4D3FF195FCCE
	for <blinux-list@gapps.redhat.com>; Fri, 27 Jun 2025 18:08:44 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 48A89196BADB; Fri, 27 Jun 2025 18:08:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.90])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 45B001944CE7
	for <blinux-list@redhat.com>; Fri, 27 Jun 2025 18:08:43 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 805581809CA0
	for <blinux-list@redhat.com>; Fri, 27 Jun 2025 18:08:43 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1751047722;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=OkE6/dKixn6ad1VWYgH/d3lT+y7Ja2G70Lu4cUun+U8=;
	b=UmDdJ2qoDRnwy4PdCOqJPDWyNrf0G0SDugu4EgCv011636h4lk8z2PHxWuXStJ0pQKXKDo
	RumbFwcHrXGgLJ9SoMA0O8uZzqk7YJjFlEUDkCg3u12PUS6kQrVFoktyzz9rq+flBMW3Nv
	QZHcOQYHIWyb2al1b/F4ivCGRC3V9BPPWtlR42NGMyR513wVyLvfZorYkdJX7AJF4Lfq0r
	oyvBhxVRbMY+3CKov7lEg1A35UNw0+dVT46jwhgwWnt7PkU7+ZfLSEt+lLJ4GpFxnRPo+Q
	JgXowD85s7KumE3pXVDmr4RF96cyAuBfz64yYDIzAWWaEKq8MPtOViYzDUDvmA==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1751047722; a=rsa-sha256;
	cv=none;
	b=glMN6kV1Z60qybDsdZwT47xY07svZIgorp9OCfjURTSQoIam8hSpyLK06CsXSKOuGYXPHS
	7N2PSVuQqlfZ+dYuH82QVxVbSePExWgdvPrF/d9/UCnQ5MO0XVyQyOVGhXe3AcUTL7RnNr
	JFcnXbY3MqQcEKbG1lu0nSyvQ2wUpeM30x8VODIzvODBgge3Sw3Qw5jTvLuHIp3/l3OEEr
	j/DD0/6tU9W2UQuUKsbAAlAYZgwSYO1VXqPsWbWhMoJd+Xyhkrqy1ObpaxzxRXq5jsrFTn
	+j/6O9xQSDLeq87H+wz3r2l/W+SkTMDtE0gZ/AzrVMN/PvA1qXvEzEotEpXpFQ==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=mail.com header.s=s1089575 header.b=OSGNccv4;
	dmarc=pass (policy=quarantine) header.from=mail.com;
	spf=pass (relay.mimecast.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
Received: from mout.mail.com (mout.mail.com [74.208.4.201]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-627-6i2J8IQJPnCmtbgbhwNONw-1; Fri,
 27 Jun 2025 14:08:38 -0400
X-MC-Unique: 6i2J8IQJPnCmtbgbhwNONw-1
X-Mimecast-MFC-AGG-ID: 6i2J8IQJPnCmtbgbhwNONw_1751047718
X-UI-Sender-Class: f2cb72be-343f-493d-8ec3-b1efb8d6185a
Received: from johndoe65534.mail.com ([193.74.50.9]) by smtp.mail.com
 (mrgmxus005 [74.208.5.15]) with ESMTPSA (Nemesis) id 0M0OZX-1ujZcs2RQb-010oYI
 for <blinux-list@redhat.com>; Fri, 27 Jun 2025 20:08:35 +0200
Message-ID: <060a4c43-67bc-411d-b155-5c3f7aa0b3bb@mail.com>
Date: Fri, 27 Jun 2025 20:08:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: external drive
To: blinux-list@redhat.com
References: <8F2A944E-6737-433F-8667-35747E4CBD48@gmail.com>
 <e3c1e851-b34c-4a39-8dc7-7bf9f4504671@gmx.it>
From: "'john doe' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <e3c1e851-b34c-4a39-8dc7-7bf9f4504671@gmx.it>
X-Provags-ID: V03:K1:9TqJhRbjuqcL+gzqyLLXectu++SU92uBDlAB/MaLzzu/FrWLBvx
 oOTLGOPGczt91SllemwFjPuc6Yndt0OieZ3ET+Xw9u7OaYoDT5ti3vmyhbFmZcLab0fjwGp
 0S1z2i492bUppKaacqiX3aKp7Ad8uWdisqoekX8L66JfRDsBT0HWcc0niUE6X/9+ylXQSlN
 YG00HvEzS7Ar9PXxyKvug==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:tfrZbcFSTsI=;4nBppImQrbHYOOM2J0o9ewa9RUS
 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
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: NRIE9EEKOvDfAM4bO9341-VqpcrICprIF0SpnshTKM0_1751047718
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Original-Sender: johndoe65534@mail.com
X-Original-Authentication-Results: mx.google.com;       dkim=neutral (body
 hash did not verify) header.i=@mail.com header.s=s1089575 header.b=OSGNccv4;
       arc=pass (i=1 spf=pass spfdomain=mail.com dkim=pass dkdomain=mail.com
 dmarc=pass fromdomain=mail.com);       spf=pass (google.com: domain of
 johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Original-From: john doe <johndoe65534@mail.com>
Reply-To: john doe <johndoe65534@mail.com>
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

On 6/27/25 18:45, 'Kyle' via blinux-list@redhat.com wrote:
> A loose cable or an otherwise intermittent connection can sometimes 
> cause this. The drive doesn't fully deregister from the system, but it 
> reconnects and the system thinks it is still mounted and tries to mount 
> it again, naturally failing. If the cable is secure on both ends, and if 
> another cable doesn't solve the problem, it is likely that the drive may 
> be going bad, especially if it's a spinning drive. il to blinux-list+unsubscribe@redhat.com.
> 

Smartmontools is your friend to determine the state of the drive.

-- 
John Doe

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


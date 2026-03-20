Return-Path: <blinux-list+bncBDYIZZNASAHRBK6A63GQMGQEOPMLSLA@redhat.com>
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4GhfNC6gvWkM/wIAu9opvQ
	(envelope-from <blinux-list+bncBDYIZZNASAHRBK6A63GQMGQEOPMLSLA@redhat.com>)
	for <lists+blinux-list@lfdr.de>; Fri, 20 Mar 2026 20:29:50 +0100
X-Original-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-xf47.google.com (mail-qv1-xf47.google.com [IPv6:2607:f8b0:4864:20::f47])
	by mail.lfdr.de (Postfix) with ESMTPS id F1BCA2DFF4A
	for <lists+blinux-list@lfdr.de>; Fri, 20 Mar 2026 20:29:49 +0100 (CET)
Received: by mail-qv1-xf47.google.com with SMTP id 6a1803df08f44-89a0a2afc55sf169190736d6.0
        for <lists+blinux-list@lfdr.de>; Fri, 20 Mar 2026 12:29:49 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1774034988; cv=pass;
        d=google.com; s=arc-20240605;
        b=Ai8DsKndidMiA10NuYI3Io0T5kdnmBVAgLuI8ailSOV8JoiOIufv9QNFRXd83KwAzC
         bAVaWA+ZUjTRQX0/C9yHUaKOJVnIUIzi4vFE0xXgIa2apZGiCx12MclQ1UhBLDNOf5iH
         S8kyM6PtRPaWCZuQzvmoY3wPGH6LVqr33pi8Knk8vXceVnz59rhu/EkKyvwyh5VcBZ29
         qoNoHUqnEatiStgqAjQzAjX03BChH1q1bgCJ1jtTikzpj9ulLYr0x2vRdbyCHBmkLZ1D
         2Deonvr2Ebp6w7w0tK0BD6woI2V/AiOoe2VPYYMtZPOd4RR5HUbTKjH/9KVxwHp5xyEz
         8Yjg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :subject:from:to:user-agent:mime-version:date:message-id
         :delivered-to:sender:dkim-signature;
        bh=UP2SCnN0g/WDxBbIlIsrHv+DQnTcl7ZlwWv0zWTl0JE=;
        fh=MWMsOChyhmGPxyLu8VZCAsl6/31BrCq4j071uYI2JR0=;
        b=T9FHcaUVVEmkcG5gI+8nMGyzoGj7nLytsq4d6/cW2m61+fZTps09AKSd2PlSIxNNal
         YbUzHoXE71QaGxWZtoDP7DCSEPVezm/p7Emy85JEtAqBxKQUpsDjQMt8d1ZoaG9EH9Re
         k1qz3K0iNldh5H2yhO6o9hExyZgsItNN24qNJJA6VESJ/exNNX73AmUK/h6YIbjaD9Om
         smoaPM1k2xZmFyiQxTXVZprz0Ntt+dDYxM4dzsfiJ+h5A1jzV5/+mlpFnKBZVULKkSES
         lWO5BLRjfrC4PqLAtpipxB+L8XkTP62VhdEkCLV8kONlIyAOEEkA0WZxFq2fCRHh74jC
         AjkQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=Xu6RHd1O;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.160.42 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1774034988; x=1774639788; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:content-language
         :subject:from:to:user-agent:mime-version:date:message-id
         :delivered-to:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=UP2SCnN0g/WDxBbIlIsrHv+DQnTcl7ZlwWv0zWTl0JE=;
        b=OuHIqzWWzJeZNd3RM2uz8m/qIb+liw1eISdjVD4s36CXOm+RvzveVZRRIDziWJzUp2
         9ciMsKKHkGvwME9bwYE8c4N4Rz8fhh5b2yz3uF6QLwhZ4xNumSOWzFkQcnLh3DnE046E
         Vu1B359itpMpKGd544IMKpHw7ie9hAHsMk51Go/w91cXex6i4ulz5aJy5Aa2Ol5ffI5W
         p4zmVJgzH9sU0bK5Z03UwA6aM2OyQNpbNv9LoX03LaruGbVP9Egaarw+FBVvO1sI5ECO
         lHU5I2IdlDjYWIhbdJqU8GbYiCzYJQ/xnaEhmRZWPmxdD/eyKGSHnDrJ8yJNgXCtDK03
         1tmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774034988; x=1774639788;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:x-gm-gg:delivered-to
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UP2SCnN0g/WDxBbIlIsrHv+DQnTcl7ZlwWv0zWTl0JE=;
        b=WZpPjEVbul1zngay+hvbF0fotgF48IFu5wQZoaa1oWYa/GsPhkDraXa7RB+g0QqBLu
         iyJkCUpl3sI2nInS6R1Rl92wdhY6J0nti19Lw+A1vIRqUqVKpXQXjOusCrASQlSvpGUL
         9e5goCaNjoTYsDqahbWr8BS6EFBD8OY880DsHrfL1WopWxo+FX13tcmlVXYbnW4y4Kbl
         B1SY7XAHvbE1RBnqCy6xAUm5OCq0en9zqbtyBcqw9ooNT7DEZmqp9Jd9Npmv9P4XYCjU
         JGzUSXnyd32/EmGtKznaWuFWBXWdkF20new1z972oYpA9XjWOcHd9jCGFYqHw4N+ttsr
         nm9Q==
Sender: blinux-list@redhat.com
X-Forwarded-Encrypted: i=3; AJvYcCUZ6bI7IUSpaJjL08PAym0wEZX0QgzCFHrUP6ckvkphGAjgJp9fSCV5bWUFl2RR2M7sj+tXDg==@lfdr.de
X-Gm-Message-State: AOJu0YxA3MV7ObNlewHHXrzvFlH0uP10PiGJrPMEEhslrmjdxXmsJk2m
	jvGIWubOWnxI52Mirlf/6waoj+G4E6CyFQgXOHdtqgsdPb6/6yg1jo1zPNuwFqRLGAA=
X-Received: by 2002:a05:6214:4782:b0:89a:14ce:4e35 with SMTP id 6a1803df08f44-89c859fa426mr60110896d6.21.1774034988249;
        Fri, 20 Mar 2026 12:29:48 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h="AV1CL+GacyIQx9jGipkEq56PjizufzDwV49tsixAxMO7th914Q=="
Received: by 2002:a05:6214:76f:b0:894:68d4:1236 with SMTP id
 6a1803df08f44-89c781f4fc2ls44963266d6.2.-pod-prod-01-us; Fri, 20 Mar 2026
 12:29:47 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCUZQE9ol3CfdpC4YOwMIOv4cPvA1DAqOPW4nfACs08gAFJKovTn5g7+iJ8Wr/HjNfC3audBmDS353QC/Q==@gapps.redhat.com
X-Received: by 2002:a05:6214:598b:b0:89c:3ff5:78de with SMTP id 6a1803df08f44-89c85a8fbcemr71814946d6.51.1774034986980;
        Fri, 20 Mar 2026 12:29:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1774034986; cv=pass;
        d=google.com; s=arc-20240605;
        b=Oyn+KcZpKwGVRrHubAQJ63Ky0VfTpGtDmSxK0BevCB+qpB2ww8Ek3VPqd0ATr2ZybP
         ShvDOgeYiZUKXCYJGmD7LjlOtoVecDRDxRJCoXjb8cTA7gfIMkyXVIxlhOmqEqACvZPR
         DfeGVVFDX64sHxYmtvyNn2dAugYRcmvUJQlLLpbAWCJStHX8HRZgPkA15hhvNCzoSpLO
         ABD1mhvhJJSVeyyq39I9kBmAk11Z9r6SslLjStCht83HR98qyGPHY3Iqe+KWci05xS3Z
         MPlaog9qaLQ09nXmPmoDhBWlcsQ+YszyIeD3pYU3b0GxbiJamN6HZbkTJhCoi3tDjnTV
         fRSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:dkim-signature:delivered-to;
        bh=9Llnw5a23PQ9mBIoDEar8FEZIwLuKJ3dxpynU7PJRes=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=FQb+Ifi9SyvZdh68/Y0TxUyYujnUbS8uhkkdGfilGAFtjfCqCO5zTMC2otsMI6LUOP
         BR8T8nXiuBsKsMk25XfG9gQQtSpJYQjQDpmNGCisQTtQYhVplYoCzduugVddCi5egxgt
         5YIsvKEGJ85mXdBV2ZwN+itzxvMGwDh06dRhuJIj/oFAXkVN2K6XD8hWKtygEGHGFDnI
         z/nqVZHOxo4K5plfbIOHwsHm+/YnHwOykosSYG5UMyQFY1GL2vA51FV1LRmeK1nHUF+D
         WERRcOl8uEgIayAFlGkYEt6x7+s1MzJNAzaQqJxcTNdetj1x4zIIi2G3ZLXeAe052akS
         5DVQ==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=Xu6RHd1O;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.160.42 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-89c85387b45si47915296d6.620.2026.03.20.12.29.46
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 12:29:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.160.42 as permitted sender) client-ip=209.85.160.42;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-333-bewSvdh5Ou6c4cvIGg4Jlw-1; Fri,
 20 Mar 2026 15:29:45 -0400
X-MC-Unique: bewSvdh5Ou6c4cvIGg4Jlw-1
X-Mimecast-MFC-AGG-ID: bewSvdh5Ou6c4cvIGg4Jlw_1774034984
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B42A61956096
	for <blinux-list@gapps.redhat.com>; Fri, 20 Mar 2026 19:29:44 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id AE140195394A; Fri, 20 Mar 2026 19:29:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AB1CF1953944
	for <blinux-list@redhat.com>; Fri, 20 Mar 2026 19:29:44 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 49B6E1956096
	for <blinux-list@redhat.com>; Fri, 20 Mar 2026 19:29:44 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1774034983;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=9Llnw5a23PQ9mBIoDEar8FEZIwLuKJ3dxpynU7PJRes=;
	b=G+OHyDDoStN+AhgxtY+f9g/FBvAYrbXhkAVnOIBhA8QCOylLNqTSNaLdgFm3ueY4odZRrf
	vrEJW3gzUPD4xcvzfJ+PjK9Xm5A12hxlGii55tiBD0fgmchnwwWruwdJf3ezvMin4NS+mL
	+XzaEnYLu92C8c9skarclSh+rTfn6StellJZSAlECj20GXf+0TwPyZNyZTdxmoA3sImEOY
	AsSrg7Be2Ufq8avI8U+d+fce/HNjU63gyA2hLHB4QyCKfOmi21sU1gA6SZPwDCKpF8Ysky
	zlRfmSsBZhX4AY4ByiCyhEB5rwQ48JJ5EPVsftFxH5bob/r0Z7zBAxT5+g0T1Q==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1774034983; a=rsa-sha256;
	cv=none;
	b=aywr49vAtw8oFQ2PM2Zj9gJbYFBkQPpNAzRn1IA1S7G2zc9kMH/pfzT2CnNpBDesliMkaX
	DG7+g2Myt5c4tknauM/lbZkAjTOZU1aMer7snN+kGHscmCtH88ZG9elv3T8k7OAKLWXleq
	ra8eSI28CYvtYJNsheuOBPIzohsXLRN5kA5F6wKRbEfCFKym8pZucAKz9nuDxt95Ce3MQk
	zE/6c/GnQ4KGyt7I0JCLMCjU+QoTCsz/93nJwGr13YsBZ5sOWq+8TqrzUKtbYR0VTKPAGm
	MWZYp6KycAS/SvxZ+AVYvipzq1xvKWv70VdL1qXrt+ebhe9CNSIlBBv8Ge0SXA==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=Xu6RHd1O;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (relay.mimecast.com: domain of jackson.rodney.1970@gmail.com designates 209.85.160.42 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com
 [209.85.160.42]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-690-0iar54jGPMGpo4BHKQRnWg-1; Fri, 20 Mar 2026 15:29:41 -0400
X-MC-Unique: 0iar54jGPMGpo4BHKQRnWg-1
X-Mimecast-MFC-AGG-ID: 0iar54jGPMGpo4BHKQRnWg_1774034981
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-41c0aae84e5so854171fac.3
        for <blinux-list@redhat.com>; Fri, 20 Mar 2026 12:29:41 -0700 (PDT)
X-Gm-Gg: ATEYQzxNlXHVjNfj1oCpRN34meu3nRRfoZRGzlIat756Wn5zLgIowmI6TRhkEqM7qjX
	jQxcFPZzW4Ub4SSqdmO0D7V5ScNfqbIQDFNSBUnc84hrVIbkYV/s/3F3pRg+DmNWQrVMBmEZY2m
	kDBinw+twApOb0YoUWY2Plz2vPf9tNYZyFSN+g4iL5/Um35EXue5rPrabY5P1hRLXpUqaaXOEpm
	GqqHX07XkP50HIorJffiMEQfA6k2KPR3rz+dnH+RZHxXI1ykulcE85lzsXjC6DYP1CvUbP9/Xdc
	FtvGGibqp4SwqiqKdPvDMAHILYtTfQORHpU1UtO2acAGgu/5ZWHsgpISo6BXXTjmTWfKuVSyJf9
	gRDSc7d/VB6xfjqkyfD/DiPNfi4UwXszPY38LgSpVy/8fIVMbjZQqwqHmzBbjoqRSsluZ0Pc/RA
	RUjR3m+4PY2eaLV/fkMLuUV04/+cjfwK8RgNgnpdbURLrI2f9S/MM1PZmrNEa5JhmCYiuahDOoF
	/aSknY6BBIYUb9OA6qThP340PK5
X-Received: by 2002:a05:6870:a491:b0:417:c2d1:fc2b with SMTP id 586e51a60fabf-41c110562fdmr2776446fac.21.1774034980578;
        Fri, 20 Mar 2026 12:29:40 -0700 (PDT)
Received: from [192.168.4.30] (63-142-94-63-142-94-164.cpe.sparklight.net. [63.142.94.164])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-41c1491fef0sm2660428fac.7.2026.03.20.12.29.39
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2026 12:29:40 -0700 (PDT)
Message-ID: <6b9d6bec-ea56-44bd-96f0-07c82b52d035@gmail.com>
Date: Fri, 20 Mar 2026 14:29:38 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Linux for blind general discussion <blinux-list@redhat.com>
From: rodney jackson <jackson.rodney.1970@gmail.com>
Subject: cachyos and lios
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ErLxeDa-sJN1aqzXA9VAW3EUFXCuaNrKomjtcw1Bv1E_1774034981
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=Xu6RHd1O;       arc=pass (i=1
 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass
 fromdomain=gmail.com);       spf=pass (google.com: domain of
 jackson.rodney.1970@gmail.com designates 209.85.160.42 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
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
X-Spamd-Result: default: False [-1.61 / 15.00];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=3];
	R_SPF_ALLOW(-0.20)[+ip6:2607:f8b0:4000::/36];
	MAILLIST(-0.20)[googlegroups];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=google];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[blinux-list];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:2607:f8b0::/32, country:US];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_NEQ_ENVFROM(0.00)[jacksonrodney1970@gmail.com,blinux-list@redhat.com];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[bncBDYIZZNASAHRBK6A63GQMGQEOPMLSLA];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[11]
X-Rspamd-Queue-Id: F1BCA2DFF4A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

I currently have a computer that has cachyos and have tried to install=20
lios and no success.

everything i googled says to use yay or paru have have tried both and=20
has some kind of error and says that lios was not installed.

it says before i install lios that i need to have base-devel installed=20
and it was already installed.

maybe someone could give me a step by step guide=C2=A0 to install lios on=
=C2=A0=20
this computer.

Rodney


To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.


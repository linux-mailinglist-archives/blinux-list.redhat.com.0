Return-Path: <blinux-list+bncBDEZTZFXXAGRBGG3XHFQMGQERT7DI2Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-xf48.google.com (mail-qv1-xf48.google.com [IPv6:2607:f8b0:4864:20::f48])
	by mail.lfdr.de (Postfix) with ESMTPS id 024B1D3B4B8
	for <lists+blinux-list@lfdr.de>; Mon, 19 Jan 2026 18:44:59 +0100 (CET)
Received: by mail-qv1-xf48.google.com with SMTP id 6a1803df08f44-88fcbe2e351sf142799836d6.1
        for <lists+blinux-list@lfdr.de>; Mon, 19 Jan 2026 09:44:58 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1768844697; cv=pass;
        d=google.com; s=arc-20240605;
        b=Uwe5m6tvGLB30a/97IJhWI1ZYrxf4cPocG8B/vYfWd0EbtrWGb3exRu8ZKwTyscM85
         dV0ElcXdz7uYsWxZlbzSfCD6y//g65EzOO9yb6YaELDXaKcSDu6taAfG/+6DsbFC9M8J
         kF0LVWMPZpuWTjrgSoNRODzRXWtc4OQe9EV7juWniAPfswaqj+k09jRPLZnoJx6Gvgfr
         0RY1wuGyuicuULUAS0BhLxAFm0BC0jbaBPJkGpcyuFmqmnXx6iFMYrlZcsO1EEW1alqT
         qFx4dUuHyl/hCAzQtR/KbA8akEBMzRiGgZwkYiDbDhgwKCYLPD/GSp9zqHAb0BibUidj
         ZIfg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:reply-to
         :from:date:delivered-to:sender:dkim-signature;
        bh=ovgml1cqfUyVMGILz2R3NHqnKYHrHkRzFsKGvAjh6iU=;
        fh=gsfxNdCcVHvzFTtCuYXuSzmdtZpG8nNyfzj3JDB5exI=;
        b=Y7pjK0pHO/4/Q0Mdk8/2GT1nqF+uH1A6UcVQwJnEW4K9Odxwt+Uo4MQ9GwjJeTYdGH
         0RKJChiFmk3ghOJXZPQTD5H27lcFbt1dgstuUmuzxZbgNiXwwLw/ZyB5UTbTbgXlcSy9
         sizefIhQdyA4ZGq8CtYc5M9G+nTqxUAgFjwCB81xIcXtyd+muCK7DaePjgukG9McahiV
         pxinf+hIpx1d+YVWKIw1BiLIUTqYuiMAavQAjs1p3tWOQFy3Pfl/NRkYA0hA8A22SUHR
         wKRp89ybshAOltMd98ZSi2aFevLYoWkS4u5ZhR5skE11sJ3lJqxeWlfxR2FSnHWJxQcM
         30cQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=j0VHZbs8;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of kd7cyu@gmail.com designates 209.85.210.170 as permitted sender) smtp.mailfrom=kd7cyu@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1768844697; x=1769449497; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:subject:to:reply-to:from
         :date:delivered-to:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ovgml1cqfUyVMGILz2R3NHqnKYHrHkRzFsKGvAjh6iU=;
        b=A4TIhT+mZLP78qdG71DMlIImywBuzvtfDdNxhvkuWOvRfBJTINuWN6n643iyPUhbEP
         928liD83spNz9hf4JyEmLf93NQszhdIJIKUTbmuVgvJfeAsn3EV4+8ccOZph4bMot65x
         +YcawtnsmJsu9SyNfDXTPryDgAr6IIVl1/tDMw0VzKejd508KIO7nKBSz4Zw/S4YE92D
         bCmlfUbLWgzSAJbpUgU45PA4tzUf4AIu/in3izzX2shUNuBMcG+LCAQVt11Vrh2YFPm+
         hGvWnon0Az6LEmjza/tfiMiLmytpv4H0mspyO0nJmBA0aB/L0d+JpoqevwhyOBXZGhFs
         n9cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768844697; x=1769449497;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:reply-to:from:date:x-gm-gg:delivered-to
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ovgml1cqfUyVMGILz2R3NHqnKYHrHkRzFsKGvAjh6iU=;
        b=Id97Llf6QXsPR9tWROx1+5bep0aGKL4ArR0q0Qtll8okqG1nXjcfP6dqOZ5rG/kJDq
         XmcIHIEwEafTW3e7Uj2anC8cPFFQeS1fhgtc54s9JFeKk175hcMd0vWZt74/Tjq+h/WU
         9XAw+YR8uMb9rSdaevJQrw+nv3Uz9xWYKqhvwim4OEV1z7OeSlnxv6gHgBtpVKi1jYDN
         2kvvNEKtL+yaOxD7GSli6SMcW0Lgm+MwiYtKY2navNeKGno9dKA6T5K1I6Nmo7H4nULF
         0NSM60/YkTeOR32Vwxw1L+q2S378ps+JoNqSbkBVo1z0ygeaJ7/JAktYwf648T4i4VOr
         pmEg==
Sender: blinux-list@redhat.com
X-Forwarded-Encrypted: i=3; AJvYcCV67csHZzFeS6fALYDNVfTby+jj6e+ZKbJ9kcTQGu4XIHmalqsUx/G0MUDoAcb8UpBxpOtwfw==@lfdr.de
X-Gm-Message-State: AOJu0YyjeLXxie2KFBvST+1uXUazVC0SG4VqInFCUxRDZmB0OJMUoeiq
	2ATq7Y5YXiAaE8jsFlW4fRutYaf9fsdbcsdgU89yvkf5sdcHGxjaWBD6QjoT4pyoLFg=
X-Received: by 2002:a05:6214:5015:b0:880:88cf:59ff with SMTP id 6a1803df08f44-8942d7aaaf3mr164204246d6.22.1768844697180;
        Mon, 19 Jan 2026 09:44:57 -0800 (PST)
X-BeenThere: blinux-list@redhat.com; h="AV1CL+H31X/zPa1VmcUd+uNL4TVwr9DETL6sYpu+vBfIYXMY/Q=="
Received: by 2002:a05:6214:2424:b0:880:5891:1514 with SMTP id
 6a1803df08f44-894221dec8els60690276d6.0.-pod-prod-00-us; Mon, 19 Jan 2026
 09:44:56 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCWGBm+HzErH34Zly1vOAA+rDvAoFdNjruJmn8dWhW5tD8omWo2Lg7iP9ny6avtgIUjWLisHhPS5ZS3raA==@gapps.redhat.com
X-Received: by 2002:a05:6214:491:b0:88a:31e5:80fa with SMTP id 6a1803df08f44-893980c8c33mr212519076d6.16.1768844695868;
        Mon, 19 Jan 2026 09:44:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1768844695; cv=pass;
        d=google.com; s=arc-20240605;
        b=IDwxl3STJf9mFdg0RknTYV0Stu/h40wBFdARAf/3YXBlkwIS89wYBmUeKKrh8EfRQT
         yCzHio4fX7KGgvZQ+k1JlO6MysQjSQSelzB+u2KATxUJfsylAvtQe9Nc62/WakM+5KWv
         Mly62gY8zMSBk9iphZg2Tr+MYowDDD+VYCRq82UDY3TChoyo79pMBFPtg7fX/qkZWSFJ
         JNOQcMbCINtPyS4gKGYYcA8MdMVv8erUqT5ovUe+saO9yIpiOZUmQ3NKEb2NILkz5qEJ
         Z5rPehfcnSTvympb1Ce7hZTo9lllb7As7u0C4f6GKUmVPDFsp3W6X2VmXtVwYep/mCsq
         yg8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:message-id:subject:to:reply-to:from:date
         :dkim-signature:delivered-to;
        bh=PUeE+RtH9jDHfO3yKqwxcpr8buglO+8l/24Qb4FdrSE=;
        fh=nGhuQFZWdDqlGnuhnnL+i18FVeYU+n88mTcrSXXYKCs=;
        b=iorFV7MTMtshghrOEpqMh56ekFA3T6Ng02E8KddU9gZnDIlftwfMzzd7Fghq5Zev6D
         Dt24quDpiw0g6U+8YiLVNd6PAtPEUACVEJ00HBf9iCs9NU6a92ILcAxP6W5v2kwCN8dH
         pz+btl/DE7YZIPxUTRoSEsID9mJSiEmqmRBtflaUqA64euLBBdKiVeL//BSWuCAfk0Jj
         yBzeEDSGAz1GZg4k8fKnU6SEc4p0se0IYX1L/jeBERzEwSKRcttEbXRwRhdxFDWgGPIy
         8K+WNWYzsHxOfGPTJRUzCM7xpWitlOiRuw7BSfyxXmdrvbG994gALCdiTyE2WUQf7m0H
         LvXQ==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=j0VHZbs8;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of kd7cyu@gmail.com designates 209.85.210.170 as permitted sender) smtp.mailfrom=kd7cyu@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-8942e6f62cdsi105476476d6.772.2026.01.19.09.44.55
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 09:44:55 -0800 (PST)
Received-SPF: pass (google.com: domain of kd7cyu@gmail.com designates 209.85.210.170 as permitted sender) client-ip=209.85.210.170;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-651-23RpF79VOfKDjV9w3boRHg-1; Mon,
 19 Jan 2026 12:44:54 -0500
X-MC-Unique: 23RpF79VOfKDjV9w3boRHg-1
X-Mimecast-MFC-AGG-ID: 23RpF79VOfKDjV9w3boRHg_1768844693
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D16F61954B14
	for <blinux-list@gapps.redhat.com>; Mon, 19 Jan 2026 17:44:53 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id CB8D31955F22; Mon, 19 Jan 2026 17:44:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C82BD1955F43
	for <blinux-list@redhat.com>; Mon, 19 Jan 2026 17:44:53 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5165D1954B14
	for <blinux-list@redhat.com>; Mon, 19 Jan 2026 17:44:53 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1768844692;
	h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:dkim-signature;
	bh=PUeE+RtH9jDHfO3yKqwxcpr8buglO+8l/24Qb4FdrSE=;
	b=KVA3V1R5uE5MAP11CkZOvLR3pOTE8gBaEsAP4FbGCEv/6T61fT16Au+eG8DiqHdHahUdWm
	W4UG8McDjlInA4wqFGPytz0vf7seUz0xHEHzJPxJTbA/sJChscXRtrbG8iJGZq5LC4XI4k
	766SI87n8PW136HYG4ctA+jxnYNADasQ7cYEe8RWF0YxHjBvPR20YGTIILbjEY+zqYmsgo
	x9YeQ2lFZcxepnGtOyZuwl+FXCuuC/2bf9k/I/nD/XbVCLRUc2+0xzhY+X7ZMGzGnlfgYR
	eTQ2YPx4Gz8ZHCnCtNXgR7cRQ7yKRRFU1l29skhFxJAyfGtmkz+cQ3w7oMN5Ag==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1768844692; a=rsa-sha256;
	cv=none;
	b=Pd0sArMLcecya6mVySyAG71FafMRd1rcBmucBtAgd+uzUUNzerDFSkbnBEEXHX/lJi1y/C
	bF/WUA7unGXtuHWuPP09/BnKIUUAsMy5K4QVmDmYgQ9fbcsePOyVoPE56Iz1/EAuIxIFFG
	bYsKViTDcLmOaZELxVI58NMV4mDGfy7C83chWlB+dh2apqZ1KWUBO0vzmYS0R1qqNpNn6o
	C509aldf5PKeZCJzpHvZSNhE1QsYa2mVsCDv7I9+UV4Z1vswO+crSJix/foa2Io/e0Fvcm
	Ay+pUNbwn4lP5aBzMhB3zt6ZL1ut6um82qtavOgR0xQcuLG+YzGc6ADyYgkk/g==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=j0VHZbs8;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (relay.mimecast.com: domain of kd7cyu@gmail.com designates 209.85.210.170 as permitted sender) smtp.mailfrom=kd7cyu@gmail.com
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com
 [209.85.210.170]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-428-yicayoMlPOCu5EqVVaf-UA-1; Mon, 19 Jan 2026 12:44:50 -0500
X-MC-Unique: yicayoMlPOCu5EqVVaf-UA-1
X-Mimecast-MFC-AGG-ID: yicayoMlPOCu5EqVVaf-UA_1768844690
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-81f3c14027cso2517195b3a.1
        for <blinux-list@redhat.com>; Mon, 19 Jan 2026 09:44:50 -0800 (PST)
X-Gm-Gg: AY/fxX7VbbXJRKu7VsR4aCVoXHNoZbPHPqRwq8my+4wNXUURYIga80sn0FVewYQ4DKi
	EIYc2rNStPXiUeMs5wkiR0rkUfhCeBYkB6fEB7ebjvAZLIA7r5GwKEEs7OcXNNvZQu7EMR783Dc
	J2VSBkTLmz6jU3UINuiunhoiULIHDAb8P3w92b5oQUGODGu4pk7inqK1s9D5nTYM3BUNmRgOPtv
	i0Jlck5sNmezy1cGvMNrfXDPRfbHJTzn/4+uRaBDSaNeUKL4v1xMp8jHav4XwW6KW6w4gvOh1l4
	lmQN60l4WmNKTbwsclBnhYLjFrpcjbYVdINJDIhwLcZ+FmV2EHO1hwtCp5J+CJ4RYS4agswPV1f
	CpzD+wmppghDCxxUHRGZ8D5V7wQlozzAunDZJTJng5ipfcgImh6uULgCKlNxOsEs2L0KWeT1Kec
	6VjKL495vZ0IVAr0f6xbyuEOB2nmXvvA==
X-Received: by 2002:a05:6a00:10d3:b0:7e8:3fcb:9b06 with SMTP id d2e1a72fcca58-81f8f156230mr14400194b3a.28.1768844689555;
        Mon, 19 Jan 2026 09:44:49 -0800 (PST)
Received: from Precision-M2800.hitronhub.home ([104.202.3.185])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa1277966sm9771195b3a.31.2026.01.19.09.44.48
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 09:44:49 -0800 (PST)
Date: Mon, 19 Jan 2026 09:44:48 -0800 (PST)
From: Tom Masterson <kd7cyu@gmail.com>
Reply-To: kd7cyu@gmail.com
To: Blinux list <blinux-list@redhat.com>
Subject: Fillable pdf forms
Message-ID: <db3057b0-521a-2285-e138-c407a5ef6072@gmail.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: eqr3eOQp8FeyNARrhgN_rZPZ0Rsl3yvznb_uL4VV80Y_1768844690
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Original-Sender: kd7cyu@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=j0VHZbs8;       arc=pass (i=1
 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass
 fromdomain=gmail.com);       spf=pass (google.com: domain of kd7cyu@gmail.com
 designates 209.85.210.170 as permitted sender) smtp.mailfrom=kd7cyu@gmail.com
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

Is there an accessible way in linux to fill out these fillable pdf forms 
so many 
people are fond of?

Tom

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


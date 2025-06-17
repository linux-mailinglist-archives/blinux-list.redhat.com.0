Return-Path: <blinux-list+bncBCCIDSOV5UGBBS5CY3BAMGQEVVYNDOI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A51FADD3B2
	for <lists+blinux-list@lfdr.de>; Tue, 17 Jun 2025 18:01:17 +0200 (CEST)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6fad1f7f175sf98742056d6.1
        for <lists+blinux-list@lfdr.de>; Tue, 17 Jun 2025 09:01:17 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1750176076; cv=pass;
        d=google.com; s=arc-20240605;
        b=XGBE1o6dJ2WdWBhMeJbrIhbLq1q/zEiETxbOc63Idcj2+EkEp/RVI5vDlw5cbxkDLn
         784+jUGq+IuSHXC2FdH0DAPTYzerFLb0Nd6lyhJDE7+Qbsyz8O/DOes3XGH8UplCLerX
         hIxRZakHBc9UJMGmSqbDwgvqHZGHLV7k4TEb2i4UAa+mmwKz5qXCuHPZqXaQtTp0pbEz
         ivSXVZb4heDll1TO7pXle03XOpgeab33VROVzmW7ORo/RniXUipZ1QE0r3PKdrLMRyzX
         dztQb4HXiDtvxG+4Z5dGO9pk5nyzhSXulmpiu9lHN20uLpjn7kkGxtcRvHtW/sx2YxiR
         Z1eA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:reply-to:message-id:subject:to:from:date
         :feedback-id:delivered-to;
        bh=DIHKy4xglI0TeYLENIwqeaL+KktLPl+o5ypaNv/3oGY=;
        fh=r2Iq7cS0hy45XJ44gT6yy9bFarTOu58HuV6PirvV8kg=;
        b=X4NVTDJABCoDcGTiji+agTfuIU0jqSOVBLFj8lUBu5RPiemr7fX8RQ615s24lvzjcM
         gfjVZ2IwadMPLg9Hi9L+vDxVJnr3e7S7y82HuiEF16vxEYgnlTvIdUFMqnBOzDnqz8QR
         PsR8RJcqHyy4EfvQyu0qUwTTlIfhNycd++H+YVoacGsxvgQn2Al76tXqfr1LXttUmWof
         M5Q2dZ0yTKi+0Y8MsNT0WI/TyO6qf8sXNHbC6Qsn66b33cr7v8p4Gg859QabkV5KCHTV
         e4iRnSmOD49Y0ThAne4eAfsblx8BSBhXZKj3Tt8+R1E0+YTAovT6y0dqMUJWEpQY+W3q
         4e5w==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@pobox.com header.s=fm3 header.b=zIoI6uZ9;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=d96bjQ14;
       arc=pass (i=1 spf=pass spfdomain=pobox.com dkim=pass dkdomain=pobox.com dkim=pass dkdomain=messagingengine.com dmarc=pass fromdomain=pobox.com);
       spf=pass (google.com: domain of joelz@pobox.com designates 103.168.172.157 as permitted sender) smtp.mailfrom=joelz@pobox.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750176076; x=1750780876;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:reply-to
         :message-id:subject:to:from:date:feedback-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DIHKy4xglI0TeYLENIwqeaL+KktLPl+o5ypaNv/3oGY=;
        b=Ea0UMAOS4PRltjFo6ZNrrFQhvxHA+4k/0bfkcglgeEfVF51jshw3yTZF8SHdBAE8RK
         Pcv/0yplgF7oi5AvVqz5wXhE/RcvKQsxsv9mvNGU4HLw1NDg13ffaErLvs7uHaVPZ5RJ
         SwmHOCDUz83yRXPgQZBV+uNVjS+QQgbJ0hwAth8S/gczJYMVoC36uUgAwX74hm8Vjc3v
         rKLbDoERH4MNk+471KxDbADDVulNX5ks5OHLAMsReXn/FtbjcoZvoQJMr2DtvZHy94Ck
         f112P7e7loSvuMgEFA+wizeoj7NFCbU33/E/y+9Ih7klzBwPDwvTgo1hK6omPImIfK96
         d9sQ==
X-Forwarded-Encrypted: i=3; AJvYcCXsl+uT4zlRdWlaDwEp8AKO9qxq+O+xSDHj1vWz98VHh3s4uhtzMe4askwXukfhM/cMRT6+3A==@lfdr.de
X-Gm-Message-State: AOJu0Yy/uaOFbTZpU0TTJo9NK78HdnuSEZI/9JVKtd0CLevWbHzjaJrJ
	boUDOLLlpODUNOgWtGxR/7+M8JxWS2oIyX5nBQSEF8TsQ/8OmOiridVDbMpvvJFHP80=
X-Google-Smtp-Source: AGHT+IG9zqRPdXeBq89JNcuPdhkDqpQ17BuEbSCbXPezHxbEHPYLNuXzdsz/HYfoGxq9aBZUHe0trg==
X-Received: by 2002:a05:6214:809c:b0:6fa:fdf5:a604 with SMTP id 6a1803df08f44-6fb5ea9bd08mr45691036d6.12.1750176076286;
        Tue, 17 Jun 2025 09:01:16 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZd1f4/S2rEEmAjq9dET3l9cTX1elX6c/1cIBf/YNSh/tQ==
Received: by 2002:ad4:5f0c:0:b0:6f8:ad1e:dc80 with SMTP id 6a1803df08f44-6fb3555e7f6ls118838596d6.1.-pod-prod-00-us;
 Tue, 17 Jun 2025 09:01:15 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVaejgOA6Foga34N9lLBkd+rPbcJvG5PT3tH96HpoyzYLVwPZrlvx0MqZPoSa/zPNn2NCa5dben/ayAEA==@gapps.redhat.com
X-Received: by 2002:a05:6214:2b8a:b0:6fa:acd8:4c00 with SMTP id 6a1803df08f44-6fb5ea1a4f5mr37023506d6.9.1750176075068;
        Tue, 17 Jun 2025 09:01:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1750176075; cv=pass;
        d=google.com; s=arc-20240605;
        b=ZuwEJ900seqJg73O6VbE62DmCqsXRNpONYr+FdikUoaBJZmoY4RxKrZ1o1iWyCS5Bv
         0RDILu+4Z82Zor8zpJj1gQ8WINy0HmKo/Y1VEtXz+DD5BVNVrOF455ohjN60Xhhg4dVG
         Fiz2zW6/l9srzUYOv/qLDRxc55su5l66w/o9JIr99byNaxt9Be639+SjReL5KgHkC5+t
         7duoaUi1Co/wuMEJ0IVnHNZDod9zJooQfgF2WeiXUjlNXHCZOLs6ys2X5Ds67x5oNTdz
         ozz+6Yq+NG522RP5T4HN4nstiDVPGPGm4/I8X01leeYVczRfWVLj/0QSQ+3pw+wM5Nug
         imDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:in-reply-to:mime-version:references:reply-to
         :message-id:subject:to:from:date:feedback-id:dkim-signature
         :dkim-signature:delivered-to;
        bh=/hqJ9lkz+NEF9jY9NVm8rKKzT0kcE8LdS0HsY9YXkCY=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=XR+PfY+UA9wxFLEX0V7jjWPWz6uVKibMXbOzg0S6G2LyQdUERF0TUvORnguKxkTRRR
         jIT4sml5MzKFz5+Ad22m8rIKiRYL/rLyQ5GS795Cim54h2wkhSyJuDaPSvxyS3KfSpw8
         +sqjcVdVZr+sutpDhuMmRh1wA9Otfoqwaq0walSuQ1WYKWpxT+ynTuTJMKafwFBK0ZM8
         8r65TPmdJBsUjF3Ph9QYZ8dNPu91IfJ+hwbWrM/07RrOgT2i5Cz7IAF+xO051qg+dnda
         rVv8bb6ZwrUAWf+cTeX10w6gts42dfecl7LUgTZjBjOiHjY+FfevfulOgq7RdTXd/wCX
         sNxA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@pobox.com header.s=fm3 header.b=zIoI6uZ9;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=d96bjQ14;
       arc=pass (i=1 spf=pass spfdomain=pobox.com dkim=pass dkdomain=pobox.com dkim=pass dkdomain=messagingengine.com dmarc=pass fromdomain=pobox.com);
       spf=pass (google.com: domain of joelz@pobox.com designates 103.168.172.157 as permitted sender) smtp.mailfrom=joelz@pobox.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6fb35c00f76si130452966d6.304.2025.06.17.09.01.14
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 09:01:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of joelz@pobox.com designates 103.168.172.157 as permitted sender) client-ip=103.168.172.157;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-345-Wcg3daDhOyacVXq2Ao-LyA-1; Tue,
 17 Jun 2025 12:01:13 -0400
X-MC-Unique: Wcg3daDhOyacVXq2Ao-LyA-1
X-Mimecast-MFC-AGG-ID: Wcg3daDhOyacVXq2Ao-LyA_1750176072
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AE59F1956055
	for <blinux-list@gapps.redhat.com>; Tue, 17 Jun 2025 16:01:12 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id AA19819560B2; Tue, 17 Jun 2025 16:01:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A6CFD19560B0
	for <blinux-list@redhat.com>; Tue, 17 Jun 2025 16:01:12 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 22D99195609F
	for <blinux-list@redhat.com>; Tue, 17 Jun 2025 16:01:12 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1750176071;
	h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:dkim-signature;
	bh=/hqJ9lkz+NEF9jY9NVm8rKKzT0kcE8LdS0HsY9YXkCY=;
	b=LhNMbfnOOHf9kEMu9bZT2bMhNnStb0iTDFofWapNeaCnakjX8anjyp+ihd+XEfhVOztHq2
	oSol1TcuTU8cw0Lq480TyTBhVdqGBBtc+tRpNigVnqdQMi9OsEH9t2HfO1u+iP4WjOhEWZ
	DSjisCf6GzGmJ7kJdVxn68UiZ5oYUv4mNW/eUWdPZPICPZNgp29t84mNHx8vyvUpoT6zLt
	L2LwrwzZw4IFAPF3TZeLVZ4NN4KK1Y1XIh6vDth2j6tuZku6HQd5KiYMSEI+IdTTJ5WUnu
	O9bZxt8yVUT2DFFslmBgbhYQG7RYgY7d9QXCLBl9N55mtUSPc8SIyIwvAVfYig==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1750176071; a=rsa-sha256;
	cv=none;
	b=ePXUMskFLDmtFgRUGtsOlpmoIUJaXzC9Py5xc8nQy9xsX2VD03VBbayi0qhjYyKCRkQozK
	hnDIisPxWB/9sFXuVnjfPV3m5OAKKE7CBqhVHYygBIdP5jHw0Pk1BNQegatrtxCin3+iQQ
	pPG6Z84BSH/s11XzQ8Jj3F+oEnJjW7l1dWNb+P6Ehw6n6EoCwBATdZgRe98i+/H/hF48Gl
	SHUnTzLPrkwaEwbx4DKW46OHAcjyJiundMb1Fs+9wAZYkoD+tcCzAngoO0VwzmU5T9/4t6
	mOoDTjjPlus1CW98jDtgxL1mbXA9pXDLdcRQKuagyDGEKSGCzOGsL4e7VSo4OQ==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=pobox.com header.s=fm3 header.b="z IoI6uZ";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b=d96bjQ14;
	dmarc=pass (policy=none) header.from=pobox.com;
	spf=pass (relay.mimecast.com: domain of joelz@pobox.com designates 103.168.172.157 as permitted sender) smtp.mailfrom=joelz@pobox.com
Received: from fhigh-a6-smtp.messagingengine.com
 (fhigh-a6-smtp.messagingengine.com [103.168.172.157]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-443-zLCU_tJuOnCOtagfHRqQ4g-1; Tue, 17 Jun 2025 12:01:09 -0400
X-MC-Unique: zLCU_tJuOnCOtagfHRqQ4g-1
X-Mimecast-MFC-AGG-ID: zLCU_tJuOnCOtagfHRqQ4g_1750176069
Received: from phl-compute-07.internal (phl-compute-07.phl.internal [10.202.2.47])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 9D5ED114019C
	for <blinux-list@redhat.com>; Tue, 17 Jun 2025 11:55:02 -0400 (EDT)
Received: from phl-frontend-01 ([10.202.2.160])
  by phl-compute-07.internal (MEProxy); Tue, 17 Jun 2025 11:55:02 -0400
X-ME-Sender: <xms:1o9RaKIxMji3KZpQMnAEdk3Ua6iR6F-x7P7ezGEjD1NWKLVxaRTa6g>
    <xme:1o9RaCLKRIvdf5gm1gqVSvYxhtokEjMKL_kxtJp87Md_fkxi-y1wSwZ6IFQ5kHxuz
    irnpJ3zR_Q8HIN3xKg>
X-ME-Received: <xmr:1o9RaKv0nORNk4oe2lD1CkVKiTDxlqMjNHSYSbR3mOt9sgDcDdIPiVmxA0kiL9z8sFiZOdrW4yNrmoanuR2ud5BIAg_gOE7h86GXuDG_91MKbXdYkFqWDT2KRHz30Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddvgdehlecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdpuffr
    tefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukf
    hrfhggtggujgesthdtredttddtvdenucfhrhhomheplfhovghlucftohhthhcuoehjohgv
    lhiisehpohgsohigrdgtohhmqeenucggtffrrghtthgvrhhnpeejudfgjeefjeegheehue
    fhledtteejueehudetgfehlefgteetleeuueffffekgeenucevlhhushhtvghrufhiiigv
    pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehjohgvlhiisehpohgsohigrdgtohhmpd
    hnsggprhgtphhtthhopedupdhmohguvgepshhmthhpohhuthdprhgtphhtthhopegslhhi
    nhhugidqlhhishhtsehrvgguhhgrthdrtghomh
X-ME-Proxy: <xmx:1o9RaPY6LXcApUsMsK9S9ug_eTTMXjUJ75dHf_Bd2ntEdcbnrjleRg>
    <xmx:1o9RaBbjRkzGuh1Wu5tXmJwrOBQJzkG5Kjpy9XrS1_JSwHGnZgf8Mw>
    <xmx:1o9RaLAQYxepzG_8Yn96nvjyFA-X1BzY-d1rxfXFXjkmDipbbIq0sA>
    <xmx:1o9RaHbMCWs8dZqEEnMxQ9KEDebXMGCo0duyLJsh-J_g6kPk0B6LTQ>
    <xmx:1o9RaFo1ATDX-Sh60a0_KHA-cHiaaR1ZZ1Oh5YSJ5axVUtd2WFtX8Mv0>
Feedback-ID: if0194970:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <blinux-list@redhat.com>; Tue, 17 Jun 2025 11:55:01 -0400 (EDT)
Received: from jroth by sprite.attlocal.net with local (Exim 4.96)
	(envelope-from <joelz@pobox.com>)
	id 1uRYeJ-0001tT-34
	for blinux-list@redhat.com;
	Tue, 17 Jun 2025 05:54:59 -1000
Date: Tue, 17 Jun 2025 05:54:59 -1000
From: Joel Roth <joelz@pobox.com>
To: blinux-list@redhat.com
Subject: Re: No Sound After Python3.13 Update?
Message-ID: <20250617155459.g2y65sxmpohqhb6g@sprite>
Reply-To: Joel Roth <joelz@pobox.com>
References: <d66104bd-98d1-b8df-2b2e-c3508369a260@hubert-humphrey.com>
MIME-Version: 1.0
In-Reply-To: <d66104bd-98d1-b8df-2b2e-c3508369a260@hubert-humphrey.com>
X-Mimecast-Spam-Score: 1
X-Mimecast-MFC-PROC-ID: dl6tYcFfYRWR65K9LnLmWNEnPxSBMj5hgL4dutF_lrc_1750176069
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Original-Sender: joelz@pobox.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@pobox.com header.s=fm3 header.b=zIoI6uZ9;       dkim=pass
 header.i=@messagingengine.com header.s=fm1 header.b=d96bjQ14;       arc=pass
 (i=1 spf=pass spfdomain=pobox.com dkim=pass dkdomain=pobox.com dkim=pass
 dkdomain=messagingengine.com dmarc=pass fromdomain=pobox.com);       spf=pass
 (google.com: domain of joelz@pobox.com designates 103.168.172.157 as
 permitted sender) smtp.mailfrom=joelz@pobox.com
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

Hello Chime,

Is there a reason you need pipewire, rather than bare ALSA?

Perhaps you can explain your use case. I've only used bare
ALSA myself, excepting some experiments with JACK. 

And even in that case -- ALSA only -- there are various
mixer settings that will suppress output if not raised. 

Joel


On Mon, Jun 16, 2025 at 08:44:26AM -0700, Chime Hart wrote:
> Hi All: On Saturday I wrote to the newer Blinux list, but I wouldn't know which 
> list has more readers? Anyway here in debian SID, Friday morning I ran my daily 
> updates. After those updates my sound completely stopped working. We tried 
> removing, purging, and re-installing Pipewire-pulse, even rebooting. Still no 
> progress among 4 sound-cards. Thanks so much in advance for any guidance.
> Chime
> 
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
> 

-- 
Joel Roth

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


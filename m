Return-Path: <blinux-list+bncBC3NDNGRUAMRBT476XFQMGQECRJ2XZQ@redhat.com>
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHKqLNJPfWnERQIAu9opvQ
	(envelope-from <blinux-list+bncBC3NDNGRUAMRBT476XFQMGQECRJ2XZQ@redhat.com>)
	for <lists+blinux-list@lfdr.de>; Sat, 31 Jan 2026 01:41:54 +0100
X-Original-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F75BFAD3
	for <lists+blinux-list@lfdr.de>; Sat, 31 Jan 2026 01:41:54 +0100 (CET)
Received: by mail-qv1-xf46.google.com with SMTP id 6a1803df08f44-88a360b8096sf88834806d6.0
        for <lists+blinux-list@lfdr.de>; Fri, 30 Jan 2026 16:41:53 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1769820113; cv=pass;
        d=google.com; s=arc-20240605;
        b=F9RSWRlBhK1AY+VRbsh7APX/UbqTLmUrCdYYgPtbY+T9EI08PHiQhJNSF3Pfi5MUpw
         ZD3K5WelKT7j4XiS0Z8fVwpyoSNfs7IzjhaIfHnHTqb+5PYufwCLYb5pJunKbR+bQGCp
         NXu4Sgsj9NUWSsnWK9hPD61vpdmIAqs69IvgSyIDxXjZqXeFA/ODZo4UetRUfVq8nYS0
         9smoYwFm2FH4kT5ACAuaRNOeRb5pGoUm3NgHEslu6NtRsuKM4I7RE4A/Aa1Q5pYvFtvM
         ZskcRSSuvTenPMF1GYyUkImxtA2qhqrYTkSLAdilVHndUU9rTy00W+IJE0k4TSPjHg+Z
         vixQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to:sender
         :dkim-signature;
        bh=vWwYpJCLcWXnIGV+URTWaL8H1xXmnKntitL9RjxKjtA=;
        fh=NmC2xORqbRir0KGOGf4VfBYgWFprKsTdakSaJsDcwbY=;
        b=NjqSAMgjE9wNNorvl4R7dt+F8V0z/qKQGuuDb6i4q1XVDhHL0vJKI1ieGOdDah1X/B
         4nDkLN8ajNDc1s/7whW4URRfKLmW8PRxofUAsBUQjinU/zqnJ+Q6v9Qd5aprYbx9NiYk
         E47Nr7ll5QyJI892+RWNuYHMawHH+nNOOKAbHvjt9BdG6Mpb00xbnRwF4jWc+ug2MaSl
         Gx9KXgOYwfl2CwnwxEMSr7napfmF2iP41fbpPEGnqjyy4BBIB1AXEtP4i6x9my3QmfUG
         42ggCIhZxE93VpFEE/kV/S/WJLiJ4f5+xUcPOTOsRyS1WWpjs82ZZUfkFhvX6ixiaeER
         wHPQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@hubert-humphrey.com header.s=fm1 header.b=iW1CrN4I;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=V+hTmOAG;
       arc=pass (i=1 spf=pass spfdomain=hubert-humphrey.com dkim=pass dkdomain=hubert-humphrey.com dkim=pass dkdomain=messagingengine.com dmarc=pass fromdomain=hubert-humphrey.com);
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.159 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1769820113; x=1770424913; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:message-id:in-reply-to
         :subject:cc:to:from:date:feedback-id:delivered-to:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vWwYpJCLcWXnIGV+URTWaL8H1xXmnKntitL9RjxKjtA=;
        b=MsFuGrK0g7FWfKcuEuji2FUzolv1SOKpW5Fria03fALnLSqa5D3Yrq3qbqjRJGM6np
         /vFMUdavUPZ/6TQ6m/aQNsORDqCJ4GLhKBMMYAKkF4ZLDaQKv1Net4/EznhbYTRw+9IR
         NYIV3imapIHCM0++9bmxe7I85JT3Qp7Hreh52G+dQw80S+lYmZbnkk2xjHxAjw0imcNK
         dQYl3apgv4yJkh8JxHIIIrYvzEehculDy/bhCJNHo+HGCHKHpdljJc3rovKlG9WavnMn
         AZTwcJRoLodovTOC4743wLxya0RqNH95IgEpblbqUHv5IjzO677ID6Gj2BFM3UrfrDwE
         wb1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769820113; x=1770424913;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vWwYpJCLcWXnIGV+URTWaL8H1xXmnKntitL9RjxKjtA=;
        b=oXWyP2z68LwWJCzh3fdujwXx5JTDrC4P90gwPJzN063MEzthKOeyx8HidfE2lXi5s+
         B+SdCPx6LbpDkYK69L3V3gWbQOWWBOxJ5Tb26un11uQnv6wsDAwEaWexIofk7rG8kz88
         KyFWJ5CX22BIbtWlX8DefOm2SsEK/ynP6ekHrp3bm8s+ttGQNSGKf+wkNPHCnZcz/fWy
         3jgzoiHIE9eNfUHaqhFrMS0yGuQ9+im9rvdex0lgKZWjsbdnZPE786b5NpypMC/HoEOw
         zV/d443ESgivP4CdM0L6YZy6sq/7DOEvRuFC2k2UHm/GHqcRiaCL/0ky3TdA/BtSlZFf
         k4Og==
Sender: blinux-list@redhat.com
X-Forwarded-Encrypted: i=3; AJvYcCWpAGWgTjnVZl1YqzRN7aqdCN1rU6CisGoC+V3kuiSflN5buK6HPC4gHU2XCmd0f3KYu4AXBQ==@lfdr.de
X-Gm-Message-State: AOJu0Ywxqtpp0G5FDnvYmaVoRvidArC9km7zc67LsDynxLdPEUv1Ktd7
	MWYOpy8VR4ZvXberWFqNCXXF9uHwys0cYUxSHCFedIrxoPBYSoVY/YVDOyCLIkOKq8A=
X-Received: by 2002:ad4:594c:0:b0:894:3c53:b9a3 with SMTP id 6a1803df08f44-894ea035d9amr69045746d6.44.1769820112305;
        Fri, 30 Jan 2026 16:41:52 -0800 (PST)
X-BeenThere: blinux-list@redhat.com; h="AV1CL+FFyyLMYjyEg2WIUs0vlBClXhiqcOmsFUvLd0Xm0535Zw=="
Received: by 2002:a05:6214:2a4f:b0:882:3acc:d7a with SMTP id
 6a1803df08f44-894fa92d5b3ls2823446d6.0.-pod-prod-07-us; Fri, 30 Jan 2026
 16:41:51 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCWZMQRVLuKtfZVF6pX9odBH3GRupIy7/rYlrMjFQumkOgZMdV3DcpEswMKlUDmtNuRhQ2VjSdTD2wz0/g==@gapps.redhat.com
X-Received: by 2002:a05:6214:2265:b0:88f:fbcf:e7cb with SMTP id 6a1803df08f44-894ea07cd66mr73798206d6.51.1769820111096;
        Fri, 30 Jan 2026 16:41:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1769820111; cv=pass;
        d=google.com; s=arc-20240605;
        b=F7nKm1ol/oxn21wO8cS9ofwrAf7dV/R+ctHa7G8qAfFeK9/Y1Lu/a8prQA1OVsQJcw
         uhYGvo2aC9C3YEPfZG4h57HrZeZyOpr69NdDrAHAXEm5nLOXp5QkTqLgXFeWUnT8mM/D
         oObFeJOXtS3e4IhaJr4qtVF/cZV9dzoxfxNtaTALpqtDFxMTeE8HxYnL5YinbPogqAql
         NlK/bNxDWGSsrKWYuh499/diX/ZzegMfeppksGJHjbIGmuJb3CgOp0wh0qUvBsk+FVSx
         hmuugX6drIREa/KKQOI1cnccmouS1gv3Fu/ZjJ1t76xVLX/AxhqUX9/EmiET4q7G7Hws
         l9sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:dkim-signature:dkim-signature:delivered-to;
        bh=cIvhlbuyO2VgqhBE43L2RbXmd2iu58qWUpNjgYPpCZM=;
        fh=afeQqVKmYf9Me5LKKoc1/L+JG9TzQiygF/Tjngx+Kf8=;
        b=QO6QbKRlgGidFXvw/lG4na4AZmo/vNaM9uhDNZ2UrPa95AQ3TzUu3akyB0NYDgEQ4Y
         mqXOYjlaySbbVdLZlNC1Y0XePkupqdcEAcmJqlr9+smXJkQ4RVXPaO8ac4liOhR9MV3V
         ZyMwZd7VgL6k6G7Cz1vaeJWx4FTbxCdv6ajLrOMhJHO3QltyZCU517uzl54nhukW7d6f
         MgWD7xwRkj6jkeMcTa+ZlldFvkvBfPpGrhEiI0wIT1mR1dgaSFJjl50zJ9/ObniBf5Rk
         YlDJGu4UQGeHRiFSDBEe+kBcm7YwRRPIQNBrPc4goxvytkj+clDajkfdTERTDDz/MUEb
         o3Mw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@hubert-humphrey.com header.s=fm1 header.b=iW1CrN4I;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=V+hTmOAG;
       arc=pass (i=1 spf=pass spfdomain=hubert-humphrey.com dkim=pass dkdomain=hubert-humphrey.com dkim=pass dkdomain=messagingengine.com dmarc=pass fromdomain=hubert-humphrey.com);
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.159 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-894d36f666esi101952806d6.40.2026.01.30.16.41.50
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 16:41:50 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.159 as permitted sender) client-ip=202.12.124.159;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-65-V0SaB7e9PI-sgct2jOERqw-1; Fri,
 30 Jan 2026 19:41:49 -0500
X-MC-Unique: V0SaB7e9PI-sgct2jOERqw-1
X-Mimecast-MFC-AGG-ID: V0SaB7e9PI-sgct2jOERqw_1769820108
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C046919560B7
	for <blinux-list@gapps.redhat.com>; Sat, 31 Jan 2026 00:41:48 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id BB17E3001DBA; Sat, 31 Jan 2026 00:41:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B809F3000218
	for <blinux-list@redhat.com>; Sat, 31 Jan 2026 00:41:48 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 583FD1956054
	for <blinux-list@redhat.com>; Sat, 31 Jan 2026 00:41:48 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1769820107;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=cIvhlbuyO2VgqhBE43L2RbXmd2iu58qWUpNjgYPpCZM=;
	b=O7IqJ4VlhL+TOKEP3fcvKvv8XfDyrjYuB4IsqaeVgm/T1/Ycx/7VAyhPNXvU40K9Fo/5id
	6Tz0hRWEoGbeuos/ZVCuDN+r3STEFu1XIRGTZivQ9QvM4rPphjY640WR1JArTq4hkNTSri
	pBbU/NQ8R/ijdXNQzfNBa4/VbpMOkOYTrlZuM6kV9dihoMgrIMeFFCt/nkNyESFg7QimZa
	Dw5SqhXdBCm4OFA3shD8OfLCjnxIHsJtSw5+1e0hPaR1uIBAqApafTMrfRnvJIgAre6V13
	X+E4Vi+qpgXpOGgETsVFi3f1L1u7f2eETvlhyH7HQo3g84BGTZmI6dz0ZNqZvw==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1769820107; a=rsa-sha256;
	cv=none;
	b=OJgl60+DDBJBKLSca5LUfQ4FupgRfFmQZRefimFmVD5q9fi7mEkQqmKrsbrHbUQKWcVRiv
	5skrXHzPnm5WSWxXE5AryU6z6/WYufMOsBl3UApfHb2vl4OMRsz/uThb6TZIkYgnDAtPo7
	sSDvc2wC1oR5JJl/2rI4jiIv+e0mSqoOTHeRypTXnGgwjjuCyOBnqcfvWVt1dCzYnCJUph
	UDX4dRZoFaX/3D79FSNOjMC+utC4Wbt1pOULoEu1QZ28Sw97aog6F17/0XJIFo16xCEWDf
	s3fKioOWNVl/wBs+PUq4fSwNgawqs9VfuleiP6UMMBcAS8Es/pu147Irl2+OoA==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=hubert-humphrey.com header.s=fm1 header.b=iW1CrN4I;
	dkim=pass header.d=messagingengine.com header.s=fm3 header.b=V+hTmOAG;
	dmarc=pass (policy=none) header.from=hubert-humphrey.com;
	spf=pass (relay.mimecast.com: domain of chime@hubert-humphrey.com designates 202.12.124.159 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from fhigh-b8-smtp.messagingengine.com
 (fhigh-b8-smtp.messagingengine.com [202.12.124.159]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-452-q0XGyXTIN5m-Rt3fX8x4sA-1; Fri, 30 Jan 2026 19:41:44 -0500
X-MC-Unique: q0XGyXTIN5m-Rt3fX8x4sA-1
X-Mimecast-MFC-AGG-ID: q0XGyXTIN5m-Rt3fX8x4sA_1769820103
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 91CD17A00BC;
	Fri, 30 Jan 2026 19:36:31 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-03.internal (MEProxy); Fri, 30 Jan 2026 19:36:31 -0500
X-ME-Sender: <xms:j059aVN58Pxz-3AoxMp9EY-11laCBjGiCmdB45zmFqVeCcn57OJKXg>
    <xme:j059aUQnk1NJZSchf0HT1tqBfH-IYIevSvMD6Q2j439VcnsV9SGNC3enNWDE1O01G
    r0yg4lHhXiUFZlHK-vgIOGw1DZeLAf39n2kLZ5LaIjWYC2fN9wnSoc>
X-ME-Received: <xmr:j059aXDZnQQP5PNP8jNEBWjqbG9vYcG_YxKx918EdzazP9MLjF9WBwMTULJD>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddujedtgeelucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefujgfkfhggtgesthdtredttd
    dtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhh
    uhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepvdehgeeljeekgeeugfefle
    ekjeeivdekkedvteeuveeufeeffffffeffledufedtnecuvehluhhsthgvrhfuihiivgep
    tdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmph
    hhrhgvhidrtghomhdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhhtpdhr
    tghpthhtohepshgrlhhtsehprghnihigrdgtohhmpdhrtghpthhtohepsghlihhnuhigqd
    hlihhsthesrhgvughhrghtrdgtohhm
X-ME-Proxy: <xmx:j059aTjUYzSjJTm6UG0WAguG-2ToD2X_WX_vaE5rlS5Ma9NTPVO2tA>
    <xmx:j059aQOiFGdHrBDYPXjz30ubQiS6NowC-tjIqMFbNchBgknrO2mG3Q>
    <xmx:j059aU729YkiJUg9JPv3kEdkSjapxJNdnE5zIs94n3A3XbnVGoxu-A>
    <xmx:j059ae1wslbNWIxrC0Hi_tEiiNvjLpLTss9AukELrpvP1GL6GrumKg>
    <xmx:j059afjy98Gg57ImlWBcqoFnu9r1ixTSri6zZOJlt5klYTVfTOmx8bPS>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 30 Jan 2026 19:36:30 -0500 (EST)
Date: Fri, 30 Jan 2026 16:36:29 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Rudy Vener <salt@panix.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: customizing word pronunciation in espeak-ng or speakup
In-Reply-To: <aX1HBkvkMJa48g7k@panix.com>
Message-ID: <3ec5ef9e-14ec-fb22-156c-2d91201b5b35@hubert-humphrey.com>
References: <aX1HBkvkMJa48g7k@panix.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: -4
X-Mimecast-MFC-PROC-ID: yuSz01g0tLFbBNZtx7H9CVE7q4Q9p-SJodwJr7cwFgI_1769820103
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@hubert-humphrey.com header.s=fm1 header.b=iW1CrN4I;       dkim=pass
 header.i=@messagingengine.com header.s=fm3 header.b=V+hTmOAG;       arc=pass
 (i=1 spf=pass spfdomain=hubert-humphrey.com dkim=pass dkdomain=hubert-humphrey.com
 dkim=pass dkdomain=messagingengine.com dmarc=pass fromdomain=hubert-humphrey.com);
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates
 202.12.124.159 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.61 / 15.00];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=3];
	MAILLIST(-0.20)[googlegroups];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2607:f8b0:4000::/36];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[hubert-humphrey.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bncBC3NDNGRUAMRBT476XFQMGQECRJ2XZQ];
	TO_DN_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:2607:f8b0::/32, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWELVE(0.00)[12];
	FROM_NEQ_ENVFROM(0.00)[chime@hubert-humphrey.com,blinux-list@redhat.com];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[blinux-list];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[hubert-humphrey.com:mid]
X-Rspamd-Queue-Id: 24F75BFAD3
X-Rspamd-Action: no action

Hi Rudy: As far as charactors, for the most  its only as you type them. Unlike 
Vocal-Eyes-and-many other DOS-and-windows screen-readers, Speakup seems to be 
missing that flexibility, along with single-digit numbering. Since I would 
`never use espeak, I am not the one to comment. By the way, when I had 
screen-readers with an exception dictionary, I probably had 60 items, including 
several weather abreviations. O, I think Jupiter in 2004 had such a dictionary.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


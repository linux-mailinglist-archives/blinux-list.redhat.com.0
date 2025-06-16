Return-Path: <blinux-list+bncBC3NDNGRUAMRB472YDBAMGQEOXAE4EQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D3BADB5DE
	for <lists+blinux-list@lfdr.de>; Mon, 16 Jun 2025 17:51:18 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4a42c569a9asf92111191cf.0
        for <lists+blinux-list@lfdr.de>; Mon, 16 Jun 2025 08:51:18 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1750089077; cv=pass;
        d=google.com; s=arc-20240605;
        b=IBXUrXB4MDtOr5VT0OBUV3oEYgTvA1O/KjVtk/3oEA3wl0ka/VOApXL/Fa8CigYD0O
         32D0XaurXK+hs7ip+E5CnQzcesAYMdIXOK8G12mlExnZCLjVgahFOdJsB9hDwqbMo/Kl
         NTXlDUux7ykJ4E5k12jRyYCBbLGa7n3bxj2UvVZwdrOmdHkgH7WEbtUJ9sNrU93ySVKD
         53uFergqoJvDT3gE4jhnxraUyTetBFUQHNQrMdYtgHtVZrPcQFgtxorXySg0Y7GUxhnQ
         gkteWzp6g4QYCPs6CUQ395taAuE1hAduByrqapag37Jw25N0bqSL4jWuKo7J9uyheKLz
         63uA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:feedback-id:delivered-to;
        bh=DeAwH8bZqksDR88oNVNMHNOJeHg8Kp8wGHFXJUok1ss=;
        fh=N+fdLC6eQKCKNhz8Quws4uI976FT17vfuxkxTaATFmo=;
        b=ROvlOgkq8L+CpHiUP5EgWHmkUh7CYvr9PNrfLgNjCCL3G+G8IDM/Yfhi0NLwaNQDgP
         EnRYW4nPns81fKNsS9yfF67PD/uu4xZmupIhdp/PKnjy8D56tz4sGFPUL+OrEOiDUX7u
         81mFf4KQPcXuyDXo54AG1ldYBzNs8QIa98k3EtQ9YFghu9o1+fguSYFwGl4umWlfr65M
         p7lxWSrqPdXPm1vO9sI72rsT5f33sXntRnCOUJxkFR4wNsFgK8sAgdg8qfr9ChY3enU3
         EUU114G5yTDDNiI46Vma+Kj6u4y1b1qUjIMSH6W5n/p4aR8YGJMZ3JfIZRxjQ948dus8
         rp6A==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@hubert-humphrey.com header.s=fm2 header.b=KXmiKhMR;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=QBwWZxLe;
       arc=pass (i=1 spf=pass spfdomain=hubert-humphrey.com dkim=pass dkdomain=hubert-humphrey.com dkim=pass dkdomain=messagingengine.com dmarc=pass fromdomain=hubert-humphrey.com);
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.159 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750089077; x=1750693877;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:feedback-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DeAwH8bZqksDR88oNVNMHNOJeHg8Kp8wGHFXJUok1ss=;
        b=eJJW+tM517i51NOKxQQXZVVIcW2ciRGEnNO8u4y880HTSO8+E4th9vF6f+3gxUiazy
         eTB46YSa6g8VlTHpDCI5b+FnmWyeg0Jj4BRv4+AkjnmQ3VF7hNaKZfHjtjQgpusF+yfS
         7eUjGeNA4H0Ie81hm3wAc7JSvdQZyQ8kInfKIhY0kptvDw6DrgrXhsKYB1+3zV/MckXA
         545FGGUHrBXguJBXr75dwxTkoYGf2o1PMQgnotbvJuibh0ePIGMAshGvwm44F3vpCwjS
         T93bBfcJHJMOWSGDwBNzQlZ/7nonSM/u0lRiucH6ohH01OzJkcQC/ZVPiNbjuNzYj0ST
         +yRA==
X-Forwarded-Encrypted: i=3; AJvYcCWT5IwWUuxjvZbag43LefZQtAWnR8h88ewTpa4HaxsOmAc2VrzWpk0FFK+cK1FODhHl8CkyEw==@lfdr.de
X-Gm-Message-State: AOJu0YyE9iVLTsKCe7Ymr8zSQlE/YlWgvA/zFtmuGinbP/FAlwzDh3hh
	hgFwla9oyBb6GL8sle4MTXqnoC6T3+intj6ChvYbwRazOz1s8pXcSyjS5DzsXOCzDPY=
X-Google-Smtp-Source: AGHT+IEt6jvUFsuj2AjP1tTPnmcAeuFfatLfL8TTcKaewl4ftjnwM113hrzpSAoO8+VPGW4M5DeSdA==
X-Received: by 2002:a05:622a:1491:b0:4a7:23a3:c562 with SMTP id d75a77b69052e-4a739144fecmr174513371cf.22.1750089076377;
        Mon, 16 Jun 2025 08:51:16 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZfKeBO7eU+C/nIU8YA0BGkwTLnnOI9KOuNUI2cnGvkpnw==
Received: by 2002:a05:622a:347:b0:494:783a:3a5d with SMTP id
 d75a77b69052e-4a722cb9269ls79209661cf.2.-pod-prod-00-us; Mon, 16 Jun 2025
 08:51:15 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCWDf6rfGvfhTuXLHsqFS860+4Cxx7/Ot7mebtFtnzDQNB5OxBnY96or/g6G6dwemhfE2SwZYbsQmT54vA==@gapps.redhat.com
X-Received: by 2002:a05:622a:1354:b0:4a6:f801:4db with SMTP id d75a77b69052e-4a73b7c4391mr174037951cf.25.1750089075270;
        Mon, 16 Jun 2025 08:51:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1750089075; cv=pass;
        d=google.com; s=arc-20240605;
        b=fMzV8Eaxng/6+9oC+yVJ+YImuGYux6y+/5yt4ptg5ow3Trl8P24LhTwWYbGIhKbxs8
         8rHQNHoK7m8gw2Ja8+tTEO/HhD6EH53ukl+cABQAAHXTk1/81LeU3WiZPHXgI09jiS7g
         oKx0dz6d6z0GgsfQ/gCp0JlMo2SQcjfAYv0KH+CswqWly+uqipUNMnpbC5PLMJzOGJVv
         ib34duEM65iwK/Oa49xIauKb74/1NaZTorUzVHIdDOAfXa+Z+ICOOEIYjJETp70jM836
         c6Y4XZz2gIxXuCsAX/Eovq9Yk/d6cOu1QBHRot6JXAuE4CLQR9kicu2q4XwRvjdUEBhP
         Ot7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:message-id:subject:to:from:date:feedback-id
         :dkim-signature:dkim-signature:delivered-to;
        bh=3NP+peFvITY91mbf3MZoC1t2Rol4DtCBBUfDM8FWi3E=;
        fh=PmA6iCFgUoqrqU6x2M9dR3vZbb+FlLGidi4NLHtSolM=;
        b=ELiDa+HQ3TYE5QMhint0CQKwKw9TTMgBs7ByGoiMHZobWRcpcq4as7pLogqRdiRrDX
         AxsUajnQwkQIszVXwQIYVxJYWmmf1hWvbDWwxWM3ob+CSxvMtsgqtFyUxBmfskUIrRnN
         /SLBNBorhNeTfkA9RvTOds7PBP7N3NZe20B3+KybPNl7xgEI0efwBrraIHDac4wmaDKa
         QWVtw6ZzAPokz72o+u0GXD//PXf12SFDmbE02OJhwbMbWvGMBryXZ0LHhWnBLzbA8PVH
         ZabeHADx936Nv1t5T0Kdsb2fFaahUcC/5+IDtGXkGgrOWSM0HlNGibeDafgNbVlz17Zq
         aw3g==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@hubert-humphrey.com header.s=fm2 header.b=KXmiKhMR;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=QBwWZxLe;
       arc=pass (i=1 spf=pass spfdomain=hubert-humphrey.com dkim=pass dkdomain=hubert-humphrey.com dkim=pass dkdomain=messagingengine.com dmarc=pass fromdomain=hubert-humphrey.com);
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.159 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4a72a4f1988si96503291cf.463.2025.06.16.08.51.14
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jun 2025 08:51:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.159 as permitted sender) client-ip=103.168.172.159;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-515-jJMwnsXMOPyjecUbnUeRXw-1; Mon,
 16 Jun 2025 11:51:13 -0400
X-MC-Unique: jJMwnsXMOPyjecUbnUeRXw-1
X-Mimecast-MFC-AGG-ID: jJMwnsXMOPyjecUbnUeRXw_1750089072
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 88EC81800288
	for <blinux-list@gapps.redhat.com>; Mon, 16 Jun 2025 15:51:12 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 83D2719560AB; Mon, 16 Jun 2025 15:51:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 80CAD19560A3
	for <blinux-list@redhat.com>; Mon, 16 Jun 2025 15:51:12 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 256FC19560BC
	for <blinux-list@redhat.com>; Mon, 16 Jun 2025 15:51:12 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1750089071;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=3NP+peFvITY91mbf3MZoC1t2Rol4DtCBBUfDM8FWi3E=;
	b=KcN8gf4X84yaclL8ikSHnlz6QxFKHNv3+MMMZlg8sBC0CheiLF4lDOn3cj+mj8+h2ssud1
	Y8aPWrPKfbLznCxWghuvx+pJaj+UShLttNEVPhEKeHB1nf+0OQJE7aAKpUzV0lbVqhuXXR
	1nBPbXEAaFH8G9lf5W3ii1MCMC5FwZKV9I2a91C2lh7/66PJxfrBakQOESEiPI4xdlNc5z
	oNU1WcKl4Pw9leC+1s+Ed6VR2St4F6H0usJFQp4LvJVhGO1vaxrmozvB/LFr6Oc3HSdb3Y
	8MTpnRTv5h4xpryoO/ZcPUUHtmeY1jqPG4wN1yhhMTOaF3wP8/TJlOxo7MQi/A==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1750089071; a=rsa-sha256;
	cv=none;
	b=j5hEUi2rXTLoqVEwr8ZVaWqLRQ+ELrpf1ckd4/cGYkdYZ9PghDR04Zajj5ZAE+2EWaQPeA
	zt+/mE++49l2YZDojjN2oyANvkTtN2bGog1YAilCqsrmKD2rb0eo3fMWdZ3PuVMxoaeENA
	LkIUrDWXzQ67HiFFuRMEgqxgh0IHEMk36QnFNgLCNrO574hIfD6YubWgxrd0/fCRRkQOi+
	eqw3DjwCcatI3fYFuERk3txTzwGsxfmQraEGyDc9VHsAjxvlvUN1sqPJh6G9yTZSrZMrbK
	eymZzGMw2i38gkbiqS8NtriYAqv0WcxApbEgkCG22sPDJJ4iR2pOcZv8sGJAnA==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=hubert-humphrey.com header.s=fm2 header.b=KXmiKhMR;
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b="Q BwWZxL";
	dmarc=pass (policy=none) header.from=hubert-humphrey.com;
	spf=pass (relay.mimecast.com: domain of chime@hubert-humphrey.com designates 103.168.172.159 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from fhigh-a8-smtp.messagingengine.com
 (fhigh-a8-smtp.messagingengine.com [103.168.172.159]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-97-KNIK6-qsOV-CDR5j9EyDYA-1; Mon, 16 Jun 2025 11:51:09 -0400
X-MC-Unique: KNIK6-qsOV-CDR5j9EyDYA-1
X-Mimecast-MFC-AGG-ID: KNIK6-qsOV-CDR5j9EyDYA_1750089068
Received: from phl-compute-09.internal (phl-compute-09.phl.internal [10.202.2.49])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 49D08114018A
	for <blinux-list@redhat.com>; Mon, 16 Jun 2025 11:44:28 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-09.internal (MEProxy); Mon, 16 Jun 2025 11:44:28 -0400
X-ME-Sender: <xms:3DtQaADDG7sUm4i87ws1b4Ie91_ZAzjvLJ0AapP3Nckt9lN7aooJKw>
    <xme:3DtQaCgj-qey49lGhBKujVwye9istYyAAL_oZlRzZX2SujYJcl_tIM-6r5rLKlf3P
    EO7GUjWAYDMQ1wUToQ>
X-ME-Received: <xmr:3DtQaDlAV1FowSj6Y6XU0C9t6arhVzZEHVzfcc48bGBeLvm3PR5hooio3a6jJ4KdoMj-sZBuNig2KqUy89VAOAFLbcY0TS57-K0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugddvieeljecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
    hnthhsucdlqddutddtmdenucfjughrpeffhffvuffkgggtsehttdertddttddvnecuhfhr
    ohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvg
    ihrdgtohhmqeenucggtffrrghtthgvrhhnpeejffffudejleeuffeivedtieettedtkefg
    gfekvdeujeetkedtheefhffhvdetkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrh
    grmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgt
    ohhmpdhnsggprhgtphhtthhopedupdhmohguvgepshhmthhpohhuthdprhgtphhtthhope
    gslhhinhhugidqlhhishhtsehrvgguhhgrthdrtghomh
X-ME-Proxy: <xmx:3DtQaGz6SO2-vluYTEVBJTSwHGNvZ_2xVDuDNQMoqdREsMVDlG7Vew>
    <xmx:3DtQaFRs41hlhrSZPnOwfFDJkHYd7L9qIzcYChN8LmBnCFq68f-VzQ>
    <xmx:3DtQaBY0f2IA4Axxeepo-5yuu0q3WJWPNx_Oi6tIAERYHuGdcC4WWA>
    <xmx:3DtQaOSC2sOr7ketw1o280QaXK_hq3-y7RNZAEDoadQuxg60hhU7AQ>
    <xmx:3DtQaLCXR5uQR0gm3jQfzpQWQnWpPXQps-EDisDLQ7BPS2ed_t8dTemL>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <blinux-list@redhat.com>; Mon, 16 Jun 2025 11:44:27 -0400 (EDT)
Date: Mon, 16 Jun 2025 08:44:26 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: No Sound After Python3.13 Update?
Message-ID: <d66104bd-98d1-b8df-2b2e-c3508369a260@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: T72-e5Y3aXJuOMiCsw-1eXUaQZOQeyXmIQDuh9ZqbwY_1750089068
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@hubert-humphrey.com header.s=fm2 header.b=KXmiKhMR;       dkim=pass
 header.i=@messagingengine.com header.s=fm1 header.b=QBwWZxLe;       arc=pass
 (i=1 spf=pass spfdomain=hubert-humphrey.com dkim=pass dkdomain=hubert-humphrey.com
 dkim=pass dkdomain=messagingengine.com dmarc=pass fromdomain=hubert-humphrey.com);
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates
 103.168.172.159 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
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

Hi All: On Saturday I wrote to the newer Blinux list, but I wouldn't know which 
list has more readers? Anyway here in debian SID, Friday morning I ran my daily 
updates. After those updates my sound completely stopped working. We tried 
removing, purging, and re-installing Pipewire-pulse, even rebooting. Still no 
progress among 4 sound-cards. Thanks so much in advance for any guidance.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


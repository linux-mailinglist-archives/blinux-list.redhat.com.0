Return-Path: <blinux-list+bncBC3NDNGRUAMRBTWJSHBQMGQEGWHMUPA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F58AF06A8
	for <lists+blinux-list@lfdr.de>; Wed,  2 Jul 2025 00:44:33 +0200 (CEST)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3141a9a6888sf5823925a91.3
        for <lists+blinux-list@lfdr.de>; Tue, 01 Jul 2025 15:44:33 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1751409871; cv=pass;
        d=google.com; s=arc-20240605;
        b=MUbKPMxLFUQbAyFuKdRHAvQJDNpn8/RTYl+I5RwFGBS0fBECtWswAjWbeZlWGKEgMB
         X+Nmfbw+NxtKQg+PGxbxNaoZ74VBQgdJPQXQNzWIiO3XpPY8wQjp9S3ClTrT4/BXsAp1
         hHfAGXe+TVA52ARrQn//BVflARcH7DuYu/9LgXBe3Pvjpq2oBJOV9CuIZm20EMzUviWH
         3rPGANLWJgIK4ghYrIQ7pChW5louV79rAbYyZH6hI9FbPeHKXIX3wLt5kXZ1ugwoVcJf
         OUbUSPQNwl8R6dLYZZAOPzX/gnWeBoXeLQJjDSH0zKRIB6pLods1cDdOW8Kk+SjwztIz
         HhNg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=Yvx8p+ZBNkZeS/n7hZ/zU3MVP2M/50IRbmHK0kVwLEg=;
        fh=f+36R+gv+JEG5WmwrICTzDUI/sBI9ZahpPOt4aiM6Ws=;
        b=bILdN5fi25FqfUQrmyyu12v+Y/+O7PRhiFIjpOxdLmlynfLcrJ87+fweiLayjMjvBj
         pq0e6f02HJr3zTyVg4sxAferLl+Nu3KiznuDwD1HIU1nhCclLDfrBWCuNoqtIUZ93mdm
         vTXeS6MIQ15brSbqEHHOyiDs9TPbKlfKg+9hAexgOSisLx7ZZc9bNNPS00N6DcNM0Snn
         L/KOQO0eic3KHJEFDt7zPTmlayGp/KvyHmj7wOCTRm53ucUG/mHwdaKbYr4SSpC2Xh5i
         LgNk7g4YJ+4XP1y/hgj8eCxVupKsLsTjptpnhHZLoBA/spdIbONZCLNGEHgo4II9T0xJ
         COqw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@hubert-humphrey.com header.s=fm3 header.b=EsaHbsCD;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=Ypou+k7Z;
       arc=pass (i=1 spf=pass spfdomain=hubert-humphrey.com dkim=pass dkdomain=hubert-humphrey.com dkim=pass dkdomain=messagingengine.com dmarc=pass fromdomain=hubert-humphrey.com);
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.148 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751409871; x=1752014671;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Yvx8p+ZBNkZeS/n7hZ/zU3MVP2M/50IRbmHK0kVwLEg=;
        b=E+hBRXs2DY+uVo8AjjRRXe465o1Ru1E/Zw0AcOENgi12xxfFTe9hv13RrnG1Dge6rq
         UGBQ8Ph3GUvhK/DTz0Xk6OCtY9TPcd3D0xCPXCQbscUDg6s19l/+EJRt8I8slQHQdvqB
         7cpiB77Po3QWQSTSB2qZ5wp9T721w3bHWyXk3BQx3vSQPl3efet8K/L5gIb0/PyAoHAz
         aNLzJZ/AEW2cQQ2z/iKPyHAqH2659s9YCaeYoRyTHRpZSsVAPz+9HMRE82KVCntxOjhe
         Fs7/Vueo5kbqYAy0jSHZnxultlAQ8M9f2jb9jMwqkAWuWeW8htiXbNMQcCO++iZ3fsUf
         TPlg==
X-Forwarded-Encrypted: i=3; AJvYcCV+z2kYpVRDw0K3ccMJGBG6WjD8mLrNkOHzDhybLh3bqcql0THYfy1XaIOujxl5J6qsaeUDOA==@lfdr.de
X-Gm-Message-State: AOJu0YwgNEjQk9eXCakfwBr7Dr/8aX4ItIqDKhUrPXyEdP1rORGRnIr2
	YwKVZiYLpr4W+XkmojdS/pq3CgEk6CE7XpAnSsZGlXRzVN1saIU8T9N53ew/bY/6TLo=
X-Google-Smtp-Source: AGHT+IGsJrXYTZZ1T38+qGlmpL9bMO5Fiz+nCecjayp0oNVQvGLfVzvrY+cR7VtVP7j9YZsbrk987g==
X-Received: by 2002:a17:90a:c28e:b0:311:b3e7:fb3c with SMTP id 98e67ed59e1d1-31a90c1ec7cmr734257a91.31.1751409871316;
        Tue, 01 Jul 2025 15:44:31 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZf/ulHHiskFqw3/DpV1Bj0oVJk/ixnaEbpzRPtHWGpG4A==
Received: by 2002:a17:90b:4c92:b0:318:ec3b:32da with SMTP id
 98e67ed59e1d1-3193a35e3fbls1441732a91.0.-pod-prod-01-us; Tue, 01 Jul 2025
 15:44:30 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCXnYFZXA/mplf7HRdN4Kq8AfZJEgn5+gcI39RzakQ7ErcMmGclnY2r+9cUiA/6IDsvK1dp15DD7pnE4CA==@gapps.redhat.com
X-Received: by 2002:a17:903:2ce:b0:223:65dc:4580 with SMTP id d9443c01a7336-23c6e561573mr6444985ad.52.1751409869797;
        Tue, 01 Jul 2025 15:44:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751409869; cv=pass;
        d=google.com; s=arc-20240605;
        b=XSyJ2Iu0l/q85Glb5nEhYBUhc4yZRrriXCoSnz4f/7apZfh3xuAGtfn5RU1tnK2Bc/
         bZONZ6XLLJM8PXqruv7o2v7lO2CZ94EsvUd+3wL7BftIqJwRnS4Uh0zu3MvsZp76Son5
         XappCBpcWlZrbGVkLG9qYuCGwpoFyjQYX85bAk2u1J3WN5lrljo9Xs8umGLe8ye5pAd3
         /Sf8eDn7RsgRxz/FLybwP2O6w83t3CXa2r43lMoqqkArK7P+babQFP5tT8lmTtAeNQWG
         p+yLi0Q4rFUWTHX7y3/jSHmw5Vhc6x8lr9sGNCmZJdXmi1CziFFp2cD3UAJX71+uVi/5
         aNMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:dkim-signature:dkim-signature:delivered-to;
        bh=9tHl5mjMMf0iobZUhrgtiOleUbvPqzpu1KKyuj/Y36Y=;
        fh=EYB7zCxiAwNmNDKZ6KyDzm8p03Rh2Jqhqo+q6o0od9s=;
        b=kAQtI35OgnK5BLUSZaB4fWlKwyY6NkHvBSz1I55cyGTwNE5hCJsyGW25C3TXiYsxvO
         TqsuKgt90f3Tf9UGJCDipCLJCjyw21z7ZRB4HxpKttVwsKSn7HBHw1vTNDhr5wB41HEk
         w9J5MM3R1bCLKLhX8VxH4yQb0n8fnJ0uoG/PJvogg6n18Kr01egWGcNasbAM/rMW5ifT
         HDWb9uuQrD0QuBC5LQ2/jL4mltV+OBmWOEkxnvSIMPUZ8pmBiwxq2crtGLCJYzSNgNxM
         AloiVx/ngQTsGHVQtx2qjWMh3SsHNxS5n6vwwo96y7Z7vOVJylNZl56KGoYYdNzVDfIT
         DpUw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@hubert-humphrey.com header.s=fm3 header.b=EsaHbsCD;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=Ypou+k7Z;
       arc=pass (i=1 spf=pass spfdomain=hubert-humphrey.com dkim=pass dkdomain=hubert-humphrey.com dkim=pass dkdomain=messagingengine.com dmarc=pass fromdomain=hubert-humphrey.com);
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.148 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d9443c01a7336-23acb3a17a6si161922025ad.256.2025.07.01.15.44.29
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jul 2025 15:44:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.148 as permitted sender) client-ip=103.168.172.148;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-396-gL16i1-xMSqGdPTFafhTag-1; Tue,
 01 Jul 2025 18:44:27 -0400
X-MC-Unique: gL16i1-xMSqGdPTFafhTag-1
X-Mimecast-MFC-AGG-ID: gL16i1-xMSqGdPTFafhTag_1751409866
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7E89919560AD
	for <blinux-list@gapps.redhat.com>; Tue,  1 Jul 2025 22:44:26 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 5CBC71956053; Tue,  1 Jul 2025 22:44:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5A21D195608F
	for <blinux-list@redhat.com>; Tue,  1 Jul 2025 22:44:26 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B1F4F1956086
	for <blinux-list@redhat.com>; Tue,  1 Jul 2025 22:44:25 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1751409864;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=9tHl5mjMMf0iobZUhrgtiOleUbvPqzpu1KKyuj/Y36Y=;
	b=fPo4naBHe2UUGS1XW40ZmHHUxjGAtouV/1+eNr0EVFplm1ZbguPYckJqYddevVwHDr6FVT
	8LRahOK9TBdyyW1mQ1/HjOYwZ7DrzpJbD5g/RPk5gKYfgTkYak6txNGFilrL+MIarWuNWM
	FFT3o9GFQ8Ssq15hybS8eL03c1NGMYIoOvjaJciTjLBRKlAgH+jyM8amwkxEDtShOHCLLF
	GKtjyZkNlh4NtH3QnsdNjHCsdj8bsmhiY4rO26eSBSu2rPYfEjyRPeID/ezL+5yRvq54xs
	V3JZcUJlFZn9hZCgdoYhYgw3XILSAMrYQ9u+7cUUZKoVzx6GkYdi6zs53O3aQQ==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1751409864; a=rsa-sha256;
	cv=none;
	b=T+kuihnwsUmAGFrf5AwGjjG6mrE+TnEK9yZ87Tr6Mi8F99+yPC2U+Xdsk91Ksz1NPCzUdx
	j48jPo6l4G2BiyvRNa5y5s/Y1p0XwLPCjX7L6uJChZOQbrqMvlgUBVbi493OO6qVpDqZLY
	/uYgXQ9mtwgvZzfnDPvukzxwKsgyK/AJ6TVjqS1fl5hPTxZ7MqnmiRrDowo3Al6JIFUSEh
	cKikshKWcJvPyisw0CbOxjNkfvOZn1EcVR+QAD9IrZHwLoIwLUap9KqxkD71M4wyNjqgbe
	gGVttEXlOaavpUcaLVcdtrJl45N/NXs5Uodz29/Hdp7Bn65i3omURSYdg8SVFg==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=hubert-humphrey.com header.s=fm3 header.b=EsaHbsCD;
	dkim=pass header.d=messagingengine.com header.s=fm2 header.b=Ypou+k7Z;
	dmarc=pass (policy=none) header.from=hubert-humphrey.com;
	spf=pass (relay.mimecast.com: domain of chime@hubert-humphrey.com designates 103.168.172.148 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from fout-a5-smtp.messagingengine.com
 (fout-a5-smtp.messagingengine.com [103.168.172.148]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-292-9PRLKKRdPS6xPLPvDv2f3g-1; Tue, 01 Jul 2025 18:44:21 -0400
X-MC-Unique: 9PRLKKRdPS6xPLPvDv2f3g-1
X-Mimecast-MFC-AGG-ID: 9PRLKKRdPS6xPLPvDv2f3g_1751409861
Received: from phl-compute-03.internal (phl-compute-03.phl.internal [10.202.2.43])
	by mailfout.phl.internal (Postfix) with ESMTP id 252BAEC029E;
	Tue,  1 Jul 2025 18:44:21 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-03.internal (MEProxy); Tue, 01 Jul 2025 18:44:21 -0400
X-ME-Sender: <xms:xGRkaOwgjHTBPIQS0sPoq9p531wiTa6q4uVX9-ySdOBzGO7HMSyJ0g>
    <xme:xGRkaKQoxM7OUYv6QoZFe-V5umkHtP9Eg9LOBAybC39Yop0n28YpA0xtWu-V9XzRf
    eGpNFxVV4MF5DTFweE>
X-ME-Received: <xmr:xGRkaAX-mOwu7UZW6_1lYBBSfndyqa-ra6fPAnKqv9kOgVDsEv-Nt0khd-eJPUyWZTQ6XvMKY4pe3hyNNLA7J-wYxzF9CU2lYUY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdduheejhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcujfgr
    rhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrf
    grthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeeffffffeff
    ledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomhdpnhgspghrtghpthht
    ohepvddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheprggsughulhhlrghhiihusg
    grihhrsegslhhinhguhhgvlhhprdhnvghtpdhrtghpthhtohepsghlihhnuhigqdhlihhs
    thesrhgvughhrghtrdgtohhm
X-ME-Proxy: <xmx:xGRkaEgS3PjsqmTuLyERjl1X2lXRcEhLxuty7AX-htBDN82leN9pyg>
    <xmx:xGRkaAA9xDStzopcGb6Ykb6o7aJvGX7U4SLUoorqQ18kzll8QXcL5Q>
    <xmx:xGRkaFKVQoMF6g6WXDjxyMetkWzG7hTAeT6_u3-iCdzEapythkxfgQ>
    <xmx:xGRkaHDRtusnz5Y1AD0-UA-zi-1yKjPkzDNsS2fsQ3ghJ79T7aJ4gw>
    <xmx:xWRkaHBMTfvmocQL-sDes4ztWfgYOmzp1tdKKlR8Nf0RVni5gcyH1XSK>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 1 Jul 2025 18:44:20 -0400 (EDT)
Date: Tue, 1 Jul 2025 15:44:18 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Abdullah Zubair <AbdullahZubair@BlindHelp.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Seeking Guidance on Switching to Linux for Personal Use
In-Reply-To: <04ad9922-c266-43ab-9474-9c896ca850cf@BlindHelp.net>
Message-ID: <328cf0c2-d141-cb27-a95c-dc2df232700d@hubert-humphrey.com>
References: <04ad9922-c266-43ab-9474-9c896ca850cf@BlindHelp.net>
MIME-Version: 1.0
X-Mimecast-Spam-Score: -4
X-Mimecast-MFC-PROC-ID: _OsbKd4QrKDOkdTHp36mRGxoVFlDN_i-OV2JpXVyH64_1751409861
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@hubert-humphrey.com header.s=fm3 header.b=EsaHbsCD;       dkim=pass
 header.i=@messagingengine.com header.s=fm2 header.b=Ypou+k7Z;       arc=pass
 (i=1 spf=pass spfdomain=hubert-humphrey.com dkim=pass dkdomain=hubert-humphrey.com
 dkim=pass dkdomain=messagingengine.com dmarc=pass fromdomain=hubert-humphrey.com);
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates
 103.168.172.148 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
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

Well, Abdullah, I wish I could find a desktop which would feel  like win98. 
Anyway, Debian has a rather accessable installer with a numbered menu. While I 
myself am running Debian SID, it did seem that Arch had a larger variety of 
packages. I am sure many others will address your other inquirees with their 
own analysis. Best of success in your transition
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


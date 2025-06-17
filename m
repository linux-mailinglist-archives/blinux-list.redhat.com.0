Return-Path: <blinux-list+bncBC3NDNGRUAMRBX5JY3BAMGQE6VXVHII@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF26ADD50C
	for <lists+blinux-list@lfdr.de>; Tue, 17 Jun 2025 18:16:34 +0200 (CEST)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-312df02acf5sf5243103a91.1
        for <lists+blinux-list@lfdr.de>; Tue, 17 Jun 2025 09:16:34 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1750176993; cv=pass;
        d=google.com; s=arc-20240605;
        b=NJgSvfvFraco+v/5iLCXVMfwoFPthqb0HatGvHpGZig8JW3PdGZ/VDPLk58TbhwHMF
         5nqjZkA4IeXdSnlk2+0qnTFCtqf0Wezb61GuDlWX8m1vEAyO+l55TgpMEobFx4Ak9nok
         TuaIZ/Hx2GXf3DjosNhvuthNxUUlPOWPgLFqWPq7SO+xH7XXo6JfS2S0+1gDCL7Sr8o+
         N9pbbkgA29sUQmm8olahzU4Kpet7tbd2vXTgUKeTsee4iQxTbdIiVyJK9O/+dvTPXtgw
         4iVUZ5+K2HynP7apo35Sb7g8NwjCHEZrF/MdXxLHfSQvS6cW3xTfXDD1Sg0SI7MA7vhM
         z4xQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=RLXBMNRtnvECxkkjnBZ6YTFdotzh7k539ju6Bxvc00o=;
        fh=fTrK76h1A0M21xRAB8nLkrh9Y/Qxakook+GczWdhJTo=;
        b=D4lsbB+qQbPjH/mFvZfWVBkdRGI9L4PbPqRuvjYEMBEyGcvyI570gu3nGSJLB8+LNy
         jCJIcSXwdSGU3NIlkSZLvK7HHiSYZXUv8J+p8kMfLewjlUQ6q+6iRDYCVEJGhx3xCAtc
         ANJkP8LaGEKLb2hnIWfwBiB3hwU0Au6eDfKKgTUAiakFthkhvkIlpL/Y1O6clGTMvSzw
         i5CDsoKU4otzbIt0UUKFSZl4JA8JvIDmsIFlmo0ppdIs7j7bsI1kuEuqCCLYIL6jtuYs
         9Gwrz5ZEg97wIVKKxyKV+DQl/dzUMVoPuG4RKQzZAMPeEyQXm2IwHnYQe8kTZu0Foh9Y
         JOIw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@hubert-humphrey.com header.s=fm2 header.b=DZw84xyy;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=QMGAZhIS;
       arc=pass (i=1 spf=pass spfdomain=hubert-humphrey.com dkim=pass dkdomain=hubert-humphrey.com dkim=pass dkdomain=messagingengine.com dmarc=pass fromdomain=hubert-humphrey.com);
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.157 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750176993; x=1750781793;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RLXBMNRtnvECxkkjnBZ6YTFdotzh7k539ju6Bxvc00o=;
        b=SOmspYdpLMa9hcROiT0d7gKWe0EZjyk12QqoAA/7fO6aiBhCQQRPuIPCYp5Nlm5miL
         TMY24W0Y3AwbxBU3/H2+sbCCDpz1i5I/ITHz7dhs8hTmW2g9cxP30+l6sYzIVk092F7O
         yYyRsC3t/VF5dJhQkWiZpe/a8IB7DY3PsFmBfSyYw2FhsZbnmODnQrZsKGN5sDBVXHo8
         XDzvtdKijtAg96FE1WsKt7DA22we6yLM4iAfA8XIHYVPxBJOp1N9wtIOPMPFX/ObohzB
         6DUe/q2+TvtNfWMO/HNRTKTXW81MkDQWamkPuJ6cWcnZcdKZMF221YgvvXsF33aD+FAB
         THIw==
X-Forwarded-Encrypted: i=3; AJvYcCVHdehtuohParTRAMsF+VQyefPdfonIcbQ4hOUL61TRRqJri0VKQfOVGFbATeC4vsGyVd47gw==@lfdr.de
X-Gm-Message-State: AOJu0YwgLyscp0NBnIhNnQ+6BUhk4WtEJUdQ33j5ixkJml7J40BNJ6w1
	/kt4IAo4j4oiscxXEQsDJsAxv7FdbIWNPbRyRqvGnaTvdF6z0TnUWGcZiUnEYBqd5PE=
X-Google-Smtp-Source: AGHT+IHZd9KBVnkIxVifWd97BbXTxPoj17Dq/VsLdmPr74pMaFcvnABbWZS5sCtyDl7fgoMA2VC3Qg==
X-Received: by 2002:a17:90b:278d:b0:2ff:4a8d:74f9 with SMTP id 98e67ed59e1d1-313f1ca8f3bmr21226441a91.10.1750176992428;
        Tue, 17 Jun 2025 09:16:32 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZei2f6PMydImh2OdNgUHeQb6Qb7mVBEjWAtVC/HE65HhA==
Received: by 2002:a17:90b:952:b0:310:af10:d180 with SMTP id
 98e67ed59e1d1-313bf9d6c79ls3543897a91.1.-pod-prod-00-us; Tue, 17 Jun 2025
 09:16:31 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCW5IkuguCDIL84K+rX2NU8qeRu19FnG3TopSHR7f2hgpFZKC1VUVUguMMZwWmjMarMXaLjLxP3XkmgK5w==@gapps.redhat.com
X-Received: by 2002:a17:90b:350b:b0:30e:9b31:9495 with SMTP id 98e67ed59e1d1-31427e9e965mr3972388a91.9.1750176990700;
        Tue, 17 Jun 2025 09:16:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1750176990; cv=pass;
        d=google.com; s=arc-20240605;
        b=O+rgXo7/QKu9Q/nSwkJ5envsq8oMjIxNdovoB3KEMfyu2DIVG7XhL7V42HD07D/0ao
         Cu2jurb7v2PSksp7Uo5b6xTmjY580KVJiWf21zg8NwkYlGxKxT0i0CETShQHdPLaorOD
         orJCJP1j0FdBwzmPbg0LjlhKXsilSafQnywx1dtJG0yo7RfZ7ClW0rdOBON/dsYWzeyC
         Way+rqCdfqHo5LbgwWLSvkLHvsnJEiuzuk0+DB6PlLRShdx8D7KKEoEQSPHN8X01QOIu
         3kdTl9yNMpXAogn5eVeDQY5i496Jm6hZ+0AmEEdhS4cf8mRnr3jwaCigCo88siOngsAN
         Wmpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:dkim-signature:dkim-signature:delivered-to;
        bh=sUag/oQITCs/cn61GcJ/Cw817Ln5sPuXA2ZWJ1VrHs8=;
        fh=tBUg+Sp4ZT+GFfptu3d7lvKfN58tvI/e+OZyTq6I4sI=;
        b=RUg6T1kT7NKlv77YD27H/zP8gGelh4wmIsyV0SLCAkqlBvcM/K4m6A83IwSm5bOm7f
         AzvV4cG1aWsMmDHfOLfBugWkSOJqg0i0cXV2OHv1XiPW48KmDE6HvnNaCCfHNatUcqIz
         ZOPpbcYaNzg7Sd8pMuekllhFIahXAKRv44eqh+kf/Gmz+Q/Qu5Z2MWwnA/NB4lQLMXGO
         YcVYf0zPHDk/GatTjTc3p4rmnN/qNMMn4sS7HHTPFGEFWlCSEeQZHrX89ZqkPBICXNRb
         WJ+Az59dVh4W/juXdiECtFLKypBuKcMqR9+gNT1/TJZeoTXrInsNXLZJDGAzVPpJRRAV
         CJHg==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@hubert-humphrey.com header.s=fm2 header.b=DZw84xyy;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=QMGAZhIS;
       arc=pass (i=1 spf=pass spfdomain=hubert-humphrey.com dkim=pass dkdomain=hubert-humphrey.com dkim=pass dkdomain=messagingengine.com dmarc=pass fromdomain=hubert-humphrey.com);
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.157 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 98e67ed59e1d1-313faad4055si9670915a91.138.2025.06.17.09.16.29
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 09:16:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.157 as permitted sender) client-ip=103.168.172.157;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-640-HnANo34cMzqfDTYPeccHoQ-1; Tue,
 17 Jun 2025 12:16:28 -0400
X-MC-Unique: HnANo34cMzqfDTYPeccHoQ-1
X-Mimecast-MFC-AGG-ID: HnANo34cMzqfDTYPeccHoQ_1750176987
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3B2A31809C81
	for <blinux-list@gapps.redhat.com>; Tue, 17 Jun 2025 16:16:27 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 359BE1956094; Tue, 17 Jun 2025 16:16:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 32D3A195608F
	for <blinux-list@redhat.com>; Tue, 17 Jun 2025 16:16:26 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id ABFDA195608F
	for <blinux-list@redhat.com>; Tue, 17 Jun 2025 16:16:26 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1750176986;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=sUag/oQITCs/cn61GcJ/Cw817Ln5sPuXA2ZWJ1VrHs8=;
	b=Osymcw0nL1OXcjF2N0KdKRI9J1PkyylGpGfgjwCdoKgxitWus16Xa29Y5oeHBvaEzDSRuD
	tUSWAXxshPEmirVXtt+C3I6xgjjhFHN9f1e8GqnhOIMDWg3JYVc9i+wz9oQ58k2VfW+Wsy
	K+xmPQq0YyBdihcg10KPSbyBsmw7N4T5IMnHcT+XZQZeJ3tLxobDpNny076PPAJJAr32rU
	LT2kv0pcFGiRXUCNgpac35XfVdkVDArU8N5atR5BPNFAffHrol4c8dPZinb3j8OtqiRy5I
	EoszTLHTOjPz8+8SwhF5XFhfF45fVWch+5OUGzPptN1VCmYjr6pX+j8JhGe76Q==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1750176986; a=rsa-sha256;
	cv=none;
	b=DtHTpZDTxlufDzbCLg+ImkmQfanjXTnJKlchqcWCQ2wZsjVA01p99nBvc1UqVRhVtcOIXv
	2TIMbi/qSOkhPQgqraqOr//v9UpBerH01GSrB5ApWsPdXuuOnrrNbt2KezxC0iDFgO6K9V
	hUAwsZOhuRf/bOhwKk5QCtie8imHZXNsBHXIoLQchyMwJ1je/SHYcEsqM5GvKILe/VyJcv
	mW0BvobYsl/unHjI25qczckhG6U4fgVImJDrtsKTl6B3D75FlpIGAA+n7adHgoXqSbWysM
	bTZBmwYPRgOsqLjv2gEfaK7SJbPG2UfKW1NxkQtkV8ueJWgCYpCHA4DySbL2Gg==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=hubert-humphrey.com header.s=fm2 header.b=DZw84xyy;
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b=QMGAZhIS;
	dmarc=pass (policy=none) header.from=hubert-humphrey.com;
	spf=pass (relay.mimecast.com: domain of chime@hubert-humphrey.com designates 103.168.172.157 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from fhigh-a6-smtp.messagingengine.com
 (fhigh-a6-smtp.messagingengine.com [103.168.172.157]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-531-GhYt_PbSPZKVOafLCOhxng-1; Tue, 17 Jun 2025 12:16:24 -0400
X-MC-Unique: GhYt_PbSPZKVOafLCOhxng-1
X-Mimecast-MFC-AGG-ID: GhYt_PbSPZKVOafLCOhxng_1750176984
Received: from phl-compute-04.internal (phl-compute-04.phl.internal [10.202.2.44])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 0FBA51140120;
	Tue, 17 Jun 2025 12:16:24 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-04.internal (MEProxy); Tue, 17 Jun 2025 12:16:24 -0400
X-ME-Sender: <xms:15RRaBPXOjaZUWOh_veMS1oT_j8eWI5MSPfg1EMAeJuXcW2Uh1mIfg>
    <xme:15RRaD_BwvtnjiqIXyOVR054SwpVxgWTrKEq1lCc8RcCDbl3oGVHLzzwa1t_va-yx
    UaARpcgG2L3FCSrYJo>
X-ME-Received: <xmr:15RRaAQ6_-o5vKo7_t47wAaytrw93Rv2oBwTKaUp-bZUoRf3Q1BPMOh84Vd3baV5bF6t6dW6TQAGra0ODlnVLP7Q9_8-5HLu6fI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddvgdeigecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdpuffr
    tefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnth
    hsucdlqddutddtmdenucfjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfh
    rhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrh
    gvhidrtghomheqnecuggftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdek
    kedvteeuveeufeeffffffeffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrg
    hrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidr
    tghomhdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoh
    epjhhovghliiesphhosghogidrtghomhdprhgtphhtthhopegslhhinhhugidqlhhishht
    sehrvgguhhgrthdrtghomh
X-ME-Proxy: <xmx:15RRaNu3XpWtjFsbz7Za3x50-X1pwxRb3JZappjGVqKepwI-rR_s7A>
    <xmx:15RRaJfOqlYyuc2z2IPKPc1sIIv3WTCn1PvlGI1uLrDLs6yxdgNB4g>
    <xmx:15RRaJ08cEKxB07VPtDSw2OAZ2wM09bBhmQ9T5tNZq1M2iPvgKAVvA>
    <xmx:15RRaF9umJnQKzm1RkF4nsfRP0PVHd9ol6lQGSeShVnK9orz2q7bRQ>
    <xmx:2JRRaMxJcP3lhrO896ipvrXNzM6sqIukgoSzZGvA_aoQom0NQhwruLqG>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 17 Jun 2025 12:16:23 -0400 (EDT)
Date: Tue, 17 Jun 2025 09:16:21 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Joel Roth <joelz@pobox.com>
cc: blinux-list@redhat.com
Subject: Re: No Sound After Python3.13 Update?
In-Reply-To: <20250617155459.g2y65sxmpohqhb6g@sprite>
Message-ID: <c21bd4bb-89ae-4a55-648e-6cecdcbb19ce@hubert-humphrey.com>
References: <d66104bd-98d1-b8df-2b2e-c3508369a260@hubert-humphrey.com> <20250617155459.g2y65sxmpohqhb6g@sprite>
MIME-Version: 1.0
X-Mimecast-Spam-Score: -3
X-Mimecast-MFC-PROC-ID: mj1VulQWTJhOxGheHRutnZfoPof-cO7IYZLr2LuDoRk_1750176984
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@hubert-humphrey.com header.s=fm2 header.b=DZw84xyy;       dkim=pass
 header.i=@messagingengine.com header.s=fm1 header.b=QMGAZhIS;       arc=pass
 (i=1 spf=pass spfdomain=hubert-humphrey.com dkim=pass dkdomain=hubert-humphrey.com
 dkim=pass dkdomain=messagingengine.com dmarc=pass fromdomain=hubert-humphrey.com);
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates
 103.168.172.157 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
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

Hi Joel: I wouldn't mind a strictly alsa setup, but 1 of my Linux experts 
thinks I need pulse along the way. Thanks
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


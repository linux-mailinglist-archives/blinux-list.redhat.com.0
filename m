Return-Path: <blinux-list+bncBC3NDNGRUAMRBSODYHBAMGQEW56CUZI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 3277DADB8D1
	for <lists+blinux-list@lfdr.de>; Mon, 16 Jun 2025 20:26:19 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4a5ab833dafsf104191cf.0
        for <lists+blinux-list@lfdr.de>; Mon, 16 Jun 2025 11:26:19 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1750098378; cv=pass;
        d=google.com; s=arc-20240605;
        b=RiQ97Iez62DJAVUujfS8LzN2p8GeOLlYXk9sc2alaVhPWZjCGrT5oRg5kgGq/3XDZi
         wuJ3YXRmYsYVPErXv5wBpvpVOnCNQ0qKfT1TLxlyVywVSukdXxJ/ZlGIAeACY/Zc+Cjf
         VtHRMgGYuDBZFPtyjR2OYuRtqcqXvx/5ntIkvjRBAA6SFEQrtJnc3Zob/XyJmcxqklfJ
         goDvMKy+l7vh5DjFbjLi1ZlbHn1SDj7jepi061PcQieNoqgmNfX7sHtMcODKk2HAoJgu
         szIODOx8e0xsg+rCKlH3sjobRQ541Motc2dJ5P6we7AtM9xwVweLOV9Ymi0Bg0aXVBD2
         dh0w==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=6m0wisCvEGdaKjLnLD/WgYCuaXncLDYtFV3b/vBUrVQ=;
        fh=Xn5WyBDU/3mLVyxwZ6Pg27UMxCu+tpnQa2oDv8Nv5/o=;
        b=IgwXLezq0k4SIGsqvc6W1+pYeIcI4j66cxBOsOsZ1zJsuqzpFqi4QybvGBZzwWULuP
         PrGh2xc82nwqf/V6IYXtVQuhaUPMCIoxQFgwop5P7p2MfNHvh68HCwOMZm1ISzGcC3dj
         hwK/CmkKrXk5k8UkjITDi/8YV0ku4c4fKMSazMdDSjvaP2VhaVBHx+cT8lCwU2assETG
         R9M2lD7FLEAb8cGq7RcxcIJ5uA4vokvQJPyWpSHB2MoQsuSrDF8POZrVKUOCLOQrXVFj
         vhAYjgsscTwE2FQCJ9Ji3QF+scYxBWea5FDca0EmhXTZvlTQVJqPHMV3yfDqL+DOboC+
         QUeA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@hubert-humphrey.com header.s=fm2 header.b=HsEHulpT;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=dEMnSS1O;
       arc=pass (i=1 spf=pass spfdomain=hubert-humphrey.com dkim=pass dkdomain=hubert-humphrey.com dkim=pass dkdomain=messagingengine.com dmarc=pass fromdomain=hubert-humphrey.com);
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.150 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750098378; x=1750703178;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6m0wisCvEGdaKjLnLD/WgYCuaXncLDYtFV3b/vBUrVQ=;
        b=GpkGKwPwUhO38o5wakNLQItY+bqWXQ7uadFZSM1e9c8zZliUOsp9/eK/D6/YEGGDnp
         agD4+6qhrJhVj8MMW1VvFysItXPAaWX3Z01G9L/+5kWptipzILWW6aM3l52eJZuBTkMF
         AOPrPQ+CgjLGCy/sG4O/8HTmzpa8gqCZj9MN4iBApA9c/g8YNu/JFWoxTFqjHtTmOYjA
         0eIPuEyWZFmFuaw81pEtzHVFBgbA0ld3qL6tmFmLk7cbpZ30bnUUDOKfiwJ9mIkwBlJB
         khq87mh4nRYc4lw750l0NAAdQOLHP8leHwMe1DjScFLkgsjvETtQq/ZzGW0VRpilCMp5
         tzJg==
X-Forwarded-Encrypted: i=3; AJvYcCW2/N4iRksb4kCDhW/AkCzLo5VskT5E+Oy0iOwnEjfO+R6F94IzqkDhRo6ZSYk/wDro2ygCMw==@lfdr.de
X-Gm-Message-State: AOJu0YzF9pqKpHG3C3cdkUlUkjV0c1PRZyRVc4HbSWNl00ckLC/M8ATn
	G0dA+kfLipOITIYx+tfy8Z0W1MUMgJ3U3T0SdCQ/JRguO3ErocO60VTlq5dYOm/tRuw=
X-Google-Smtp-Source: AGHT+IFSrJzADLTC2aBLZVD1JsApYLsYR1yG7t4F/7GOfJLH64N77ofiRGCLqwgHqYlandKBSVscag==
X-Received: by 2002:ac8:4093:0:b0:494:b06f:7495 with SMTP id d75a77b69052e-4a73d730e58mr6364251cf.24.1750098377743;
        Mon, 16 Jun 2025 11:26:17 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZcbDruK9g8qIZKCKuf6cC+9EO7LYTjMKHJVfJv6wRPFAw==
Received: by 2002:a05:622a:18a7:b0:4a5:a87e:51cf with SMTP id
 d75a77b69052e-4a72fc81c90ls54810161cf.1.-pod-prod-07-us; Mon, 16 Jun 2025
 11:26:17 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCX+tnd+lwUOmhJNF4Z1gh7C8BNEIfqDR4eaBwzKNpQ8/rfV2GhNwrQI8aATL8a0/eYSoIyIy26hft7aPQ==@gapps.redhat.com
X-Received: by 2002:a05:622a:1a22:b0:4a4:30e7:782 with SMTP id d75a77b69052e-4a73c55c3e4mr164632351cf.18.1750098376930;
        Mon, 16 Jun 2025 11:26:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1750098376; cv=pass;
        d=google.com; s=arc-20240605;
        b=L9D2yot8BY5Dx8Sh2P7fGOqbSgSl9OXKKFc98H21V1UVjIOM79qyGCOkui+eTX4gkM
         uItqsXB+uepHwZ13bG6W67OvSOdx7YYX1AXkAlae6iT4ogsQ7EaI4QQIL7sYL2PPcF7T
         zbgEtE68e0J/V318Uq0rDXbFCiIEv53xZPjOScLbUibH7TxQBpwYjiBz2kw+8BgOsasK
         bWyPV3HoCqHLbDl1wyiLx2cd8gh0RX2oK+DyPYZtk2/aBpuNfNrO4gmr4nF1VEYvQc1Y
         YPWF2xVJGiLh325OiVgfl4W4eldrgDe05dtBOOHmvBCT1nhKeuBRWIXHl5csJWmjf+VR
         L2RA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:dkim-signature:dkim-signature:delivered-to;
        bh=HEjI5V9o0ZyXZ/J5RI/5f3C5iM+vwudF1E3KeK3UwS4=;
        fh=vRB6EcVb9EXODCN+NdCMAEuE2iDRLxE8SZkiCvPgFV4=;
        b=kx84bPfgisgVPQsJReKoA04VrFcn4sEpKNfdg3APcMgJ0AFVj7U3R6a7n/FJQfgQHY
         l+3U3RgPJb5+/hpVlHN3FP/hi1eNOOx/ZQ3hPsmCWARwpFDIw5Pey8xRbyQCBDrGZpLD
         eT+m0/TZGtuJfTQaj7GNtS9ZvG6zSxlzoB2YDF4cy5JM/bxgrt+4kOF3SFFkh090nf+v
         BKTd4RnwqAT0OPV9GXuKxX0Suv1nEFp6F7oTdt5be/JJsCqRJk9HA+C+H9+T2s8jvMHG
         ZtTIMpIoik2GUJ+aAQkobG88k2cbcKW3NBB3GmzGK+1NZDQ5PdX5juo6wty6OFxpRcmV
         0N/A==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@hubert-humphrey.com header.s=fm2 header.b=HsEHulpT;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=dEMnSS1O;
       arc=pass (i=1 spf=pass spfdomain=hubert-humphrey.com dkim=pass dkdomain=hubert-humphrey.com dkim=pass dkdomain=messagingengine.com dmarc=pass fromdomain=hubert-humphrey.com);
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.150 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4a72a4d67c2si107232221cf.419.2025.06.16.11.26.16
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jun 2025 11:26:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.150 as permitted sender) client-ip=103.168.172.150;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-91-AzLO4ODVNbG2cAxvzX5ozQ-1; Mon,
 16 Jun 2025 14:26:14 -0400
X-MC-Unique: AzLO4ODVNbG2cAxvzX5ozQ-1
X-Mimecast-MFC-AGG-ID: AzLO4ODVNbG2cAxvzX5ozQ_1750098373
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 74B1819560A6
	for <blinux-list@gapps.redhat.com>; Mon, 16 Jun 2025 18:26:13 +0000 (UTC)
Received: by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 6F8A3180045B; Mon, 16 Jun 2025 18:26:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6C00E18002B7
	for <blinux-list@redhat.com>; Mon, 16 Jun 2025 18:26:13 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DFD051955F42
	for <blinux-list@redhat.com>; Mon, 16 Jun 2025 18:26:12 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1750098372;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=HEjI5V9o0ZyXZ/J5RI/5f3C5iM+vwudF1E3KeK3UwS4=;
	b=sNsU+b5RcR6/MRC1mGw1CI6oeKX++9fDJ+ZNCflfTtjA06Rh69jAqVPoDb4fW1Wf3xnoyD
	XLmNZy4x7fZ55HulSHsidzUpRcxxD+nIDT9AsQDG2vnsb78x5YzyhDwiEQcEo0OI1b7d2v
	2u+u6rWxcRig31eKjsK008rgnpm62X426AIqgr6zCoKT4hnTJ2X5Ogb3FM0L1htEaJQcfe
	AZ8gnqMIY4+AZTbkkPpe+XIU8hDnJUbNAbG5XPYh3Tga9p7gbjwKDm6ZpI/986785lejWT
	2fLJ1PGlG0KURx/QPHz6OMfhiysbkb0Vd1ZHCxocFdvjEVUPEyz6HD1tMU86Dg==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1750098372; a=rsa-sha256;
	cv=none;
	b=ZFPrGixYsCipcoq5beIulTb2fuEVtJzjG73dbY8f87+vIkDqfpJLwoQDKYJj2vxO1XZssx
	jX+EXSE2N7excKzC1S1/uVS/jgtY4ap3/aIEZt12WwUc9u8TLXb7XkUoj/BsBOqiPJyviX
	h6C7lCEi+vvWOzP8Ie40uH3W/ti96NQK18NhAXZtOxfmuU2I1DoGm3PDhoW4c8vDSmahKd
	9tDBUDIRJqJCV/TnbKTYWlzkIJbWyNW7JNr+evyE2BAO0b+BVzhu4DBEaTX7VheEZt4qc6
	ZrljP/nGjZxGFgQD3DyQyINsH61Mbo0HfaQbnTUuU5eMabNmFC/o/1iN1yT36A==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=hubert-humphrey.com header.s=fm2 header.b=HsEHulpT;
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b=dEMnSS1O;
	dmarc=pass (policy=none) header.from=hubert-humphrey.com;
	spf=pass (relay.mimecast.com: domain of chime@hubert-humphrey.com designates 103.168.172.150 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from fout-a7-smtp.messagingengine.com
 (fout-a7-smtp.messagingengine.com [103.168.172.150]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-338-jbndwtgHNQmnpni2p2cPag-1; Mon, 16 Jun 2025 14:26:10 -0400
X-MC-Unique: jbndwtgHNQmnpni2p2cPag-1
X-Mimecast-MFC-AGG-ID: jbndwtgHNQmnpni2p2cPag_1750098370
Received: from phl-compute-03.internal (phl-compute-03.phl.internal [10.202.2.43])
	by mailfout.phl.internal (Postfix) with ESMTP id 3EA4B1380392;
	Mon, 16 Jun 2025 14:26:10 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-03.internal (MEProxy); Mon, 16 Jun 2025 14:26:10 -0400
X-ME-Sender: <xms:wWFQaLtmdSHS6sDjYeNwjVcn22xWJL-ZzLP9d9arucAfigB_VI0ZSQ>
    <xme:wWFQaMfbot9lfvuUurYos82ppocUMQo3VzZCY_djlxsBDO5YIVeIczijxFq021Ivh
    xMF_8v79e-aqkhXcu0>
X-ME-Received: <xmr:wWFQaOy1oK5i_lwZ54aX2-8P_HsdIZSxGt2jZn9lUZLxNhZHu_dtTcIyoalBVb2x1gVUU-a082Mpbz97FVeg2ntA45hQw5glq7U>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugddvjedvlecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvf
    evufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegt
    hhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrh
    hnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeffffefffeludeftden
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimh
    gvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmpdhnsggprhgtphhtthhopedvpdhm
    ohguvgepshhmthhpohhuthdprhgtphhtthhopegtshhtrhhosggvlhestghrohhsshhlih
    hnkhdrnhgvthdprhgtphhtthhopegslhhinhhugidqlhhishhtsehrvgguhhgrthdrtgho
    mh
X-ME-Proxy: <xmx:wWFQaKPpUmCp3EWUV-OjJmfTW2DOUMpcuj1-SBf0hq555zxo-3dMWA>
    <xmx:wWFQaL-wvXkUnQ8drhRgGPK3hAiXhHYK6uuyJ0kiSm-4uy0lV5QlpA>
    <xmx:wWFQaKV3ilUEZj9naWcpc5ul2C74Fm4qhxVNUdPE8dgxflwZRh4hBA>
    <xmx:wWFQaMfALKgP3y-yr-84C1URgPXxdGT-9hKpEewAmym0bf55pRRTRw>
    <xmx:wmFQaM1etbsvL7UxlqbpHp9ImRR2GAE1b47KX720EzqPtSl8qk3laJNv>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 16 Jun 2025 14:26:09 -0400 (EDT)
Date: Mon, 16 Jun 2025 11:26:07 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Chevelle <cstrobel@crosslink.net>
cc: blinux-list@redhat.com
Subject: Re: No Sound After Python3.13 Update?
In-Reply-To: <30035a27-7f55-42b5-86d3-b64d8d5aa823@crosslink.net>
Message-ID: <dcc895df-f118-212f-34bd-da48e57266e0@hubert-humphrey.com>
References: <d66104bd-98d1-b8df-2b2e-c3508369a260@hubert-humphrey.com> <30035a27-7f55-42b5-86d3-b64d8d5aa823@crosslink.net>
MIME-Version: 1.0
X-Mimecast-Spam-Score: -3
X-Mimecast-MFC-PROC-ID: N-zmp4r343dGe-8WI3RBnJnMWCt9CtsWtCJFEq8Ja5A_1750098370
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@hubert-humphrey.com header.s=fm2 header.b=HsEHulpT;       dkim=pass
 header.i=@messagingengine.com header.s=fm1 header.b=dEMnSS1O;       arc=pass
 (i=1 spf=pass spfdomain=hubert-humphrey.com dkim=pass dkdomain=hubert-humphrey.com
 dkim=pass dkdomain=messagingengine.com dmarc=pass fromdomain=hubert-humphrey.com);
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates
 103.168.172.150 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
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

Thanks Chevelle: Running that command implies I won't see other users or 
system, but its not obvious how to display system. And, thanks, later will 
write that Debian list, although I think Samuel is on several of these.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


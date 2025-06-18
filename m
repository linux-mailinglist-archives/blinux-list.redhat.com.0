Return-Path: <blinux-list+bncBCCIDSOV5UGBBDXGZDBAMGQEWHHDAEY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id BCFAEADE1AA
	for <lists+blinux-list@lfdr.de>; Wed, 18 Jun 2025 05:31:28 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-478f78ff9besf197429911cf.1
        for <lists+blinux-list@lfdr.de>; Tue, 17 Jun 2025 20:31:28 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1750217487; cv=pass;
        d=google.com; s=arc-20240605;
        b=TDDd2LU/c9MYyOC/UyPTGQPfgXa6yoOdMed8uuoAngsySw0WGnmBDVHfmdB3bPfn2D
         fvM5cBurNd3M8pcinlGuQL22EyOmOAJZRWup/uHi6P52XFrYTRkyyfZnnIU81B1v8tdG
         TfJF5PBHJoKTwGFvPfZa3ML4AQVcEeKMRyi97iDiD05S9doq3LAM/NAU6CX5y15w2UQu
         Z1lTsh5aUp5eWW888mHfsrzaw2Rithgv+u7cf4ShTJprySN/T5TqFxFD4kytTnDdNJRo
         1jMtSVVJuPjns3m5QCvWmr/So+6kOiYGf/PhZRznZU3kzA5euajPiNL3+kYx8IjQo2Rd
         NGOw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:reply-to:message-id:subject:to:from:date
         :feedback-id:delivered-to;
        bh=J8LH5SKBOlVkVwXSqi2Ty2rJmzWyb3+GOOitlUzIUMY=;
        fh=L6U+n1oaIIIHihitCuNkLO1hMt0lIj2DTCpazdo7Uro=;
        b=HWlBFIkQ2btDO3qhI1UM1XYjpwuNR0pApqJQ9D+XlwYUVkqdaZQR/33VXlg5NGeP4L
         Fuqew4TkY6jDJ8csJzOS3M/fBENpqK1E01CMbeJcqSfZHP0kq2CFSsxLOKLr4TMd5x9Y
         APhpeLbTsvbS6Vr1npDSZD1fAUXZIM+w/CPTXCe2+e0mVojGLafBFNETDTIxhJHuGjft
         5+OSxpQgWPdeIRlhBwHC1wzZw87aJyaK5KMeTmdjRzmuCq8Ev7nC9dYi9aIo9annlBRN
         CBipwWkNjwKPb1f202+Wdzu/yTiP863kgPX3w/qRBD/AhLkO9zpb1DP+dSiQUW1BJZda
         YiXg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@pobox.com header.s=fm3 header.b=KCelZAlO;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=cF2I57we;
       arc=pass (i=1 spf=pass spfdomain=pobox.com dkim=pass dkdomain=pobox.com dkim=pass dkdomain=messagingengine.com dmarc=pass fromdomain=pobox.com);
       spf=pass (google.com: domain of joelz@pobox.com designates 103.168.172.156 as permitted sender) smtp.mailfrom=joelz@pobox.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750217487; x=1750822287;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:reply-to
         :message-id:subject:to:from:date:feedback-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J8LH5SKBOlVkVwXSqi2Ty2rJmzWyb3+GOOitlUzIUMY=;
        b=IRDSilrVPV3dczkClT4YaJFwdAtEJR187jY3ObRK2a0oUOJDttfSih3MurykSmIgqg
         4rFDZT01OULKzzE2Rk7ntVu6MJ2Yjr/mr72qW1Q+Qov2/+yV4kTGBwp2AL22OB/gNVBT
         Rxju9zo7MtIFPCKgiA4cvgo8xvrbnN/NwSrP1AkgyDCCrcrE9YZJgvlfNGGg7ljWbxaD
         dYnL56toMG0j79QCmbmJQst/9LyPvGqt6xCV8YyaBqfMY4Vx2X+xyukDZChTrq8RRiqp
         R/BSenu0yQJGYdcluROqbKFflvI6DyIqJsskq3/qBp+BwGnU9K3oRgJPYVBdMnalt8/U
         zAmQ==
X-Forwarded-Encrypted: i=3; AJvYcCV7Y5nphnVO+S4AWSrVSR3XAapR3X8/Eae+nVRAf3kswy9vh2XdBbrCUkX3hMxB1KIg1tbEpQ==@lfdr.de
X-Gm-Message-State: AOJu0YwhSC7gdychJAEQ9oGZk1peif3tcjEYqih5WtHsLgEF6EQS4Xua
	6D35oCCzCnZptbpkHLav4m8pJweNTRE+PNMjUwNwFBLlT6dnu1Z8TL8+FoIGcYwJGvI=
X-Google-Smtp-Source: AGHT+IETccovv12vTmcx5R9XHRJxzBx/SwA/xLSxCf5CQlSdOnzKpMm2M6wRY9A6hCbx/aKo3nTvxA==
X-Received: by 2002:ac8:7d46:0:b0:4a6:f51e:a00 with SMTP id d75a77b69052e-4a73c596fe8mr249574541cf.30.1750217487242;
        Tue, 17 Jun 2025 20:31:27 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZf9J94dyNzeXw7+7eazKZ1NGtzqziISLMO7+6qYoH/g0A==
Received: by 2002:a05:622a:3d0:b0:4a5:ae2e:4d0d with SMTP id
 d75a77b69052e-4a722b41139ls111130741cf.0.-pod-prod-04-us; Tue, 17 Jun 2025
 20:31:26 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVBeAfO6Y41rG4TeiP1M0d1JXE6ItdDsr3cMs+KHg8WinjKUeyJPsnRe41Y0zWhoaFflnjbmZMaoTwzuA==@gapps.redhat.com
X-Received: by 2002:a05:620a:63c8:b0:7cc:fddb:74d9 with SMTP id af79cd13be357-7d3c6c16d62mr2683306985a.22.1750217486278;
        Tue, 17 Jun 2025 20:31:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1750217486; cv=pass;
        d=google.com; s=arc-20240605;
        b=WMrzA9JrY4zNPRx4cN068p7RLej0DwuaYHyqeTqfVkkYstSOllHlBafgHSlIEnloTf
         bzqOVcefWhBvmdJvAF9wtHgNZTBfUy7C5J8qc00eS8R1zIYZv3tGstN2q4nTvgKyRjf7
         Jq0QSOenpUW13wUccqE0FUQJ1FsCv+OhMdq7FnI1+czwfAlhqSb3/0VudTfoeCprIR6w
         nmvD1IPJTmp7sccR0q3LCHSkSDKFiQF3X53/mgPQL0G2PsZJWm8Pgzpjau+ij9cUeMK+
         /7q/i3grlrwZWo2EI4UhTK6mr8rsdjMM8k2bqFu4KzivukYDNMAblfg5URZsnrWlurA1
         z5QA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:in-reply-to:mime-version:references:reply-to
         :message-id:subject:to:from:date:feedback-id:dkim-signature
         :dkim-signature:delivered-to;
        bh=/sr1S3//5gtQjr1X+YXmlRPZWSMS2thY/EUBftwvjBI=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=TCyCBtOTldPK+0rGME10xoNQu1PC3oBt5IM6f7atySjQZ/5eJSNghBXe9jzhFcPYZj
         Kr0PALnNI8r1aWeoEFm+Ef74lgAPgoPbq5mrIEd1jnuKCgIPDf7I+S9slZ697kJXIMgq
         qE/w4zO3Ma7pVsNEBhbaRzxw5qryBgRTLrmSAiihqB5secH8cyfjXfb8BeKLCcumDdBu
         0oJe7fBSDO3lFU3oeWST7ASi4Tkwo5tMIan3RSFwRUMtTr5LrWLDYCI84GsMO9VUoJ4B
         f2ZRU5L1lfEFZ4wWfzlY3+IhZ6LpAyK16nxtdvOJyujczR7MOiJWGztSTjhpKQI0+ZGm
         gz3w==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@pobox.com header.s=fm3 header.b=KCelZAlO;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=cF2I57we;
       arc=pass (i=1 spf=pass spfdomain=pobox.com dkim=pass dkdomain=pobox.com dkim=pass dkdomain=messagingengine.com dmarc=pass fromdomain=pobox.com);
       spf=pass (google.com: domain of joelz@pobox.com designates 103.168.172.156 as permitted sender) smtp.mailfrom=joelz@pobox.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6fb35c31c73si156616336d6.436.2025.06.17.20.31.26
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 20:31:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of joelz@pobox.com designates 103.168.172.156 as permitted sender) client-ip=103.168.172.156;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-187-C8e3atKBP_i9gLuHs9eLMg-1; Tue,
 17 Jun 2025 23:31:24 -0400
X-MC-Unique: C8e3atKBP_i9gLuHs9eLMg-1
X-Mimecast-MFC-AGG-ID: C8e3atKBP_i9gLuHs9eLMg_1750217483
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D105C19560A2
	for <blinux-list@gapps.redhat.com>; Wed, 18 Jun 2025 03:31:23 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id CC8BC19560AF; Wed, 18 Jun 2025 03:31:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.90])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C989E19560A3
	for <blinux-list@redhat.com>; Wed, 18 Jun 2025 03:31:23 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 497FE180034E
	for <blinux-list@redhat.com>; Wed, 18 Jun 2025 03:31:23 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1750217482;
	h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:dkim-signature;
	bh=/sr1S3//5gtQjr1X+YXmlRPZWSMS2thY/EUBftwvjBI=;
	b=IUQ/vD0HZp6G5GR7R3GG0baGJ5ACgcD1kzjyyOjwv756TU/ID7xiSgxn5teMzUFMAs9aYp
	sPZKJa1yE0wJmpWE0jur9wS5TvHh55UZq4bRdGGxraGdSSH1N+5VzeLuforv6LA57MwOyD
	l3dMvMxkhqhYncHgw8Mtqg/eaQEVVBZimXDpLgbcpV6KS4JL2j8PWQfpFCk5kRajczhFqz
	582ELb1OIcT0tp8G/S/3Fd9i5MK1Lj9hVM4tFYAneiP6Y7jlAvbGlWoJ64uAc2TBoHJm2q
	PvyTH6OYyreMqr8kN3XRdBCE945aL2Lywui0Knqg2Fs7CgQDCyQrggiiO+rxrA==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1750217482; a=rsa-sha256;
	cv=none;
	b=VgsNXs8AImn9xG8VVRnFUE3hTglkrk1lHbPIFloqwRrmtVG8pIIXBmde4IkT3TUJU/MeGI
	UoAb+c4RB/Lwyk897gO7CrGT6A8QaWaXVLVl330KEsJEIri57hPISDKe6Ykx4ooJwH2r9d
	bsbUSX+RQYxB6v1D1foyFX4rhtd5yeadWywQKyCrjvIdW5Q0zfOQGapNNWtuGxUkhiADE8
	WgVEX5PfnOJ1A9TdQywNTjLpke+RDUSFrFyL2iZ/v7XzCdxPU2wtNjG210HbV/BW+htciN
	dixDdqrGqOuZNlFdDFMFldGmBdyjy2HfwnboEnUAzYchBlyyDuE4bAh7Ev6pJQ==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=pobox.com header.s=fm3 header.b="K CelZAl";
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b=cF2I57we;
	dmarc=pass (policy=none) header.from=pobox.com;
	spf=pass (relay.mimecast.com: domain of joelz@pobox.com designates 103.168.172.156 as permitted sender) smtp.mailfrom=joelz@pobox.com
Received: from fhigh-a5-smtp.messagingengine.com
 (fhigh-a5-smtp.messagingengine.com [103.168.172.156]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-533-oY-ZJRcmNBi8bZWZ1n345Q-1; Tue, 17 Jun 2025 23:31:20 -0400
X-MC-Unique: oY-ZJRcmNBi8bZWZ1n345Q-1
X-Mimecast-MFC-AGG-ID: oY-ZJRcmNBi8bZWZ1n345Q_1750217480
Received: from phl-compute-10.internal (phl-compute-10.phl.internal [10.202.2.50])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 9BC131140229
	for <blinux-list@redhat.com>; Tue, 17 Jun 2025 23:31:20 -0400 (EDT)
Received: from phl-frontend-02 ([10.202.2.161])
  by phl-compute-10.internal (MEProxy); Tue, 17 Jun 2025 23:31:20 -0400
X-ME-Sender: <xms:CDNSaOZXguplAOTB-KYK9cwr2UEQry7J2LWyalxYxhpobdldgGLTzQ>
    <xme:CDNSaBYtdrjnzZlDfv7mH4A2MaL8t_pzrHxEBnCpWZloVUjK8M6IaGNHKsjdd1Eo9
    O-azxfedAI2Tou-uQM>
X-ME-Received: <xmr:CDNSaI9Oe1Ln4JU69NSelglj2depmhPb3rLEzVnL-lFVsYJpVPE7SN8NnRtEPV61TFUMXFJaQl_UMnCiQkJKNuH4BiPZO_o8zEF-3_WzmJiJF4e2bwecrKGcrRkd6g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddvgdduledtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuf
    fkrhhfgggtuggjsehttdertddttddvnecuhfhrohhmpeflohgvlhcutfhothhhuceojhho
    vghliiesphhosghogidrtghomheqnecuggftrfgrthhtvghrnhepjedugfejfeejgeehhe
    euhfeltdetjeeuhedutefgheelgfetteelueeuffffkeegnecuvehluhhsthgvrhfuihii
    vgeptdenucfrrghrrghmpehmrghilhhfrhhomhepjhhovghliiesphhosghogidrtghomh
    dpnhgspghrtghpthhtohepuddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepsghl
    ihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhm
X-ME-Proxy: <xmx:CDNSaApZzJlUI1LG9x9_jz4jFk06ZGcMEJiK6u2_XslBXl5VlRtNmA>
    <xmx:CDNSaJqpfBHPiKfWHpr2GPiFK-E6q30kVrxqk9roN8u7KJRwh9SulQ>
    <xmx:CDNSaOQuU9nxlEL0eYGKQ3k7UUTfERzMPZI9qy8RtNfKOJeVs6SV1g>
    <xmx:CDNSaJpgWalQuz7akZIg_zON6h2AGJPvY2zneG7BI1MrMtHFnscU5w>
    <xmx:CDNSaK4drYG-Lyl8ue0_gWfSkAQ0rlUWPLhIBW37iIcOl_4Zalr5IMEd>
Feedback-ID: if0194970:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <blinux-list@redhat.com>; Tue, 17 Jun 2025 23:31:20 -0400 (EDT)
Received: from jroth by sprite.attlocal.net with local (Exim 4.96)
	(envelope-from <joelz@pobox.com>)
	id 1uRjWA-0002os-2Z
	for blinux-list@redhat.com;
	Tue, 17 Jun 2025 17:31:18 -1000
Date: Tue, 17 Jun 2025 17:31:18 -1000
From: Joel Roth <joelz@pobox.com>
To: blinux-list@redhat.com
Subject: Re: No Sound After Python3.13 Update?
Message-ID: <20250618033118.ijdh47apubmwrvoj@sprite>
Reply-To: Joel Roth <joelz@pobox.com>
References: <d66104bd-98d1-b8df-2b2e-c3508369a260@hubert-humphrey.com>
 <20250617155459.g2y65sxmpohqhb6g@sprite>
 <c21bd4bb-89ae-4a55-648e-6cecdcbb19ce@hubert-humphrey.com>
MIME-Version: 1.0
In-Reply-To: <c21bd4bb-89ae-4a55-648e-6cecdcbb19ce@hubert-humphrey.com>
X-Mimecast-Spam-Score: 1
X-Mimecast-MFC-PROC-ID: rmaOfZBBDkRGaLibjKVsrGyDmLZRdOgMsP4Sy8HJ9rI_1750217480
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Original-Sender: joelz@pobox.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@pobox.com header.s=fm3 header.b=KCelZAlO;       dkim=pass
 header.i=@messagingengine.com header.s=fm1 header.b=cF2I57we;       arc=pass
 (i=1 spf=pass spfdomain=pobox.com dkim=pass dkdomain=pobox.com dkim=pass
 dkdomain=messagingengine.com dmarc=pass fromdomain=pobox.com);       spf=pass
 (google.com: domain of joelz@pobox.com designates 103.168.172.156 as
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

On Tue, Jun 17, 2025 at 09:16:21AM -0700, Chime Hart wrote:
> Hi Joel: I wouldn't mind a strictly alsa setup, but 1 of my Linux experts 
> thinks I need pulse along the way. Thanks
> Chime

Chime,

I also mention it for debugging purposes. To confirm you're
able to output sound to the card you expect. You would know
(as is likely in this case) that the problem is at a higher level.

Is your speech dispatcher written in Python? Whatever it is,
you may have to consider reverting your changes to get your
sound functionality back. Certainly there are tools to
install multiple versions of Python, if you need to fix
the version for a particular application. 

The 'unstable' distribution is especially subject to 
regressions. 


-- 
Joel Roth

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


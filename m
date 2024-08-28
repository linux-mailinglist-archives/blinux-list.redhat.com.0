Return-Path: <blinux-list+bncBC3NDNGRUAMRB55BXK3AMGQE7QYIIXA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 071DD961C64
	for <lists+blinux-list@lfdr.de>; Wed, 28 Aug 2024 04:52:42 +0200 (CEST)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6bf97e8bba8sf74759976d6.1
        for <lists+blinux-list@lfdr.de>; Tue, 27 Aug 2024 19:52:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1724813561; cv=pass;
        d=google.com; s=arc-20240605;
        b=PQ1foXua5vLlJAstVc/MkhloOfKxBdVfajrO57gTeog3iPowseV0xoDlvAoazMIbnF
         2QRqTozI3vbpCCngRWHPfrkZoHBEeoEpuh6J5Ao39qgRknj9LuQ3v3D/1glMPhUQwime
         2T4ZXzlqW6nQxyFieU3hI81gVTwVn+Yvd5Z5fIQjgK90YSyHUIgkLoyvz47n80dZfx9F
         pPiCU1Tfasw7ZXd42bsuB6wxtHdau/0Gyx7dGUtWstyPxZZobE934WSRJ6JpbOZUFP0A
         zcoPyYHnZHMlVn6PmFXyMPsV3JTlTWoSit/47RYzGt8hziDOGF+mVmJhQZKgW5lI+iQw
         IaoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=JMN6191rdxujpcuw6sQ499dnmZYfVjSxa98T0bD55hA=;
        fh=qfGWe8CdExJtTjqK/+fvkwtRgOS/KbuizYnGYtlI4PU=;
        b=LYl+noyEe6zDs549086DkfGCEdEaC5oHeoUI06ywrhqqmWFALHRGu/U5TQX9TBQn1n
         ifrD8aR/stlOPMCqB9do1mte/8RSh2aRnbIBR2QeUESTOzxHc4J4S4D5JbwcAtyKIoiB
         QLQ7XBim+gxIp55ilDlmGoYTKfG9pK2TGMvuiuoMrmniyLEJtQKFoWtf0NELqrAmqT9p
         3W+3jSXDC0b+ToaTGNcGcPGpuWpOE4hdRvoiMOYcZncVwGk+9Iv37jSilZRVPcmNmUxY
         Maw7knhq5QkipXJI9ihFYRNLZhgaB/byFScKA07eA2TW1kHUT6nshHL55iAblS1eEMol
         jFwA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.148 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724813561; x=1725418361;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JMN6191rdxujpcuw6sQ499dnmZYfVjSxa98T0bD55hA=;
        b=nWjt0qakY1+EMCYYUPqpIjkdiF8NaXOEcrRyJA8mBjilGT+sQpe08Nfw0lagLWdOj/
         f1UTuEf68wW4okYk62hp6vEsx9Tg/H+Qfi6xrWnDwBAmSK/mOzTmvihdr7VanY6cOZPZ
         JOpLRbshJiVdzAM6guZd1NS4hc0uWKGE57hVYgHL8QFLnGT6T5ooVu21UIsikuGZrxQ1
         lvl41g/L4Z0LFho75KdDiNrRdzTKELeo6PcRWhXf8TlVNZ82XDAxK21MfXQKOgy3Pz18
         9gCJghr2AhhxkzJc/KHERQr14aDBuqqYP2pFSVLTLxqQoEeURg8RESRvYbaax4HZifm6
         qBHg==
X-Forwarded-Encrypted: i=2; AJvYcCUacvl3a3AHRdodNjc8lVciawBFS5jIUH7sx77KGYh3r2Su8SP8ANosJasHMK+1mxQURrMslA==@lfdr.de
X-Gm-Message-State: AOJu0YwF+2tHgP/4lwUs/ccVy96BKU2F5Y18xqwr7mtd8VaLZGBrPJgX
	knmQUOV8A8kfw2EBbmCQmfe7UFfcZ1RxF8xYT/euV1Z1DQ5WL+/aFl6vNfsCCDs=
X-Google-Smtp-Source: AGHT+IGDr/qf5gL7VrTTn1SOL9dLfjXNnp4KZJpYe0LK2KtMMaiBuEvOK7yEXJeq7HTfmktlnkzFJg==
X-Received: by 2002:a05:6214:3106:b0:6bf:7af4:7593 with SMTP id 6a1803df08f44-6c3362ba7c6mr9611146d6.8.1724813560631;
        Tue, 27 Aug 2024 19:52:40 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:c6e:b0:6b7:96a6:c5e7 with SMTP id
 6a1803df08f44-6c161337a1els33254076d6.0.-pod-prod-08-us; Tue, 27 Aug 2024
 19:52:39 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVv1q6lfnzP0ANqaJK7V+ndsQfG1H7dWbz8mXLiu2wWCv+K5U8G+1zr0ZJRe6jJuYEw6a16yamn19+rKA==@gapps.redhat.com
X-Received: by 2002:a05:6214:3b81:b0:6bf:7c44:f7b4 with SMTP id 6a1803df08f44-6c336308befmr7608726d6.31.1724813559296;
        Tue, 27 Aug 2024 19:52:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1724813559; cv=none;
        d=google.com; s=arc-20160816;
        b=Nxg8D+5FnD4a3mGjmLgrj6JfZDtpwxTbnlzAcwwKGcZzp4PY8aq3cbIOcCubacGxyU
         5wf8LZ1YveB1ZkuVjr5EhzHemzb+nUx/DQo2+vIbiQTtASd1Vae6YKfBSsXNDteQqU3J
         hZlQpGW14ZQmHHQFcNO2CTSYcOVUx1OoEShvADURcWrzJB/9zFr4CIzNnnV6Mqk8K45n
         FAj1nNscpaLPIu1LmAyZuXE9DUxjPiEbaZ8T0dQsgRo5JVTlvDlbMswA+Tjw+WT+vSby
         Hj73NcE5+TJQhsSpy9qtNWsdm/jpjJpAc+WNlafm6I2NNKbDwhH2+SOQRoABTOuq5iuY
         XCzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=7EzLiA4oS54rW4Zn+mm+Jttvjyo1gQhmc3tSx1ouGdM=;
        fh=egCYbaVhLEDbDgD7NHRJ3aPzFufLHmM1Hfl4V7AEd/g=;
        b=pNiXRCoGk/5DKDnXhqZovEvTG36FCyp8FnyYHfwj002OmBsSaJUOV5WuECB7UJD//X
         F07/wrevsHGP15zGLRtWj6Z0mIhDpSCMfhi/EmbvMYaP54pQYC1nMePhOv0n1rP1CGRg
         6Q8ygoyEGBbWm2kdKwd+eYROpKAoXPbvyLO7czUTuR5128a4x6DlELKxKBs80b1kX7S1
         paWpgPkod22itGR8kpjqIiEQj53tFoE0fxTCHPZzOelHPQQjWUlPyi9h1D6/a/dAn62E
         IFYc7T64srdO6pycGxBWaBHD9Sr1UlCwIrijpRCAnjov3gPvj1lAKw2nQ4H7xrNujsi6
         5NSA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.148 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6c162e1e3b1si111777986d6.464.2024.08.27.19.52.39
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Aug 2024 19:52:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.148 as permitted sender) client-ip=103.168.172.148;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-322-gaOdT0FfNv2eTWw2V0MEKA-1; Tue,
 27 Aug 2024 22:52:37 -0400
X-MC-Unique: gaOdT0FfNv2eTWw2V0MEKA-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2E7E01956080
	for <blinux-list@gapps.redhat.com>; Wed, 28 Aug 2024 02:52:36 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 2894B1955D56; Wed, 28 Aug 2024 02:52:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 258F61955D42
	for <blinux-list@redhat.com>; Wed, 28 Aug 2024 02:52:35 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 872851955BEE
	for <blinux-list@redhat.com>; Wed, 28 Aug 2024 02:52:35 +0000 (UTC)
Received: from fout5-smtp.messagingengine.com
 (fout5-smtp.messagingengine.com [103.168.172.148]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-332-s-BGqOyKPsWJa1-Ai8u6fw-1; Tue, 27 Aug 2024 22:52:32 -0400
X-MC-Unique: s-BGqOyKPsWJa1-Ai8u6fw-1
Received: from phl-compute-07.internal (phl-compute-07.nyi.internal [10.202.2.47])
	by mailfout.nyi.internal (Postfix) with ESMTP id D570E138E2B7;
	Tue, 27 Aug 2024 22:52:31 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-07.internal (MEProxy); Tue, 27 Aug 2024 22:52:31 -0400
X-ME-Sender: <xms:75DOZlVo6JHQW76noR1filouTcfi89PtejCa2mlaL-lmCoBS32ARRA>
    <xme:75DOZlnmAhqhGvFAuyuX23aByxAa7eSxnQjp6XibV_H8xeD73nMGtuTt-rZoZ1pcf
    8ivqRzxrHL5VvjlTks>
X-ME-Received: <xmr:75DOZhZinC0Yf5EXSeQdUBArOy7tZQ0lyk-F0rwmHjW56E9ScgYWk39B6o5KSoTzp9FRfhRQEs1O3LrS4RIXbwxIx3S-NtFywV4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudefuddgieeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvve
    fujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghh
    ihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnh
    epvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeeffffffeffledufedtnecu
    vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvg
    eshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomhdpnhgspghrtghpthhtohepvddpmhho
    uggvpehsmhhtphhouhhtpdhrtghpthhtohepkhihlhgvsehgmhigrdhithdprhgtphhtth
    hopegslhhinhhugidqlhhishhtsehrvgguhhgrthdrtghomh
X-ME-Proxy: <xmx:75DOZoXz4LBD5L9SagCMwUSQwE73ymy4HjOp4G2lUNhFyx8SFqZstg>
    <xmx:75DOZvnxcHs4RF8-qO4DULbJdZutQGK7lbftYe4G5QaaBAxHVQJLKQ>
    <xmx:75DOZldZ74i10XbK3QSBBOnSP8e-vKhzuMOnAU2QOPQedkoFDgipvw>
    <xmx:75DOZpHF_pisn8kMo59BCeWk7LCltglVubBfZPbL_N4aDNsWrFCBLw>
    <xmx:75DOZkzloGxuPxuo0NDi8QEgexEexyHuAT_viyZ5GvsgaBYMbzTVKKaz>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 27 Aug 2024 22:52:31 -0400 (EDT)
Date: Tue, 27 Aug 2024 19:52:30 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Kyle <kyle@gmx.it>
cc: blinux-list@redhat.com
Subject: Re: Grants for developing accessible software
In-Reply-To: <78c726c8-e793-4eac-99d5-ffdf2d80a1bf@gmx.it>
Message-ID: <7d7001bb-d756-7e48-28fe-80bf65998770@hubert-humphrey.com>
References: <20240826195903.wwlxwqjipjjxnc7k@sprite> <b7d0dc90-b882-46c4-b089-fe861f0175a7@gmx.it> <8f39b1ff-64ee-4d51-bc0a-ee991f3b14db@gmail.com> <78c726c8-e793-4eac-99d5-ffdf2d80a1bf@gmx.it>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.148 as permitted
 sender) smtp.mailfrom=chime@hubert-humphrey.com
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

Hi Kyle: I never heard of Tenacity. Is it simpler than other solutions? So-far 
other than a client my Linux expert made for me, I found "DAE" which Wilem 
created, but it only edited wave files. Generally I just want to edit out 
commercials-and-other non-interesting content from streams of news-programming 
I rip.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


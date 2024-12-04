Return-Path: <blinux-list+bncBC3NDNGRUAMRBTO5YC5AMGQEEWX5LBY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 453819E376E
	for <lists+blinux-list@lfdr.de>; Wed,  4 Dec 2024 11:28:31 +0100 (CET)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7b666f5942csf701469585a.1
        for <lists+blinux-list@lfdr.de>; Wed, 04 Dec 2024 02:28:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733308110; cv=pass;
        d=google.com; s=arc-20240605;
        b=j6xSRoQaSjKua4QflRW1rca5WrgKqhKwPWjYvLnkMEw1F5k/wo9irZCbKM5aJP4K2n
         GIzqGIW3TEH8rtuifLTWbsH7M9PaxMdPc6H0RC1RC+pi2MFGLhzjImegpRILZ/opxk4F
         zrNgcybJ89YlbeT4/zAwv18b5EcZPAAr7lNHTi1z9JtQMZToS4tXR9N6OHvxOyvIzWGz
         Jgr3E4fbf+hAW+Sl51OWffKMviAiPl11OWE77k3ORx5ET5vLHNaFzHMyJXAqhwhecZTS
         0CPoc/7c3Q7zQ8nNLY3CoLA0sju6sacizafz/YqzypRrFmLLimWEirySiToHJmIjqkkd
         3c3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=MnWru4HlNFDadF5Ne+UKUjZYg+Xp5+Rdj2Dg1K9B7cQ=;
        fh=4oJ3v5ZoqdbOV4bG1rWEHPAYvowPpf0Orlyqrey6S0k=;
        b=UdZfeC0xskrBgnsVvzrY1hbEdLLsbJiKC8S6VGp0kHXSuMWJIM3DJu0Mwm8/WBvnjW
         YcddO+YKhUYHabe9HjVXZjoMD2Hs6GtVIcUUp22SBAonRrClbvvno4feB+DKSmdBV3rF
         WzG6cycbWUJluPXUCkQmJSIPCC9g09LHDWRg7lbviz5itaYskYNIJQCwgLZMildKUYLS
         kehTfqCRw2GQ7n+vm1tjNffNZkYcDk1ofnie/maovBYjyx/VZSQyFY3vNLzIeVWLLHyl
         wxpNrlbAN3RsOvD+mJWKNbr0JUTI8ORhC1y4qNnnbnOwToL8P0sW6hgSl5npYa0Mp3Uz
         4DJg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.158 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733308110; x=1733912910;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MnWru4HlNFDadF5Ne+UKUjZYg+Xp5+Rdj2Dg1K9B7cQ=;
        b=J37T2SAkoHOdeCtDNbo6GqABFvcQLzmjeitWiKavBJQXJnFd/IJF6PQj4Hiv7X4fWn
         iyqBgvDS5ETL16lLWfZWE1V/iz9NY5gG1mNYfwcvgbjXBjjjQOThnAi+EHox72rwC3bH
         F5KxrdsyVVp96Xa5jWiZSj+B8R9r9BAU+Pwz2QsIu0wIEzMJbXa8QfIzVtT+j2dBBvvk
         6aW4M2GzmXDTlOcMUkS5PQT5vX7vM3B4s2zdK+nwGDj6z37b2I8dvak4AyoSmRRT4x1x
         ubTNL1ZeiuMjURqF/3U37vjhRZkt2LOBz6q2Qgu//zdz8Dx2c7qV40qjeReP2DQP3quv
         nNRg==
X-Forwarded-Encrypted: i=2; AJvYcCUYMMk+aStH9tBatO/4jszF/rbRljipMYoLQJ1lggtzF86OSPKp92bksnGu15006JUiKXPlVw==@lfdr.de
X-Gm-Message-State: AOJu0YxsPlGDkl7yCAxCu6i/G/KchcjLrNTXB2eym2ahWJzatF8wunny
	8L3J9wmPtuIoVNhz5SY1h9Ma+3lENjlcnHvWf5KmrJzkCtRkq/GYsFlN6xVWNoU=
X-Google-Smtp-Source: AGHT+IFqIVqi1pzCE+beq+jMr9/FsIouVBD3xo2NSmbVFJz7YGGgW/uTDz/gqXEBY3U8kYRvEooyHg==
X-Received: by 2002:a05:6214:4018:b0:6d8:96a6:ec22 with SMTP id 6a1803df08f44-6d8b737d7e4mr84093476d6.23.1733308109360;
        Wed, 04 Dec 2024 02:28:29 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:21eb:b0:6d8:a90b:1561 with SMTP id
 6a1803df08f44-6d8a90b1aa4ls4959636d6.2.-pod-prod-05-us; Wed, 04 Dec 2024
 02:28:28 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVA0uaxwN9umkEIAbDgp3yScp6Q6CPCx2Ymthb87tVIUAucANxYd6+mXW79ddqw6JJogHWJXohV+Mtk4w==@gapps.redhat.com
X-Received: by 2002:ad4:5c48:0:b0:6d4:2910:7f13 with SMTP id 6a1803df08f44-6d8b740e264mr84251736d6.32.1733308108359;
        Wed, 04 Dec 2024 02:28:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733308108; cv=none;
        d=google.com; s=arc-20240605;
        b=NbE/Q4Yt1qMbz38Qxje58DlugXDNzDI3bnbkkk50lfdY8rvsQMoCG6Ea04VBYV9NSK
         m19STdIazsVlWbystHxB3+GSHX8e+Zo0SwNGjEkWYnx/2xz1Dly5VgR7/ni3vRXfBhsU
         vwFGT+D/+1XUAiYbHvSQE92RQPvzhp+TjB0dXLZDLgdU3nYifktmQnSZ9vuOhV1uluBC
         CNfs36E9XHq9gaKTXeczo8lvFgf7jpbBakEZr3ONzA37yC2DhH08ZT/HufLSIR+qibvg
         beDMgHE2vJ8N7o0XueG8jo2Oxns2ytws/iCFpcidS9NLxQXqSOLvIiMpTyX2phGsu1zB
         iPdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=qd/bbIm9l2xR1CSDEuaBJ69JYd6JHrw5HmTd1a1JBlE=;
        fh=IcqJJD4qaK8LzzaTBE8+DA5eDqYnBzlACt7lWP+7qqY=;
        b=Ag2QZZiAgEG71Ln4RsvjQAMnuavdxjImhVdhBYpoEFvUiqxmnIGZMdecviCXiIfJTt
         FL1n36e4DyZhLkzUBEloFWidtHA6afihd35Df6oWCP/M6mMfsLHsVocWekBZoNKhLd8+
         lH29V4D6dxZdXxnHdp3yMvLHno9yDTmY0NYxMXMpPrOIPw5GTktD2+mbDzDx5TunUevJ
         +VHlQ4ig595ic+dbmSyo4j6cbtc4zJwBy59jD8tGed1qZV4gBYgPiwpaelQBnI4TRGDX
         U2sljeK41VNVseus5fMLWYKPwQbvCvup8fsGI7Qhu6HxSTjaeyrAHHc5Nc+lOHcKdIMF
         1P7A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.158 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6d884eb6728si36088406d6.344.2024.12.04.02.28.28
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 02:28:28 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.158 as permitted sender) client-ip=103.168.172.158;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-480-u1zU9SQ-MMqN5z0NGS6xYQ-1; Wed,
 04 Dec 2024 05:28:26 -0500
X-MC-Unique: u1zU9SQ-MMqN5z0NGS6xYQ-1
X-Mimecast-MFC-AGG-ID: u1zU9SQ-MMqN5z0NGS6xYQ
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 10D2519560AB
	for <blinux-list@gapps.redhat.com>; Wed,  4 Dec 2024 10:28:26 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id E4B981955D7F; Wed,  4 Dec 2024 10:28:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E23541956054
	for <blinux-list@redhat.com>; Wed,  4 Dec 2024 10:28:25 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5C6521955F3E
	for <blinux-list@redhat.com>; Wed,  4 Dec 2024 10:28:25 +0000 (UTC)
Received: from fhigh-a7-smtp.messagingengine.com
 (fhigh-a7-smtp.messagingengine.com [103.168.172.158]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-564-frZoYY7tMjuWXnnom6HBFA-1; Wed, 04 Dec 2024 05:28:23 -0500
X-MC-Unique: frZoYY7tMjuWXnnom6HBFA-1
X-Mimecast-MFC-AGG-ID: frZoYY7tMjuWXnnom6HBFA
Received: from phl-compute-10.internal (phl-compute-10.phl.internal [10.202.2.50])
	by mailfhigh.phl.internal (Postfix) with ESMTP id BB25D1140136;
	Wed,  4 Dec 2024 05:28:22 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-10.internal (MEProxy); Wed, 04 Dec 2024 05:28:22 -0500
X-ME-Sender: <xms:xi5QZyWBK2JNMUErVPIzyMJS_hbctNsPQXy4H0ZlLrnNGl-q7mZDXg>
    <xme:xi5QZ-lWn04qsRIAMrZjGDiPcUKewleNbtcjhRmfyIBajWyg4ncBHrfKRmNEkAinG
    ujRfnvEpik2FqlrV5U>
X-ME-Received: <xmr:xi5QZ2avGcYWBglU-_MsDcRaaEXwMder6dHZL7_SaX79tNEM9KMUWobriKqumFKAS2BxdchuuTtnMIN0PQ2gmrv7p2r4PgyGOqI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrieehgddugecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdpuffr
    tefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuf
    gjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhi
    mhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpe
    dvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeffffefffeludeftdenucev
    lhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvse
    hhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmpdhnsggprhgtphhtthhopedvpdhmohgu
    vgepshhmthhpohhuthdprhgtphhtthhopehguhgvnhhtvghrkhesghhmgidrnhgvthdprh
    gtphhtthhopegslhhinhhugidqlhhishhtsehrvgguhhgrthdrtghomh
X-ME-Proxy: <xmx:xi5QZ5W-cNcUWrYO2OVFO_VLmfkRHrDs2Qmdzc1POGtHTHyFASCrqg>
    <xmx:xi5QZ8nH2ilIftemCEftpofN2aXc7o5gfrMR-Vwo9W_u2MqYGWjiPQ>
    <xmx:xi5QZ-dC2F2RJJjRDyvQhB4LVBZbOwHo0PgoBYpne08yphMHwggAYA>
    <xmx:xi5QZ-GXwbKIKVce6e-aIbWA3iHXnmentsGNJ-kLW8K7zm9jXCeijA>
    <xmx:xi5QZxylIbu0ymv3tE2I2N2Ks1RKfWRQZEfN2IFiEDcXlPWBOs7uDMDk>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 4 Dec 2024 05:28:21 -0500 (EST)
Date: Wed, 4 Dec 2024 02:28:20 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: guenter <GuenterK@gmx.net>
cc: blinux-list@redhat.com
Subject: Re: Might 1 of You Please Remember?
In-Reply-To: <3077d096-e476-497a-954d-09736039ddb1@gmx.net>
Message-ID: <c4757ce0-41bb-1005-de67-92f5bf5bf7f5@hubert-humphrey.com>
References: <1fd07eaa-8fef-71bb-cb54-8d86c6fb2dae@hubert-humphrey.com> <3077d096-e476-497a-954d-09736039ddb1@gmx.net>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: jXfJx9TfakW7NEvkyxgp3e2S31wAExK7wmJlaA5vOrc_1733308102
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: kGOBEikNoNKnSuOEaADaHFztE1J1IM9tCtOTcl69g9M_1733308106
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.158 as permitted
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

Thank you Guenter: Both packages were apt-gets, many items on that github site 
were not found with an apt here in Debian SID. Also, reading through those 
choices in L Y N X is a challenge, as I am only looking for straight 
commandline. Thanks so much, will need to explore later in the day, as it is 
228AM. Thanks again
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


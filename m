Return-Path: <blinux-list+bncBC3NDNGRUAMRBTNQWDBQMGQEO33S4LQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2AAAFBB35
	for <lists+blinux-list@lfdr.de>; Mon,  7 Jul 2025 20:56:16 +0200 (CEST)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6ff810877aasf91095856d6.3
        for <lists+blinux-list@lfdr.de>; Mon, 07 Jul 2025 11:56:16 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1751914575; cv=pass;
        d=google.com; s=arc-20240605;
        b=cGD2JP/SvFRaNND2uqJkcTzb9MVTA8tZl2/KdyxOiL8tO3LtJ9sOyhBiDKKG7OD/+h
         q3s5VsYgOAJ66GYp4EefETW0S92GQFOY4VGilLW28vYVvbUqYEdkFsExXE7DIyM7c4sa
         JHTk4T9AeuI/haBOSwiYMcANPN7X43t0hhq3sCEZ0CO9UPYEuSTyoeUs089+wDUexGrK
         AXYo2ABU2zwcmEAQ16T9pHHxjYKMqODaCrYIAMeSaZd1IoAn2xAoUf7Z4vRVvibl6xgT
         A4TYt5ziQ81vvVz6//53ndWMU1pBuSdMfpBivPL2eon3QJoW+FuVMUnK5WMWvh4cUCNz
         Q5Qw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=5heMJRJ4HPWo7Q6zDljnl4psXqO3fEfVoVsFqxEzrFg=;
        fh=gQ7/Kg8v/r4dtyPzTTDXZ2aA+RWZnjPm2grm8Q2iC8E=;
        b=hbQypiBMe0eOFE6l+X9C7c7jWvBY7fYstiTTlzAhLxH+xbOvKQlQDKu3x105xs9W5H
         c02Ej/jE4K6eLYZgFovN8vablQDCPRf4j8NVDWgkXmYg9+vhC355uAySUvvQTnvdRtsV
         SAGqBsbw5Lbw8aRRLgz8w4ifvH1lc0NFFnBngGWeiLUNIFh/Xcrxka5fniCyrncTUHWF
         weV/aFBJ6JCCf//TozT14Bw9g7RAC6FMjZrXBBMUkebiwxABf2fm6j45fCgQ7diAhS5c
         zo3aByv9gioMBpVFumYaBVPEHZSoFd5WX5burJQ6g/kOvQ1/D/N6NlcRhKesKavtBSK+
         BNTw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@hubert-humphrey.com header.s=fm3 header.b=pkSNDR0N;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=kbUyC4hD;
       arc=pass (i=1 spf=pass spfdomain=hubert-humphrey.com dkim=pass dkdomain=hubert-humphrey.com dkim=pass dkdomain=messagingengine.com dmarc=pass fromdomain=hubert-humphrey.com);
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.158 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751914575; x=1752519375;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5heMJRJ4HPWo7Q6zDljnl4psXqO3fEfVoVsFqxEzrFg=;
        b=i2o6sMbctaWh839AA4uaCPxKD4T9Tyl1O1d5hMHFj6LG/f6MolucUOPwRgZPnVbG+u
         eTMYED/QHNQzHzZ/aPZl+U0lvyE3a/4P/RxZinHJUiwjcJmB0Lpx4aaODpec8zMhh8gH
         wEZlA2DZfkj4RQLjlXSjnow6bAAuhes9sIlEV1Tdau4Dj1eIuMVSjdXWLK2kbqVFM6KJ
         ldm9flG+062W+PZUagyVdUR+g+u/0EaXhpam8LJ3zw8JQPLNBevH7cTo7HK+aLkEhWLz
         +7K5JdGfeXW/GoDxUUeYZFRXaR7PLmim9qyq6Iwn7ov/jUpV+Ts86llzo7sOuzL0Fhuk
         h23g==
X-Forwarded-Encrypted: i=3; AJvYcCVAuolqXKonwsRcYjQLnAGXsfSEHku7ZauVgzCxkuW5GFdD/qhBBB6lG+EMW3QrJez3fpaDng==@lfdr.de
X-Gm-Message-State: AOJu0YzP7hwR9/ACLd3LRiOh60z/BNmLymFq4xS1vQQAln7KMQ4XMN/4
	SNKXT8nyB572z5rb3JQiw5ZhcWSXjgO8fsiUkEibYNUIP7n3ux9jwSpAASL/dfnwPAQ=
X-Google-Smtp-Source: AGHT+IGbDRdQLi4cUfSyvpwqb3kzmhVZkNfPBLQVBiSKWPNwd9W3z035TM5ZrJUx1Kav+WZkt94iHw==
X-Received: by 2002:ad4:5ce8:0:b0:6fa:c054:1628 with SMTP id 6a1803df08f44-702c6d66235mr235633806d6.23.1751914573860;
        Mon, 07 Jul 2025 11:56:13 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZe/+lpKC2fRzyzJe8kWOr6az5GwymjNmQP7JiCkR5Yzjw==
Received: by 2002:a05:6214:e8a:b0:6fb:4b71:4195 with SMTP id
 6a1803df08f44-702c9d15c33ls56651266d6.2.-pod-prod-06-us; Mon, 07 Jul 2025
 11:56:12 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCW9Gyfa8RFlN/V+EGQfRmdFXA5cCzz7FGJ57ZpTgJaXZEV3zSbc3MYWb+vAsCavu/wgj8DOoUy5j/xDHQ==@gapps.redhat.com
X-Received: by 2002:a05:6214:5b85:b0:6fb:50da:48c0 with SMTP id 6a1803df08f44-702c6d7ad5amr255665846d6.32.1751914572511;
        Mon, 07 Jul 2025 11:56:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751914572; cv=pass;
        d=google.com; s=arc-20240605;
        b=M/8papjxAD94VKG0ciSr0mWVorFEg/ydydsjCevpaNTHHOu3DcZmSOyTMyrweto4ez
         H3PPwGC26IXwKTQLDyuEcvUhWRmujYKKNmb47txnZi1boPoBhHYqdYZyUMi3NL+Hg5CG
         3wnVgxFKJdwwjogClsC/clcMNmWH72w4mFqWAC22tslIkUXwswvp/joUfllfpvormrVv
         dlZ26dWQKpuKbU1d7QIWZstLq3JZ8d78i1j7LvzkV67ZY/B95Xdf5xhUwaPky9EKdK5e
         6QjimM45QZkzFF7nosS3Brxl8R1+YaqAjsABT83HhXDI+PT1B5MCGR/XI2SiNTJeD7s2
         cNRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:dkim-signature:dkim-signature:delivered-to;
        bh=anTtlhCUFhAcgbAp9+WkxafTq+3BguvljuwJJBSGiAE=;
        fh=EnmT/XM52Cw5dKgKwAcAwrWfgpvmbC8BORRziwvcwVE=;
        b=WkcBJebLz7POTMWUYppB3nK0csDhb7L+bquQ00zC10SbMtYFuWd08gkSRUh5SiYSbS
         bYQWwhwLj9+hmvNzP5XksLkXGAFCd2vqSabdcQEyoNPWMSghdE3M/l7H0VNARz4O0Evx
         GNMU6hLXaSW6F6T3C5InE3kTEqW09yw7FMy7vEc57hsdvn7KHyNWVkCOMPvIXb40urfM
         2sioz0mPyU3ii4Qh/ueNURBZ8T7lmBoi15GS47O7dbQeht1x/puqkrJsK8+XW19tA97G
         TTVNRLOyMmxdkriKchCy9j6UKxiIwISfnMigKgQWYCbYG82ZFseDzwUwsy8bldYaFQQo
         Pylg==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@hubert-humphrey.com header.s=fm3 header.b=pkSNDR0N;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=kbUyC4hD;
       arc=pass (i=1 spf=pass spfdomain=hubert-humphrey.com dkim=pass dkdomain=hubert-humphrey.com dkim=pass dkdomain=messagingengine.com dmarc=pass fromdomain=hubert-humphrey.com);
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.158 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7d5dbdca25dsi878540985a.16.2025.07.07.11.56.12
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 11:56:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.158 as permitted sender) client-ip=202.12.124.158;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-553-vQAdhBVFNQ6Yt_daGPnKCA-1; Mon,
 07 Jul 2025 14:56:11 -0400
X-MC-Unique: vQAdhBVFNQ6Yt_daGPnKCA-1
X-Mimecast-MFC-AGG-ID: vQAdhBVFNQ6Yt_daGPnKCA_1751914570
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4DF9218001D6
	for <blinux-list@gapps.redhat.com>; Mon,  7 Jul 2025 18:56:10 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 47FE81956095; Mon,  7 Jul 2025 18:56:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 44E36195608F
	for <blinux-list@redhat.com>; Mon,  7 Jul 2025 18:56:10 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BC2F01955EC7
	for <blinux-list@redhat.com>; Mon,  7 Jul 2025 18:56:09 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1751914569;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=anTtlhCUFhAcgbAp9+WkxafTq+3BguvljuwJJBSGiAE=;
	b=qNzlCtO68/77c//B8wuccqOgPBCmRxG4LuqXW4ENHQpkYDeJten0+gXUrIyTbLS9AdmTo1
	mUuuLb6rSeQDya6RlG5qeAI2trOAhdWQtIRqAEGia2Ngb6ipXrAvjPuBX9XO05LzREzzk9
	+O7QD+hY/It+ozXuwj8XsbpKZwldkC4bVpIMdpkvlMuhCnTmG2PwRql+PnDaQMQJsk09cL
	H6i+SirhZw96E1dt6d+2mr5nznP11FlOVuXJCplNvftgLQSmsq/GipjReILOr31cw7HxlP
	kxo+kM970dBMwqYZI7eBUYNu+u3BecR2f/JYr3/rHrA/pTuQ2ABkruQKSOT23Q==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1751914569; a=rsa-sha256;
	cv=none;
	b=NcTadUW9VgZK/xTDuT7mRdN5SP66B6CMjBki356uqIGbChDNU+PlsCJEtEaPhnGUjbiFS6
	hz/Smf0xnf5ipj5S2pmmL+egQwx7mFUWJuLBqqIUpTIpO6K/HNWVjK+nbP2zrXwJhyXebQ
	YMWOuEae4t8ng7qcbG8001S8aQCGN6VymGUs5zhWhyR3SRUKx9PXVbjesL8NIk9Pes2O+B
	RUBDO751w+F8n2344D4WxrBsIP09/zWmCoxi/p0OiVKXsGHIA2kRgYKdFf3aeqAE87PDNX
	h9aKKhUPLh1vA9cuTUXrfus37HWLjBK6554eAcXy6j3iPZjmm4ZlfnoQdvLWOA==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=hubert-humphrey.com header.s=fm3 header.b=pkSNDR0N;
	dkim=pass header.d=messagingengine.com header.s=fm2 header.b=kbUyC4hD;
	dmarc=pass (policy=none) header.from=hubert-humphrey.com;
	spf=pass (relay.mimecast.com: domain of chime@hubert-humphrey.com designates 202.12.124.158 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from fhigh-b7-smtp.messagingengine.com
 (fhigh-b7-smtp.messagingengine.com [202.12.124.158]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-58-2CbhhtmzN2ykvcILPLHSIA-1; Mon, 07 Jul 2025 14:56:07 -0400
X-MC-Unique: 2CbhhtmzN2ykvcILPLHSIA-1
X-Mimecast-MFC-AGG-ID: 2CbhhtmzN2ykvcILPLHSIA_1751914567
Received: from phl-compute-03.internal (phl-compute-03.phl.internal [10.202.2.43])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 4BAEE7A0024;
	Mon,  7 Jul 2025 14:47:01 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-03.internal (MEProxy); Mon, 07 Jul 2025 14:47:01 -0400
X-ME-Sender: <xms:JBZsaGADYencDeyss7gGx6WAsEtCKrbLA6O80ipWeD7R4-rj08qXvA>
    <xme:JBZsaFy51fLkm9NviygoGjl95gAm7FhZIz9DQ0qaHbWEp7Z810_Lawgue-SlaCMj4
    gHIRS1H3qPLqOhGIKI>
X-ME-Received: <xmr:JBZsaLQz7OrNmT5NN-k7DTja2xddxmpVsPdh718lPwtrfKTlFULM0A5Whz6Kd6y6BSr_Hq7-RTLqpILMKbo3E-nCMOei6unwIK0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdefvdehhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhepfffhvfevufgjkfhfgggtsehttdertddttd
    dvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhu
    mhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelke
    ejiedvkeekvdetueevueeffeffffefffeludeftdenucevlhhushhtvghrufhiiigvpedt
    necurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphh
    hrvgihrdgtohhmpdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhuthdprhgt
    phhtthhopehsrghlthesphgrnhhigidrtghomhdprhgtphhtthhopegslhhinhhugidqlh
    hishhtsehrvgguhhgrthdrtghomh
X-ME-Proxy: <xmx:JBZsaM-xPjNZNB2DRnmt51X8rsZEyKFoV4SA5oaElM_UMnb38nOx0w>
    <xmx:JBZsaCr4H7oZJhaeJqO6p1ci8Ss708JoGOApPwXbmiXnaY2NnYFqQA>
    <xmx:JBZsaJnjEBXeK46rvTU_LSbfbWr-BVbwy6SqdHCzCHxEu2Ly_igFDw>
    <xmx:JBZsaJJJUEGCANhinRyh5y4kVU_UGmw2_Un21JG_Vx5Ateupy038Gg>
    <xmx:JRZsaCuQexaUPrOPaEn4P0gTuXuCrjW-MGFu7zM-o8n9_lZMRSp_l_zg>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 7 Jul 2025 14:47:00 -0400 (EDT)
Date: Mon, 7 Jul 2025 11:46:58 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Rudy Vener <salt@panix.com>
cc: blinux-list@redhat.com
Subject: Re: Firefox Talking Book Downloads
In-Reply-To: <aGwVCQ1QYN2uDHwu@panix.com>
Message-ID: <7fb2821e-6df6-4298-cd18-e789be3c8ff4@hubert-humphrey.com>
References: <20250707113219.039745@wb5agz.lan> <aGwVCQ1QYN2uDHwu@panix.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: -4
X-Mimecast-MFC-PROC-ID: yGgl_3v32rmXTsvjU08dyZP-tFlpm3fNzgscRJwdQms_1751914567
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@hubert-humphrey.com header.s=fm3 header.b=pkSNDR0N;       dkim=pass
 header.i=@messagingengine.com header.s=fm2 header.b=kbUyC4hD;       arc=pass
 (i=1 spf=pass spfdomain=hubert-humphrey.com dkim=pass dkdomain=hubert-humphrey.com
 dkim=pass dkdomain=messagingengine.com dmarc=pass fromdomain=hubert-humphrey.com);
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates
 202.12.124.158 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
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

Hi Rudy: I didn't think these library sites would work with L Y N X? If it did, 
I might think of signing up. 1 time a friend wanted me to look on Bard for 
something for her, but there was way too much javascript.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


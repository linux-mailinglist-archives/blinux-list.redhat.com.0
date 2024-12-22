Return-Path: <blinux-list+bncBC3NDNGRUAMRBZNZUG5QMGQEY2DXEDI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEE69FA794
	for <lists+blinux-list@lfdr.de>; Sun, 22 Dec 2024 19:39:34 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4675c482d6csf59304181cf.2
        for <lists+blinux-list@lfdr.de>; Sun, 22 Dec 2024 10:39:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1734892774; cv=pass;
        d=google.com; s=arc-20240605;
        b=G1i12i146n/8/hywx6gGAkHyOzEYFxWPFTcDFjCpk1zu7lzgkxms3H2jY6Rja3TE9t
         hZUZShzAxwJnuJgYSP1fy09DkWlSYMrD/fgCXAuwU1T5kcIW318eYN12Q0T3HlD5kJgQ
         POoo7fbMXuNHiBFHS7pojBXeKWYTTEtRCT/kAGnnzZNXgo7Os8mDkOU7MsVuMpXUl3aT
         mBh8fS7aVQ2h5+5z7aAu++Y3L5L7wXb3fGQechF8r7MkEUrBp6nXyofCKs+OtShCTLeG
         Eq3E4KxkROQrcyBlOn+tq4dFVTrTRtW6lKyjvDyT9rNNT6UGepLOvXJ6qkwhiTCUwONh
         kexw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=rWesWw7O3GD5ZhMqjOP0FSytKmcMmepGlwwTB0lvVDs=;
        fh=Rqd4lFYpdlLna9HvktFla6QqtWh5fwS+X/nIuMSip+g=;
        b=ZtKkboRtPaJScSKboXKjJDlimIupoCjXoZVI5MRF5rFro24U/K0YWb1qx45MzfHPfA
         en4iH0zLnX2VaP6bF+KeFQV0DhdawLlG2LHqBR8/m3QmzApKMc28TG1QQpjFZNde4wUm
         m2s8K4N6q9TpgLEutnTBGV1eabsuxfHMRjMl8fQLnP1X1zMMgqPMjsuRN+gIMKfBRvhu
         ymquO0bNKNOCbGphg+YBzBbgMcEET/WH30e7reIczAfAc6V3wOYNVl/y4M72zJTX3Q5p
         ejokIFRZi5QMeuJYpIGbPnTqzpxGjTozmXUMi5OxwceA2LLC65yDk97grCkYKFxwBadX
         GWdw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734892774; x=1735497574;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rWesWw7O3GD5ZhMqjOP0FSytKmcMmepGlwwTB0lvVDs=;
        b=ccMYjH2a0BirZrmej3K2D2tDSKgaw+EAnls6X8F2AojVEddUoNaATlZGGx2jZxNw5A
         ps9vsfuKA3asNypg4oNmaqsiG+yAidyr4EQGwiwYrbJeXd3rTqDhcL6JH8AF98Z7kJU8
         GrVROyNU4IV1WrflaJ3qQLz+w2VzvheR4PnJBH3d67QFx+ggmShI7WduKKStVXqFNFeZ
         TgR/tcZNHgj2RbPhNEFT0bdz11LLXU49DkUzL4pRKk5XJQWsgRMDdAgz0AlFJZRNhWKH
         jQUHxU1VY9q0DZq0iPmbdfH8YbsZcw7vMs4alagrSsYF3P4/PwXPynAMA/coh/8qJ0r6
         Zqiw==
X-Forwarded-Encrypted: i=2; AJvYcCXbs+89jgPaqdv1zOJlNm6nosdafUYTjvL1TkbI3zlW5mShErV0W69RctNnvJUNTBMBiDkb2g==@lfdr.de
X-Gm-Message-State: AOJu0YyOLYyOIWTXAhVXd4bIEAgn5Ns5NfF2wmdxYrrCTW5CCTudqFyB
	3qxb1WN4NN2e1uWIrXFW2hlgQu6tdDriJ8WaMDNcQk8nM3bj7jJWxw1AxTu8j7A=
X-Google-Smtp-Source: AGHT+IGJGsKlP5utxtF8S+uzj5ZROsf6miVKHFM9vEgz7lM17neerFtyeboHFKyi42PTKWHfAzwmfw==
X-Received: by 2002:ac8:7d4b:0:b0:467:5db1:696d with SMTP id d75a77b69052e-46a4a8caf98mr174414971cf.14.1734892773379;
        Sun, 22 Dec 2024 10:39:33 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:251b:b0:466:9e59:9807 with SMTP id
 d75a77b69052e-46a3b15d06cls79031561cf.1.-pod-prod-05-us; Sun, 22 Dec 2024
 10:39:32 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUErbTi0P+mwQEUtsJTcQkS/QYUJ/9Nui+QFItif6ywTa/Al+l2KiuoyPhf2X2Shv4idKyc/f1WCz7TLw==@gapps.redhat.com
X-Received: by 2002:a05:620a:650a:b0:7b6:d6dd:8826 with SMTP id af79cd13be357-7b9ba834079mr1875350585a.55.1734892772647;
        Sun, 22 Dec 2024 10:39:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1734892772; cv=none;
        d=google.com; s=arc-20240605;
        b=hPx0dr00Bz3zT2NggeYFb5GW/RZvEXwtCpuK4PCSTnFixIiXLkH+rKS6tL0BBTByLV
         dJdI15wkPgc/Y1t1ofXG1bw2P1wplQ2Gyu/ZOCD5FD855EcH1EYYYIp2GfeHFT+MqLSA
         c8zFdpylChSCwq90Bk4CgTeadN10fktAMNbIMl+772kVTYqnT2pU75irfMu2iGUtzel2
         rK0bHAc1ODn2o7cSeK0Ks28RzWdVTBw7aHCLa77MusrlOa2PY+Vhn/Ac9vxcGzrLmLeU
         GR6yiT7rmCaJ+Lr664anPH6549HWB1OpcxCMLfiPM3kk76OrXB8cPof/EbNYs7dtwfUl
         wOsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=UyDXqVfOPuVNHk7hOzIsH/bEIrjmw2j5gfk0oP9cP7I=;
        fh=RQjsfnR5tUabX8V+ec0wC2VmtzOTVNF308wEgCxpkzM=;
        b=iXMvPsFQVuKgjpqZO9I/uX2p20rjUVj6heOe8Q5u78GNeONhimVokcQFl2umTcERGE
         mIF5KOgd9ynzTXdsH1RXN/oU3wvGHcZly4iLnQ1S451UwrryISEviy4aG9QWfBaBGp9v
         S3DyzdhNgWcRFLHEQUgNnwlqC2s+f33FVk9DLNi5/uuZgnRMrcodltYrV+1CEJVrYUWt
         cibLqerYd8x4pFdNv0lKp+EUpfnbRd22k6z3LFNGtSfwONH6F/XPqo/Mt4buErBFDQrM
         rIS8WEn0WmXEmekBg8zzFgmPhSX3diQk/RYGCNJX/TIZl+Q34NcP8leOAtZQh7ufFHcy
         5ddw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id af79cd13be357-7b9ac47a1basi1098451385a.239.2024.12.22.10.39.32
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 10:39:32 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) client-ip=103.168.172.147;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-166-R5pqCZkuN5G85sdZ0yEzwA-1; Sun,
 22 Dec 2024 13:39:30 -0500
X-MC-Unique: R5pqCZkuN5G85sdZ0yEzwA-1
X-Mimecast-MFC-AGG-ID: R5pqCZkuN5G85sdZ0yEzwA
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 53CE11956087
	for <blinux-list@gapps.redhat.com>; Sun, 22 Dec 2024 18:39:29 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 4DBFA19560A3; Sun, 22 Dec 2024 18:39:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4B14819560A2
	for <blinux-list@redhat.com>; Sun, 22 Dec 2024 18:39:29 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BF479195608C
	for <blinux-list@redhat.com>; Sun, 22 Dec 2024 18:39:28 +0000 (UTC)
Received: from fout-a4-smtp.messagingengine.com
 (fout-a4-smtp.messagingengine.com [103.168.172.147]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-601-6v-omyUtOGGiL0dfeEVHwQ-1; Sun, 22 Dec 2024 13:39:26 -0500
X-MC-Unique: 6v-omyUtOGGiL0dfeEVHwQ-1
X-Mimecast-MFC-AGG-ID: 6v-omyUtOGGiL0dfeEVHwQ
Received: from phl-compute-05.internal (phl-compute-05.phl.internal [10.202.2.45])
	by mailfout.phl.internal (Postfix) with ESMTP id 8001F1380073;
	Sun, 22 Dec 2024 13:39:26 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-05.internal (MEProxy); Sun, 22 Dec 2024 13:39:26 -0500
X-ME-Sender: <xms:3lxoZ1YmMqLQE8b8vPsseu1Ocf1SVPKKcRZHhFpAXxLL8TdaxHcEQQ>
    <xme:3lxoZ8ayCVE4xICT5kUQ8JARL8Qp_JHjNBmPUqdMi9n0GQBS-GUuFE5XPDU9cWlcc
    WbIZyd0S2jFHZUF_-k>
X-ME-Received: <xmr:3lxoZ39ap7GqDshh2voGXn1sEmLD7I4scz-IEc1LJpCQLSiStClh7djowUUrhz0Oaz-Mxm7y6kXwKf6my7JE74nu1O3r5NXFEAk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddruddtkedguddugecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
    hnthhsucdlqddutddtmdenucfjughrpeffhffvvefujgfkfhggtgesthdtredttddtvden
    ucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmph
    hhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeei
    vdekkedvteeuveeufeeffffffeffledufedtnecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgv
    hidrtghomhdpnhgspghrtghpthhtohepfedpmhhouggvpehsmhhtphhouhhtpdhrtghpth
    htohepvghlihgrshdrshhtrghhlhgsvghrgheshhgrrhhrrghsthgvnhhurhhkkhgrrdhf
    ihdprhgtphhtthhopehjuggrshhhihgvlhesphgrnhhigidrtghomhdprhgtphhtthhope
    gslhhinhhugidqlhhishhtsehrvgguhhgrthdrtghomh
X-ME-Proxy: <xmx:3lxoZzoOh9MRLwa1qO6BDZtlOunEvzc9Y81zx3eo8nlSwA2w_v5Jrw>
    <xmx:3lxoZwrvBA0bS0dEaZVMOsqVapSvnQtgAKHANcWCQ4UcdtBKOs_4gg>
    <xmx:3lxoZ5Rf-4N-gUXD4uw-lqd8zzHsiMde0WdYFnCF1zLBE0lycavh9A>
    <xmx:3lxoZ4o79PCwXm83hopnziffUuVP88wLweqoU2ZrcG6AvZ116tumFQ>
    <xmx:3lxoZ7Wj0MUY-8-3GbOJbp7vfYfPCpQeXRWmStOsRGEMNaBMsQzu5tcT>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 22 Dec 2024 13:39:25 -0500 (EST)
Date: Sun, 22 Dec 2024 10:39:24 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: =?ISO-8859-15?Q?Elias_St=E5hlberg?= <elias.stahlberg@harrastenurkka.fi>
cc: Jude DaShiell <jdashiel@panix.com>, blinux-list@redhat.com
Subject: Re: youtube issues
In-Reply-To: <847034b0-145a-4b49-aec2-aef2e3c4abb6@harrastenurkka.fi>
Message-ID: <76aabaee-2e97-71d9-e903-c9eab07fbca4@hubert-humphrey.com>
References: <Z2hB3hnS-T8uW2DC@panix.com> <6ba1cbf7-785a-481a-9c6f-61ca5dd3926e@harrastenurkka.fi> <10ee4d61-9bcd-61aa-8578-84dd82ab5192@hubert-humphrey.com> <847034b0-145a-4b49-aec2-aef2e3c4abb6@harrastenurkka.fi>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: EeUzkKiW6ymOISAMbaiQVXMIYMan_Fu842LY02tRXvY_1734892766
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: a8LmozizXn8Za1tc-0rJKmHJ7SUHOZgo2ox_2sKYvwk_1734892769
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted
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

Well Elias, I am completely in commandline, although with youtube-viewer I like 
the fact of a numbered  menu of items.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


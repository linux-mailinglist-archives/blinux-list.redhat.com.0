Return-Path: <blinux-list+bncBC3NDNGRUAMRBGGW3G5AMGQEM7NAO7Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mail.lfdr.de (Postfix) with ESMTPS id B85929E8A0F
	for <lists+blinux-list@lfdr.de>; Mon,  9 Dec 2024 04:59:22 +0100 (CET)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7b6d2ae6bc0sf150711785a.2
        for <lists+blinux-list@lfdr.de>; Sun, 08 Dec 2024 19:59:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733716761; cv=pass;
        d=google.com; s=arc-20240605;
        b=BfBM6Jnf2iQ9/OFzX3DRazsBhUUqBvhd/dHBEFIrY6U/9wmupxQr3oFqjMCbbEWC8X
         hby2i8zKcsO7zd7BC0VlsKPwR/2MJFZKuYqAB168oD5Fa0KZDb+CqCOMMVMuydeBYIDs
         nCYmovAQiAS91uP79+pIj3d8+EkmDo7LvCNI1Iw46lKbsN9OTz3i02iu5iKastVV8n53
         cHbdhmr9pRG6YOX6HiQoyKuulLZqHYm4SvPh1ML6LQB0FBFmd5kbBaBKNFxM/NIH2NMG
         wAI0JiJMetznhdbZT5EkP92Vn9MqD1zppP/UUEe1GZ+mLE6L7HrTybJNFpWCI+1+JkB7
         8nZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:feedback-id:delivered-to;
        bh=ptAt6MRrVJqSmbWYfZGOtvPWXr0p2DkDW3LHXeqOMC8=;
        fh=m2qj/AaQ500pZPdJSR9N6U/4g+Zv08o6gG4kVtHt7iI=;
        b=MyCo/RUzFpJ2sAcIiS9KYjYf6AkZ1SDntAtThGXyqWnPuWw7XiEnejs4JGjQ6G64IB
         6mPPmNdqf5vwQ6IFmr1Yqdkd/af2yvOiD/hNRx8qdQ3oZN8Uc6C+XlmT9I6h3tI1lDC1
         iPzhBnkVVfk9ptvAmjIzDdkkF9lIUY4GZ8gOPlJUrJc7/JhezW3XhbatzyF+EOVR8KFT
         uSSWAdw3J/4jHEk+FCpfybvchc2Qz7N4LQJ4dkJeRTT0vXk7CGYnK92lK4GEvlXeP/RE
         uy80fAtM81igfygAKkjaMIXpmXRxDC128cyCOv4wS/ncxHnZHL3LpxEm9wI+MZDggYMB
         1dwA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.149 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733716761; x=1734321561;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:feedback-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ptAt6MRrVJqSmbWYfZGOtvPWXr0p2DkDW3LHXeqOMC8=;
        b=GmVj27ZfrHB4+bK/qa0KEAEnMlB7I1ivg8EDHs2fyF1qBfoieJOM0KYLv2+hLMDB6f
         Wy7Gv752SEghH4SqgpF3RQ0M4c5KdO3zZ7X7676tRf95m3gEJAxKXnYw7Ykml8QeqpYc
         ponk3ayJh6QVV1+FJr+JRqSjXZqqPbD5HTKcHAZormSlXvmeK+dtQS3/3ayc8bDN/3f/
         svKFsvaWokfzlknBxbMO5q9tw4qjTLqqlJ5pmmJq84MpbUBTYdJtU4wGLresItFEKtrQ
         oAdUoeCl+vC2oMwsj4SKFY6ki4fs+Qb5cgXw1N5C9vAbfVJ3r6nPNfqTJjmXF3ShywkR
         9IYA==
X-Forwarded-Encrypted: i=2; AJvYcCWNn2RTzMIiZcd2gF1pDB+GZXZx16cKDyZqv+Ib0LfhR7t0jw9allYqw01ViPxIgexrpqEUVg==@lfdr.de
X-Gm-Message-State: AOJu0Yza4wqD7qkea1XRp/yEeKQug42eTYsAncZQFpK/wMq0GTCK1Ivl
	giJTQE8ycANQdW62svPDMzZF+X8dHmNGR/9km+ExWw86S/y91utuJqfuHr6d+qQ=
X-Google-Smtp-Source: AGHT+IHwL+gW20e/R0AS9UR9gjxuw1JiC/DmToUkQBoYwd6Y7lhNFo7PmIizGEoimJZ/lSixDAsqVg==
X-Received: by 2002:a05:620a:2725:b0:7b6:cc37:cbf1 with SMTP id af79cd13be357-7b6cc37cd94mr749642785a.23.1733716761105;
        Sun, 08 Dec 2024 19:59:21 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:b6f:b0:6d4:3b41:2941 with SMTP id
 6a1803df08f44-6d8d6f0f3fcls3925556d6.2.-pod-prod-01-us; Sun, 08 Dec 2024
 19:59:20 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCV0nx10fNZ6ePS/lyTNiWJP+ER0hYOSq60OIes3qZa91Rz14HEFmlOaIEyAezuL0oY4A/gu2ZJMerQKdw==@gapps.redhat.com
X-Received: by 2002:a05:620a:6189:b0:79d:759d:4016 with SMTP id af79cd13be357-7b6bcac06dfmr2027153885a.11.1733716760008;
        Sun, 08 Dec 2024 19:59:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733716759; cv=none;
        d=google.com; s=arc-20240605;
        b=jemmAmhTUsd2vjir9Oijo0zOOYPp54lMoasgByiKEdtV9rIgyoQOhVyQz13i9ZlVSW
         /P1TLxcQwjSRdFAf+PCcmTLJdZibB2Td5k7KpP2C9hBRCKibTWX9XoALJn9ngqB+f46s
         t+UOc2LWdt2w7+PP9C+iXZ9D03uOjquRV9Uzk+lQzcQpgRciZAPUMHRvSI+zOat5P7/F
         M0spQCJNBMhhdW02oFrinuBz/pBLKu2KjnzzRa82lp1+bXjFo8QH5QOnGNL4qrDBC38V
         X1jkamy31mjr7Cq+WRCm+5rJmq14VS+oTp8o/XGq1bPFHaUZzCojrYsliu8XhD0nJEPc
         843w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:message-id:subject:to:from:date:feedback-id
         :delivered-to;
        bh=X34aMBNIPov4FEUdshGWQUhhRQWXAcA24D086ofIBvk=;
        fh=PmA6iCFgUoqrqU6x2M9dR3vZbb+FlLGidi4NLHtSolM=;
        b=NTHMAlBkKwmCQwjWZj3tnYCs4fg397e+htUkJynCR9ksuX/tPVadVr0yiefBYqGKYZ
         jckYkL+bh6JhqCG+hBJhnjCgbYXguLvfHmv69fvza7ZJT/2rDz4XZnek4XQeSv4/QaBj
         9ctXHxK8kku1ccMAHBLbFZJunQL0WUbf4x66TwDpLl4EV03mQ7zoDIndIm2rna0o+xhY
         dlCv0HeKNJuqQag64fwR9uTkaqBY0zWMxcQUJROt3dglCe5kpH0I3wnNelBp/q5xl207
         +S92A7aKdQDYgur5XABUtfvdBTVrG3hLc3hHe3YsiFkdl5UGQUkB5MsgaXSFZZ9ZcmYN
         WSXg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.149 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7b6b5a4692csi1087785685a.22.2024.12.08.19.59.19
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Dec 2024 19:59:19 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.149 as permitted sender) client-ip=202.12.124.149;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-617-LrKewHk3MPC6rb2Abq06Vw-1; Sun,
 08 Dec 2024 22:59:18 -0500
X-MC-Unique: LrKewHk3MPC6rb2Abq06Vw-1
X-Mimecast-MFC-AGG-ID: LrKewHk3MPC6rb2Abq06Vw
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2F63D1955E8C
	for <blinux-list@gapps.redhat.com>; Mon,  9 Dec 2024 03:59:17 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 2988219560A0; Mon,  9 Dec 2024 03:59:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2633C1956095
	for <blinux-list@redhat.com>; Mon,  9 Dec 2024 03:59:16 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 904041956051
	for <blinux-list@redhat.com>; Mon,  9 Dec 2024 03:59:16 +0000 (UTC)
Received: from fout-b6-smtp.messagingengine.com
 (fout-b6-smtp.messagingengine.com [202.12.124.149]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-641-2OKj-669NqS2ockkJtx8tg-1; Sun, 08 Dec 2024 22:59:14 -0500
X-MC-Unique: 2OKj-669NqS2ockkJtx8tg-1
X-Mimecast-MFC-AGG-ID: 2OKj-669NqS2ockkJtx8tg
Received: from phl-compute-07.internal (phl-compute-07.phl.internal [10.202.2.47])
	by mailfout.stl.internal (Postfix) with ESMTP id B58E9114011D
	for <blinux-list@redhat.com>; Sun,  8 Dec 2024 22:59:13 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-07.internal (MEProxy); Sun, 08 Dec 2024 22:59:13 -0500
X-ME-Sender: <xms:EWtWZxYC8ziDHzIYimaHylbdiZhTr0c2h5NqERnepJPzkS1SvqSLAw>
    <xme:EWtWZ4bDldvQASBjEc0bhl6E-3C8KAm-oEMem07x_0QLj6qE1iQkL45cJmVPm3X70
    Zv-jhXHFLQBanpngdE>
X-ME-Received: <xmr:EWtWZz_8VndycnYNlywZpsIKtwgeC4wje9brVoFE5jAiox0NGPCpk_RRt0CTGKyf9mGkYw3Z6bbNNoFl44p0Das0P8-D5XMTTlo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrjeeggdeihecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdpuffr
    tefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnth
    hsucdlqddutddtmdenucfjughrpeffhffvuffkgggtsehttdertddttddvnecuhfhrohhm
    peevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrd
    gtohhmqeenucggtffrrghtthgvrhhnpeejffffudejleeuffeivedtieettedtkefggfek
    vdeujeetkedtheefhffhvdetkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
    epmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
    pdhnsggprhgtphhtthhopedupdhmohguvgepshhmthhpohhuthdprhgtphhtthhopegslh
    hinhhugidqlhhishhtsehrvgguhhgrthdrtghomh
X-ME-Proxy: <xmx:EWtWZ_psoWc-lGOgeICDpRL1D70MwSs5T4W9lqzfcbzzvWhZqaLjDw>
    <xmx:EWtWZ8rGX6YtBqoltvWLMTgpFxqQu81yYM8yscnjp2CCPUmXxdfXHQ>
    <xmx:EWtWZ1S8f9LRiSDKTeWFS9FgegGNR0bGzyGQP0Sac0PBfRRbXq95Dg>
    <xmx:EWtWZ0o5pEvYWvKH35Bqkde_C_utIXWesuuUGyiQiywxkWXyzT3FjQ>
    <xmx:EWtWZ5Bd978xnNCLhtNVysciTWFc-WPZvHpJtIPYBGcLGqWX2Jrtjf3_>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <blinux-list@redhat.com>; Sun, 8 Dec 2024 22:59:12 -0500 (EST)
Date: Sun, 8 Dec 2024 19:59:11 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: My Sound-Cards Are out of Order Again
Message-ID: <b5d047ff-5695-bbaa-d3c3-41ca7fd56396@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: oLea5IDiag5V4WgSMgCxqj8G324Na_XX9CvZx9N2d9Y_1733716753
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: T80P25TPLiVNorizX21xEae2cc1znmVNBaqniVtT4iQ_1733716757
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 202.12.124.149 as permitted
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

Hi All: Well, yesterday after my main Debian SID machine was up 209days, I 
restarted. Ever since, my 4sound-cards are coming up in the wrong order. I have 
a 4button switch-box, especially while I sample live news streams. Back in May 
I needed to restart 7times until these cards came up the way I like. In the 
many years I've been in Linux no1 has been able to figure out how to make this 
setup work. This evening I booted alot. Sure I can swop aliases around so that 
mpv1 actually plays the correct card, however, things like youtube probably 
play on the defalt? Here are the 4 sound-cards with credit to "sam" created by 
Willem
Xonar DGX card number 0
Ensoniq AudioPCI card number 1
HDA Intel card number 2
SB Audigy 2 ZS [SB0350] card number 3
Without the luck of restarting-and-hoping, are their an easy way on the fly of 
reArranging these cards? Thanks so much in advance
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


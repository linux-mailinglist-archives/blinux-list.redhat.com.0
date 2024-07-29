Return-Path: <blinux-list+bncBC3NDNGRUAMRBZ4OTS2QMGQECCF5VQI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E51793EBC3
	for <lists+blinux-list@lfdr.de>; Mon, 29 Jul 2024 05:07:21 +0200 (CEST)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6b7a1c45abbsf54192676d6.0
        for <lists+blinux-list@lfdr.de>; Sun, 28 Jul 2024 20:07:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722222440; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ji6dkYI5FqoCKBUcW0FmRHv9Q5L6iGULvShK+FWaZX9gqr6JJ1G8yC2YWFGpmIesir
         k3jXiSIFN1s3IJEicFfeMswOSR/im2uSX+YxyifsN/5mzTczuuzmk/gxqtz3ILQ6Bgup
         fEF8PjE7z+4Cuy+adp1aXm8fjyg9Np36Ha8DnWLm49mxJwi01n3XoP9jRPtmBI9aq22r
         dCvQ8CEYClFn+S2GbsLbdaa6UeizVI22MP4TO2aoFXRALIvXSDKpx3cErwgnsX2XYHcU
         NBu1uZ0EmcicMcMlUB1rrjwlWI7FRyt2/HNnfhCUWid29ENrZ/D7TDLu8TnqMsZ4tBWq
         h7Qw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:feedback-id:delivered-to;
        bh=LQQPN+odOcSxcdWA78r0UWFA4J/AVEHgxlb7b7g5w2Q=;
        fh=sg0F5j/MT/4vWY++q8hVgiGYk89Y5E60KZZZrpFXNj0=;
        b=PutSbrWFzlthQurFsBmlIn/6AuT46TnsGL50K+acPZNLixmHpIgBwM7OSCKCOfUYWx
         NHYrNGt/Hyggh7MrxE1nfKtQTaQeqNi3zvFt0sqMEf0QKW2KtFenXQWtDntAJ4BPx2y6
         PHTviGS7sVsckKcmztGL16IqZvLh7On/1MATnKiDt0zn8P98jyEE+mdiNrXs3PcKKU2G
         aCH8uF1okzskaoYOmA3SRjyQi5QYA/GGHykO+tKYNUE3xfdhh/YKMic3gwYdcjnt1MCU
         pAYzTSc/8XHoKnuSC+8Nk+0nGWld2TYLu37k6fJvO2q7hUI9+uKc96K3vm0BpHyWC5aK
         MQ3A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722222440; x=1722827240;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:feedback-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LQQPN+odOcSxcdWA78r0UWFA4J/AVEHgxlb7b7g5w2Q=;
        b=A7/GHJcG597Q3QB9sTfxdgTgDzB8qr3GY+IKGTyVT+8Bfb80N5+ebuK+nFA3VGTgRL
         VoDPBBi3OyMTVBOZ4JUhK42DxznulnxiEPdo8ISjZ/PlDNtWj5jwmqjXTMAhVqKxXggq
         KaXP1z+dsT6kEZdPu6342ytcOsoko6yOUl0Bswa1HQ4j/C6lPMzty/d3kgL/UofIEqSU
         1coKTV9FaNHmJywZUydD0Gi+SOok1qwE/c+qs1nYKM7cOjNL0kES2D6mhJtee8e77kE7
         0YD339Qol15SmkdOdUphxd8YoJo76lfMNJh3gA/NCvIo79M32rSraFpq+HeSy9u2CfRV
         fIrQ==
X-Forwarded-Encrypted: i=2; AJvYcCU14/uHfDkmjh+WY+MXl7nqnW9xLvGfqMamOt4vTfp4gDowwRPPiyLLjfwNiBYbO+O9xT8ES0UGW1LaxCdYc+RxB9I/7v20GaKB
X-Gm-Message-State: AOJu0YwfYhGvws58+jtZdvTG3cTBQv0ilCWE8J0G5sk9VslU5ukygNHC
	NdXnbdnkqT+AqDvNIItVMbqWn99u/b+9HEyY/EUjI+4H0C3+xxNOiZxxy8fSIP8=
X-Google-Smtp-Source: AGHT+IEQTFEKmIavVCjpVvOoxnhIgW54S+pMTignBrkb+VPYEuc+UuWiKn9oAmlfMeP9kSGPIMwZuw==
X-Received: by 2002:a05:6214:484:b0:6b5:d95c:692d with SMTP id 6a1803df08f44-6bb56317d6amr111246696d6.13.1722222439652;
        Sun, 28 Jul 2024 20:07:19 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:1a0d:b0:6b7:94b2:b11c with SMTP id
 6a1803df08f44-6bb3c2688d7ls78950996d6.1.-pod-prod-00-us; Sun, 28 Jul 2024
 20:07:19 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVpRHBwyOBywYUq0gS5kidrVGROaLT96pRap8V7JW4cm4nmPxPIWfYaVE4yeC9yFCJbkR6bkfBAEGlJQEbI6HaONZKQ2LqAKkOt5Mwe
X-Received: by 2002:a05:6214:c68:b0:6b5:2bfa:edd5 with SMTP id 6a1803df08f44-6bb56361169mr124183546d6.17.1722222438905;
        Sun, 28 Jul 2024 20:07:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722222438; cv=none;
        d=google.com; s=arc-20160816;
        b=kS1MKvnmk8S4GkZAyDIDrJl2bgULaLTiN3dM+XtSm1bdTY59A7282Z3pq9tYoaOCkS
         KlNv8qGPiSkXJsTN5wygZx9iPL9zoC09vZFL00Hj62EB7aLC+hRLSKnzBEt69BAmRmP/
         +DFnrswvRIMOdyIfHHWPbmeoZLNGhRLXSxKoMH7vhQw8qf/2VLBA2VdpTq5rzPskgN66
         lqHajooFWbw3FzbRe6piWXifqTptKHzojFaUOWQOCyxHKuRNrrokFKq07hd8S02A9H/3
         HTJXdngYJL1GjqxgWQFLN7hOVW712l/RyKfpfXdSGS+z2Qv+2slJTOWs6vaGDSguQvkz
         SEoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:feedback-id
         :delivered-to;
        bh=TGZYIGIOS/BHGE+zX62i2CdGvNZ5SQjFLk4wgIJ/BfY=;
        fh=PmA6iCFgUoqrqU6x2M9dR3vZbb+FlLGidi4NLHtSolM=;
        b=Rwt1KdwAnWs0AzMkASmekiZi7psI+sLQUkZSkcISTZWcEm2T6egjKNPYEejan6xujW
         z2ETEXOp1J7x49nNzzFgJzmXUkByrNvYyQTlDEIovnLxRRY23cIsGCv6xMy46O/68mq2
         VuXGBgz4ZgxORYO9gT5AUyYIr4bnJ/bsWVkfrVODdCvPROifixkkO+p3iyRns1rSQukP
         Y8624KYjtb0A/0HCFlCttagKjA8UPGOjw45GUE8hPj+yXgjQbTlIzSbpIxlgVLpVY1FS
         UmiojFj++E3Bp5/TWDqYlXV4jb2JKUYRYACNx6a1p4tvQfXS9GZFCgtYAx8oYA/Xmeot
         oCbQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6bb3fa87abfsi98094616d6.232.2024.07.28.20.07.18
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jul 2024 20:07:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) client-ip=103.168.172.147;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-571-1vrkIi7ZPTKqzEI3kQ8YPg-1; Sun,
 28 Jul 2024 23:07:17 -0400
X-MC-Unique: 1vrkIi7ZPTKqzEI3kQ8YPg-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4DFCC1955F3D
	for <blinux-list@gapps.redhat.com>; Mon, 29 Jul 2024 03:07:16 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 3F49D1955D47; Mon, 29 Jul 2024 03:07:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3C1C11955D45
	for <blinux-list@redhat.com>; Mon, 29 Jul 2024 03:07:16 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AD9501956095
	for <blinux-list@redhat.com>; Mon, 29 Jul 2024 03:07:15 +0000 (UTC)
Received: from fout4-smtp.messagingengine.com
 (fout4-smtp.messagingengine.com [103.168.172.147]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-256-3TRMSQnRPFSiToJR__5xWw-1; Sun, 28 Jul 2024 23:07:13 -0400
X-MC-Unique: 3TRMSQnRPFSiToJR__5xWw-1
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailfout.nyi.internal (Postfix) with ESMTP id 9FAAA13807CD
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 23:07:12 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Sun, 28 Jul 2024 23:07:12 -0400
X-ME-Sender: <xms:YAenZsSrQJLCrnytbiROnSb81NAPu4YI2tXS3lQFA0qZmP40XRXd-g>
    <xme:YAenZpxWgfgDw0GKJ5Gvcy4FDpTqetSSxwVldHljTX6fbWOWm8h3FSKK66G53Q-mG
    LIQWXHNLhAv23ESPoY>
X-ME-Received: <xmr:YAenZp1gEhqsdmuotcZNL1p-KpSrRF2Y5bFeaC9hn2kbX9VtBHuYuLy2wYYXvg-lvgN1ue_Z1-AZrpE0OOySjKTejQu7aMH1gqw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrjedugdeijecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgvucfjrghr
    thcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenucggtffrrg
    htthgvrhhnpeejffffudejleeuffeivedtieettedtkefggfekvdeujeetkedtheefhffh
    vdetkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    gthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmpdhnsggprhgtphhtthho
    pedt
X-ME-Proxy: <xmx:YAenZgCdPxj0NNX6OInpZEf4S-Bw5zI30PUTjUsqIkFd_uyTyJEz1A>
    <xmx:YAenZlidZ3IL5A401g1cZnXE83RYGVfKeXnUEHuKteWz8dGMejI2wA>
    <xmx:YAenZsqqgatw7JqLDy0Mw28QyyIeLtUFbELrGL0wxdvIQtBTW8N_UA>
    <xmx:YAenZojFfJbrjryNFUCpCAEGv0Q68z7oHX1zgfqOeRf_UAXieQOjvA>
    <xmx:YAenZlZIDW_o5iJXSnJj383bpW3xi0cwG7nla2olIVI81p71ngnoSQqo>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <blinux-list@redhat.com>; Sun, 28 Jul 2024 23:07:12 -0400 (EDT)
Date: Sun, 28 Jul 2024 20:07:10 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: Trying to Install ORCA47 in Debian?
Message-ID: <092a3394-ef24-e48c-6d2f-ae296ea239b8@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
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

Hi All: Ever since Samuel informed about him uploading ORCA47 to experimental, 
I have been trying to grab it. Finally, after `alot of searching, I found a 
tar.xz as well as a deb, which installed fine. However, all the time, typing 
alt+f1 or alt+f2 followed by a command, I get this extra long message about at 
spy and evolution alarm notify 23549
Storm has been trying to guide me-and-he says my issues with ORCA began once 
Python3.12 was installed, so he had suggested I try this newer ORCA47.
Before I grabbed the .deb, I noticed the .tar didn't have any obvious way of 
installing, such as make make install.
I actually might have asked this on an ORCA list, however in the subscription 
info, there were no posting addresses listed. I am useing Allison, but wouldn't 
mind trying Piper. Thanks so much in advance.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


Return-Path: <blinux-list+bncBC3NDNGRUAMRBOMGRG3QMGQESLZBBJA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD96975E79
	for <lists+blinux-list@lfdr.de>; Thu, 12 Sep 2024 03:26:19 +0200 (CEST)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6c368bbf8fasf9559666d6.0
        for <lists+blinux-list@lfdr.de>; Wed, 11 Sep 2024 18:26:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1726104378; cv=pass;
        d=google.com; s=arc-20240605;
        b=jvXC7KkRC1+QSwrvizmju8zeOipdTNdzf3Qj4X6c3yXjAaxboQ82QVv6VoZgIG1wxX
         0uLqCYIOmSEhpWdA9ftEMjVQpRP84iKr/AEZDSMPE8QjnepipiWaeJHOz2xeVxET2ukW
         eNX6kOiIb5Yk9hrgjoJlwQwQURHFr9yTQ21J9ia96m0zWFvZkDM7yMxBWUNN+pPjdfQO
         waH5jKw9dwyFyWCRj18grojGKywRHbTabxw5uVC7Lz+KKr+6jJRMoEQNpSLs5hHvxRmU
         vyx5fZ7Ymnc0OwifYu8DC/ytUSZavNP3Qnn3scyfiqsaQDp7v8vaoygki/ZMFKT381pq
         5bLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=utMXPjE39ZkIeYtmleRXHI94r76Y9GKiEXi9bXSLeYg=;
        fh=dOYBT+6Whn9X2YVVL+H6+04PUlOTiXB9sPxbjjTfysw=;
        b=WPzw8KdPVlZBhsEnGzvBqNNy64dWrkRk5l4or3qONs9bncNgcTfR1p4+nS64/L/C8K
         6bCSRFBtkeofulWD6zImuCG0TuhQ1kuWA/nsAcYNcjaaJ/kOhLqfnXZi526w9mDoac/a
         lHJDRhY7kQQwYxJ+pzvqk3L4G6YNsAOLbhh+OWbrbyv31V7ylLo4g/DDyN9Nc5TBfdNF
         9NDV1FPu0e0RwQG8g/fFqX9jtI0np+GHJfVMHlkSG4ToVeamXFp6EGjbriVzb+Bz3FHM
         BohbSQnuiIgOSM9DDKRf3KC0dtLqpvMZSgT5f2ks/hsTtimgNIALn1Tt6UBepTmaaAz+
         T56w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726104378; x=1726709178;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=utMXPjE39ZkIeYtmleRXHI94r76Y9GKiEXi9bXSLeYg=;
        b=P8i+Qgseip4z2V2Q6rt5jvqQLfL1pDkoeo8qNS6BLIqoQ/ohIqiazw8ViHCXfuVO2b
         EOesZ1D+MX8pGU4aMIcCTlQop6WnPfzKerVTThFD18uE0xef9KZUPIIg8R43On7rQmtk
         mUpg06wMN4JpCPP/qhIZo/LaX1YzRGxV4C/KSvhh+aEFQwaIQyuMnl2v4iN5OssWVIxR
         I6o+vhUrH0R3nqOSSZ2371KdERMTwF1V1wYp+R5y9eO/Yu9/OCmrzxdQERyxChuLT/om
         eF2gDMybZg8tZelPTAYhBj/rjLMG/HEFExGlvzKHaQZ7Lswj4CYfoR2fNurhdc4zuyO0
         UwVw==
X-Forwarded-Encrypted: i=2; AJvYcCX3vd2cgzdzSoWa8RMWQIHSHTrD+2xDAYY52gT1p4AzxaD2hhrcTd2edyOtFnY0AN9qA/ORMw==@lfdr.de
X-Gm-Message-State: AOJu0YwLATovxnd1HMJgMUYAvHnBcaAfWjmWqXjqYLA2L48dV7Xq49PU
	gopr36lH5K0u2GvCrRjGkB7hKsejGDWxsM75Abr5QFmd7ii6H4TasbHKJzfuqlk=
X-Google-Smtp-Source: AGHT+IFQ4MyWVgo0eQuF+cQkBKRGTme1GfKYhEfEc9tCVRfyiXNW2dtUzejMS5lYQjL7hZeNuvbEMg==
X-Received: by 2002:a05:6214:3bc6:b0:6c3:3efe:3fac with SMTP id 6a1803df08f44-6c573aacc92mr26110206d6.3.1726104378211;
        Wed, 11 Sep 2024 18:26:18 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5ece:0:b0:6c3:5462:e5d7 with SMTP id 6a1803df08f44-6c57332475als3910456d6.0.-pod-prod-00-us;
 Wed, 11 Sep 2024 18:26:17 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUbGCHCJ8dGhX4XRx7bsKHXrwXXagze3eNjN8af/wKlM3vjNCnxOl6rkIwJLMSUGY3A4sxTfx7mhIoQJg==@gapps.redhat.com
X-Received: by 2002:ad4:5c65:0:b0:6c3:6344:d4e1 with SMTP id 6a1803df08f44-6c554d844ccmr133787456d6.20.1726104377324;
        Wed, 11 Sep 2024 18:26:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1726104377; cv=none;
        d=google.com; s=arc-20240605;
        b=CmnNO6nSeNKZZsuRhthzr3yOCFuCnE8BDP5o3gR6mM056wR1xUzQmBjFdT8HAWjchc
         jkjc4KakGWlVwlSnDdQMh5q7dSurH4M6L3HY9odFc8oLpnQHo6CYM4cB41xc7IAoocOD
         XHpBIe6JSEgYwaATbRtKAkrPDfouNGUDZluC9Si3dW7LNm0E8zppxDquC5i7ELaBbj/q
         y3b1tkY/2BZhlb4nadpk0ODjVZooZFDM1eodzDR+ISlRqUorXZMWUrifF5RQN7kaBN76
         LsDMOgUv/jHmiFFcnLx/LagMVaN0A1oWLAdOrOAerjLjrJ+Wx0mJjj3rElmLQnCZLPq4
         /C8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=mZaaoA++wq9pyP5ipOnGU6YpfDJzes4jsfARKD7AreA=;
        fh=fLi+2MMAVEdstLaBSXGv9CKMpNjEGWytbF/kmHWr8LA=;
        b=R7XFCKxHnUQ7YIM+x/YFk5kd3P+G/dCi5ZEi5bmi0Es0IMLZp4YdAmq9mPgSnd6XmY
         l7xihnRKIg9l7QE00ISeSt7crhRuvU31KXU4atKxban0WcCn7MTysoA6HbOknbdj6hd2
         EdFZEw6PhzuYLFsKafuA5LEZ/mn5nyfB8IGj4B351bw9KyVZvRljHCrX1pnDIjHD3mDT
         jtoBn0iYKBnALVDvvJGjwSIwBu2aIW/4WFDeTKBFXnsw9LAAzA0wZugl4nrfSe+r5hMw
         F9nyoB86UV6cyRNdynP4yyYBxLQ9C9z108iLodTlKYUJEDovFlWJq0mNNpx45/1yoGeN
         vupg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6c5348c8c73si112033916d6.558.2024.09.11.18.26.17
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 18:26:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) client-ip=103.168.172.147;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-421-jovZQeiLM_24Ff08qldxrQ-1; Wed,
 11 Sep 2024 21:26:15 -0400
X-MC-Unique: jovZQeiLM_24Ff08qldxrQ-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2A96C19560B4
	for <blinux-list@gapps.redhat.com>; Thu, 12 Sep 2024 01:26:15 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 23F4B3001D11; Thu, 12 Sep 2024 01:26:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2153E3000235
	for <blinux-list@redhat.com>; Thu, 12 Sep 2024 01:26:14 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8EE5D19560BD
	for <blinux-list@redhat.com>; Thu, 12 Sep 2024 01:26:14 +0000 (UTC)
Received: from fout4-smtp.messagingengine.com
 (fout4-smtp.messagingengine.com [103.168.172.147]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-684-91elPuc2Ov-bererVbGe1Q-1; Wed, 11 Sep 2024 21:26:12 -0400
X-MC-Unique: 91elPuc2Ov-bererVbGe1Q-1
Received: from phl-compute-02.internal (phl-compute-02.phl.internal [10.202.2.42])
	by mailfout.phl.internal (Postfix) with ESMTP id E65C51380121;
	Wed, 11 Sep 2024 21:26:11 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-02.internal (MEProxy); Wed, 11 Sep 2024 21:26:11 -0400
X-ME-Sender: <xms:M0PiZsBCh7HC3sfCHCXc9bCBqIgO9OJ_E4QXZuYB_BLnmYa1OGT9CA>
    <xme:M0PiZugHhm0A0xS9mX_ZvLeJtzVpvVIiRBXgTlxwrUgdKxTNcjHeVDE-A03_xJaEy
    C245_EW7yh6QgDKBbg>
X-ME-Received: <xmr:M0PiZvklbH7q7qDFXg8pYVcYBzWI--m3xBPUkIIZv67YlNXLGedp-UlG_iHZW1gi2TVy-L-qmCyVpJ39yM7GKBYApqJ5SB6iNrk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudejvddggeejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
    htshculddquddttddmnecujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecu
    hfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphh
    hrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpeeiudfhfeduleefudelfeevffekheeu
    gfetjedtgfdtgfdvuedufeetfeefvdekveenucffohhmrghinhepghhithhhuhgsrdgtoh
    hmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheptghh
    ihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomhdpnhgspghrtghpthhtohepge
    dpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheprhhmrghnnhdtheekudesghhmrghi
    lhdrtghomhdprhgtphhtthhopehjuggrshhhihgvlhesphgrnhhigidrtghomhdprhgtph
    htthhopehrrdgurdhtrdhprhgrthgvrhesghhmrghilhdrtghomhdprhgtphhtthhopegs
    lhhinhhugidqlhhishhtsehrvgguhhgrthdrtghomh
X-ME-Proxy: <xmx:M0PiZixNmTLEcQznZ0TfKMGh70AWf6JlvTA_8QyLcOLRJasMyu6FiQ>
    <xmx:M0PiZhQob89VCINsEM01t-IVQXXXe2V9OOhTVu8Ukoa-03AGNev0gQ>
    <xmx:M0PiZtakrPuoaEdbTr70m4Ff_0T_N1g6RwdYB9AFLrhda6wcZeoYdQ>
    <xmx:M0PiZqQEgEBw7DpYaIGFoBQ3VBti1fsCkbh0whwZ7sbS4swfceL6og>
    <xmx:M0PiZvMDCLBiV2e8_LU9U9vND0ALwlzQXQiIhShNaFNluXnpxiteh22I>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 11 Sep 2024 21:26:11 -0400 (EDT)
Date: Wed, 11 Sep 2024 18:26:09 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Ryan Mann <rmann0581@gmail.com>
cc: Jude DaShiell <jdashiel@panix.com>, Devin Prater <r.d.t.prater@gmail.com>, 
    blinux-list@redhat.com
Subject: Re: any chromebook users here running linux on chromebook?
In-Reply-To: <BBCE40EE-AA90-4F6C-9784-20BF9F6C09C2@gmail.com>
Message-ID: <19006e66-1bcd-196b-8e63-ece8a8c9246e@hubert-humphrey.com>
References: <55F61CEB-56FB-42DF-9225-1A94CF10141F@panix.com> <BBCE40EE-AA90-4F6C-9784-20BF9F6C09C2@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
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

Well Ryan-and-all, that command is
git clone https://github.com/tspivey/tdsr.git
But still my questions are what are the differences among TDSR from Speakup or 
Fenrir? When I run "tdsr" it says it needs "pyte" Well pipx cannot find it, 
aptitude says there are over 200 packages, too many to show. Wish I could get 
that limit lifted.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


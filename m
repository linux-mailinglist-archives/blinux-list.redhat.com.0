Return-Path: <blinux-list+bncBC3NDNGRUAMRBCWX7S3AMGQEGKJ247A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1D0972003
	for <lists+blinux-list@lfdr.de>; Mon,  9 Sep 2024 19:08:29 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-457cde3fd7bsf65733361cf.3
        for <lists+blinux-list@lfdr.de>; Mon, 09 Sep 2024 10:08:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1725901708; cv=pass;
        d=google.com; s=arc-20240605;
        b=HTxOhDpsb5W7dDmmI1qIEuZVML8Ssd8bfFtoFR+R5dOHNJ16ZveBXAXuNPTeZQUObm
         gwipLK6TIS+XZ1npca0+RWVUiWFnXYmvIyY+lhYHfer9PxYwVgHpPCq7T4F4wYqS3AXz
         cl0wgJ9xMETQjdW337TvB+Tc3b/q1ZVRezlMTRMnCQZnIx1xz/s/2wVb/VqttrtYI8ZK
         FBi0Nb6Tcd8RgWCeFNOtfrfV8Prx5W2b1y6lFZ9UEWrCdWzcd065xizh0wyQUOjoUok+
         5vf4zGd1ZdjnB0V0M8lvXOssWLD1Dbt57qU9ItcwBCgZIDfeXRHkLY/I8aBkwA+6DjJf
         7H6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=/42MI7e65aZ5aifM9tA27kWgQSa6wTSOSAQqByTOqB8=;
        fh=CYBlJfmNIvNNxXWKQjRBX+O9l2NCzXBPg5J11jCBJyU=;
        b=NQvYwciJvA5ukogIEtQp6qb7D+MV1iDHSz5ZNsx6s4nstue5LGFNJLhBhwsB89V78J
         etZ+oJ6BcMvUUCQovvg55f6roLKZAtGIwzbOR3jIEWayU3Joi6h0lNQqKBfRasj99hSv
         CMLjbDheSsM6UG+BSdroIQbeT8JqViA7cSQB/WnAzLwz2nmuZVj5wWed/NNx+uaFFilk
         VdKYc3OoKNlFyaOPCiCVF3sPWq7kfi/PEW4LHTYfEjam03rPcDlcpN5ZaBugIxU97es8
         0l9g96aQWD4kXaSPXgtIVTjwVu2VDSyMh4goWXNBrMWdUhZpT1ysrVhiSH3H0CLaRPaa
         m/bg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.144 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725901708; x=1726506508;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/42MI7e65aZ5aifM9tA27kWgQSa6wTSOSAQqByTOqB8=;
        b=E1gv5i+XW+INE+BQm5DQcBD5vHjlCrpQoYlVe8/oph75dxDdXqrM9FPu8QHWjyoedH
         +cT2Ix/LybClrdPEPjyelN5NSN27QUeMXy5IbGdE4XzZOB5ez6TxbPeO971mA2jeCZD1
         ZiOsJH/3kHwmgNbaGAiUmxQ8zJnqbGxyBIrhuwzm2iQiRz+JKFUE75+a5ZpjpP3uasoz
         cmQNl0XCdGA0f2g/fvDwOw/NyENHcmNJIyXG5lc+N2r6sjJsXS5gIHjz0+vXUMpDj0AH
         11XvSbDt3P6/hu3EHWwRg83k7XYp7R0ITidwdX2vmERW5hyMucB8jcB1xWmHT2bja4aT
         1LcA==
X-Forwarded-Encrypted: i=2; AJvYcCVmJ9CXTIrnOL8L10A6L4E1eNBtpxXD3zuYmq39M4jw8Rw7jEY4ol0jC00nAfZ86TQ+hsmDTg==@lfdr.de
X-Gm-Message-State: AOJu0YyF/OG4qZ65eQ+Ehe4o0n1m7xWMTPq7jXh/z962LMpoVybvN3sI
	vU4fS5+W653rnVR32GAi4x+zuxw+itWJTjcmHnW8TPDoWOWXRoV6801RR2FfTRs=
X-Google-Smtp-Source: AGHT+IGMhef1liIpCtW+DoXF0jmU5UXCIko3ut85Gc9nZctbp2bp4v/bnwbsVvmizoIYvLPutgIvHQ==
X-Received: by 2002:ac8:5702:0:b0:458:1029:9be7 with SMTP id d75a77b69052e-4581f47bc57mr98031091cf.21.1725901706811;
        Mon, 09 Sep 2024 10:08:26 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:58e:b0:458:2e21:e409 with SMTP id
 d75a77b69052e-4583c7d7295ls1475251cf.0.-pod-prod-03-us; Mon, 09 Sep 2024
 10:08:25 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX8NSRQJmUNc/0zcz5JdCQOwW+hcJJ/K+LPQ6jh8VQ8myAvy6mIbFNbe3IJnqx1trv1Vvhk3hTJekcWNw==@gapps.redhat.com
X-Received: by 2002:a05:622a:208:b0:457:d1e9:fc1c with SMTP id d75a77b69052e-4581f5eedfbmr94650731cf.42.1725901704754;
        Mon, 09 Sep 2024 10:08:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1725901704; cv=none;
        d=google.com; s=arc-20240605;
        b=UHKnmQ5MFYRjdLCZ7KBeu7ybgP8f+ZzppcaBZEdBaXlMx0Wfa9Lf93HaM9llmIcR5U
         0W85GD4wfAOkwojMk3RbxQLephvi/wLxOTczTjQdv+iOhZX8vPuOWOue7qOQxupfRqoO
         4we4qB216cf/4UYutWTej9Pm1/A8q4XKCfY08PeyA+MKQZpVKtcA+OxZJrvJGl3nTR50
         t1UQ27SCxGkU6qSd8eqwJ+fhzfU7nVmsaIHHKSHaL6bP5V4PKKSFHc8Sz2zFwbi/Tspw
         3Qtsv7m0Foum3eFI4RtcsL0ijcCber9y4i5scW5Nc2JGTQVRwdZ3PYkeFsRk4CiToyUo
         /lvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=/AU7wSctTOrkTyJyPDLDHa9lVKD5UOi4D0/iMpGWAwY=;
        fh=sXTSyeoOorPvq1Q0sPv/79e1odYJpNmAHWeMaXJbk6o=;
        b=Vr4yT6MTgo3H+ywCUxaB46tDMucaZ07I2sdYKl39utbG0O1AWTe0vEP4QbqVGfyfVJ
         v9AuYH6o+v77UFNEX/M7x6p3er+XjUFhOVV5QB/bHrNpqScyUwDfMvBqnob1jfRVJYB1
         Rn795pCC5rSZ5BBZq0dCmItV7kEjDGXzUR7kkMjMZ0PAhJYkxmFO4ofCluSpTxHYftsn
         rtogMoAZI+0KLEnGku4Cx8oBWHkukzrZ/GlgxfPdp/wOUFyt5Nj6zsm1Vqa7Q8mfcULL
         Zz61V2Z9HDFS1pS4WAbrN8eHl0vdh8I7ERyoFzsc9Lubr8vV6uY4l7E2RIOiQEz9pFKt
         tbkw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.144 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-45822fa69dfsi60172801cf.534.2024.09.09.10.08.24
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2024 10:08:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.144 as permitted sender) client-ip=103.168.172.144;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-447-pMqmUVhpPbKGZgssw76MFA-1; Mon,
 09 Sep 2024 13:08:23 -0400
X-MC-Unique: pMqmUVhpPbKGZgssw76MFA-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A3C65195608C
	for <blinux-list@gapps.redhat.com>; Mon,  9 Sep 2024 17:08:22 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 96F98195605A; Mon,  9 Sep 2024 17:08:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 949021955D44
	for <blinux-list@redhat.com>; Mon,  9 Sep 2024 17:08:22 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0784119560B2
	for <blinux-list@redhat.com>; Mon,  9 Sep 2024 17:08:22 +0000 (UTC)
Received: from fout1-smtp.messagingengine.com
 (fout1-smtp.messagingengine.com [103.168.172.144]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-35-KuqturA1MF-2TamoZLQJIw-1; Mon, 09 Sep 2024 13:08:19 -0400
X-MC-Unique: KuqturA1MF-2TamoZLQJIw-1
Received: from phl-compute-05.internal (phl-compute-05.phl.internal [10.202.2.45])
	by mailfout.phl.internal (Postfix) with ESMTP id 13D491380220;
	Mon,  9 Sep 2024 13:08:19 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-05.internal (MEProxy); Mon, 09 Sep 2024 13:08:19 -0400
X-ME-Sender: <xms:givfZnY4VJkyV246SQA8_HWCAWPTb3uUCB7cqXNFPQnAhWuWWqJrFg>
    <xme:givfZmYqVJxdmHeIKiFbVKxxw0Ho7GhWMQx9UJCycjZoejbhn-Boyf_C0Y5u2IN1W
    ZxTxeCFbJmjidtxiic>
X-ME-Received: <xmr:givfZp8JVq8pqqODJzbbyUXv6HNqqWyxfYzIlPBDENfUNa-NJAYFjfZwe0vf_A7l5BVTobQ4hSGv4H2qwDFzYSG7D0VFI2m2-Ko>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudeijedgleefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
    htshculddquddttddmnecujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecu
    hfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphh
    hrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedv
    keekvdetueevueeffeffffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgih
    rdgtohhmpdhnsggprhgtphhtthhopeefpdhmohguvgepshhmthhpohhuthdprhgtphhtth
    hopehrrdgurdhtrdhprhgrthgvrhesghhmrghilhdrtghomhdprhgtphhtthhopehjuggr
    shhhihgvlhesphgrnhhigidrtghomhdprhgtphhtthhopegslhhinhhugidqlhhishhtse
    hrvgguhhgrthdrtghomh
X-ME-Proxy: <xmx:givfZtpevvkPNC8ADsb-CPxLzqt1E1JobTGxZw22uBIRySz5mr5lCg>
    <xmx:givfZioDghgMdA4PpPSdgl44fmbfE3mYQyqYQGPhYdXSqo_jhkLAqQ>
    <xmx:givfZjSx0RVRSpN0jacKO6t9eezrXJ-jZ_tknc4zQiX3YBlkiRWd8Q>
    <xmx:givfZqq8CpYVFY_VLOS9YC0zMh_M6Y2Xh776ys-FG5YkhNTGanesfQ>
    <xmx:gyvfZlWJQ9u2zUSo-6baQh_bxNInZw18OcBccRAUB4n-TzrVB3YdYDNT>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 9 Sep 2024 13:08:18 -0400 (EDT)
Date: Mon, 9 Sep 2024 10:08:17 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Devin Prater <r.d.t.prater@gmail.com>
cc: Jude DaShiell <jdashiel@panix.com>, blinux-list@redhat.com
Subject: Re: any chromebook users here running linux on chromebook?
In-Reply-To: <13d97cdd-9e3d-4c80-b0f4-89f0dc16e2e0@gmail.com>
Message-ID: <b7b0df56-3f26-67c6-f36f-6f7428f7b711@hubert-humphrey.com>
References: <2A086636-DD93-48C7-AB8B-146614201E15@panix.com> <13d97cdd-9e3d-4c80-b0f4-89f0dc16e2e0@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.144 as permitted
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

Well Devin-and-all, what are advantages of TDSR over Speakup or Fenrir? 
Relating back to Jude's mention of Chromebook, while I do sometimes attend Zoom 
meetings, the screen-reader Chromevox really doesn't seem to have flat-review, 
which I use all-day in Speakup. I just tried running ./tdsr  I get a traceback 
line14 no module named "pyte" O, I am in Debian SID. Thanks in advance
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


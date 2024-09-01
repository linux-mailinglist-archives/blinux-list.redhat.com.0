Return-Path: <blinux-list+bncBC3NDNGRUAMRBBM22O3AMGQEEATFJUY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f197.google.com (mail-yb1-f197.google.com [209.85.219.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1FB967C10
	for <lists+blinux-list@lfdr.de>; Sun,  1 Sep 2024 22:22:31 +0200 (CEST)
Received: by mail-yb1-f197.google.com with SMTP id 3f1490d57ef6-dc691f1f83asf2045974276.1
        for <lists+blinux-list@lfdr.de>; Sun, 01 Sep 2024 13:22:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1725222150; cv=pass;
        d=google.com; s=arc-20240605;
        b=BwgXBQfJHVnh4MwgDok8Z8k15kO3cSv3Oewv9jQe4un63Lgl7mpDcF8dtB3OmmBOc5
         sI/ZNqlLumATp5fUPWSwz58kN33GcDnPmOl7PTIcGV2U6Eu1632UbW+ilY7m84SCCtgE
         6Zqfrdv7rI5O2QKsChhlaMjmX7DJdwnZw2fWDmtAIyjtASfWtkwDMFu58hYqz+FBjqoT
         U/ZxxsyFLpw38sdcLibnjeV4QXGH9aB7cWSssfWEBFmEhNbgJzeEcHvix0On1tagWDG7
         EgH6RGyzyqhOnk88+6/5RuszDQumqRbxkPkyAUH3OhFnBSiMtOZ46v7tcvqibq49iQX6
         l32g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=9cBBvLhAM5fx0AFv2OVee9Rcr+IVK4JduJMqDpmuUrs=;
        fh=dX76jfxkhS91oWcw5SHj9e4io49G0lRFrideo2P5Jvo=;
        b=EseusdKDMKCgHZH/05JahnDFJ7NOTN+2OY+BOrvCKWjw5/M/0I80DGkzu8a510lnKi
         x5ggIN4WwOyrS1+PZRN2Q3Al65r997vVtzM76zWZREyfQDOVPm7WzfsRB6MF/4qlIL92
         0DaaZhJ7wKeGXD0c0gvMwUJIC9Dm+JN+PyKRN/s9QBDm8VUQM9mSOq0eprSB/3B+eR6W
         DTAecmLU1Cp+cvqMetWUUHSGWMsmZEi3LHschEda8AfKnOY6UPY8csNHtuinB2YSWXhN
         yx6EAnVkHDu1z7fS5M68AKOakDbwwL3ou/UFAaVCviU4vBxCy14BRhWaB3QCyDF5Hja5
         UH1w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725222150; x=1725826950;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9cBBvLhAM5fx0AFv2OVee9Rcr+IVK4JduJMqDpmuUrs=;
        b=aC5ndzqG5X0mZqYPvM1cTn7zJsGMqSeQBmbK/MGWBLUEGGBUd0MOakZS6H+QeLALII
         IjOaBZdrLVr60J20p8ZVPcFVcj8bwkqRvrzmZXyrUjK4i8MNv9DfTBFlYmLBVb/t4P4a
         Uhn8Mbyhyzjzx0kSpU3SMwSj3a8UZkwRkF/znmti5XAVVaVRkg156Svka6r2JpRADlOb
         xySqmEpfc9Wvh7WY1DrmAhJVp9C8I43M49yOv6xTetqhglOkBHkYkZbT7vo1SY1HLLHT
         OKTN/GfWZRkHhbbVbmxWA6oXU9DUBxyilbgzgIJWPls7/8SFfTPiEbhx6xC/jxsHoo6m
         9eIw==
X-Forwarded-Encrypted: i=2; AJvYcCX7ZnuB4/lX8vMRYs49nvMX6KgIj42Px6iBHsR4n3tMSr/lMMRGoafY9RaUhIjfGH68sMm5sw==@lfdr.de
X-Gm-Message-State: AOJu0YzgXk1ITw7eUT21LHRDrJEeBETGyuIaqg7dXCX75u7Nt8tpc25e
	r0JJfSG2A5/MthgNlzz7/24oKd+4zWFpDl4qvD1LTPNXDikjifgPZRwqpPZjvsQ=
X-Google-Smtp-Source: AGHT+IF3d7nsDelh9ztYJNPkUQ9RmnN/lSRnFfTWx3ds5W04hoHoYJnjMd7y0UDBt8/rFG9pdg/MRQ==
X-Received: by 2002:a05:6902:12ce:b0:e11:446b:d43b with SMTP id 3f1490d57ef6-e1a7a15a08amr6522715276.16.1725222149613;
        Sun, 01 Sep 2024 13:22:29 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6902:72a:b0:e13:da55:4e4e with SMTP id
 3f1490d57ef6-e1a58256fcels401577276.2.-pod-prod-00-us; Sun, 01 Sep 2024
 13:22:28 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXUhRLochIW830hBxnifzf3QUQu45otWSMdwAnmg17h50CjrXqFRnl8NVbwvEHTS2RuIeMr7ocpQtRjGg==@gapps.redhat.com
X-Received: by 2002:a05:6902:270a:b0:e1a:9adb:4fc1 with SMTP id 3f1490d57ef6-e1a9adb523amr3433513276.27.1725222148719;
        Sun, 01 Sep 2024 13:22:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1725222148; cv=none;
        d=google.com; s=arc-20160816;
        b=EABIzfCbfpLK70Do7xZqZ5gxiE7dsZRQgYCQTIHNEWpY2w8VYk1DY7UxyPqJ1brMbl
         8JutPo2b66cSY9Bufvo2FPPvgFk7ryxPIzF5uSNTxlHzzDiiLOq6BjxPBN729nRxoWSU
         RLTEqoDSLrKYCH4z6yGG8rrZIKFnI85BezLz9F5wcq7DVxFtxhvr8+4yjpAXNvSXziRF
         L6hPEtp/xwcxDgKIZZhL02q9x2P6BDcjUVyWrKJRNlx1SoGj9jQvYrQq3zW/jpqDW2CS
         yvJ7U3rMCShFWNaFHD0jbdBgbg20mZJS7do1WMp5Gfrv36Xihr2C/NGT9J9w1HSg5N/N
         9SYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=tP8Bs6OiEAEkYz9ZzPC8g9MGXbrXwGM8FPcYBnqPxgY=;
        fh=9eO5OJLWkY/2kptlrtzvsImZQpU0maUK7ANJ4HYf5A4=;
        b=sQYT3xDSkDBm3kroUwJjYia3N2zMDJr0hGGsplnJtAZFX5Bu7UVQt6BWhF6jWUg/5A
         cepmNSbAo+9RvdJoCbokxxLpQUsnnB8vfBdECEyWIA2+Y5vPsVdYVI+4EReiXrE/wg6g
         RsStbgjmsN5ntdvED/wSLkDBthgAYfPk8dUB9D6j/vNbh6mDc9BQ3A3+avWypWzzWngw
         1so6H49IO9XAsJlqArjspKwwR4zq1x//V9ywlYBkPZNPGitCrye4tPTF1ygFkAL4ZTse
         5Wkk3wCUzZ0Fja4zrhYo8prrfiXat8qrEFiV0QDDohrnXgVwbcvs5KkMv5QUg8R6BU3N
         Fnsg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 3f1490d57ef6-e1a8f4f51a4si2610898276.653.2024.09.01.13.22.28
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Sep 2024 13:22:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) client-ip=103.168.172.147;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-553-qvGf5sNVOKKq6vO2Af6gPA-1; Sun,
 01 Sep 2024 16:22:27 -0400
X-MC-Unique: qvGf5sNVOKKq6vO2Af6gPA-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7CDCF1955D47
	for <blinux-list@gapps.redhat.com>; Sun,  1 Sep 2024 20:22:26 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 7692B1955F45; Sun,  1 Sep 2024 20:22:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 743A41955F44
	for <blinux-list@redhat.com>; Sun,  1 Sep 2024 20:22:26 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AAEEB1955BEF
	for <blinux-list@redhat.com>; Sun,  1 Sep 2024 20:22:25 +0000 (UTC)
Received: from fout4-smtp.messagingengine.com
 (fout4-smtp.messagingengine.com [103.168.172.147]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-178-BQMaSn4sM5WE8s9C0Jybog-1; Sun, 01 Sep 2024 16:22:23 -0400
X-MC-Unique: BQMaSn4sM5WE8s9C0Jybog-1
Received: from phl-compute-05.internal (phl-compute-05.nyi.internal [10.202.2.45])
	by mailfout.nyi.internal (Postfix) with ESMTP id D9DAA13800DC;
	Sun,  1 Sep 2024 16:22:22 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-05.internal (MEProxy); Sun, 01 Sep 2024 16:22:22 -0400
X-ME-Sender: <xms:_szUZqOKV_cMeNIdq7gf1Mtb3px5WZyCuhR6nDKfyZ-L9QUKUvy-9w>
    <xme:_szUZo-VDmeJsKQJTAiQlntlmCuu9u1gbXzdfsqMj6xIXE5OMKxd928dJQMXPoLMV
    ZKfgdQEL5Hkvrw8RDo>
X-ME-Received: <xmr:_szUZhSAyNSp2XOtbzRAIACzRRuexhSChdwm4esdX8CzrDlO5-7I2oPKHSU1p1jkdFXyj4uzBhuauU_k9eWnNynGAplxx5ye-y8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudegkedgvdduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
    htshculddquddttddmnecujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecu
    hfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphh
    hrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedv
    keekvdetueevueeffeffffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgih
    rdgtohhmpdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhuthdprhgtphhtth
    hopegvughhohgrrhhirdhssehgmhgrihhlrdgtohhmpdhrtghpthhtohepsghlihhnuhig
    qdhlihhsthesrhgvughhrghtrdgtohhm
X-ME-Proxy: <xmx:_szUZqvsw2tjY3wYr5LcVdxT80FcLuLZmzPglcc71DemTipJjo7HUQ>
    <xmx:_szUZicr9ZzBFr6n13_dlqpuAzpDuJDNupUJ1tLylsPhuTesPype8g>
    <xmx:_szUZu0FAzTCl-tQGncVaKiP3TbmvT-pUYyxzPJrYVN96awpRx33pw>
    <xmx:_szUZm8FtktBaY7NpJV5gRRgmPqOolySw0gUtf1UicMqN-rspxUU5w>
    <xmx:_szUZjrW1bM8ivjOOrFCooRVByEH02a-UmZpmcYihEtqjKBiss_PiBO->
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 1 Sep 2024 16:22:22 -0400 (EDT)
Date: Sun, 1 Sep 2024 13:22:20 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Edhoari Setiyoso <edhoari.s@gmail.com>
cc: blinux-list@redhat.com
Subject: Re: no PC speaker beep on startup anymore
In-Reply-To: <cc05931d-51da-489c-93d3-b8a831598ace@gmail.com>
Message-ID: <b15f6fad-51a3-305d-b0b6-24554cbf0c7e@hubert-humphrey.com>
References: <cc05931d-51da-489c-93d3-b8a831598ace@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
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

Well, you may also want to install "beep" and "pcspkr" Seems there's another 
program, somthing like abeep?
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


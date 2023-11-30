Return-Path: <blinux-list+bncBC3NDNGRUAMRBUUIUCVQMGQEUDEWFFI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D6D7FE7BB
	for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 04:41:08 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-67a3b01018fsf5871316d6.3
        for <lists+blinux-list@lfdr.de>; Wed, 29 Nov 2023 19:41:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701315667; cv=pass;
        d=google.com; s=arc-20160816;
        b=Kx9Zn6rIAjxHBsZfYZ151rY0w+zVTD1Vb9NKmMVA2TIkTsv5OJgVAduXh+ZOIH+FYE
         Y4KAOoL/wTy1n7xF1tqqJlm0xl1q4raNVrIGn7eZf6+gk2ozBCgCuWD3YvAIdW+ZP36y
         OeebgtIiye5LEigT09K11JdeK8fo7OKX67WdnkZt5jH6HqBzUk5G5CV5sCR9Yz3B8boC
         YB3yrr4mOZxWtUWy/QT3qdm6bIW8t772w3arYI3f7JaZRuHhnWT+PPhSaopDTOnW9YRc
         +A4OehuZs+zRsp35v4vTfBbvr9v13uq8ardtvNMxlO3/AQ+bB/KkjKO14McdGgJ++LWB
         UmrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=6erkOQAJ9E+VNbR+ZePyIlgeIx0MDlOcBuuuhpZPG1E=;
        fh=mRA6fj1EMi/zejYUwI1A8c3wQCxOK/uFIZKjSJxu9Pw=;
        b=qfjisL84b6UQV5CUJE1DE4rY7tp1IuHDGbPzen9jTCxn14LxDO6us235rAbmD8/3ow
         sAnQ17/lHdj73+EmsCkoZO4czN1DndMfvEI/3+4P+UQXBU400IsAjl0B/4BTHAN3/rk8
         PqqaJKlZqtBDAMKJZonjukns7d1yGyMArlrVHyY9wqjFxT/pieTwk5IQihoRVJiDzWCu
         J0MZmEWZXyP3m7qHiamIX56DNBqAG8SgsDbSVkMV2UJGvQKGtqFkrSutVLWT9TDRpPed
         hDorQcCuKGM5eKQqQZqV+iASVeu2dhImVUxi3IGYq1lVltqxqOFaWUexTH4u2OKfhlvd
         jtFA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 66.111.4.28 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701315667; x=1701920467;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6erkOQAJ9E+VNbR+ZePyIlgeIx0MDlOcBuuuhpZPG1E=;
        b=DSaU/szQyKskuj8oyOzCGbIDFPAsph8lHfm8F7S1Q9xA0MZ9ZfHAfBWXeaJdNfOkO4
         Ks+RIMRV4dxKj6PPAR4CZkuKKPdSLz6Wk9J8wUUUuj/HkcWJIZeP9d+7DbfLbSiZfE6Z
         5kvh1ZM6+vNehUg34tXOh6U90w8sDE071ArPR94jVqJaSfz5TPywob2c/EeXESCXQ2DG
         Z1Zzfk9uffnrGqAFprOerRuP7r5D//3VR+euLlQRpzd3Mc6gf0d1vKBNgKPNz3h0+KBn
         +0INztKWfl6n+sZ+0iEwraGzDKMIHMgHc7CEX0MY/gkqIRvei0TSpGpRuW98XtR95ofK
         7YLQ==
X-Gm-Message-State: AOJu0YwjtmfUFaCZ+joHL30z8rfK1oofCSM7lIXovbBdpfBbT9zqjFGG
	BmQkjqqd8FcT8zK57Byh1lsWaA==
X-Google-Smtp-Source: AGHT+IFv9diCaYAtqOxkY/HtwkZGJuOUq5xCpCMGaNOirOn1CCZXRBnucMkziA4Tvj8BSXnQOu2sVw==
X-Received: by 2002:a05:6214:11a8:b0:67a:4a82:c7a7 with SMTP id u8-20020a05621411a800b0067a4a82c7a7mr10271848qvv.37.1701315667077;
        Wed, 29 Nov 2023 19:41:07 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:4ea7:0:b0:658:9457:9887 with SMTP id ed7-20020ad44ea7000000b0065894579887ls534676qvb.1.-pod-prod-09-us;
 Wed, 29 Nov 2023 19:41:06 -0800 (PST)
X-Received: by 2002:a05:6214:1fd0:b0:66d:1ae6:2a5a with SMTP id jh16-20020a0562141fd000b0066d1ae62a5amr19686602qvb.7.1701315666160;
        Wed, 29 Nov 2023 19:41:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701315666; cv=none;
        d=google.com; s=arc-20160816;
        b=tM72RNnEf1qPBZcTKtm6QesCcbFnkNN5XFTONpLfYrcPBvi3kHh0mm+7gYJ+soIlrI
         WwoL5bnWbuRcn5V1R/5qSYw2Ni/+JJ4uQVRGoGtjHRgFf886w04OCOgiJ5VOBXfPRHib
         cGBAmBjBpVCST+gMz9IKzb1JQtU+wNgqfuhJeZQzx4ekNTtdlMN6/guXrC8wW9odytxK
         mOTQCbVe1jMga8btsg9KvM1aaqulLEl2JDw2nKAf+qcTt1AI2u9JbB0SzgNsb2ZEjBtx
         kIMpQ4quRT3OhNeg6ntr3Ex/s4uZyjGVQeqPYZSmB34686xU0SmJRVIICyACtd0R87kv
         hQ/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=l0PwCzlyQF8trCzWJl+d+gMOpuWw+rYbNi9U0e8Lx3M=;
        fh=mRA6fj1EMi/zejYUwI1A8c3wQCxOK/uFIZKjSJxu9Pw=;
        b=ZiHMNds0w/RJlhmLxr8mVgywAA/9FtxP0Y2Zbx531p8nvulngAti2F1Ss0pXoWklVz
         5Wk+Li+fJCqiMsGHlROO5pQgN1AGSdsx8LAfWAf7NomT5RudpmkE/TNz2JltzpkdiPor
         auBJDEmsQU2hiakQqZnmr9aYHuVgt8of9H3+7+043DBp4UScY1Aevz5mXdZrNIqBWYAd
         pi1Svw7Oni8PcqCpNYaynN6XTYVsH9TAVz8tB369Q+oIsXVqTdTqD7vHU0xeRaxfj3hf
         Hzh/xE/oOS6IrD8obPezWUFlRRY89vdBa1vvAJMh8/NA3gBAObEnkXKOirzEkUCgeLaP
         YwuA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 66.111.4.28 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id b5-20020a0cf045000000b0067a3ba3085dsi183592qvl.515.2023.11.29.19.41.05
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 19:41:06 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 66.111.4.28 as permitted sender) client-ip=66.111.4.28;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-494-TE4SiqXCOb6156Fn19EBlw-1; Wed,
 29 Nov 2023 22:41:04 -0500
X-MC-Unique: TE4SiqXCOb6156Fn19EBlw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 49B6D29ABA01
	for <blinux-list@gapps.redhat.com>; Thu, 30 Nov 2023 03:41:04 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 464452026D4C; Thu, 30 Nov 2023 03:41:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3DDFF2026D68
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 03:41:04 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0F126101A590
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 03:41:04 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-247-Mid9ew3vP_ijFGHzrffYkg-1; Wed, 29 Nov 2023 22:41:01 -0500
X-MC-Unique: Mid9ew3vP_ijFGHzrffYkg-1
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 513395C00AD;
	Wed, 29 Nov 2023 22:41:01 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Wed, 29 Nov 2023 22:41:01 -0500
X-ME-Sender: <xms:TQRoZSqeNlO2pMhxDYxE1yBYFPMH2Ie8x-ncKLquiXqaHfYoggx8VQ>
    <xme:TQRoZQowCQPcOKLi1aiFgKCWxbbX_-ECwyXpgC4sPe3JLUgzmj1LJjfl2ZPdUALps
    Uk-3jQsmiKwkv2VfQ0>
X-ME-Received: <xmr:TQRoZXPIqnhXoAKJeytmQYHEfbd97CHA9sSKuOF_3Phg5aoOi88Lsdfck59mvnAQqBRyhYcenjTOoN4zCltpGEc52yOssTnDJw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeiiedgiedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:TQRoZR4Xtpn-9KIfOniZCkv8fGR_4FxTl2bLmL8H272QMjwVHhyCzg>
    <xmx:TQRoZR6QOJvnnAtEfugyJUSBh_Xxlv0emdkUYcySzYGGkdiRG9Qhwg>
    <xmx:TQRoZRjtHknggzFwEzF9Zh5yCK9UWBVQPQc2S2HwnTlB22rl6AceHw>
    <xmx:TQRoZTSogf3FA1tfA3ZA29gajasYcYR1lhdUDJ4QpWZNS2ikMsVtQA>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 29 Nov 2023 22:41:00 -0500 (EST)
Date: Wed, 29 Nov 2023 19:40:58 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Jude DaShiell <jdashiel@panix.com>
cc: Karen Lewellen <klewellen@shellworld.net>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: quick links are numbered question?
In-Reply-To: <7640c72f-2f0b-9f4f-11f4-5d660150b273@panix.com>
Message-ID: <90a6a2d2-2645-e21f-f896-d4aac3a998a0@hubert-humphrey.com>
References: <Pine.LNX.4.64.2311292019330.3718624@users.shellworld.net> <c9277002-d894-203e-511b-952f27c98048@panix.com> <Pine.LNX.4.64.2311292132230.3719449@users.shellworld.net> <7640c72f-2f0b-9f4f-11f4-5d660150b273@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 66.111.4.28 as permitted
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

Well, Jude I ran that command here in TCSH in Debian, unknown option. Would 
that command also work in e links?
Also, Karen, while I usually don't look at spelling, I think you said something 
about links the chain, but typed l y n x. Honestly, I have never understood 
those references about cats-and-chains, so I usually separate each letter so 
there are no confusions.
Chime

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


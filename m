Return-Path: <blinux-list+bncBDP7P6HU4IERBKGG6KXQMGQEXJJJYHQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 233C088625B
	for <lists+blinux-list@lfdr.de>; Thu, 21 Mar 2024 22:14:18 +0100 (CET)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-68f7572bc3dsf22844566d6.0
        for <lists+blinux-list@lfdr.de>; Thu, 21 Mar 2024 14:14:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711055657; cv=pass;
        d=google.com; s=arc-20160816;
        b=jFSYLjq1N9G+24qvfEC4XV37IQDoyHPlLgMG2lM4GyQptKV26O+Wzdq+xPi6FO9qVg
         HoR20IYYPv3cgV/d/t2ijSGlncvq8H5dHy0KMgO2XFdEeQ0wm5vIVBsj6NgwJTLKNv9a
         h7VAPnKikrvC3Ima/3b9LK4ZdrTSncYyo+Nvi8hm1rBlHxTOkoklOTlFMmktBgBqap+b
         +BoIfHP7Io5oxMHDcXYhIoRqmSRvYlpIhuDQ4BKEw/WfBlk5PEC93Wx8vv9IONWkIbhY
         qW591mKFUKJ86tOkArPwnuWEn0AYgA3V/95Oz77ga5kO5jk4F3v5IADbmkr2XlQgjYRk
         g78g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-id:message-id:date:mime-version
         :subject:to:from:delivered-to;
        bh=UjTEJ90EXxN99WxaRh/sU6KIhv6Fi8Eg+62fGkSKBBg=;
        fh=grb2rBVQNRidHgz4/15D4QcupKWhvDJq5mvDIhDOhCs=;
        b=hIac6jzlvR4zrhshFarJfRK15Ojs6HhjZy9cxuPcEdvxcbcXScrfYR3WS0016xrM79
         yecnSNEx6LUZryT0wQ4/4b2od+d0KIByVC4BHp3rfq9BaC/ZKrZSSoFzVo0TK1eNY9TG
         GHwSUE3oNR/FpI+zAKIyaWmcf8EUbqM56xfGftBOQGsGA7ASPHuHL2S7Qnp+vOCAsZjt
         bf+CYYkcN8Dvl47bgvjBM6aFE5WGCfbXl3/aWM5olr4j+AQCihN9CRL/fCB2mx3Nshgl
         GvSHShJhU6RhWCOwMrR9ms7EJWbQvy9FW2p0wNl0mH/oSQ9j+sLMCeyx0fnAsXYOV7eQ
         6Vxw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.221 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711055657; x=1711660457;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :message-id:date:mime-version:subject:to:from:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UjTEJ90EXxN99WxaRh/sU6KIhv6Fi8Eg+62fGkSKBBg=;
        b=iVVQ53lj7smrOLbMTr+1MetHImz5EiktqH+MWu9uW6MNT/qPOks0/5vnavZ1Fo6XPF
         Ex84hL+gOjoNNwiE/JChA1K5d8+ew5Jc0eCT17Nt6CFDikIQq2UWdbIJIIHsDuIV9+/F
         NlKc2QOjf/RtU4JoxFc2pqs4A0iD34JBNd3/v+2XKMANtRQx6TLL18wP96xyVlSedyct
         d6MdFxLbJHWLdWbEIh+ZqSnyB8Zhs/yJIsIT2LgBOtfLSzYW+ymuCBpm9/N+ODE+g/ce
         XI+RM9K31SGm2eqCW+C1bIwFw2oP1829Xrb5dxC8dwvWcrKhWIwfpKrV7XqHn1g5v8JL
         qnzA==
X-Forwarded-Encrypted: i=2; AJvYcCWlVwSNcKNOhUeIrKCeClMM+94h0tcNxou7xvNiXrduQSLuMAoNksikH84nsLLOK5fUEyExg8VxeJdwf3CyUFpkrOJh51doWeJb
X-Gm-Message-State: AOJu0Yy1GUO27UJ1xHjj8QtsRSnM/NizeWGpHfyaJ7whdJKF+tp/xMlB
	JMo4eyQpIqv8+yVkbCVHFdWk38k237M9lumxa401yg3X39IZQuBGKL/3amc/RmA=
X-Google-Smtp-Source: AGHT+IFJGGSi8mCjG7tsOB5vlEezjAP31gRLOVmmkfNgltiooUZCF4G9SYW1f38FvQHlV2c5U4h+YA==
X-Received: by 2002:a05:6214:21e1:b0:696:5744:af5f with SMTP id p1-20020a05621421e100b006965744af5fmr270626qvj.28.1711055656920;
        Thu, 21 Mar 2024 14:14:16 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5f08:0:b0:690:bae8:6289 with SMTP id fo8-20020ad45f08000000b00690bae86289ls2169490qvb.1.-pod-prod-09-us;
 Thu, 21 Mar 2024 14:14:16 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXtR4/2OdyTW5NJTyB5NbZ7ZaBojmvInmOAKrqzWckNvdl9opkzpjlMkJha8BKG9lhKomghUZVGgNDOqoP5R6E/036aYIuZraDnR/dM
X-Received: by 2002:a05:6214:411c:b0:696:3705:fe5a with SMTP id kc28-20020a056214411c00b006963705fe5amr358531qvb.7.1711055655963;
        Thu, 21 Mar 2024 14:14:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711055655; cv=none;
        d=google.com; s=arc-20160816;
        b=RiMhUEoEFNkMOV0JJlIiuO5KOq7tLvEFOCg/bx+NjEZgtSUczBoomggg4i/iQ1aKjT
         TydImSTc0uE2dTEbTxylGZ1Y+58sxt5gk0Uynxs6EitL2RabM+jXGm8dNExE3ETOYKpq
         yKxuLHmINlUHU/A57KvUaOK3JNmE9hOROKIv0+reB0U3yxTCUNUQzWmIGx8SGL7Srivq
         3gA9Jey90toymP5poYX55EgsPrKUqtI4LhqEa3PaVUClIekENyLp2y203cillkxdfOLc
         HK1xXiK8gn3ZDLFXqC/GoP/N3TCbI1Lrbdw/NdkDu/LLJjvU1Q2RZ04+B8Fb2wE66eiv
         2Apg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-id:message-id:date:mime-version:subject:to:from
         :delivered-to;
        bh=Nr6eDqfyIk7bcLTgx7KsAecxUZgnhy4ifRrwYWCTBqg=;
        fh=T5S26jf+nd2FsVQi9y+1QJxSOSn2FiQ/C8hPxjjluxo=;
        b=S3mbIMEMrHd2Hb8i78lplqs4M+zJKizdxU1MOH8Permp+FAJlC48lHruF6gzaixi9P
         GPDOc/zo8m76VGZ2NO8rYF6hYyUs5PaQ5AeG3gwCMxk+Uv1wxChr53hTv8JgB+x3dRer
         cjLm+J0nU6ykiyfr2EAYc7B2Ro4ghmu7N6PFDefscimCyVD2BX/KUby8kZqvWHjjF8bK
         sdtirgN5dRg/lyJWLMVFMl/d44W+fs1w0l+QbyX4RbtzCRWykU6r7eFwqogIMjj4q4WS
         /Y9gErExfF7ch1wBnyOxJjwp9gSjcTENKa/EXboyHNuIcSR4hGmmJZeojHKB9nbRm5LY
         UKag==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.221 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id iv15-20020ad45cef000000b0068ce5582563si664980qvb.263.2024.03.21.14.14.15
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 14:14:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.221 as permitted sender) client-ip=65.20.63.221;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-86-sUREGGWAMNWuMg9nRgmNNw-1; Thu, 21 Mar 2024 17:14:13 -0400
X-MC-Unique: sUREGGWAMNWuMg9nRgmNNw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 51F32101A526
	for <blinux-list@gapps.redhat.com>; Thu, 21 Mar 2024 21:14:13 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 4DF75C15774; Thu, 21 Mar 2024 21:14:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 15197C1576F
	for <blinux-list@redhat.com>; Thu, 21 Mar 2024 21:14:12 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B33DB28B6AAB
	for <blinux-list@redhat.com>; Thu, 21 Mar 2024 21:14:12 +0000 (UTC)
Received: from altprdrgo05.altice.prod.cloud.openwave.ai
 (altprdrgo05.altice.prod.cloud.openwave.ai [65.20.63.221]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-498-gowCtw1xOkWsIeKs0p9qUw-1; Thu,
 21 Mar 2024 17:14:10 -0400
X-MC-Unique: gowCtw1xOkWsIeKs0p9qUw-1
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.109.117]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 65F11F0D01800E48
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvledrleejgdekhecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffugggtsehttddttddttddvnecuhfhrohhmpedfofgrrhhtihhnucfotgevohhrmhhitghkfdcuoehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefhkedtkedtleejtdevhffgueelieevveffudeileeiffeujeetleeludekkefhueenucfkphepgeejrddvudejrddutdelrdduudejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohepfigshegrghiipdhinhgvthepgeejrddvudejrddutdelrdduudejpdhmrghilhhfrhhomhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopegslhhinhhugidqlhhishhtsehrvgguhhgrthdrtghomhdprghuthhhpghushgvrhepmhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvthdpghgvohfkrfepfgfupdfovfetjfhoshhtpegrlhhtphhrughrghhotdeh
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.109.117) by altprdrgo05.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 65F11F0D01800E48 for blinux-list@redhat.com; Thu, 21 Mar 2024 17:14:09 -0400
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1rnPjf-0007zA-2j
	for blinux-list@redhat.com;
	Thu, 21 Mar 2024 16:14:03 -0500
From: "Martin McCormick" <martin.m@suddenlink.net>
To: x for blind general discussion <blinux-list@redhat.com>
Subject: crontab -e behaves Oddly in Bookworm with Speech
MIME-Version: 1.0
Date: Thu, 21 Mar 2024 16:14:03 -0500
Message-Id: <E1rnPjf-0007zA-2j@wb5agz>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: suddenlink.net
Content-Type: text/plain; charset="UTF-8"
Content-ID: <30698.1711055643.1@wb5agz.lan>
X-Original-Sender: martin.m@suddenlink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of martin.m@suddenlink.net designates 65.20.63.221 as permitted
 sender) smtp.mailfrom=martin.m@suddenlink.net
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

After an upgrade to debian bookworm, things were working well in
the command-line mode until I ran crontab -e to edit a crontab
file.

	I've been using the vi editor in unix   since 1989 so I'm
used to how it works under the command line and it has always
been surprisingly accessible even under very austere conditions
so I thought nothing about selecting vim as the editor in the
crontab app and then I tried to use it.

	I'm not even sure what it is that gets turned on when
using crontab -e because up to now, it has always just ben like
any ASCII text document.  

	Now, the arrow keys do let one step through a line of
text but the j, k, h and l keys uselessly let us hear cursor
positions and not even that fully.  We just hear 1 2 3 4, etc as
we move to the right with no feedback at all that identifies what
characters we are passing over.

	If one presses the carriage return, we uselessly hear
more advancing digits and, if we insert characters, we uselessly
hear things like 1,2 1,3 and so on with not a hint as to what we
just typed.  This is totally unusable and I don't even know what
mode is turned on when running crontab -e which used to just run
vi on the crontab for one's shell with good feedback.

	If I run a command like

vi SOMEFILE, I get perfectly normal behavior on somefile and can
edit to my heart's content.  When I tried to run the botched form
of crontab, I ended up somehow joining some lines together and
didn't know it until a cronjob failed with odd errors and I
simply ran crontab -l >newfile and then ran vi on that and all
was clear and obvious so, if I can figure out how to lose
whatever that mode is that crontab -e turns on, I will be happy
once again.  I suspect that the text characters are immediately
being followed by those darned cursor coordinates such that the
last thing sent is what we hear but whatever it is, I have heard
the same junk output I got once when I accidentally got nano
started on a document some years ago and couldn't get out of nano
fast enough.  The only useful thing I found about nano was that
ctrl-x triggers the prompt to save everything or not and I answer
no and make sure vi runs next time.  Another strategy might be to
turn off speech while typing and lose all feedback but that is
extreme to say the least.

	Thanks for any and all constructive suggestions.

Martin

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


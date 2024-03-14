Return-Path: <blinux-list+bncBC3NDNGRUAMRBG5AZSXQMGQEXIX6OLQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199])
	by mail.lfdr.de (Postfix) with ESMTPS id B2EF587BF5B
	for <lists+blinux-list@lfdr.de>; Thu, 14 Mar 2024 15:56:29 +0100 (CET)
Received: by mail-oi1-f199.google.com with SMTP id 5614622812f47-3c22c4c1349sf1359792b6e.0
        for <lists+blinux-list@lfdr.de>; Thu, 14 Mar 2024 07:56:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1710428188; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZcqvUouVYqmrk0/vvbRmH1RghwkMxzYNqJj3th8mpXGAI4RVRufi+cKCnzawrlY0Lk
         p+eqtDwKZgMKV7tjEfpRtKmJxI2mpQPcrinM+dHjeFWMFZWwlkOUvoBjZp/dqr57FnVI
         u8pCk29PaccpZJRhffEjUM0RTSjF/+1oZnj1rNjIeOeoF4vspj//Cm+I5y8TWF0oPEYJ
         JLG8S42uy8tZ1qmQyaltDJINM2ZXDPAugVtNnfgpG82yrUIvNW8gaM1ibCX54DMupMvb
         yh9wPHFccy4Hf53ggcFZWRMx0mR140JmCeEmtSMHyd2CKKDzbP7a2nywOiIM0Zt1U6uH
         YiuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:feedback-id:delivered-to;
        bh=xisYKVdSEEQ8xGIMFouT7b5zJ0vXZvXpB0dvPDj2dYk=;
        fh=XEzlPs1zanunA3IwQr2wM9eBVu+t0pZ856lk8FmrT5E=;
        b=b10lU+ezutJcapFq3p8g+iHhYGMAMevte5S+aAqzGXEBfLPIOWy6p3EdNakJCbHrXH
         RkKdcAx7dSs39fzIxNAQSVofdpmSQCWjKRXoOUCjOgJcl00TWNFiBQW8S4arHA7tifYh
         /wDRUoqTYUiQ+9jta96svhrc6p2yhn4DTw9awTwvw/yKCr2U5gkzTeJZdHskikv4Plkx
         1RqNSvfn4fHuRJmMWpnC7ZS+hwRmP4dlfnkYRnFkmteyGh86UOJTReoe+H3pn9ReLd80
         WXAwh08QOUvCLOdBH1ewyXG+XWKjp2wTVTeopRwfoOJKKQnzdVX3ats7OsfLHJb6R39L
         uSVg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.151 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710428188; x=1711032988;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:feedback-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xisYKVdSEEQ8xGIMFouT7b5zJ0vXZvXpB0dvPDj2dYk=;
        b=Gy1cSCJ1lNbFxHJ3UjpdysheJ383cwIRBcrTCST8QZmvP/weVQQiQZgj0ucosezQ4c
         duzZC7NSj3DHmuuAmqkn+8rmE5gRn9KWwuwB5jc1pYynZotBhbsgMagC9Avoa19Ss61x
         vHgvpBRXvqRIzjjjuOVyhZv2GNroBI4XIw3bAEhLB0pnISk9/iXgyE8Vo6LZTsaEp9ym
         93M3cXGkV4NjcQwubzbk81NFZ4tIoAoXTWpBiqTLg34qQgMWsQgfJ6oB1xae5cQV02Rs
         ojAPPhkTmq7nfSwh+N464sXixQBRdGvkFvkYdFRgm5RAt3UZpzzI6kh6hNfeXvHSv9LQ
         TP4A==
X-Forwarded-Encrypted: i=2; AJvYcCW6lp7IBAhWbD944tXt3rQqqH9PxyjA7O0bbiZAwEwRzx1cNiWPn4fLiCljakSMiT9iQsY9eYPeIOsh949e9EWesSMvyAZB7GSu
X-Gm-Message-State: AOJu0Yxi9QptHVnodkeZBSGAHVYmcO0pq8qqUQx9oGZe0qhPRHs3Puz0
	9kO5rt7Hy0AZNXbR7Y8qasSjqjajkbFX2UlPiKH0tit3U9ImVOqFbg0wjYWESLM=
X-Google-Smtp-Source: AGHT+IF8lmmUn91E3Cd6glH0Y+bYW2OLn9VvKbZNutK8pLBeESIVnLFtfG89oOrY2xYjWvQRq6S+PA==
X-Received: by 2002:a05:6808:1487:b0:3c2:4f79:a8a4 with SMTP id e7-20020a056808148700b003c24f79a8a4mr1118849oiw.3.1710428188124;
        Thu, 14 Mar 2024 07:56:28 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:191e:b0:42e:ee3c:d6ef with SMTP id
 w30-20020a05622a191e00b0042eee3cd6efls1349436qtc.0.-pod-prod-06-us; Thu, 14
 Mar 2024 07:56:26 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV/AsE9HtPKwTM2BQWf7aOvNVVOsYVpUQ/bnPSxoy/0sGbYuh+NMEWVkO0D2Yq1sCQDiIW7DNGyVkYypR3TSgORac3BXsVCe9manQmb
X-Received: by 2002:a05:622a:2996:b0:42f:30eb:6202 with SMTP id hd22-20020a05622a299600b0042f30eb6202mr1039385qtb.26.1710428186789;
        Thu, 14 Mar 2024 07:56:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1710428186; cv=none;
        d=google.com; s=arc-20160816;
        b=b9A/gFTeKZk1MGMZI5RFWO1YU93TlLLz56fnXmFzazZqPcKgqn0BMNnqky95Ua7ZNQ
         f/+cSVx5vYncGGLtI56qfaWEB4pO0vqQhwvuwzdR26ipOoIDAmwTi1mQ7vEm+hlkof6m
         benlA1ieHyc+CgVWgSZFkhfoiBn6l2CwlQyppQ0Ivb9XGO97Mo7sfgMX48QwVfYtf4s2
         B8yGb/n01PFN6MgnS3r+iT7f9T/BXrsXPhPdY7ZIEj0b08lgTw6rS1Z0nIPYunwScnH3
         W2mIgOZzOnVd9KhDCzZc77XR+lTb2K8EAupVViGmoEs8vcszSFkW7Wk7VpS7m8VFQir8
         ZivA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:feedback-id
         :delivered-to;
        bh=4LJ8rprWooufwVgA2Oz22PZ64ReQYbed0Lh/h6aldPE=;
        fh=PmA6iCFgUoqrqU6x2M9dR3vZbb+FlLGidi4NLHtSolM=;
        b=t3TgqvCw13xzELZEfRFtZMGbkhqJrlppQt1eQyepW1H1Bp5f+HS8Cg7TKn38BQNHr7
         Fr9h16hRd/HA3R91J6CnFxlXUVPWPf7w/IZTa53Xlk6J2sYSCJR3J56jIMeS0Hu3NOyv
         6VWs7WmmknROb+1ymCcKFFsB2jDFE6u3fWgBDklA+eFNSc6QAXEtZnl5Vx5VvkJO0UKI
         SQfpf2XRTJLeE5BaORfHi9vcrEotXrwoR8R9lm+Qc6RP7sQqeI96m78oV+UsQjiZcJ1a
         +HLtMfBVW7B1OOw44kMjazULz5Ep8H347m4Yj4AL2UnaM+B2jn5aqGuJW47zd1XGC3TM
         T6LA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.151 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id t1-20020a05622a148100b0042eb8d52057si1618107qtx.320.2024.03.14.07.56.26
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Mar 2024 07:56:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.151 as permitted sender) client-ip=64.147.123.151;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-99-mVAq0U7SMhO1XS_-K76m6Q-1; Thu,
 14 Mar 2024 10:56:25 -0400
X-MC-Unique: mVAq0U7SMhO1XS_-K76m6Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DF3432800C41
	for <blinux-list@gapps.redhat.com>; Thu, 14 Mar 2024 14:56:24 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id DBD1940C6CB1; Thu, 14 Mar 2024 14:56:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A291E40C6DB3
	for <blinux-list@redhat.com>; Thu, 14 Mar 2024 14:56:24 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4B19B8007A1
	for <blinux-list@redhat.com>; Thu, 14 Mar 2024 14:56:24 +0000 (UTC)
Received: from wfout8-smtp.messagingengine.com
 (wfout8-smtp.messagingengine.com [64.147.123.151]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-226-OCsW-WftN42qxyrIfSgC-A-1; Thu, 14 Mar 2024 10:56:22 -0400
X-MC-Unique: OCsW-WftN42qxyrIfSgC-A-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailfout.west.internal (Postfix) with ESMTP id 0BE891C000C1
	for <blinux-list@redhat.com>; Thu, 14 Mar 2024 10:48:06 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Thu, 14 Mar 2024 10:48:07 -0400
X-ME-Sender: <xms:Jg7zZTkyVJcL44wmnRoMncXnpqpKWWeBU33zpvBJ2PFa6JhLs17agQ>
    <xme:Jg7zZW20ehatnTsxrDQJdsbCEqPZBAAz2TT7sCxPFf2hEESW7dPDUHLAXg8v4dkfb
    fmN1_pLti-nfqp44mM>
X-ME-Received: <xmr:Jg7zZZoYNaIFJMjjqmP6FPUpoUKwSQjSmYWiaiphZ4u83N81_3RJPBeNvyf78-kYbez8w2kZCvGGBNp4qvGX3IJvncKTvA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrjeejgdeiiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgvucfjrghr
    thcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenucggtffrrg
    htthgvrhhnpeejffffudejleeuffeivedtieettedtkefggfekvdeujeetkedtheefhffh
    vdetkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    gthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:Jg7zZblBkUOkBQ-nIXEkqCBXUe7_UWTn4LfLHRUeg8quLh-3PsxLsg>
    <xmx:Jg7zZR32tIb3uh9MkSyrsjxwc9RuByvINIuawc-Fh6gtepN0Lfzfgg>
    <xmx:Jg7zZat0zXnKmoCkXfNzEx4IhZa74_FnsrdkXadcUlmUEI_dyaAU5Q>
    <xmx:Jg7zZVXgjb2VNGVm5Ozqt055JGpeoP5qIGI7pr-hIsyRBihX-w3nPw>
    <xmx:Jg7zZfDJKxRaswW-VtPVrhUSh-wtq8y-gvJ2PyKshvdmO-5Wba_lvJfSZIw>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <blinux-list@redhat.com>; Thu, 14 Mar 2024 10:48:05 -0400 (EDT)
Date: Thu, 14 Mar 2024 07:48:03 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: spd-say as Root?
Message-ID: <b2538c89-8723-b35f-eb42-73fd7c757df4@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 64.147.123.151 as permitted
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

Hi All: I would like to try Fenrir on my main Debian SID machine. However, 
Fenrir only runs as root. For an unknown reason I get no sound running
sudo spd-say "this is a test"
Without sudo, its fine. Running spd-say -L confirms I have Allison which is in 
this case 1 of the Voxin voices. Just this morning, among my Debian upgrades, I 
got
Setting up speech-dispatcher-voxin (0.11.5-4) ...
Setting up speech-dispatcher-ivona (0.11.5-4) ...
Setting up speech-dispatcher-pico (0.11.5-4
So, I was certainly hoping something would have improved. I tried running 
spd-conf, even with sudo, eventually when pulse sound system is tested, I hear 
a blip. So, can any of you please suggest any other solutions? mpv seems to 
work in sudo.
Thanks so much in advance
Chime

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


Return-Path: <blinux-list+bncBDEPFPWCWMDRBEVVX65QMGQEMKOIZZQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E119FDA11
	for <lists+blinux-list@lfdr.de>; Sat, 28 Dec 2024 12:01:40 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d9135afda3sf124678126d6.0
        for <lists+blinux-list@lfdr.de>; Sat, 28 Dec 2024 03:01:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1735383699; cv=pass;
        d=google.com; s=arc-20240605;
        b=PYAcw502FLxUmqDW9uAniYQEaQyth8oGo7BSR32zadhJZByQRp/Hj5/KBP3chD006r
         3ieBJuzrgg0GgicLT7pu7tr2QRkipSpDny494Ol6viuw1sHCmFSkbKoGLdBGmT/rQp6e
         mkifkfyK4FBJqU/IuB5KqEYCoVV+s0axk5k+UwWMpHWtwOmqTWlHk14swQjgy+8IJ8bD
         Qej9zDpJmL4haPnnMN4LHmkbKEU2i4Y2KRW7aq9Ym+Q4tu5+/ytRCXZC9TvqLJYYm9fF
         XeN6baK1ZfXcAOUAaobGXoluvuG3aisa2FViBCffHbInnDL7tApOrlxUkK4DRWRSHGLZ
         5kVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:subject:from:to:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=juLKwmI8pyhKtWchMSj4horzSLAxTGOFZOjl2KhQMM4=;
        fh=xiMHJ+Shk4vESzTZDrugEsCyeuTXJ697JxlREUWjmwU=;
        b=Nk5NBFFqlwH9Z5PI1WNLCF2V6KTqW1dYQZx4z2w+6ig1X2oP4Q0wGUkO3TYGmMtrYt
         sg/XJeOH5MmBDozEQMckVOUmHIBzDgD4G5jzRpgrfA0wNxXDPsKmnduqZXc+l13RJYjS
         kMEiTJaETRS+GjefbYT/HM553V3/Y3zjVxAus0g71kSEE8teqO8wKYycbhhBvgUP4S6f
         ayubcQWU+7rjrMr6CHm9p0vUJoU1rHqTItKjSubjDvGekD6OQ97b2aTi+om13leUseJy
         7BX+i3dTuZLZI2TX3uTSbBv2su73FYxYkV8bbnsNYrjT1hiQRcMtRUuVYQ0bgqXLF1WT
         8FUQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) smtp.mailfrom=vsmiro@seznam.cz
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735383699; x=1735988499;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:subject:from:to:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=juLKwmI8pyhKtWchMSj4horzSLAxTGOFZOjl2KhQMM4=;
        b=LS+XnWQb5IF8BSrfCjM2M7SYQKIznZNM+UgXlaq7T4jhAKQK/Pkcf62tsmbY7CKzxD
         hPErObQzymZuPUzZguStLBPixZykIhub6PDu9vMzPCuqgt8VFs4JrP9hgwu0lykjmQqF
         2j2JciU64RqOkQY/mdekOJ8oH1o+icif2sz9zTFyn+/BsRHSAaQeVsJ4EW9NDYvXBlK3
         JLbI0Xe8zsY0ZWpvMUCg8mrBDHqvRS11DO2BMDaFLyRBMNrnpRwIKPsOuomq2/HB6zr4
         puOAf+A89qSUJ4j5j0xBwAOFKaSVqxVoPSI6sx3rUQD7JsZwZLHP7mX6Eipm3RRVMPyj
         wNpg==
X-Forwarded-Encrypted: i=2; AJvYcCW62ct8SI3IX8k59kuPe5HY8lhDDIWZI6wuUUAhwVjjlM60kunVeYvKWcOyPmCJEEwfjNLzpw==@lfdr.de
X-Gm-Message-State: AOJu0YyhCQ1PJd7OiCavqFivqLj/N7FHYanri5g5YBMJjoq9r3O+BAkN
	hL3WFEVAVNdhe0p346XYN1n1GxUeqPTm+trpgqdp8rqVWuPmicPz15OIibhfA3I=
X-Google-Smtp-Source: AGHT+IFRmZ07lrfaSIFYMWQP7ykblqiOWRs9ZXY6EZtRGKcf9XdN8QKotejMKIbZneRyTs21++7BBA==
X-Received: by 2002:a05:6214:5189:b0:6d8:b3a7:75a0 with SMTP id 6a1803df08f44-6dd233ad8f3mr472269526d6.47.1735383699039;
        Sat, 28 Dec 2024 03:01:39 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:c58f:0:b0:6d8:f050:cdf6 with SMTP id 6a1803df08f44-6dd1547dc9dls47453836d6.1.-pod-prod-07-us;
 Sat, 28 Dec 2024 03:01:37 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXxukMBpg8zxx+yN1Oe2xbDIWbMQfjN5+VIU2QQVTvVJcoVUknRHGVlVAXUp79NzcBb0viGgpXQeY/u5Q==@gapps.redhat.com
X-Received: by 2002:a05:6122:4884:b0:518:89d9:dd99 with SMTP id 71dfb90a1353d-51b75c2a515mr25234078e0c.3.1735383697777;
        Sat, 28 Dec 2024 03:01:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1735383697; cv=none;
        d=google.com; s=arc-20240605;
        b=lKVHABD1zRhkioMAPBCzGt/prQ8gwgnvj939T4+JW/J6PTXqV+on4bkgp9wKRaHILl
         6bKsxMVXVSxy5MhG6WHRHapGGUNSeI2FwCyeR7FLk1Makd1nykkrWo7+hFnp/+EVpaLb
         UPgobT4US1k0MZaueV4eza+SstebANhjNUEPbfBRJ2zyCEERwB8FDiI3Kw+LzuulAqOA
         T8ELnVZE/GegBeqKqKxGrOh7dtIkEX8jZ1bRRWOw2ZX7Lrd6j3MnZb1vhluf2lktvPKv
         3Ho3vdJAUzT5NSm+rl8p/b68dBHD0y1jI1xLh2nL6PJTZXpgetS20m5vTXwX38CsT3qD
         qnbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=Dck1eRb8eJi4uX0kWc5ABbAo9Od7R6JMnEXKkd9nIlY=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=bNXNlz9U6sg5w8VIGYCUemrLo8YeKj7X7tRWbITuj2U+TWRxkL6Yz9KAvVyqY57Sjh
         wcW9QvBGdIRZykxHWOuRlyoeOE5hMR2oyO4leOEB/LDwSB0OO5HKsLU1bIGGZPJ2+snL
         lRKeheqb/7hZL/YQZmIo909xfB4+e2bBCgOYPGoXENGTggGkbDajgG/3cSfk3PCF76vc
         vncXCt2E4V94GhLvJSd1ISZYueADmUk4v7MevQyxraBnJhbStc8AacUg++5P6wocG4tm
         d9/hb+6DtISBsEYhJhYrNx/KQvLYr5taqEdwcDXU0hucjLVpbDLfLw6qoQy55YTz2VWc
         exoA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) smtp.mailfrom=vsmiro@seznam.cz
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 71dfb90a1353d-51b68bb548fsi6710930e0c.81.2024.12.28.03.01.37
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Dec 2024 03:01:37 -0800 (PST)
Received-SPF: pass (google.com: domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) client-ip=77.75.78.210;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-570-U06IZf3tPGuvQhWrsjlQyw-1; Sat,
 28 Dec 2024 06:01:36 -0500
X-MC-Unique: U06IZf3tPGuvQhWrsjlQyw-1
X-Mimecast-MFC-AGG-ID: U06IZf3tPGuvQhWrsjlQyw
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4AD571956087
	for <blinux-list@gapps.redhat.com>; Sat, 28 Dec 2024 11:01:35 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 463F319560A7; Sat, 28 Dec 2024 11:01:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 43DD319560A3
	for <blinux-list@redhat.com>; Sat, 28 Dec 2024 11:01:34 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AE60E195609D
	for <blinux-list@redhat.com>; Sat, 28 Dec 2024 11:01:34 +0000 (UTC)
Received: from mxd.seznam.cz (mxd.seznam.cz [77.75.78.210]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-592-OlxAsUs3Nde4zReObt3PmQ-1; Sat, 28 Dec 2024 06:01:32 -0500
X-MC-Unique: OlxAsUs3Nde4zReObt3PmQ-1
X-Mimecast-MFC-AGG-ID: OlxAsUs3Nde4zReObt3PmQ
Received: from email.seznam.cz
	by smtpc-mxd-56bdc9d897-vp2wc
	(smtpc-mxd-56bdc9d897-vp2wc [2a02:598:64:8a00::1000:a43])
	id 2b0d76633e9525392ae7877f;
	Sat, 28 Dec 2024 12:01:31 +0100 (CET)
Received: from [192.168.1.106]
	(host-213-235-142-85.ip.topnet.cz [213.235.142.85])
	by smtpd-relay-7f59f746b8-wfjw5 (szn-email-smtpd/2.0.27) with ESMTPA
	id f8b5455d-7436-41e3-ba2d-a80d6e5d07f7;
	Sat, 28 Dec 2024 11:58:43 +0100
Message-ID: <4f5b9ef8-5e7b-4440-86b9-bd3c8bf957f1@seznam.cz>
Date: Sat, 28 Dec 2024 11:58:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Linux for blind general discussion <blinux-list@redhat.com>
From: =?UTF-8?Q?Vojtech_=C5=A1miro?= <vsmiro@seznam.cz>
Subject: Mate development
X-Mimecast-MFC-PROC-ID: wQVh3ML_ecePgqtCMw2Vvl6cacmWWKsEDNVztt7xa-k_1735383691
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: LaSliIAiIuhIE_Pau7yAJOH315GS4Th3aeHox5yVH3Q_1735383695
X-Mimecast-Originator: seznam.cz
Content-Language: cs
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: vsmiro@seznam.cz
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of vsmiro@seznam.cz designates 77.75.78.210 as permitted sender) smtp.mailfrom=vsmiro@seznam.cz
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

Hello,

will be Mate desktop develop again? One my friend told me Mate hasn't 
updates a few months.

Thanks a lot.

Best regards

Vojta.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


Return-Path: <blinux-list+bncBCM2V5WE3MDBBVGVYS2AMGQEZDDNI7Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com [209.85.161.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C12C92FAE4
	for <lists+blinux-list@lfdr.de>; Fri, 12 Jul 2024 15:08:38 +0200 (CEST)
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-5c65573402esf1617834eaf.0
        for <lists+blinux-list@lfdr.de>; Fri, 12 Jul 2024 06:08:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720789717; cv=pass;
        d=google.com; s=arc-20160816;
        b=D5bDsVszg9lRUlVw89Aw9bk7LS3zt1xFHi8Hii/7U4bIHu2O3eY/f93LtrlPsV6dvf
         fyvFWpIPEzm/Y93LcFDb7ifGXpmQv2WJ5uSpbhpgkcV4w1Wba5YnyUPrFKjLXUqdu7Qs
         rU3WXOtU4g9KA/WzUDagAz/b0QLa3mdpsu6YCV6vwp6jvvIZG9mnk79tzWiJWS1FwIoN
         w+xifes6aMsstGcGCppUM5yP8WeB0htSTArmyk7LQyMMQecOxSUrEIHL5KrNkDm0CX+j
         avwGDLo53K3t4tHUjXij3dcJWL0Kbze1mCQ0irUBwYrbcA2AxuL4qEANrV5vKPRhcTtl
         9HSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:feedback-id
         :message-id:subject:from:to:date:delivered-to;
        bh=NzMPbmJ1HXpOPm7MUy5PrCPtYSwF3Gh61RIFHEJgxe0=;
        fh=JyxWYujqKlyAa9Ah0pwV69emMhwU+pfoD2dmxSdihHA=;
        b=nDtkJGFg/WJXTn0PVVQQ1XI9E4G8WxYdaHFEF8McvyzFogjUvrCXuDezRLtsXFiBjB
         ZrMrNmlf9z64pT5DRfXMFqdoV6pdq/NktPfoZYhDdGleK0Yi6PgrvVaM0MFbUhCr8xNK
         vZkYVdU+MHcT+8eOC8nUO64P+5IE1pLFBhfRMY9Bt2DdqUV4/DYMwXHmfOOrJTP3jQ0U
         V5XS4ngRq8EFXRXNnPWF8NVWmZHVd/Qp4FZxIVSAUXItLOVxNOb/TvlVpTVzTxB4rIPS
         wjHojb8WGiViykv/3JZmfgkCgz1d1wcxhuKJIEsmM2N9ADdenP27UVB2IYGSStBGhxeG
         UZIg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.103 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720789717; x=1721394517;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :feedback-id:message-id:subject:from:to:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NzMPbmJ1HXpOPm7MUy5PrCPtYSwF3Gh61RIFHEJgxe0=;
        b=UXF4PZkSMS1veLWBy3YjiwT1zbon2c3eKMRm7DA/Uh4IrH+HQdLSwpJ9DN1B4DbcXO
         dgSO8fyywpufNc5tacBRzSw73r9mf1D3yunzWVbIUopWJjNI74vC9owrk+vdKiFDn1Y6
         Wbqj+MC2LJeux0HcbL8A1HyOdXKJ9hXywPhZLepihdfCTIvjxXpFcN8XKaseFBBamYih
         lH1+L5qonWlS5sQVIB+N9ZV3aCTDCZ/5gh31HbCcCpn3vRITYArQeuUupTlrzRHueXgU
         tFRwkFN7D5BrMeojBKfgXTYJ/E6HaxspkpcD+j8mZ7bHO+nwyxy3sSkiX08zNNSMgB+3
         IWvQ==
X-Forwarded-Encrypted: i=2; AJvYcCWNJ5zPGCqiGRg9D6iAxAHEbkA4BfJ4WJE2fytoVt0oQ7YQr++IskaVu+TpdfKr27KiHjSxe59exYVeupUR+BqoRMR/GmFIjBhC
X-Gm-Message-State: AOJu0Yz0MOLwLkFSB+2Mg3WQhGcfgzKs0wiiOnf4iqMgCLDv4wIHxB9X
	gvBO7+tEVIkc2qgF7/DrXvn1CfxFrl9dU0ol1cnjQc9DHY3LIPB0mL9aX8MjLIU=
X-Google-Smtp-Source: AGHT+IEtBV7hPXkfhR1D0UFxqUK753EnmEauun2gw+IX7i8AoraXFST1kmol678D5GjSfKk337Diiw==
X-Received: by 2002:a05:6820:988:b0:5c6:9293:ed8a with SMTP id 006d021491bc7-5cce49c42a9mr1690771eaf.6.1720789716815;
        Fri, 12 Jul 2024 06:08:36 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:e092:0:b0:5c6:92d5:d6be with SMTP id 006d021491bc7-5cab66700c2ls1641300eaf.1.-pod-prod-09-us;
 Fri, 12 Jul 2024 06:08:35 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXvtdiNVEWGjXfS3c1/lyCQ0JSqfqUEiLSVjWReuzcXCNujtTLeLBlgfCfUd98dVqG8gjgrg+YbzkXzJXRYqW34XC12ZImefv/wy9Eq
X-Received: by 2002:a05:6830:211b:b0:703:b0e9:d951 with SMTP id 46e09a7af769-703b0e9ddcemr15476002a34.6.1720789715730;
        Fri, 12 Jul 2024 06:08:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1720789715; cv=none;
        d=google.com; s=arc-20160816;
        b=xMscvVdhZ+PY58w9E0l2WC1890xWDelbUtzIe48eOQVcSS7t6yON/Pb8W+5YYQJvHQ
         FYbPv0oJtkuaove7mBgKpbzU/FT+rQCD9bpzCG635mIr47Yu3Dd5UDizOdGjz0I5wMf9
         llzK8gKng6ZJvn8up/5lK9YfQYu4J8mxRsrkrF9m1wCQnKRUKXGbJIMQ5yD4lsGkYwbI
         8kIEz2PL2fKDkvouseV8T2QasM7ofUj03YmUylUlCDf9+I0/QPmMoZKXNPKZeLUFNZ8P
         5glEa4yDlWMjifFlv+09DF4n++IGsS2t0rW6hQIOLMRkMl8hZblFC7YPauZHDk8eXpj0
         Ibqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:feedback-id:message-id
         :subject:from:to:date:delivered-to;
        bh=4ynxW3ka619Jynon36Y/sMEmTgMAsP73nPGuGb4CyFs=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=s8RNyXFLfdRJ0AT6MmLTuYswirsnqPRYUP3CB0Npb0Rizb6HNE5uBuupXhc4J5Wc+G
         JjpeYEbbLm2KYRcFTKzpjaqtNqrf0SH6F/PdsMJqI4oYyTwl2utEHWjv6Cm4OSfunHzg
         9ol7XONTktSfPw/ZdxImXJYo85oYDL5dcXlzDkQvbxLNM90+NPbk+Nt3dQ1Msq97ESiL
         iujhKurj+0krPxEiSBaKO9IsKk2TjPqhGdNWnwNLb2EpPEWRYwwj68+tmwVmvTmakAXi
         TXdBlCEMAK+V9RpsozGOp2mA4nBMJPaLZt1hKK4v0r22Sr+bDVBHUKizYXqNi8fXlr0v
         Ka7Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.103 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 71dfb90a1353d-4f33db276ebsi1366806e0c.265.2024.07.12.06.08.35
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jul 2024 06:08:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.103 as permitted sender) client-ip=185.70.41.103;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-557-e5LS_o10Ox-iqXlFXOP7pA-1; Fri,
 12 Jul 2024 09:08:33 -0400
X-MC-Unique: e5LS_o10Ox-iqXlFXOP7pA-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8DAB91955F42
	for <blinux-list@gapps.redhat.com>; Fri, 12 Jul 2024 13:08:32 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 7DE181955E70; Fri, 12 Jul 2024 13:08:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7B58E1955F40
	for <blinux-list@redhat.com>; Fri, 12 Jul 2024 13:08:32 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F0C97196E097
	for <blinux-list@redhat.com>; Fri, 12 Jul 2024 13:08:31 +0000 (UTC)
Received: from mail-41103.protonmail.ch (mail-41103.protonmail.ch
 [185.70.41.103]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-638-6IPfgp4UPoy0KDJvHJu4hw-1; Fri, 12 Jul 2024 09:08:24 -0400
X-MC-Unique: 6IPfgp4UPoy0KDJvHJu4hw-1
Date: Fri, 12 Jul 2024 13:07:25 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Converting brf to text?
Message-ID: <9a2447b3-e761-4615-9b4e-e2f058029af0@protonmail.com>
Feedback-ID: 26663242:user:proton
X-Pm-Message-ID: e5cc6a7abaffe735e3aa64b27fba376dd12be86a
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: protonmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rastislav.kish@protonmail.com designates 185.70.41.103 as permitted
 sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Original-From: Rastislav Kish <rastislav.kish@protonmail.com>
Reply-To: Rastislav Kish <rastislav.kish@protonmail.com>
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

Hello everyone,
I've got a .brf file I need to read, and am looking for a program which 
would convert it to plain text. Does anyone have any Linux working 
recommendations?
I think I could use liblouis for this, but it would require putting 
together a conversion program, but it sounds like a frequent enough task 
that someone likely already created it,

Note I don't know much about braille, especially the english-one, so I 
apologize if my question sounds super-trivial.

Best regards

Rastislav


To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


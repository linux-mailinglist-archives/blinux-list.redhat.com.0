Return-Path: <blinux-list+bncBC53745Z5QKRBUHKZGWQMGQEHCPM4GA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yw1-f198.google.com (mail-yw1-f198.google.com [209.85.128.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABF283C546
	for <lists+blinux-list@lfdr.de>; Thu, 25 Jan 2024 15:50:58 +0100 (CET)
Received: by mail-yw1-f198.google.com with SMTP id 00721157ae682-5f6c12872fbsf105958067b3.1
        for <lists+blinux-list@lfdr.de>; Thu, 25 Jan 2024 06:50:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1706194257; cv=pass;
        d=google.com; s=arc-20160816;
        b=HuEcIpGi+DEDYYNcpeS/b5zEYxsRcr04XZaazldt26M3HweMRSMDdJKhrF9vMtdl+U
         Y/mJtnJcLaZgMbVJZxbh7wGLlcvVdiZhRgR412kh5MTOv1UtipORRPCLAHwoES+UthMM
         1PbvUYt0dA8hDz1JDf3P1y0Zxwo+xeS66FOVhTO8drStarkxtk2n4YX+ftDxum46qQTG
         hvx7cP/0nciWUEIdwfKBO2g7/L0UtDVWkJl/24cIPHm0LBvtCHpzEzUXV/xzq4+R+JFm
         NuVvLngyQ98+8jEvWvfTeGKOPigbJVgsb/s5Uz6I++h3VNRLrS5u0Yf2RsStjE+wiZWP
         Ub5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=iUV4qJ+Ndnu5IZ/g+oMPn9Qg5UW0LRGWiRfkIEW5nh4=;
        fh=LBjpU90bP2emkazE0Gc5OAoaiqgp8P8XIgkk948Hows=;
        b=Yi/XbJ9qKOXkEdKTuIUTb2SCDkq2cDlhSBe3JVY4newGluds3pCL7/QXBDjxC5RhyT
         yIz4fGIyA53g/JTaBexhhJolzU/50RRPShXH1E0KOfIBCnWuqo+I99Zq6TempoTQZdK0
         BdUXWZC5yvd/rqSQcbAV4JSt/Ixwbs96Zipyaerv+irnXnkWAZr7eO6TWhRYXsQ4spPY
         3qtsmFR+GvoxXsmcPaE2vq9fSE9/9gaNIXhVss3U2hBsS24qozCINLrjgInIQ3FTWy3j
         7yQgSpvvU6HptGFijhsgYcbXlsGSoy0c6+Ad8Lo9RHmfPYz+IW9eKy9Mcoy4O8e5hYHS
         84Ww==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of anders@pipkrokodil.se designates 93.188.3.37 as permitted sender) smtp.mailfrom=anders@pipkrokodil.se
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706194257; x=1706799057;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:date
         :message-id:subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iUV4qJ+Ndnu5IZ/g+oMPn9Qg5UW0LRGWiRfkIEW5nh4=;
        b=wqWP02VZ20YHv+cX9Y36R9KkRf3bXZOKrNdtigB/W5dCCCHRRQseyhCYCyRy3urQHr
         MRctzcjNMwByl8ZmrRn/Eakvpd9KypSCTIh7Y1HLKuXB3jsSEbSk3qs3qbK7HJPDIXMd
         xUGE2/mn36mWU5P68/zML6yWdqQmjFBndSiRvNNmr5J/9OAs1iIZxKd4nzwhYEQ2DGrz
         Y+3WnFJzRuirUsP4GUkpdvuqcCPI2ggR60OsJwZjdR5NGTLocFaBbgxicxqfThfb8jjb
         pBU4j8Rrr51OQvVwvKrd9nAH4rp5v2l81cAh8JuyAiXwxk5r6/ZKgAdtvYAjLX7JhSUG
         9Oyw==
X-Gm-Message-State: AOJu0YxnF4pc9ddrKU/j9Q62M4rjtobLKLXVY+Tc9QfdyOCIYk0RE2Um
	bdvTDBlZJLwgfKn1qEWswVHQI3YgjTVRYD03y6rCt6JSZYWpcRDzXQQ41xrg8u8=
X-Google-Smtp-Source: AGHT+IE2uRSCW0k00/xl/H9xsyTfhcEfJQCYDSalRwiT6QIvkqnmL++UB2xvehgf7zG2dNRReXSytQ==
X-Received: by 2002:a25:6b41:0:b0:dc2:1f56:11e4 with SMTP id o1-20020a256b41000000b00dc21f5611e4mr943001ybm.24.1706194256804;
        Thu, 25 Jan 2024 06:50:56 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:a9db:0:b0:681:7e67:106b with SMTP id c27-20020a0ca9db000000b006817e67106bls3813124qvb.2.-pod-prod-04-us;
 Thu, 25 Jan 2024 06:50:55 -0800 (PST)
X-Received: by 2002:a05:6214:21ec:b0:686:ae74:ae2f with SMTP id p12-20020a05621421ec00b00686ae74ae2fmr1247533qvj.92.1706194255853;
        Thu, 25 Jan 2024 06:50:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706194255; cv=none;
        d=google.com; s=arc-20160816;
        b=fMWTdxec4/GfKT5GHJ74uOhoBmz2p3xWCfEbY4DZZGnoeVJenlrifYdmI+NXYPPS/I
         RXvESFHi3jnjEcnKGhlOsw3ox10QP0F9HlX1tfbQUdBS2wP662aEFL3fla4Mvg99fvOE
         Aypr7SQuZctZ+fARo7I/yEoHJeqJobpLgaURxK2BVkkIgUlCd2E6/I5hCglVJVbc2fsV
         m0dytfB5/XhGBaRTlt7pxVh66lPVtAv+0cak04RHDKHSH4+gXeRoINHo4YDK8UYg9Qg0
         ednNQkpUjMxztwRYmPCnr6m7Gko64BdmDOJnSTvxsN/dbM6+rdB76bYYOEMz2Gj3Qfdj
         aBMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=xOlRXIpp4ddP86E24ANUwPzRxxjjU5SJYX7P6Qpk0Lg=;
        fh=LBjpU90bP2emkazE0Gc5OAoaiqgp8P8XIgkk948Hows=;
        b=Y+EgbXskl2ryWUrI4V7RPpLQdiC0vAE36kP+sPgQrdottrTfqJZ3QrDpKxkiPwgMgD
         zWmmURY2RFrSvhJ0EZjcvqb8YaEOomLBcXYmnPi5v7g6cgz+QkpbYq3L50i1m42RCipV
         tuhEwcgXjX5guiPLGSvt9jJOv0oHepGQcxsckGauwc4UIEDeCvvXrpXNqdRznog4NaF6
         GBEvX+CmBAGNQ1cEZ2PNxff5IG/47jSk+Rb4yg0LrNz+Gf5V+WcAkdRSjxxuCszWqoz5
         r5WD20r+cmNtLUyiDmw0wqqE78HmRARmnWQtP0qO/Ep8B6a75nYxiKV51fxtj9GVyc9l
         5JEQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of anders@pipkrokodil.se designates 93.188.3.37 as permitted sender) smtp.mailfrom=anders@pipkrokodil.se
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id x16-20020a0ce0d0000000b0067f626350a6si12719577qvk.134.2024.01.25.06.50.55
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 06:50:55 -0800 (PST)
Received-SPF: pass (google.com: domain of anders@pipkrokodil.se designates 93.188.3.37 as permitted sender) client-ip=93.188.3.37;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-460-CldCup5-Nyy-98AXl4nX-g-1; Thu,
 25 Jan 2024 09:50:53 -0500
X-MC-Unique: CldCup5-Nyy-98AXl4nX-g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9136B3C13A91
	for <blinux-list@gapps.redhat.com>; Thu, 25 Jan 2024 14:50:53 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 8E3FC5012; Thu, 25 Jan 2024 14:50:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 87BD051D5
	for <blinux-list@redhat.com>; Thu, 25 Jan 2024 14:50:53 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4F5E31C06916
	for <blinux-list@redhat.com>; Thu, 25 Jan 2024 14:50:53 +0000 (UTC)
Received: from smtp.outgoing.loopia.se (smtp.outgoing.loopia.se
 [93.188.3.37]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-558-UTRCOxoaNBSZjoBDIX4IXQ-1; Thu, 25 Jan 2024 09:50:50 -0500
X-MC-Unique: UTRCOxoaNBSZjoBDIX4IXQ-1
Received: from s807.loopia.se (localhost [127.0.0.1])
	by s807.loopia.se (Postfix) with ESMTP id 8DCE92FE0DAE
	for <Blinux-list@redhat.com>; Thu, 25 Jan 2024 15:42:21 +0100 (CET)
Received: from s980.loopia.se (unknown [172.22.191.5])
	by s807.loopia.se (Postfix) with ESMTP id 7ED112E2926B
	for <Blinux-list@redhat.com>; Thu, 25 Jan 2024 15:42:21 +0100 (CET)
Received: from s474.loopia.se (unknown [172.22.191.5])
	by s980.loopia.se (Postfix) with ESMTP id 7D8C7220155E
	for <Blinux-list@redhat.com>; Thu, 25 Jan 2024 15:42:21 +0100 (CET)
X-Virus-Scanned: amavisd-new at amavis.loopia.se
X-Spam-Flag: NO
X-Spam-Score: -1.01
X-Spam-Level: 
X-Spam-Status: No, score=-1.01 tagged_above=-999 required=6.2
	tests=[ALL_TRUSTED=-1, T_SCC_BODY_TEXT_LINE=-0.01] autolearn=disabled
Received: from s981.loopia.se ([172.22.191.5])
	by s474.loopia.se (s474.loopia.se [172.22.190.14]) (amavisd-new, port 10024)
	with LMTP id FKwhUsiFzl2N for <Blinux-list@redhat.com>;
	Thu, 25 Jan 2024 15:42:21 +0100 (CET)
X-Loopia-Auth: user
X-Loopia-User: anders@pipkrokodil.se
X-Loopia-Originating-IP: 31.40.213.210
Received: from smtpclient.apple (unknown [31.40.213.210])
	(Authenticated sender: anders@pipkrokodil.se)
	by s981.loopia.se (Postfix) with ESMTPSA id 13B6122B1761
	for <Blinux-list@redhat.com>; Thu, 25 Jan 2024 15:42:21 +0100 (CET)
From: Anders Holmberg <anders@pipkrokodil.se>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.400.31\))
Subject: Something small to install Linux on.
Message-Id: <A9534E5B-88A3-4F43-914B-846CF6F8E465@pipkrokodil.se>
Date: Thu, 25 Jan 2024 15:42:10 +0100
To: Linux for blind general discussion <Blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: pipkrokodil.se
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: anders@pipkrokodil.se
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of anders@pipkrokodil.se designates 93.188.3.37 as permitted sender) smtp.mailfrom=anders@pipkrokodil.se
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

Hi!
Following the cat fight here I saw someone  mentioning the raspberry 400.
I am a bit tired of the Mac osx system especially when it comes to braille support and therefore searching for something  that can be a good complement for me.
Since I have used Linux and the Linux-project in the older days I need something like that.
If I buy me the Raspberry Pie 400 I need storage for that to install Linux onto.
How much storage do I need?
And how many usb-ports are there on the 400?
Does it support Bluetooth and Wifi?
Bless!
/A

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.


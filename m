Return-Path: <blinux-list+bncBCVPTHE7K4ILR77CXIDBUBEFMXQIA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC179EBDCD
	for <lists+blinux-list@lfdr.de>; Tue, 10 Dec 2024 23:24:59 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-46772ff833bsf2003831cf.0
        for <lists+blinux-list@lfdr.de>; Tue, 10 Dec 2024 14:24:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733869498; cv=pass;
        d=google.com; s=arc-20240605;
        b=E7asXhI+nZDg9z5LR4E0ffJ5sDxxbLP20Eub2X0LDQvH2eYwine0Kiy2ardiiQ/Gmq
         L3Q8pc34LBKl8R/ongW4lCYr7gMdbz0LIX7iEzDbh0CfK6R41TSC6ZBDxyr1A2i4Fcnj
         tvIPBbnm+T/k8e4u6bM8Fl3sfvynZUVzY3SmFJE1j9zYI33xI6bBZte6hkwenqG8CQ7a
         mQcRxU5iaO8Ci3TuV1hnc2VZZXvGTVQTLJto3YpRtGopTkldAOedjnWIzxnopRVJfnIY
         9aSYj2aPGCVCNIWDe3weuRQNnS5CeTvYuO5NKgBs13yrHIpKB6TpZhH6lZ4VcKqJKEsA
         YwdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=KlKsGIMugvjMgF22p45wX9/6idJYNQCky0vYz1uT97k=;
        fh=JpLD9ZLvLEU6F0PHb5UUxBRiritlcBgLp1YRQqAt8X8=;
        b=PYaAQ3AVePZ8pHheeTPoJKLLHyQeUNr/1MizYh+bWOCFMC/bBBwZaBoHDwEow/dDDH
         Nx78dxPpy+iriJFfUcjPziCqUZEdqIJXZFKedTQL8ktEOS4QwpoHz6CFCVeDkypRmSCv
         sscUeaox0kAADbVWwtg7/suOwc0JR0AH+8NSpHDNg/wxA577ur8SAfkR/qDZbQ7x8p38
         CpVlxbq5HORP6ThxnJBezBuAtNEyahHHZfoVqDw6G+bS/nZThr/jcSVYglU5+V7FSqkk
         9i7pWL9ZqiTxjOtJf6DN8gHpB7jGTuRM+I/ubdDbRyGCWu6BljzNNrWL7IxNEs1mE8jq
         0nZA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733869498; x=1734474298;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KlKsGIMugvjMgF22p45wX9/6idJYNQCky0vYz1uT97k=;
        b=inBZnEgPHg2dmhGEcPDFc088Sw0qUn/tuzPbsSiyITekOEk2LSWNB7OULN6s72d2hK
         jm8FpSHM9wpmCeqZsaPW+zR2qDtI2NVHNZUQOCXsThIQpeWGuF2XEwgRQuP85dObM0TW
         IYifRoRnfMHlm4i0LP0MYZl8fGXeGr+O6QbSGevP9lZj4tWjgLcjhYqO448JPAn7srxn
         b3YoaexfUP8Reg7pdeqhmZGYkNNyAW+2pIdyyalZHeSAXeuntXBOexker0NEuA6IRCsa
         7ExDAJdfllle49+WtId7jfl45OjQmED86ftJ6/Axz7JhQpDDqQy9hAK7+Hk1321gi/1Y
         h1pQ==
X-Forwarded-Encrypted: i=2; AJvYcCUr7dcqM4jHlN2pK8LSDVFXYJZsYw3XwrCW1Bc08bolVdcf/fWaykUiNAhy0IxcplMqlInFmA==@lfdr.de
X-Gm-Message-State: AOJu0YyjSXER0JifOhid/Lf2XxIkWA0MbLNHy01y7+tiPfHCZrMUwot4
	rh2M6gRhXr/WvN7arOCrZYhy8XQGkxgH5Ja49LsSgA5uFmle+x7fcc68d91FVmc=
X-Google-Smtp-Source: AGHT+IHB5Tq+udtRxLOkXGw3AD//ElUHUfYSyONFxnaUnaa3EolDKsixAr9erG2JkmePNoICDjpvVA==
X-Received: by 2002:a05:622a:9013:b0:467:45f2:58b with SMTP id d75a77b69052e-467894dc99amr9007681cf.6.1733869497422;
        Tue, 10 Dec 2024 14:24:57 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:2519:b0:467:6775:e81 with SMTP id
 d75a77b69052e-467677510fals37910561cf.0.-pod-prod-00-us; Tue, 10 Dec 2024
 14:24:56 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUF2g5Hr1M5VXLXDVjf8pSNea8ILBR211BasEEfyQTrI3xV/bqbzJUMxwls1KFLUAScYmdaiYPFk08zcQ==@gapps.redhat.com
X-Received: by 2002:a05:620a:4506:b0:7b6:d1e1:a8d5 with SMTP id af79cd13be357-7b6ebcb7972mr81080085a.29.1733869496375;
        Tue, 10 Dec 2024 14:24:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733869496; cv=none;
        d=google.com; s=arc-20240605;
        b=ef02y7eLaVOWiF/OjJ8tM4U+hLuwGt5NU5BHFRT4ot8HWngw0BC301dWCCoIWFkzzV
         7dAvYfPLJhcLB/dSmc1G6cOQ1NDZ/Yj6Dxg2ZMave2CKSA5HSUvUdIHD8vvK6h2yAccI
         1XVIcTGPvEB4HH0Kg/y/XK8KrLe4awYiKKxpB9pcKTValjC/k8kvJvTh7zescH/Fqnip
         CyUy+qqixyOncRSeFRjby51btc83HNjgsI3MOihjxuTpD84gh3VLFf489t/wHUXUssWk
         tG6nF9LvBD59DoIcm0sAi3sg8Qbs2ii0iFp51t90rQ6PTXmckiXPKc0ot01Ef9SzhL2J
         MrWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=KlKsGIMugvjMgF22p45wX9/6idJYNQCky0vYz1uT97k=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=J+lY3a8A67j3+/UPIxHDRaCR9vuW+TLYtu04XX0zsop/yjli56CvGSuHOCiO+ghnff
         ET6e5f81i2DN5m4tvLVAJaWe1PVQA8riyXvDHqtZHobEHbvBdANhr3/OOsTLF/POGJhD
         o8KZwlYFngcud9J16huuoScq9m/ho/Fo4/z4Iysx1cTF+6Ffcemjre9rbTvUJfnKLbYE
         w+WrBSPa/e7To3izYCRQTJx2wYRx3sw0Z+1nOgZ8GOmrchZx/UD6fLS0kq8ED2/DIZzf
         Q1oQqN9dunugZvWq8MDBRK2wO/0DZhmWbOsYoyQhKTfCpy4yiViBeoam1mQZgteS0w/f
         Xb+A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7b6cf11abeasi797895285a.667.2024.12.10.14.24.55
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 14:24:56 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-191-VlOXIUjbNtqkR5MyuebRZg-1; Tue,
 10 Dec 2024 17:24:54 -0500
X-MC-Unique: VlOXIUjbNtqkR5MyuebRZg-1
X-Mimecast-MFC-AGG-ID: VlOXIUjbNtqkR5MyuebRZg
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DB97419560AE
	for <blinux-list@gapps.redhat.com>; Tue, 10 Dec 2024 22:24:53 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id D63253000197; Tue, 10 Dec 2024 22:24:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D3D0C300018D
	for <blinux-list@redhat.com>; Tue, 10 Dec 2024 22:24:53 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 450AA1955E99
	for <blinux-list@redhat.com>; Tue, 10 Dec 2024 22:24:53 +0000 (UTC)
Received: from atlas.bondproducts.com (atlas.bondproducts.com [23.24.6.165])
 by relay.mimecast.com with ESMTP id us-mta-402-HbrWBY9DNJqmNZYtPYXo3w-1;
 Tue, 10 Dec 2024 17:24:51 -0500
X-MC-Unique: HbrWBY9DNJqmNZYtPYXo3w-1
X-Mimecast-MFC-AGG-ID: HbrWBY9DNJqmNZYtPYXo3w
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 4286F40508
	for <blinux-list@redhat.com>; Tue, 10 Dec 2024 17:24:50 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 0CBEC1001C6; Tue, 10 Dec 2024 17:24:50 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 0A7DC1001BD
	for <blinux-list@redhat.com>; Tue, 10 Dec 2024 17:24:50 -0500 (EST)
Date: Tue, 10 Dec 2024 17:24:50 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: e l i n k s and screenshots?
Message-ID: <Pine.LNX.4.64.2412101721280.760261@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: omJg8XYl4ZKjHLVXsfCrl79bWR8LLH1mRWYbR5HUvdU_1733869490
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 0L0dq-IzaZDb2RuHjbGnp6-IYnu6JHZzGR1kXv4cHMs_1733869494
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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


Hi all,
I asked a while back, and saved the thread where others shared how links 
as in a chain, managed screenshots.
I am gathering data for a company, and, if possible, want to capture the 
same error in e l i n k s.
I intend doing so with lynx the cat, so the picture is complete.
Is there a method in elinks?
Thanks,
Karen



Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1617C4C7B2A
	for <lists+blinux-list@lfdr.de>; Mon, 28 Feb 2022 21:58:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646081900;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Pzt0e8NaJ3xN5ieUL22D8pKtlfHsZ5OpUJXksCAWrfw=;
	b=FvHVttXuZ9g9Sv8gAuw0Sn8MW70q12PMIWkgRhHA3twdGxy9/g6/TguH9A8X1nadmEjT53
	tImQSvseoLDClbodc79XRpLm5PDL1gj3hRTngGtXay0m8w2Cuo7/+TgddT0SvxAYxcuA9v
	CG+WWnqj/CtO1OzFZL6Wf6kKdYh5E70=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-16-j0T5sYmePNKTjNRXfsnZxw-1; Mon, 28 Feb 2022 15:58:15 -0500
X-MC-Unique: j0T5sYmePNKTjNRXfsnZxw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3AFDB180A088;
	Mon, 28 Feb 2022 20:58:10 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4AE771006856;
	Mon, 28 Feb 2022 20:58:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9739A1809C88;
	Mon, 28 Feb 2022 20:57:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21SKvgAd008734 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 28 Feb 2022 15:57:42 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3330D400F3EC; Mon, 28 Feb 2022 20:57:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2F1EE4010A1D
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 20:57:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 16511801597
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 20:57:42 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-606-fQnTmVPRNFqEdKSjXH7kCg-1; Mon, 28 Feb 2022 15:57:40 -0500
X-MC-Unique: fQnTmVPRNFqEdKSjXH7kCg-1
Received: by mail-wm1-f48.google.com with SMTP id
	l2-20020a7bc342000000b0037fa585de26so230776wmj.1
	for <Blinux-list@redhat.com>; Mon, 28 Feb 2022 12:57:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent
	:content-language:to:from:subject:content-transfer-encoding;
	bh=uZbQXmOhCcMHBC1xasSESlNcBtpUBPBN6hxvChKlUh4=;
	b=r4j4uRc3ByN6+5QJSV5knFxcEfHPKCmWUv818wpwd+DpOCf3yyD2q2AJyBCtTjd2AI
	/qyxLVjaXh/Cl7m/j1tpJ974PnGmcKCS6P0nXTjp1g0ZFXxORuhEQ84GfW9t2RLZn9u9
	I1VCm1Ghm2iiXBYZoEOQmU+Q1Hd2oAAGpKhVmiunrLk8d4UY5MvOmYCDt7k+8ItCCvg/
	5jWqZJjOya2ZZAwoEsisXvpqEoRi2Gqk0j7/IxNdp4h4WBdh89SoiIGcaFPcwEcSfwdn
	NQInAumlQdt3CIMxpGVSr5L3OFLxhHRv5uF3V0XxlDmrRB18W+c34+LjizJiLLD7Fpql
	53Fg==
X-Gm-Message-State: AOAM532b9SVMT7Vx4DeQfOTjFjognJocoaFJehExxJM3r1EUWPRzj6XI
	YeFHz6pfFJTFqVhvfiQv6qWv7g2+RBqP4g==
X-Google-Smtp-Source: ABdhPJw7U6VGyRJhiUracKzCp8cK53AZMd4Zk+jdmAmqIq8JdWt8BbNICUDki/hyUn074GNUORA40w==
X-Received: by 2002:a05:600c:348d:b0:381:673f:3e21 with SMTP id
	a13-20020a05600c348d00b00381673f3e21mr5340596wmq.35.1646081858872;
	Mon, 28 Feb 2022 12:57:38 -0800 (PST)
Received: from [192.168.8.130] ([197.184.177.193])
	by smtp.gmail.com with ESMTPSA id
	r17-20020a056000015100b001ea7db074cdsm15759635wrx.117.2022.02.28.12.57.37
	for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 28 Feb 2022 12:57:38 -0800 (PST)
Message-ID: <8111ae82-7282-633d-6d59-b0a76b3a4460@gmail.com>
Date: Mon, 28 Feb 2022 22:57:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.6.1
To: Linux for blind general discussion <Blinux-list@redhat.com>
Subject: Snap, Flatpak and/or AppImages?
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,


Am just curious, which of the 3 multi-distro distribution formats do you 
prefer?


I am most familiar with flatpak, for the very simple reason, Slint comes 
with it setup by default.


Some software I require for making a living, (Zoom and Skype) is not 
available as SlackBuilds, and making those from .rpm or .deb files is 
doable, but frankly a pain.


I tested the unstable build of Chrome as a flatpak, but it's very 
limited in what you can really do with it, so no installing a browser 
this way.


Snapd as I stated in a previous message doesn't run at all on anything 
based on Slackware 14.2, however I cannot speak for Slackware 15 as of 
yet. Seeing that Snapd requires some systemd packages as dependencies, I 
do not foresee this changing anytime soon.


I really cannot speak at all on AppImages for the simple reason, I've 
never needed one. If you happen to know more about this than I, which 
shouldn't be hard, please enlighten me on the subject.

-- 
Warm regards,

Brandt Steenkamp

Sent using Thunderbird from the Slint machine

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


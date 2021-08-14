Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id F0E463EC098
	for <lists+blinux-list@lfdr.de>; Sat, 14 Aug 2021 07:03:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628917427;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yvO/fLvzSs+oaB/nhbE8o+QsRl3iqKFFIHtPfqzAuXk=;
	b=CzToTP4OglVJmse01AK1IuT3ZO2L+15TPzAT/095Dyub/ZvcI4kfXwt67WVzXbs6xpDNzC
	0gcJuFicM9aQxKb55RAmAsbJMoeN3No3q/iTiyP4rdqAkFptvUbGWCuNw7zat3wS0SrPAg
	Tn545bzpC7Q+23I+8u817fxG8Q2pB+Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-546-qmyHpzO7Pw6KS4NxTKdqPA-1; Sat, 14 Aug 2021 01:03:45 -0400
X-MC-Unique: qmyHpzO7Pw6KS4NxTKdqPA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DA460344AF;
	Sat, 14 Aug 2021 05:03:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A10D75D9FC;
	Sat, 14 Aug 2021 05:03:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8EDBA4BB7C;
	Sat, 14 Aug 2021 05:03:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17E53PdX025506 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 14 Aug 2021 01:03:26 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DC5E320F8C18; Sat, 14 Aug 2021 05:03:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D85CC2014F87
	for <blinux-list@redhat.com>; Sat, 14 Aug 2021 05:03:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5004D101A529
	for <blinux-list@redhat.com>; Sat, 14 Aug 2021 05:03:23 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
	[209.85.222.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-292-mwszxotUMM-ODJElJTtnTg-1; Sat, 14 Aug 2021 01:03:21 -0400
X-MC-Unique: mwszxotUMM-ODJElJTtnTg-1
Received: by mail-qk1-f179.google.com with SMTP id y144so269371qkb.6
	for <Blinux-list@redhat.com>; Fri, 13 Aug 2021 22:03:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version:date
	:subject:message-id:to;
	bh=4CtJRW9/ABUaUIBqg0h/hvCDfviZohbr/14+52c1bAo=;
	b=e+67PCPzW51ZMS931G80qLkjhH/sOMIGSbCax9+G2Z+tIiy41O1GqNHwOJPYmUJSxM
	MUOXrcEqexhxdzQOT2snD9CoTq+NSUbFuSb/p+OJc1lLFAx3KlUyvQWCAWPFsfIhlDjr
	vCsM5jbV3mq1q6M9xWcjhERvSqxMCVYomI3UPBgoHplimDZSta6mbc1upU0xyX/v+hpD
	7rrGagjYtUV/0TRp1ssRMrbIDLCPNB2aCV4edVa6ygy/+akyZk4/GyEo2QlAPpJMPX4P
	YGcOVqeq5Ymv9m4WAc8V75lmVHYWl9I0XbItpECGGRpyw3cm2QjwZygtTkMWXR9xKIZk
	dFRA==
X-Gm-Message-State: AOAM533ciUgnTZFlBnlSgRXIBO2F5Q/lrB607+BOqNWDnTBAEYLHPqOV
	gpOr51Su0T3I/xooF00/DQEJOf1DlnJHHdMR
X-Google-Smtp-Source: ABdhPJzd/mWZkLiLWdONFwfqg2xuVSHpGwfTGxXIZs46a8s263pbPlfrI4dhyeyBXYi7T8Ye+e49qg==
X-Received: by 2002:a05:620a:f8b:: with SMTP id
	b11mr4900793qkn.262.1628917400463; 
	Fri, 13 Aug 2021 22:03:20 -0700 (PDT)
Received: from smtpclient.apple ([2603:9002:304:d847:9194:16c7:9183:3870])
	by smtp.gmail.com with ESMTPSA id 71sm1860867qta.25.2021.08.13.22.03.19
	for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 13 Aug 2021 22:03:20 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Sat, 14 Aug 2021 00:03:19 -0500
Subject: Re: Bltty? What am I not doing?
Message-Id: <BF55C32A-983C-41AD-AB45-9BAB3D5AF017@gmail.com>
To: Blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17E53PdX025506
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Courage, mon brave. It really does work. I am using 5.6 in ubuntu.

Try that command without the equals mark. Mine has no equals mark in it.
No space either, just -bfs for me, so -bhu for you.

Other things to try: edit /etc/brltty.conf
Lots of info in that file.

Also the brltty email list is very friendly and helpful.

Good luck.
Oh, and I have found that polish is the most effective language for cursing computers and software.

--Brian Tew


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


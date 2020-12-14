Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4F5E32DA422
	for <lists+blinux-list@lfdr.de>; Tue, 15 Dec 2020 00:30:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1607988605;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GdFsUqS+rifvuc5s9be2hnEg3L6kRwhzLDpw7yg04ys=;
	b=AghayKPMrea3NDnog40gK4wRcSHzpBsUqpRyuUN/ZUQiDv1Kt59AyMi4fXKbm4f9KStpca
	2UTeEEq9fSANJGKOSZx1c1o0uDYCCM7Bvnrt8JevFaDCqSC65i2SsiKtYTKpyNNa7ITuWq
	MC683GJiQsgO2PIYNgJhn70lTs4lcGo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-491-PkBl2kcdNaevQgrulXBtlA-1; Mon, 14 Dec 2020 18:30:03 -0500
X-MC-Unique: PkBl2kcdNaevQgrulXBtlA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1F9FC80EF82;
	Mon, 14 Dec 2020 23:29:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B365A10023B9;
	Mon, 14 Dec 2020 23:29:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 058571809C9F;
	Mon, 14 Dec 2020 23:29:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0BENTc8o009630 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 14 Dec 2020 18:29:38 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 67E932026D49; Mon, 14 Dec 2020 23:29:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 630392026D46
	for <blinux-list@redhat.com>; Mon, 14 Dec 2020 23:29:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1D3CD858284
	for <blinux-list@redhat.com>; Mon, 14 Dec 2020 23:29:36 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-317-_Yd3t9LfPWKFVVP25eceVQ-1; Mon, 14 Dec 2020 18:29:34 -0500
X-MC-Unique: _Yd3t9LfPWKFVVP25eceVQ-1
Received: by mail-wm1-f43.google.com with SMTP id a6so15268655wmc.2
	for <blinux-list@redhat.com>; Mon, 14 Dec 2020 15:29:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version:date
	:subject:message-id:to;
	bh=9bvRXrskOF6rynh31x71/IJw80FAXrUjSdB5Xg6LJVA=;
	b=HaVcksQndCnIErsiSEVy9/DESah/zvwOKwMO4DZ1TPLluJpZZdxb4BsTcLs3xWqrtO
	9a636QUR51ghphIgA5FUVlGhFt+R6XXfpZLnL27Xbg/K1f4QIZrlWYS6ihPtzFrfVypa
	dr3uK8LP4Dno3C+8ugIaRTN3iQVImA4ty9bgTh5OzPsA89sggn2K57v5BU22Anjn1lc1
	RYB4J5KrwKY0R6DE9Ex5wvL6pyrYsy+Nb7ruL58cx/kpyQjxo4ssoKF2Icpn9OxPnqj/
	CruAAOHlSDleOzg66cIPyyZ5XGLly05y5uUrX6ReD/r6fNmCcwlnALc8NCBratD01Kmu
	Br9w==
X-Gm-Message-State: AOAM530zyFNoVa4YRzYun6362dsrv8ZQVzFeIX/N5THC8QrhFW3i3du5
	OWn0XoD1vhE1mgIXqGuBKkbnvo1xF8A=
X-Google-Smtp-Source: ABdhPJy4W8G/HAaeeqC3F7GcYIlA92/e2HRq/J1evWBd2xbHWHC2bYLqYdBf0NV8MBgeRlMaQbUKEA==
X-Received: by 2002:a1c:de41:: with SMTP id v62mr30580172wmg.135.1607988572501;
	Mon, 14 Dec 2020 15:29:32 -0800 (PST)
Received: from [192.168.1.121]
	(host86-129-224-163.range86-129.btcentralplus.com. [86.129.224.163])
	by smtp.gmail.com with ESMTPSA id
	c81sm35267435wmd.6.2020.12.14.15.29.31 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 14 Dec 2020 15:29:31 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Mon, 14 Dec 2020 23:29:30 +0000
Subject: Introduction
Message-Id: <79C20A2A-0AAD-484C-95D4-29D4503833F8@gmail.com>
To: blinux-list@redhat.com
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0BENTc8o009630
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello everyone

I am a new member here. Used windows then switched to Mac, now back with windows again. Recently though, I have heard about linux and am interested to know which flavor, as there are many is the most accessible with the orca screen reader. As I am completely blind. I am completely dependent on speech. 

I look forward to learning more from everyone in this community. Plus gaining further knowledge with linux with the more experience here on this list.

With kind regards

Daniel 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


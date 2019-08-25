Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F25B9C646
	for <lists+blinux-list@lfdr.de>; Sun, 25 Aug 2019 23:31:45 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 62EEE189DACA;
	Sun, 25 Aug 2019 21:31:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 46B9A5C1D8;
	Sun, 25 Aug 2019 21:31:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B8F7C1800B74;
	Sun, 25 Aug 2019 21:31:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
	[10.5.11.22])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7PLVexX011162 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 25 Aug 2019 17:31:40 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7C9B51001B12; Sun, 25 Aug 2019 21:31:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx18.extmail.prod.ext.phx2.redhat.com
	[10.5.110.47])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7780D1001B08
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 21:31:37 +0000 (UTC)
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
	[209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id E1EAA308212F
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 21:31:28 +0000 (UTC)
Received: by mail-pf1-f171.google.com with SMTP id 196so10314568pfz.8
	for <blinux-list@redhat.com>; Sun, 25 Aug 2019 14:31:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:from:to:subject:date:mime-version
	:content-transfer-encoding:in-reply-to:references;
	bh=YvZAYpDG5zrpNYImuo1+fWfi1Y1n85Ti2Y1TieqiTss=;
	b=HPR2nY0TYdtXYr65wfhOTj45g4agGE7mZ4HZkRmyuFSAMAL1aBJ8EB+v25CxJ3JS6b
	TsAEVUmdVi7JsrkQezbioMzgubdG8NhUB6ph376gX9p1DZFps8iqaHTqdaMXpXLUIBhl
	W6vCFZ03P7Ppokx2sbAEUjugBI9xgt4uV+HqNTNraEQVBwQywG2rDXFKzv2AbMxOSOrJ
	GXGLzE6VdEEv6B6vFe/pqi7ooozO08D7N9WATZCsm30Kx1+wlp3Oba4ELURXeU+1Y0YP
	zwNp3Pcc4+I90EdrjnpT1VPLBleMFnPtDnFqip+alBbOkVotMJQyP4PCKVPs0fKiPKbJ
	sKdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:from:to:subject:date:mime-version
	:content-transfer-encoding:in-reply-to:references;
	bh=YvZAYpDG5zrpNYImuo1+fWfi1Y1n85Ti2Y1TieqiTss=;
	b=KoqAWr+z2P19NU9+P8TZNqG6QOMXUFJ7DkMRRCKbNdcyfyBEL7xbM4p3zsMf5shaJU
	89z8Sbx+vPVY2bcTxociUrrIXW6WYWWBjYjNhvI+F4l3Kn5/hRn5+eN4z3jQfuczk9nC
	3XKE26Bo4yY++a9b83ByuUSDiUW/WtQCHtwqfVPP4j3GUIIuF5jnSU3Jr0GZs9vkpKdb
	y+MMymuL4AgiySihkB+kVGY8G9H+pAC2QQXukY0NxTF6z0/jq0Bc1WTXCK2cGBsM/pX4
	XidEGjK+tbm7jgZaR4Fni3dAL63f7QkwZTwuG/GpYQdC24MVdbUHGsxn0iQRAZuYKRmt
	9k0w==
X-Gm-Message-State: APjAAAX8F64CEsF7RWDUqg/tBFrdrHc1t6/f3VnATjNouNRJEEE5zZBj
	Szws7QLl4MPSZDXUFoG95RwDyI/d
X-Google-Smtp-Source: APXvYqwio/9GP7WtXz9vzHBMEKIuXJa30udgrh/Qe3KSZpLJGuRkmD3eQ1AFJjpEh/i8Id+uJ0HVrw==
X-Received: by 2002:a62:6c1:: with SMTP id 184mr16393799pfg.230.1566768688042; 
	Sun, 25 Aug 2019 14:31:28 -0700 (PDT)
Received: from [192.168.1.131] ([67.230.224.68])
	by smtp.gmail.com with ESMTPSA id
	p20sm8109465pgj.47.2019.08.25.14.31.26 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 25 Aug 2019 14:31:27 -0700 (PDT)
Message-ID: <20190825.213109.635.20@[192.168.1.131]>
To: blinux-list@redhat.com
Subject: Re: amazon?
Date: Sun, 25 Aug 2019 16:31:09 -0500
MIME-Version: 1.0
In-Reply-To: <64b22aae-23e5-d645-eeb9-6c7646972090@gmail.com>
References: <Pine.LNX.4.64.1908231944410.10534@server2.shellworld.net>
	<251aee8d-1527-b391-a37e-e4fbf6799996@gmail.com>
	<alpine.NEB.2.21.1908241555430.22902@panix1.panix.com>
	<7f8743f3-bddf-6807-b2bf-0e7443c9c322@gmail.com>
	<Pine.LNX.4.64.1908250041020.12504@server2.shellworld.net>
	<6acc536b-99c9-21f7-1d40-be4d10abab70@GMAIL.COM>
	<Pine.LNX.4.64.1908251207060.2365@server2.shellworld.net>
	<a1ef7648-72f7-8fc7-e5b5-142187a91cc0@GMAIL.COM>
	<74ebe647-3c78-b87d-c7a3-aa65d2d688d1@gmail.com>
	<20190825.212134.847.19@[192.168.1.131]>
	<64b22aae-23e5-d645-eeb9-6c7646972090@gmail.com>
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.47]);
	Sun, 25 Aug 2019 21:31:28 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.47]);
	Sun, 25 Aug 2019 21:31:28 +0000 (UTC) for IP:'209.85.210.171'
	DOMAIN:'mail-pf1-f171.google.com'
	HELO:'mail-pf1-f171.google.com' FROM:'captinlogic@gmail.com'
	RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, SPF_HELO_NONE,
	SPF_PASS) 209.85.210.171 mail-pf1-f171.google.com 209.85.210.171
	mail-pf1-f171.google.com <captinlogic@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.47
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x7PLVexX011162
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.63]); Sun, 25 Aug 2019 21:31:43 +0000 (UTC)

Somebody with money and connections is suing them.
Amazon probably could've been reasoned with when they first started. They were small and still connected to their customer base. Now, they're so big, they don't care if a few hundred people don't use their site. It's like a four year old trying to box against George Foreman. He's not going to notice much lol.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Sun, 25 Aug 2019 16:28:35 -0500
Subject: Re: amazon?

> And yet Domino's is being sued because their web site and app is not 
> accessible.
> 
> 
> I agree with you but that doesn't mean law suits should never be filed.
> 
> 
> -- 
> Christopher (CJ)
> Chaltain at Gmail


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

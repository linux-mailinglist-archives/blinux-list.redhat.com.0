Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E133CCA85
	for <lists+blinux-list@lfdr.de>; Sat,  5 Oct 2019 16:38:05 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id BFEBD85360;
	Sat,  5 Oct 2019 14:38:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 471BD60BFB;
	Sat,  5 Oct 2019 14:37:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 23AA71803517;
	Sat,  5 Oct 2019 14:37:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
	[10.5.11.14])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x95Eb00g023780 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 5 Oct 2019 10:37:00 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 768375D9E1; Sat,  5 Oct 2019 14:37:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx30.extmail.prod.ext.phx2.redhat.com
	[10.5.110.71])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 713AC5D9DC
	for <blinux-list@redhat.com>; Sat,  5 Oct 2019 14:36:57 +0000 (UTC)
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
	[66.111.4.27])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 1DA561DA3
	for <blinux-list@redhat.com>; Sat,  5 Oct 2019 14:36:57 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 2C75F21DC7
	for <blinux-list@redhat.com>; Sat,  5 Oct 2019 10:36:56 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
	by compute3.internal (MEProxy); Sat, 05 Oct 2019 10:36:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mm.st; h=to:from
	:subject:message-id:date:mime-version:content-type
	:content-transfer-encoding; s=fm1; bh=g+KG/eLcnvIIZzXJBoW+q03r94
	WYQOO/jCGhVps0cSQ=; b=WsqUleAKqQ5e5LOQFtkizyDGNSSmNbDMY6/PxHEe/S
	dgfj6ywuzrFNUxp8Hq+A/xsiQed1+jqj2nT+GnNleWRTi3L0vS1kNgQAlV7u29Gi
	ZcWBrHCfw67dMpk2I9taihenizGBZcqYeYmOaOfBXRx41yDzpGemumpfOchpHgfN
	f0xgvxFrZ40bxsNLVMSAN/4XULo2XHEvs6iSTJ7L2mwGmya3ZFBIjPZXPdfIJDr/
	GKvst5SoGeQYJyt/ohCqLpzeizH0veS4HZyf54v2Mn5UwZZoaFKwVSN3FsOFGL//
	fBtnMzEoI2d/oOSZApEZXIWwMqFLvNaceKjSKcZQF5hA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:message-id:mime-version:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=g+KG/e
	LcnvIIZzXJBoW+q03r94WYQOO/jCGhVps0cSQ=; b=JW07uv6oUbj9zu02vkTtpg
	+rdCJCQYbZOxRkdm7EKagliEfjRfPj0XFEvgrbo/th41+oxe7mqrfIsnYU4YT5EU
	5dB+mCHO4O8UdNRmwT0hlg6fWyBFsZkaEhDAPYf/x2oSnV64fUO0cofFtSf13fBy
	nAJuZoPVPQll55ZccUe/QZxkaPLFjeboDkfUebPa+91+C2/I6M74ejtsgrYRIpHP
	FAEDxbcWH6oiAzOgJRyeM0dVm/iPv9ktdCxfxm+9Bp0WHSmrfBfU2CsbLBYWrWBI
	YQ8HOCSqcIlY0hQiDln3aytKYWPRvdeW3424DO0C8MwqQGbhwfKb8DHf7v4eQmgQ
	==
X-ME-Sender: <xms:h6qYXQIho4TRR6P6C0j5XXTCiTaO_aqj5IX5YfU9COupZWe-imnX2Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrheefgdektdcutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecunecujfgurhepvffhuffkffgfgggtgfesthejredttd
	efjeenucfhrhhomhepvehlvghvvghrshhonhcuvegrshgrrhhinhcufghlihgrnhgruceo
	tghluhhlsehmmhdrshhtqeenucfkphepudekjedrieejrddvvdelrddvtdelnecurfgrrh
	grmhepmhgrihhlfhhrohhmpegtlhhulhesmhhmrdhsthenucevlhhushhtvghrufhiiigv
	pedt
X-ME-Proxy: <xmx:h6qYXSikFvvvhy985FyggJGq71NrnXz-J76R-JUoOW8z8kIID3-F1A>
	<xmx:h6qYXbQvZBioQiI5pnS9QLgKMhpKv0g-I08WFIkPV3tuNYlLSVkcNw>
	<xmx:h6qYXX5q3v488M4WiCf-feoGHoQ8TCUzVQkfa5u8PAhxRo80XGRtjQ>
	<xmx:iKqYXfGIIZuAWZJcOQhdoV5U0reoifWRKb2aU4wzEakUzDhIumO6Ig>
Received: from [192.168.0.10] (unknown [187.67.229.209])
	by mail.messagingengine.com (Postfix) with ESMTPA id 71DF08005A
	for <blinux-list@redhat.com>; Sat,  5 Oct 2019 10:36:55 -0400 (EDT)
To: blinux-list@redhat.com
Subject: Modern laptop with built-in pc speaker?
Message-ID: <01c32392-c6e2-7bd8-7bb0-9ded6e74e451@mm.st>
Date: Sat, 5 Oct 2019 11:36:53 -0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
Content-Language: pt-BR
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 238
	matched, not delayed by milter-greylist-4.6.2 (mx1.redhat.com
	[10.5.110.71]); Sat, 05 Oct 2019 14:36:57 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.71]);
	Sat, 05 Oct 2019 14:36:57 +0000 (UTC) for IP:'66.111.4.27'
	DOMAIN:'out3-smtp.messagingengine.com'
	HELO:'out3-smtp.messagingengine.com' FROM:'clul@mm.st' RCPT:''
X-RedHat-Spam-Score: -0.801  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_LOW, SPF_HELO_PASS,
	SPF_PASS) 66.111.4.27 out3-smtp.messagingengine.com 66.111.4.27
	out3-smtp.messagingengine.com <clul@mm.st>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.71
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Sat, 05 Oct 2019 14:38:03 +0000 (UTC)

Hello all, I'd like to know if there is any laptop, or perhaps another 
kind of mobile computer, that contains a built-in pc speaker, and is 
still supported by the manufacturer and resellers. I'm talking about 
that speaker which is still available on most desktop computers, which 
allows us to configure boot managers like grub to issue a beep when it 
displays a menu containing more than one entry for the OSes installed on 
the machine.

Thanks,
Cleverson
Cleverson

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

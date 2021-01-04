Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 73FF12E9DF4
	for <lists+blinux-list@lfdr.de>; Mon,  4 Jan 2021 20:08:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1609787329;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bcdbrcNjbSDIWo1CQhBhwbS5TOMNR9Qo2mDtwkNLJ9M=;
	b=i2fv620VPQDwVv9fcvd99Wr6rJYKc1Z+oHRRw2+i2c48H/R6aLtPrm+/s+hOeBmgUJPyDf
	c0/D5GfcE8spyuwK2adGaEumRrZR1IScLRtVI5h4dhUz89OhA+1pWUOhfG5F2W2kt4n+z8
	MFvrEmliGi5SXNUT+KOVqbKzx7tDMiw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-221-JdFH7OkKNh63cabhxha2Kg-1; Mon, 04 Jan 2021 14:08:47 -0500
X-MC-Unique: JdFH7OkKNh63cabhxha2Kg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 71678C73A3;
	Mon,  4 Jan 2021 19:08:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0C8E061F20;
	Mon,  4 Jan 2021 19:08:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 587781809CA0;
	Mon,  4 Jan 2021 19:08:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 104J8Nx8024022 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 4 Jan 2021 14:08:23 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3D8532026D48; Mon,  4 Jan 2021 19:08:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 38DD42026D47
	for <blinux-list@redhat.com>; Mon,  4 Jan 2021 19:08:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 145A8811E76
	for <blinux-list@redhat.com>; Mon,  4 Jan 2021 19:08:21 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-495--PYGWY9gOd-AR99BJZOpUA-1; Mon, 04 Jan 2021 14:08:18 -0500
X-MC-Unique: -PYGWY9gOd-AR99BJZOpUA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4D8lX23Jlzz1Jcr
	for <blinux-list@redhat.com>; Mon,  4 Jan 2021 14:08:18 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4D8lX22TwSzcbc; Mon,  4 Jan 2021 14:08:18 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4D8lX22F4GzcbV
	for <blinux-list@redhat.com>; Mon,  4 Jan 2021 14:08:18 -0500 (EST)
Date: Mon, 4 Jan 2021 14:08:18 -0500
To: blinux-list@redhat.com
Subject: cli-party sennet error
Message-ID: <alpine.NEB.2.23.451.2101041403160.8138@panix1.panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Error is too many arguments on sennet.sh line 28.
None of the squares speak descriptions when landed on in sennet either. 
Knowing the names of the squares as you land on them is the most valuable 
part of the game.
Square 15 is New Life and Square 26 is The House of Beauty and Square 27 
pool of waters you don't want to land on since the crocodile gets lunch.
I'm glad I checked this when I did.  I finally got html2text installed and 
working and on slint I had to use pip install html2text to get that done.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


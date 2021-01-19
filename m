Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id F0AD32FAEFA
	for <lists+blinux-list@lfdr.de>; Tue, 19 Jan 2021 03:59:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1611025194;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Qra/VMIpk6EhyowQXCjTEIg+GglGmpZwN6cuqwaRxnw=;
	b=I2Db8m2SF6ZLPtHkOxCbSmtaLbFFGoxRjNgQlS3NMbLZHjADqLQyuSkeTxlKPKZnmcYMab
	tOza7d5Lp2hOPnYNR40yXLKCkDJJk0x+KSGcVE75DNoXhSssmMjfDueeeOtMTqd7S1c7Z6
	OU3cE8JZ3vlCioEKjyWVDYBTPjkqLkk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-257-0TwSCWYsPX6aAQ6F8x7mPg-1; Mon, 18 Jan 2021 21:59:51 -0500
X-MC-Unique: 0TwSCWYsPX6aAQ6F8x7mPg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3B24A806663;
	Tue, 19 Jan 2021 02:59:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 18E8A19D80;
	Tue, 19 Jan 2021 02:59:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4FD624BB7B;
	Tue, 19 Jan 2021 02:59:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10J2xVX7007815 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 18 Jan 2021 21:59:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CF51E1111456; Tue, 19 Jan 2021 02:59:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CB141100320D
	for <blinux-list@redhat.com>; Tue, 19 Jan 2021 02:59:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 548C91875049
	for <blinux-list@redhat.com>; Tue, 19 Jan 2021 02:59:29 +0000 (UTC)
Received: from mx1.simplelogin.co (mx1.simplelogin.co [94.237.86.150])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-125-quBOiYHuPDOf5cJ7egiMkQ-1; Mon, 18 Jan 2021 21:59:26 -0500
X-MC-Unique: quBOiYHuPDOf5cJ7egiMkQ-1
X-SimpleLogin-Client-IP: 127.0.0.1
Received: from [172.17.0.4] (localhost [127.0.0.1])
	by mx1.simplelogin.co (Postfix) with ESMTP id A520D3F33B
	for <blinux-list@redhat.com>; Tue, 19 Jan 2021 02:54:21 +0000 (UTC)
Subject: Have you experienced Voxin completely freezing the speech?
MIME-Version: 1.0
To: blinux-list@redhat.com
Message-ID: <161102486156.7.5980584801147920523.3154268@slmail.me>
Date: Tue, 19 Jan 2021 02:54:21 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-EmailLog-ID: 3154268
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,
I have Voxin with Vocalizer voices installed on my Linux Mint MATE laptop. It works fine, as long as it does not encounter an Emoji online.
As soon as Voxin reads an online Emoji, it completely freezes the speech.
I can't really avoid emojis online. They're everywhere. So I could be reading a blog post and someone uses an emoji and it will totally freeze Voxin.
I then have to plug in the Braille Display to navigate through the silent menus to get to the Orca preferences menu but even when I set the synthesizer back to ESpeak the speech just stays frozen until I shut down the computer and then its fine once it restarts everything speaks again.
This does not happen with any other TTS synth I use.
I use ESpeak on Linux Mint and it does not usually freeze like this. 
I also use RHVoice on Linux Mint and it does just fine with Emojis. 
Voxin is the only synth where I experience this problem of it freezing the speech once it reads an Emoji.
As of now, I only have Voxin on my Linux Mint MATE laptop.
I have not tried installing Voxin on my other laptop with Slint yet. So I do not know if this is only an issue with Voxin when installed on Ubuntu based systems... or not.
But I'd like to be able to use Voxin on Linux Mint MATE without it freezing the speech whenever Voxin encounters an Emoji online.
Have any of you experienced Voxin freezing the speech? Does it seem like Emojis cause this glitch for you? Is there a work around for this?
Thanks,
SL
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


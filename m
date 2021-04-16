Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 83957362C42
	for <lists+blinux-list@lfdr.de>; Sat, 17 Apr 2021 02:08:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618618109;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bLRs/JUs5QVdeLfhBF+nJ4Qt7JUcliARHxO0g7mEi7k=;
	b=K49grDqlZL91iu6r7UQHc2rIfwUoWL3Tp1vJ+8TJ8qeUs9w8C/VT1Ys2Rn2/ecWNN1bQxq
	MzzvsvRA7hx/HAGkZg5Axe8JBp9LiuuJD/AdYiSXRFUAlAgPX6IFf4+G5sqw9+YO9/rGYP
	mvuc4P+n6SqA2cSVIXYqSOz0+D00jIU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-79-NnF_ZDe9NXycrxz7Gb51JQ-1; Fri, 16 Apr 2021 20:08:27 -0400
X-MC-Unique: NnF_ZDe9NXycrxz7Gb51JQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B595218397A9;
	Sat, 17 Apr 2021 00:08:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6FFDE5D9C0;
	Sat, 17 Apr 2021 00:08:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 72B0F44A5E;
	Sat, 17 Apr 2021 00:08:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13H06R3J019944 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Apr 2021 20:06:27 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 10918103CB0; Sat, 17 Apr 2021 00:06:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0B22B103412
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 00:06:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D53AA8001A6
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 00:06:23 +0000 (UTC)
Received: from mx1.simplelogin.co (mx1.simplelogin.co [94.237.111.15])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-574-zWWpxVZXNw-KipOsFwjcaw-1; Fri, 16 Apr 2021 20:06:20 -0400
X-MC-Unique: zWWpxVZXNw-KipOsFwjcaw-1
X-SimpleLogin-Client-IP: 2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c
Received: from [172.17.0.6] (mx1.simplelogin.co
	[IPv6:2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c])
	by mx1.simplelogin.co (Postfix) with ESMTP id D96966046D
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 23:57:37 +0000 (UTC)
In-Reply-To: <161861134168.7.8725593548099427193.5935596@simplelogin.co>
References: <161860978196.7.10178583994303054677.5934759@slmail.me>
	<161861134168.7.8725593548099427193.5935596@simplelogin.co>
Subject: Re: SL's response to all inquiries re: Readspeaker voices
MIME-Version: 1.0
To: blinux-list@redhat.com
Message-ID: <161861745773.6.10221248550300079442.5937580@slmail.me>
Date: Fri, 16 Apr 2021 23:57:37 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-EmailLog-ID: 5937580
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,
Thank you. I didn't know that about Speech Dispatcher. That is great to know as it would make the creation of something like a Readspeaker plugin much easier for the developers to create as it would be compatible with all screenreaders using Dispatcher. Thanks so much for that.
On a different note, it looks like the same thing happened with pasting into the email client, where it completely messed up the format of the message I posted to this list... again. Making it look like I have no clue how to use a space bar lol. Believe me... I definitely do know how to use the space bar... I put all the spaces where they are supposed to be and it just deletes them and smashes my words together once the message is sent.
The only way I was able to fix it last time was put the message on a USB card, transfer it out of Slint and into Windows, paste it into a Windows word processor, edit out all the places where my email client doesn't seem to agree with my formatting of things in Slint, and then re-send it on Windows.
Quite frustrating. I don't know why this is happening anytime I paste what I have written in LibreOffice on Slint into my email client.
Are you guys able to make sense out of what was sent at all in regards to my responses to the inquiries?
I can try to reformat it on Windows and re-send it but it will take a while.
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 419D9326FE5
	for <lists+blinux-list@lfdr.de>; Sun, 28 Feb 2021 02:23:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614475424;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qkb1j0BQoLnCRhbcF6VsoAYqvkD6dP0KknNICV8ZFAM=;
	b=aqIAVMo3LNtEjom9N8rkG7i3Cywnz/nMTDweTG1jOqczWUTtnSBQ7INRXaJsryJ/CEiIbD
	Vb44Ihrbz9FM4ZcXo2rHgUUBiRz6XXnWLqKgZ3F+fbShw1u5/92fRikKQOFouEQyYou4GO
	stDDgi+z4DR9GRVY1+AhktefNrohbWc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-37-bkUD1gA4Pze89K7LpKwO3g-1; Sat, 27 Feb 2021 20:23:41 -0500
X-MC-Unique: bkUD1gA4Pze89K7LpKwO3g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 226941E561;
	Sun, 28 Feb 2021 01:23:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E8F8B5DF4D;
	Sun, 28 Feb 2021 01:23:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F3D4118095CB;
	Sun, 28 Feb 2021 01:23:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11S1NJ11003556 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Feb 2021 20:23:19 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 662881111A6F; Sun, 28 Feb 2021 01:23:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 61D3B1111A6E
	for <blinux-list@redhat.com>; Sun, 28 Feb 2021 01:23:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C11C7800883
	for <blinux-list@redhat.com>; Sun, 28 Feb 2021 01:23:15 +0000 (UTC)
Received: from mx1.simplelogin.co (mx1.simplelogin.co [94.237.111.15])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-501-wY-g29KkO3yxaBWWx54E_Q-1; Sat, 27 Feb 2021 20:23:11 -0500
X-MC-Unique: wY-g29KkO3yxaBWWx54E_Q-1
X-SimpleLogin-Client-IP: 2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c
Received: from [172.17.0.6] (mx1.simplelogin.co
	[IPv6:2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c])
	by mx1.simplelogin.co (Postfix) with ESMTP id 9BD915E204
	for <blinux-list@redhat.com>; Sun, 28 Feb 2021 01:15:45 +0000 (UTC)
In-Reply-To: <161446814123.8.7902586507444098707.4271150@simplelogin.co>
References: <161402110590.7.5238133071708249059.4109089@simplelogin.co>
	<161444854854.8.6967526014575932372.4265918@slmail.me>
	<e522fc17-0959-e498-347d-d0e55e57d529@gmail.com>
	<e0a3d579-6450-a6be-deaf-f1ea92cc8e82@hubert-humphrey.com>
	<5f2b4e21-b876-167a-1553-d58f45f0b460@gmail.com>
	<88ac7718-75d3-17b8-7bcd-73f33a71a80@hubert-humphrey.com>
	<1dd528c9-d7ee-9140-d54a-903c2a208d79@gmail.com>
	<161446814123.8.7902586507444098707.4271150@simplelogin.co>
Subject: Re: Running Android Voices in Linux?
MIME-Version: 1.0
To: blinux-list@redhat.com
Cc: blinux-list@redhat.com
Message-ID: <161447494525.8.17811239841066658738.4272534@slmail.me>
Date: Sun, 28 Feb 2021 01:15:45 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-EmailLog-ID: 4272534
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

Hi Chime,
I too am really excited that there is interest in this. Knowing that it is not only me who wants Ivona voices on Linux, it further inspires me to reach out to the Linux organizations in my state and see if it would be possible to get a project team going.
 Awesome, I look forward to checking out those Ivona files. It looks like Karen is offering a solution for dispersing the files to those who ask. I'll be busy for the rest of the day, so I'll check back in tomorrow and see how things are going with that.
If there's not a link already up tomorrow, no problem, don't feel rushed or anything, I'll just check in tomorrow to see how its all going, and if there is not a link, I will send you an email.
Just as a side note, I don't know why, because it did not show this way when I was writing it, but for some reason, after I posted the message about the sdk offered by readspeaker, somehow an incorrect link was inserted after the specific link that I typed. So the message shows two links, one correct one, and one automatically inserted incorrect one. Don't know why it did that. So this time I will try typing it without the worldwide web prefix, take out the punctuation, and put spaces between it that you just take out the spaces and add the dot to get the correct link and hopefully there will not be any automatic insertion this time. It automatically inserted readspeak. But its actually readspeaker, it took out the er. The correct website when you take out the spaces and add the dot should be:
readspeaker c o m
I hope that works lol. I won't be able to know until I read it once its actually posted to the list. But really, I think you can find it much quicker by duckduckgo searching "Ivona Linux sdk readspeaker.com" because that should bring you to the page for the Ivona sdk without having to search all over the readspeaker website.
To Kyle:
Yeah I looked for CLB and SLT in the "person" section under voices in Orca after installing English RHVoice on Linux Mint but it does not have it. That was the first thing I tried back when I first installed it.
The only voice it gives me is a default male English voice, and under "person" it is only called "RHVoice Default Voice". Thats it lol. I arrow up and down and it just makes that little bloop end of list bloop sound, no further options except for "RHVoice Default Voice".
I tried looking in the Linux Mint MATE repo but it offers the RHVoice English installation which I already have, which only has that one default male voice, or at least, thats all I can figure out how to get it to do. I was hoping to get the other English voices but arrowing down the list, it just bloops at me. 
Let me know if you have any other suggestions.
Thanks and have a great weekend,
SL
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


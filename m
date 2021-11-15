Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EECFE45170F
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 23:00:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637013605;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PYmV7lkgssukqY4M0fSNglBwoKGDaIsKdrwy9JoslJA=;
	b=Gcd1j3Jm7fLRsqT9MH9BpcC3tRF8Rt7KPnPSFmaYgSZcn6B5RZdkazBreBTj+lq7eKsRni
	oLYnTRGBMlO605o725J8i2RIvNsYH7CXDJh6led1xstU81BZdWpuskot/kzut94CYWCTGp
	HaK94z+JHKdycbTxM+/sSFKWrFhu2xc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-283-8emz8TVWNBuvdKleyWgpkA-1; Mon, 15 Nov 2021 16:59:55 -0500
X-MC-Unique: 8emz8TVWNBuvdKleyWgpkA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C769687D55A;
	Mon, 15 Nov 2021 21:59:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 50D0A19E7E;
	Mon, 15 Nov 2021 21:59:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 238C84A703;
	Mon, 15 Nov 2021 21:59:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AFLxfRr025169 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Nov 2021 16:59:41 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 542712026D2F; Mon, 15 Nov 2021 21:59:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4EEA32026D13
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 21:59:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7D752811E78
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 21:59:35 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-215-BCWBpBCgMiyx0Uzr6Ydkww-1; Mon, 15 Nov 2021 16:59:33 -0500
X-MC-Unique: BCWBpBCgMiyx0Uzr6Ydkww-1
Received: by mail-qk1-f172.google.com with SMTP id o63so5223288qkb.4
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 13:59:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=0iKgpT+/Y4QJyN7qIHhYy09wcy50zJ/K14rt7fLKQ/k=;
	b=pqfDT8gOnfVoUjxhcBpk4/9s+yrYKyW7GRHHs0sHMp9PzH9B9p1CqQU/3zSHQvGg5a
	oFzIdDT2hrmdXAT9b6opvUNERfrUUl5YRWsTQMGJxJGzSCyJBlnJBHJ0ipa4JAE5EtjJ
	uaahxCIxi7KCUKvioZTn1mL0q3KvFq2sLmLhcbgTAQ/0ZtsI6WhZnNinku+BCqs4RYMx
	2L6szaOescBmpGp66nuscjZHqLMXXhjTIwSwzwhjZmFuaTzDeFNtYlGTv9Qg59j6Qwpc
	Zb53MJXFbf+W0eZauUA1vkcNE6bCd/kUm+200NDZmWVo+tVVAra19mF3dtRps75Ry3kb
	Yc9g==
X-Gm-Message-State: AOAM5326rY1bzxnmVtM0alZfeT9G4gl2Q9Cg7c2r1nGbH+UUGSsVq5xA
	0vopNyJwoGYzg2+fxYQW2eAmABCUrWs=
X-Google-Smtp-Source: ABdhPJyD34lHAsXOwqZvYwRhgbz7denu/yt/t1SZPJx3qIXgKUTL0IvWhDZxbp2m+jO4oeYEPPEzcw==
X-Received: by 2002:a05:620a:400f:: with SMTP id
	h15mr2039464qko.226.1637013573340; 
	Mon, 15 Nov 2021 13:59:33 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	h22sm7247269qkk.14.2021.11.15.13.59.32 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 15 Nov 2021 13:59:32 -0800 (PST)
Subject: Re: Gui vs. cli software
To: blinux-list@redhat.com
References: <d5a6f4b2-a8ed-da3f-37bc-4c948b6f1a97@gmail.com>
	<6e96b0a1-2e90-8d58-59a2-81a60fbf608a@seznam.cz>
Message-ID: <66025fed-5adb-a007-f70f-34c710e7e07b@gmail.com>
Date: Mon, 15 Nov 2021 16:59:32 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <6e96b0a1-2e90-8d58-59a2-81a60fbf608a@seznam.cz>
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
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Sometimes shell commands and other apps are great.
mv file folder
for example is a bit less cumbersome than finding file, cutting it, finding 
folder and pasting file into folder. However, selecting multiple files and 
moving or copying them is actually easier when I can just go through the file 
list with control+arrows, keep holding down the control key and tap the space 
bar on each file I want to select. Unless of course I do want to copy or move 
every file matching a pattern, and then the shell is easier again. Still, 
overall, especially for things like email, browsing, word processing, text 
editing and the like, if I want to just sit in front of the computer and be as 
productive as I can possibly be, getting as much done as possible, I use desktop 
applications every time. Terminal applications with their clunky and 
inconsistent interfaces that can't even interact with one another except through 
piping are only good if I want to read a ton of documentation just to figure out 
something as simple as setting up my email application to receive mail via 
secure IMAP and send it out via secure SMTP, complete with the ability to just 
read a thread I want and delete the rest. And editing text and word processing 
are highly consistent within desktop environments as well, whereas if I don't 
have sshfs installed to mount my server on my local filesystem so that I can 
edit a file using pluma, gedit or leafpad, I can only use nano or similar, which 
although it's one of the easiest editors to use, is still a mystery when it 
comes to doing simple tasks like cutting a word or two out of one part of a file 
and pasting it to another part. Even selecting 5 lines and part of the sixth and 
then deleting everything is more complicated in nano than it has to be, since 
using any desktop text editor, I am able to simply hit the shifted down arrow 5 
times, then shift+control+right over the part of the sixth line I want selected 
and then just hit the delete key to delete everything. Even as easy as it is, 
Nano makes me hit control+k 5 times and then hit the delete key letter by letter 
for the parts of the sixth line I want to delete. This is just clunky and 
unwieldy, and I feel that I have less control over my file and my editor, 
certainly not more. So in the end, productivity wins, and I use the desktop 
application almost all the time.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DB44AE64B
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 02:16:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644369410;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5Ri0HrkpZxseXpvdQx4rkhSRKUuH7kiE+Xs/WX/bfYM=;
	b=VaBilTAwGV5BcfCAgQDlsUYtm7/PWALZmiNE8IPhsEL0hCskAT+b9Z0GsodT5RquP4hG3C
	4QOYhqWoGh5/+ZujrL3C3UICoxWVfhWDrrB5mzBgB8WYOEqOJh0C/MxOFxqdtRHwIoAZcd
	jxBSzu9zcbbWbQ2q5dckXlAQTU9KiY4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-421-fbM-EBFIOo-6mALPXTTlSQ-1; Tue, 08 Feb 2022 20:16:46 -0500
X-MC-Unique: fbM-EBFIOo-6mALPXTTlSQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C1DC783DD22;
	Wed,  9 Feb 2022 01:16:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6286360BD8;
	Wed,  9 Feb 2022 01:16:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8F2274A7C9;
	Wed,  9 Feb 2022 01:16:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 2191GJwU012651 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 8 Feb 2022 20:16:19 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5850F40CFD13; Wed,  9 Feb 2022 01:16:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 541EA40CFD12
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 01:16:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3C72B101CC60
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 01:16:19 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-568-qJEzCe8EO8qzGIx803igHg-1; Tue, 08 Feb 2022 20:16:17 -0500
X-MC-Unique: qJEzCe8EO8qzGIx803igHg-1
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Jthlz20mLzm67
	for <blinux-list@redhat.com>; Tue,  8 Feb 2022 20:16:15 -0500 (EST)
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4Jthlz2D9Wz1QXJ; Tue,  8 Feb 2022 20:16:15 -0500 (EST)
Date: Tue, 8 Feb 2022 20:16:15 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: De-arrowing my system...how easy it is?
Message-ID: <YgMV348HDT3todvP@panix.com>
References: <7c4915b9-ca3a-9c1a-1132-b9896e94cbaa@gmail.com>
MIME-Version: 1.0
In-Reply-To: <7c4915b9-ca3a-9c1a-1132-b9896e94cbaa@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

It is actually very easy, and therefore somewhat dangerous, because if you aren't careful
you can muck up your keyboard and render it useless.

There are three tools you should master

1. dumpkeys
This will write your keymap to standard output or to wherever you redirect it.
e.g. dumpkeys test.keymap
will creat a keymap file named test.keymap

2. showkey
will tell you the keycode of any key you press. What is a keycode? It is
the hardware designation of a key used by the keymap. 

3. loadkeys
This loads your keymap from a file name argument 
e.g loadkeys test.keymap

Here's how we copy the function of the left arrow key to the shift control J key combination.

Run showkey and press the h key and left arrow keys respectively.
Showkey tells me that my j key is keycode 36 and my left arrow is keycode 105.

With this information, I can now edit the test.keymap file
I created with dumpkeys.

Editing the new test.keymap file and searching for
keycode      105 I learn that the function for that key is, not surprisingly,  "Left". 
Pay attention to capitalization in the function names, and for arbitrary white space between the word keycode and the number.

Next find the line for
shift control keycode    36
now all I need to do is change its function, which is "Linefeed", to "Left".

Lastly I run
loadkeys test.keymap
and lo and behold, shift control J now acts like a left arrow key.

Perform similar edits for the other arrow keys and whatever keyboard and modifier keys you want to use, although
I'd suggest control shift j, k, l, and i.

On Tue, Feb 08, 2022 at 12:14:06PM +0000, Linux for blind general discussion wrote:
> ?????? So, this is something I'm wondering.
> 
> Given I'm on my laptop currently, I'm wondering how easy it'd be to shift
> the arrow keys function to, say, control+shift and maybe the vim key
> bindings so I don't have to take my hands entirely of the keyboard to do
> things that the arrow keys do, like neavigating a web page, selecting text,
> and so on?
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

-- 
Rudy Vener
Website: http://www.rudyvener.com
Twitter: https://twitter.com/RudySalt
The difference between truth and falsehood is that truth remains the same no matter which political party holds the majority.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


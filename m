Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D825E602847
	for <lists+blinux-list@lfdr.de>; Tue, 18 Oct 2022 11:25:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666085146;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1szxrbVfHe9iYiHQO1b1Cwc7OSbkhpt9Wv2UTFatOdE=;
	b=Xk8/PoMZ+vAgMeuEwA0Rrqzsn5CM7MoSCrxUZ7M9MXl9+a9jO3rqoqV2PrtV1dScfW0Em5
	8/XoGeR4XERSECt7FhKPfmA5Rsh+m9CRV/SA3BmHafvh+mSi/nqYkH/WMth5S+872laA4g
	sKl0qqhzT4pOcZpkUKc1anTIPTdVPNs=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-529-wNrIh-nROASRubxdmGnOAA-1; Tue, 18 Oct 2022 05:25:43 -0400
X-MC-Unique: wNrIh-nROASRubxdmGnOAA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 019CE1C05AB4;
	Tue, 18 Oct 2022 09:25:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 884BD215CDCC;
	Tue, 18 Oct 2022 09:25:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3BA9B194658F;
	Tue, 18 Oct 2022 09:25:40 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 18 Oct 2022 05:25:35 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Turning off screen in Linux
In-Reply-To: <mailman.826.1666083575.3004.blinux-list@redhat.com>
References: <mailman.882.1666078921.3006.blinux-list@redhat.com>
 <mailman.826.1666083575.3004.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.906.1666085140.3009.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I have a thinkpenguin.com penguin pro 11 computer.  It has an alaska rsd
bios on it.  For those with this bios, it's possible to talk to the bios
and control it from another machine using ssh.  The bios can listen to
network through ssh unless the networking capability gets turned off
somewhere along the line.
This is a very modern bios and won't be on many other machines.  To find
out what bios you do have, as root try to run biosdecode and the bios
manufacturer will be identified by the oem: item in biosdecode output.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Tue, 18 Oct 2022, Linux for blind general discussion wrote:

> Unfortunately, it depends on the model of laptop.
>
> If you're lucky, your model will have a keyboard shortcut that will
> turn the screen off and leave it off until you press that key
> combination again and it works independant of the OS that's running.
>
> If you're unlucky, you'll have a model that has a screen off key
> combination, but any key press is treated as a screen on command and
> no amount of messing around with OS-level power management or display
> settings will get the screen to stay off.
>
> And if it's possible to fix the latter behavior, I'm pretty sure it
> would require going into BIOS, and as far as I know, no vendor has
> ever produced an accessible BIOS.
>
> No idea if it was brand-wide policy at the time, if the brands in
> question still exist, and if policy has changed on newer models if
> they're still around, but I used to own a well-behaved ASUS netbook
> and a poorly behaved Acer laptop(I bought the acer to replace the
> ASUS, but it ended up being a major downgrade in most regards, in
> addition to the Acer's bab behavior regarding the screen, it was
> bulkier, had an SD card slot that left the card sticking out(leading
> to at least one broken card when the laptop bumped against something,
> the ASUS left the SD card flush with the slot's face), and instead of
> full-sized arrow keys that used Fn to convert to PageUp/down and
> Home/End, it had 6 half keys cramed into the space of 3 normal keys
> that was awkward as heck to use with my thick, sausage link fingers).
>
> Anyways, your best bet is to google turn monitor off [model name] to
> find out what the display off key combo for your model is and see if
> your laptop is well behaved. If you turn the display off and it stays
> off as you start typing, congratulations, problem solved. If
> everything you do cause the monitor to come back on, I'm not sure
> there's anything you can do beyond impotently complaining to a vendor
> who apparently doesn't comprehend that someone might want to use their
> laptop while the monitor is turned off.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


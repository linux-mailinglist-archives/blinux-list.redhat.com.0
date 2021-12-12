Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC7547177F
	for <lists+blinux-list@lfdr.de>; Sun, 12 Dec 2021 02:19:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639271959;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GdbuzNT24MbKttOZc2+Ykd47MhjCjlAqOFsQQmJzTe0=;
	b=CODQs/BwkOnY5WdCsdMRLi9S/Nn9fD9gA1unbdFXn8DsjQbTm8PKyoPQZRiSOjclhnLV+m
	/tko8+zWJPfCyRp4iemXJu0vYjweXvwPqbPF80JqBm+jV1xn26ZlCkkUix4IdrrYNv3i9A
	0ZkSF6qujvf7HqTgwOlNS5RxwSkHUQ0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-427-dmuRh9XrPeypmaV_KcWciw-1; Sat, 11 Dec 2021 20:19:16 -0500
X-MC-Unique: dmuRh9XrPeypmaV_KcWciw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 387022F26;
	Sun, 12 Dec 2021 01:19:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2443845D74;
	Sun, 12 Dec 2021 01:19:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 32E1E1809CB9;
	Sun, 12 Dec 2021 01:19:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BC1G8Ir014583 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 11 Dec 2021 20:16:08 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4EA4B1410F35; Sun, 12 Dec 2021 01:16:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4A2071400AFD
	for <blinux-list@redhat.com>; Sun, 12 Dec 2021 01:16:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2D219800B29
	for <blinux-list@redhat.com>; Sun, 12 Dec 2021 01:16:08 +0000 (UTC)
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com [173.228.157.53]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-547-s1Ewo0zUNAC5JyWMAUn26g-1; Sat, 11 Dec 2021 20:16:06 -0500
X-MC-Unique: s1Ewo0zUNAC5JyWMAUn26g-1
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
	by pb-smtp21.pobox.com (Postfix) with ESMTP id 9E1B217623F
	for <blinux-list@redhat.com>; Sat, 11 Dec 2021 20:11:35 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
	by pb-smtp21.pobox.com (Postfix) with ESMTP id 9666A17623E
	for <blinux-list@redhat.com>; Sat, 11 Dec 2021 20:11:35 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from sprite (unknown [66.8.171.137])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp21.pobox.com (Postfix) with ESMTPSA id 5320317623B
	for <blinux-list@redhat.com>; Sat, 11 Dec 2021 20:11:32 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from jroth by sprite with local (Exim 4.94.2)
	(envelope-from <joelz@pobox.com>) id 1mwDOe-0001Kz-QB
	for blinux-list@redhat.com; Sat, 11 Dec 2021 15:11:24 -1000
Date: Sat, 11 Dec 2021 15:11:24 -1000
To: blinux-list@redhat.com
Subject: Re: Ignoring hard wrapping when doing copy and paste.
Message-ID: <20211212011124.2ethq4obsma4lzbk@sprite>
References: <CAO2sX33xFEVcratw7R8jfbHY5v7LtCGkHbj3u91fXWTdBsnp4w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAO2sX33xFEVcratw7R8jfbHY5v7LtCGkHbj3u91fXWTdBsnp4w@mail.gmail.com>
X-Pobox-Relay-ID: 716CFDCA-5AE8-11EC-987C-98D80D944F46-04347428!pb-smtp21.pobox.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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

Hello,

Here is a script 'oneline' that converts a hard-wrapped file
to a one-line-per-paragraph, separated where there are two
newlines. 

oneline wrapped.txt > one-line-per-para.txt

oneline wrapped | xsel -b  # copy to paste buffer

'onel' is a helper script so you can say

onel wrapped

Then paste where you want with Ctrl-V

#!/usr/bin/perl
$mark = '@!@&@';  # unlikely to occur in input text
$/ = undef;
$text = <>;
$text =~ s/\s*\n\s*\n/$mark/og;
$text =~ s/\s*\n/ /og;
$text =~ s/$mark/\n\n/og;
print $text;

#!/bin/sh
oneline $1 | xsel -b

> Okay, so my text editing environment of choice is Nano running in the
> Linux Console, and I'm constantly using the justify function to hard
> wrap text because lines wider than the screen are difficult to work
> with.
> 
> If I need to post something I wrote in nano online, but can't just
> upload the .txt, I'll save, close nano, switch to tty1 where I usually
> have Firefox running in a stripped down xserver, open the text file in
> Firefox, and copy and paste into the text box.
> 
> >From my perspective, everything works fine, but I've gotten complaints
> from sighted users about the extra line breaks from the hardwrapping
> making text posted in this manner hard to read.
> 
> Is there a way to make Firefox ignore the hard wrapping when copying
> text from a hardwrapped text file to a web form, or failing that, an
> easy means of copying a hardwrapped text file to an unwrapped text
> file?
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

-- 
Joel Roth

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


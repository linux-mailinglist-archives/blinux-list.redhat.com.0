Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EC228468B6E
	for <lists+blinux-list@lfdr.de>; Sun,  5 Dec 2021 15:40:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638715235;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/CicmUs5G2X2fGSeTxKNhLVqk0ey67X+proAqXL3hD8=;
	b=P4LoWIGw6cQS7hOFxLvZ5vNeQCHGXUjrqI6AxxxjeptIeQk3id0VXdfGEu61xOqdV8tDx6
	HhiNftkfpAou16ReAQQxWOjYjihVvh3+WRdq7d8lGucPJrEsNBmylidvMleMYjgj+QXFX6
	UwBv7WCGClRIPu535t9Aq+OtU6FD+5A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-239-oQjWlkVCMdew9KNZSFDeSg-1; Sun, 05 Dec 2021 09:40:32 -0500
X-MC-Unique: oQjWlkVCMdew9KNZSFDeSg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A971B80BCA8;
	Sun,  5 Dec 2021 14:40:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 027371346F;
	Sun,  5 Dec 2021 14:40:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 165384BB7B;
	Sun,  5 Dec 2021 14:40:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B5EeBub001074 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 5 Dec 2021 09:40:11 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 284731121315; Sun,  5 Dec 2021 14:40:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 22CAF1121314
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 14:40:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 35BBF1066559
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 14:40:08 +0000 (UTC)
Received: from gateway10.unifiedlayer.com (gateway10.unifiedlayer.com
	[74.220.216.134]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-418-UAN1ip1vPTOUm7fwQIfAKQ-1; Sun, 05 Dec 2021 09:39:22 -0500
X-MC-Unique: UAN1ip1vPTOUm7fwQIfAKQ-1
Received: from cm6.websitewelcome.com (unknown [108.167.139.19])
	by gateway10.unifiedlayer.com (Postfix) with ESMTP id 65642200C6662
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 08:16:09 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id tsJFmG14FtGNQtsJFmwvdK; Sun, 05 Dec 2021 08:16:09 -0600
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:45798 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1mtsJF-000v2p-1T
	for blinux-list@redhat.com; Sun, 05 Dec 2021 08:16:09 -0600
Date: Sun, 5 Dec 2021 08:16:07 -0600
To: blinux-list@redhat.com
Subject: Re: Useful aliases in .bashrc?
Message-ID: <20211205081607.1b8e272e@bigbox.attlocal.net>
In-Reply-To: <a0603f61-07eb-3f44-411e-805a5ea7afe6@gmail.com>
References: <a0603f61-07eb-3f44-411e-805a5ea7afe6@gmail.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 76.222.220.222
X-Source-L: No
X-Exim-ID: 1mtsJF-000v2p-1T
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:45798
X-Source-Auth: tim@thechases.com
X-Email-Count: 2
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here. A couple from my collection:


Sometimes I type "cd .." too quickly, and miss the space or even a
period too, so these make my typos work as expected

  alias cd..='cd ..'
  alias cd.='cd ..'

I commonly jump to my MP3/podcast queue directory and run a command
(`biggest`) that finds all the files in the subdirectories and sorts
them all from smallest to largest (big ones that don't sound
interesting are the first on my chopping-block for saving time/space):

  alias mp3='pushd ~/Music/podcasts/; biggest -h | tail -20'

Also helping with podcasts I have

  alias ti='id3 -q "%_p%_f: %t"'

to give me the titles of podcasts I point it at.

I also keep my finances in ledger(1) format and have a number of
aliases around manipulating those

  alias fin='pushd ~/finances/ledger'
  alias le='pushd ~/finances/ledger; vim +$ $(date +%Y).txt'

  checking() {
    pushd ~/finances/ledger
    ledger -f only"$(date +%Y)".txt --pedantic register Checking "$@"
  }

  led() {
    pushd ~/finances/ledger
    ledger -f only"%(date +%Y)".txt --pedantic balance -l "commodity == 'USD'" not "Equity:Opening Balances" and not "^Income:" "$@"
  }


The "fin" alias just takes me to the directory; the "le" opens the
current year's data in vim and places the cursor at the bottom so I
can add new entries; the "checking" function gives me my checkbook
register (to which I can append "--cleared" for only those
transactions that have cleared); and the "led" function gives me a
hierarchical overview of all of my accounts and how they roll up.  I
also have a more complicated "pay" shell-function that will look for
the most recent transaction that matches some parameters and
re-create that transaction with today's date in my preferred format,
and set the amount to the specified quantity letting me do things like

  $ pay kroger 38.21

rather than manually find & copy the entire block, and update the
amounts.

Finally, I keep my calendar in remind(1) format so I have several
aliases that help me set all my preferred parameters

  alias 1='rem -g -q -iCOLOR=2 -@2'
  for i in 2 3 4 5 6
  do
    alias $i='rem -g -q -iCOLOR=2 -@2 "*"'$i
  done

so I can just type "1" for today's agenda or "3" for a 3-day agenda.
(I can ramble for hours on using remind and have a lengthy blog post
about it.  If you want a text-based workflow for your calendar, it's
*amazing*!)

Hopefully this gives you some more ideas,

-Tim


On December  5, 2021, Linux for blind general discussion wrote:
> Hi all,
> 
> 
> I have never really played with .bashrc, but have found it rather
> useful to add a few aliases to it.
> 
> 
> The one I find most useful so far is the alias to my "startwin.sh"
> qemu script. I use
> 
> 
> alias windows="sh ~/qemu/startwin.sh"
> 
> 
> instead of having to type, every time
> 
> 
> sh ~/qemu/startwin.sh
> 
> 
> If you have any useful aliases to share, please do?
> 
> 
> After all, why should we not make each other's lives a bit easier?
> 
> -- 
> Warm regards,
> 
> Brandt Steenkamp
> 
> Sent from Slint Linux using Thunderbird
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


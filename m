Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id C8CCF31DD76
	for <lists+blinux-list@lfdr.de>; Wed, 17 Feb 2021 17:37:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1613579848;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=13EvjU940R6ORRnyW2/GsR4Dek4wNiOFbusFMVZX8gw=;
	b=hUN5PBfopqhHoqZFmmUBkqY96KKoRmxO9o4PdN4IPoMFbxFAfgJGigpsnU0izCeeK+2Rk4
	SHbHxFBosdZf5u4lThK/YUsR5Ngk9LxEqgwBCNfy5+kASLJQ9V4/bKvatPGmh3WxA3n6mB
	adTgALmNFtO5noxjHLd2HUGsO0zla9M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-25-okPfOEbrNbiK9iDlto77-Q-1; Wed, 17 Feb 2021 11:37:26 -0500
X-MC-Unique: okPfOEbrNbiK9iDlto77-Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0FFB1107ACED;
	Wed, 17 Feb 2021 16:37:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5049E1F052;
	Wed, 17 Feb 2021 16:37:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6D1EA18095CB;
	Wed, 17 Feb 2021 16:37:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11HGYofN029907 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 17 Feb 2021 11:34:50 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1352020614DB; Wed, 17 Feb 2021 16:34:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0E44820614D9
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 16:34:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AFE9981DA23
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 16:34:47 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-343-l3VV4WPIPZi4IMoKhimKgw-1; Wed, 17 Feb 2021 11:34:45 -0500
X-MC-Unique: l3VV4WPIPZi4IMoKhimKgw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Dgk2X5sdbz1Vdq;
	Wed, 17 Feb 2021 11:34:44 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Dgk2S0QZszcbc; Wed, 17 Feb 2021 11:34:40 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Dgk2S09lLzcbV;
	Wed, 17 Feb 2021 11:34:40 -0500 (EST)
Date: Wed, 17 Feb 2021 11:34:39 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Is this possible?
In-Reply-To: <Pine.LNX.4.64.2102171119510.1319856@server2.shellworld.net>
Message-ID: <alpine.NEB.2.23.451.2102171130420.5642@panix1.panix.com>
References: <Pine.LNX.4.64.2102170148140.1176343@server2.shellworld.net>
	<alpine.NEB.2.23.451.2102171111070.5642@panix1.panix.com>
	<Pine.LNX.4.64.2102171119510.1319856@server2.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
Cc: Linux for blind general discussion <blinux-list@e1890.dsca.akamaiedge.net>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Shellworld for you is a shell, but not necessarily everyone else.  It 
depends on the type of account you buy.  When I use panix, I use it on a 
telnet account which works fine for ssh and rlogin and telnet.  I could 
have bought a web account and in that case I would have had to use pppoe 
and wvdial to log in.  You don't necessarily use the same interface as 
administrators use on these systems.

On Wed, 17 Feb 2021, Linux for blind general discussion wrote:

> I am not talking about shellworld, as I am using it now.
> In fact I  can ssh into shellworld from my DOS computer.
> However, shellworld is a shell, not a graphical desktop  edition of Ubuntu.
> same can be said for the shell dreamhost, who is the hosting service for my 
> office, provides its clients.
> My question is related to an entirely different issue, where a work associate 
> asked if one could do what I do, but into a strictly graphical  desktop of 
> Ubuntu.
>
>
>
> On Wed, 17 Feb 2021, Linux for blind general discussion wrote:
>
>>  shellworld.net is running ubuntu, so that ought to be possible unless
>>  misconfigured.
>> 
>>
>>  On Wed, 17 Feb 2021, Linux for blind general discussion wrote:
>>
>>>   Hi folks,
>>>   Is it possible to ssh into a graphical desktop edition of Linux, Ubuntu
>>>   for example?
>>>   Karen
>>> 
>>>
>>>   _______________________________________________
>>>   Blinux-list mailing list
>>>   Blinux-list@listman.redhat.com
>>>   https://listman.redhat.com/mailman/listinfo/blinux-list
>>>
>>> 
>>
>>  _______________________________________________
>>  Blinux-list mailing list
>>  Blinux-list@redhat.com
>>  https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
>> 
>> 
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


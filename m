Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id B82653D2B6C
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 19:51:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626976280;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=JAvZaKQV487GiPvRBOVOtpyx76l2tLvDHKEOkGsDjnQ=;
	b=TDjhg+as4F1ef3ZmkN9xcgHyOeVUwvuP/v14BpM3f7yNHCJfHwkwqipOYumirUvb0HjELc
	db5OGR6shQ2t8turefT2Uk5bKkkxNtUk+ONeQeQ05Z7Bv4iqgNkd0u8bfCxsBThIkn7kVz
	7E/71hdCBceDfkpasnR5H0Ay2jMIWYA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-560-WEeMRRKJNRmaBUzejcosTQ-1; Thu, 22 Jul 2021 13:51:19 -0400
X-MC-Unique: WEeMRRKJNRmaBUzejcosTQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D84B5107B788;
	Thu, 22 Jul 2021 17:51:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 75D01604CF;
	Thu, 22 Jul 2021 17:51:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B17F6180BAB1;
	Thu, 22 Jul 2021 17:51:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MHp6Hw005171 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 13:51:06 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 36FA0209A521; Thu, 22 Jul 2021 17:51:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 330182097D6B
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 17:51:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A4FA8185A7A4
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 17:51:03 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-83-9GIPECj3MgGnix-q1m1fvw-1; Thu, 22 Jul 2021 13:51:01 -0400
X-MC-Unique: 9GIPECj3MgGnix-q1m1fvw-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 3D3C2621C41; Thu, 22 Jul 2021 17:44:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 38363621C3C
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 13:44:50 -0400 (EDT)
Date: Thu, 22 Jul 2021 13:44:50 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: A question on speakup
In-Reply-To: <5e378258-7faf-6589-1ab2-59cd30ce33fa@slint.fr>
Message-ID: <Pine.LNX.4.64.2107221343071.1324567@server2.shellworld.net>
References: <ac70ffcc-fbf1-626e-9348-559c650efce7@gmail.com>
	<5e378258-7faf-6589-1ab2-59cd30ce33fa@slint.fr>
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
Content-Type: MULTIPART/MIXED;
	BOUNDARY="-1404930036-857599248-1626975890=:1324567"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
---1404930036-857599248-1626975890=:1324567
Content-Type: TEXT/PLAIN; charset=utf-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

Just a suggestion, for whomever wrote this documentation?
Providing the actual name of the hardware synthesizer supported might be=20
wise.  some of those listed could mean more than one thing.



On Thu, 22 Jul 2021, Linux for blind general discussion wrote:

> Hi Brandt,
> for Slint:
>
> https://slint.fr/doc/HandBook.html#_configure_a_console_screen_reader
>
> I don't know a specific software synthesizer for Dectalk, but just type a=
s=20
> root:
> speak-with
>
> To know more:
> https://slint.fr/doc/HandBook.html#_choose_a_console_screen_reader
>
> Cheers,
> Didier
> --
> Didier Spaier
>
> Le 22/07/2021 =C3=A0 12:09, Linux for blind general discussion a =C3=A9cr=
it=C2=A0:
>>  Hi all,
>>
>>
>>  I use to know how to store and then restore my speakup settings, howeve=
r,
>>  to my utter shame, I forgot how to do this.
>>
>>
>>  I also read somewhere that there is a software Dectalk synthesizer
>>  available. If anyone knows how to install and configure this to work wi=
th
>>  speakup, it would really be appreciated.
>>=20
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
---1404930036-857599248-1626975890=:1324567
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list
---1404930036-857599248-1626975890=:1324567--


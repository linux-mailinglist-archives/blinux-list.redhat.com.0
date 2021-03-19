Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7F91E3412D2
	for <lists+blinux-list@lfdr.de>; Fri, 19 Mar 2021 03:28:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616120879;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=njekSv3Bq9WiE/lIta2vVQfYFRylI/97rb5+H/+HfVQ=;
	b=NqFgHTbFqlgTRjHXcQm9uLFZqEzkXWIvhNabQV8lpPRC9e1V0tvhN39UqHPwXx6EUyG0cl
	gnIGUV3sF4q/d3/Kw2lz9hhG+DvG80Y7oA7hCG/HksRoaDTHnHqQX+tOcuF/3g72hU9CRs
	maX1q4+Ia5uN6urdtyI3cEqnhIPsYFI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-446-nxNiKThROIS897r_z0Jdcg-1; Thu, 18 Mar 2021 22:27:57 -0400
X-MC-Unique: nxNiKThROIS897r_z0Jdcg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 168E4100747D;
	Fri, 19 Mar 2021 02:27:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A696F5C1BB;
	Fri, 19 Mar 2021 02:27:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1ABC71809C83;
	Fri, 19 Mar 2021 02:27:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12J2RfZ7012397 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Mar 2021 22:27:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 34050115D360; Fri, 19 Mar 2021 02:27:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2E779115D35E
	for <blinux-list@redhat.com>; Fri, 19 Mar 2021 02:27:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5F4CD185A79C
	for <blinux-list@redhat.com>; Fri, 19 Mar 2021 02:27:38 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-291-U0QxmwnWPMGQHrmIX44zig-1; Thu, 18 Mar 2021 22:27:36 -0400
X-MC-Unique: U0QxmwnWPMGQHrmIX44zig-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id E163E621C29; Fri, 19 Mar 2021 02:27:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id DE498620219
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 22:27:34 -0400 (EDT)
Date: Thu, 18 Mar 2021 22:27:34 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Are Their Any Other Graphical Screen-Readers in Linux, Other
	than ORCA?
In-Reply-To: <alpine.NEB.2.23.451.2103182115590.7593@panix1.panix.com>
Message-ID: <Pine.LNX.4.64.2103182222560.1842820@server2.shellworld.net>
References: <eb9e4135-2b54-ec88-536a-5d7f8e71d9df@hubert-humphrey.com>
	<alpine.NEB.2.23.451.2103182115590.7593@panix1.panix.com>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

ratpoison?
who. names. these. things?  laughs.
I am imagining the conversation.
Oh  I am using rat poison on my computer.. ahem.
I dare say the voice quality issue still remains though?



On Thu, 18 Mar 2021, Linux for blind general discussion wrote:

> I haven't messed with it, but think lots of customization could be done with 
> ala carte which is a menuing system for graphical user interfaces in Linux. 
> Ratpoison is available and operated entirely by keyboard once installed 
> correctly.
>
> On Thu, 18 Mar 2021, Linux for blind general discussion wrote:
>
>>  Well, 1 of my sighted Linux friends thinks the reason I am not comfortable
>>  in ORCA has more to do with as he calls it, "tyling" He thinks another
>>  desktop might be the trick? Some background, when I was practicly dragged
>>  `kicking-and-screaming in to windows in late 1997, I did manage to get a
>>  feel for a win95/98 desktop, where everything was up-and-down. But once
>>  they switched to windows explorer, they basicly lost me. So an obvious 2
>>  questions? Are their any other alternatives to ORCA? And if that were an
>>  only choice, are their simpler desktops which would have more of  a feel I
>>  am more used to? An only other choice, which won't compile now is LSR from
>>  around 2007.
>>  I am certainly rather contented with a straight console, but for many
>>  sites, graphical may be an alternative, which a Chromebook with Chromevox
>>  has not really offered. Thanks so much in advance for your analysis. Also,
>>  I trust there are many more hier quality voices in graphical?
>>  Chime
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


Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7726C34120B
	for <lists+blinux-list@lfdr.de>; Fri, 19 Mar 2021 02:21:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616116918;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uIYNA82rgzggAzS+4HEH09Gw2fUEXcjqmXSDz4gj/xQ=;
	b=OLrO7xkexqzfbrlL/2Fx+klh6jPx2J1ZsTQ8P+OJV8CFPqEgXVrYZYlbd85JNnkdSLhm38
	V983JDsuD8X11tPkS/r8zfIajool+NrjRDqt+K0Aa2MwaRixypyzEkkAmAUKxu1Rdwmr/a
	AGmFY2DuixI3YpjTuRjLYju7ETBfdKI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-269-eOhoJOFhPXiWHQT4T39Msg-1; Thu, 18 Mar 2021 21:21:56 -0400
X-MC-Unique: eOhoJOFhPXiWHQT4T39Msg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4E7CD87A826;
	Fri, 19 Mar 2021 01:21:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0A96A19D9B;
	Fri, 19 Mar 2021 01:21:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4A3661809C83;
	Fri, 19 Mar 2021 01:21:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12J1LlYl005775 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Mar 2021 21:21:47 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9F76BF97FC; Fri, 19 Mar 2021 01:21:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 99F8AF97ED
	for <blinux-list@redhat.com>; Fri, 19 Mar 2021 01:21:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2113B811E9C
	for <blinux-list@redhat.com>; Fri, 19 Mar 2021 01:21:44 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-544-pYWdITH_OoushaXBtT4gLQ-1; Thu, 18 Mar 2021 21:21:41 -0400
X-MC-Unique: pYWdITH_OoushaXBtT4gLQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4F1mM92nTtz1hTv
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 21:21:41 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4F1mM91hmfzcbc; Thu, 18 Mar 2021 21:21:41 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4F1mM91LmNzcbW
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 21:21:41 -0400 (EDT)
Date: Thu, 18 Mar 2021 21:21:41 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Are Their Any Other Graphical Screen-Readers in Linux, Other
	than ORCA?
In-Reply-To: <alpine.NEB.2.23.451.2103182115590.7593@panix1.panix.com>
Message-ID: <alpine.NEB.2.23.451.2103182120180.7593@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I forgot about stump-wm which also only uses the keyboard and was written 
entirely in lisp.


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


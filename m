Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 746E7222B62
	for <lists+blinux-list@lfdr.de>; Thu, 16 Jul 2020 21:02:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1594926150;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Avroa0oPNNPUqMCCkffvYVpeUEq0Ia1VakfZUixLGcA=;
	b=fCwGME2AYlINxIiJx7j7ChxhKXyISZYU6vfVEXgExuy3chFL3Db7hJDg/9gE5K2ijlbV0F
	pRcreIj76iJLmiuRYqbLpll5rTt4u85rGGAS/ExoUTKuOl1QSJirJQZYBDxSXyW4f1n5o1
	PqBU8WJm15OaHTPZ5gM5SFQ2LIUuxKw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-497-zswxpjOQNqmHInfkrAATjg-1; Thu, 16 Jul 2020 15:02:13 -0400
X-MC-Unique: zswxpjOQNqmHInfkrAATjg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2EC2C10059AA;
	Thu, 16 Jul 2020 19:02:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1BEF071664;
	Thu, 16 Jul 2020 19:02:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1A8DD1809557;
	Thu, 16 Jul 2020 19:02:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06GJ1xIv031252 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 16 Jul 2020 15:01:59 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 39D34F6CB1; Thu, 16 Jul 2020 19:01:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 350EFF6CB8
	for <blinux-list@redhat.com>; Thu, 16 Jul 2020 19:01:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3F9621832D26
	for <blinux-list@redhat.com>; Thu, 16 Jul 2020 19:01:56 +0000 (UTC)
Received: from server2.shellworld.net (ip-66-172-12-120.chunkhost.com
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-99-38d3z-t3O3CrNMIhqPrEUg-1; Thu, 16 Jul 2020 15:01:43 -0400
X-MC-Unique: 38d3z-t3O3CrNMIhqPrEUg-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 845D7541E55; Thu, 16 Jul 2020 18:54:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 836DE541DC6
	for <blinux-list@redhat.com>; Thu, 16 Jul 2020 14:54:45 -0400 (EDT)
Date: Thu, 16 Jul 2020 14:54:45 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: blind-accessible Linux on cell phones
In-Reply-To: <1D064CA4-79D1-4E4D-8EBC-9ADE625C513E@cfcl.com>
Message-ID: <Pine.LNX.4.64.2007161450030.14789@server2.shellworld.net>
References: <1D064CA4-79D1-4E4D-8EBC-9ADE625C513E@cfcl.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

If the quality of speech synthesis is clear, understandable, and user 
definable , i. e. not what is default on most every Linux distribution 
about   which I have asked, I might buy one tomorrow.
I am unsure I still have the posts, but someone on the Debian list wrote 
about  Linux mobile phones a while back.  best path to profitability 
speaking personally is creating a product that provides inclusion on many 
levels, after all  there is no such thing as a  uniform blind product, 
since the experience of blindness has so many individualized aspects.



On Thu, 16 Jul 2020, Linux for blind general discussion wrote:

> Various versions of Linux are being ported to cell phones.  Although most of these projects hope to support a variety of phones in time, the PinePhone tends to be the initial target for many of them, as detailed here:
>
> PinePhone Software Releases
> https://wiki.pine64.org/index.php?title=PinePhone_Software_Releases
>
> I'm particularly interested in:
>
> - Manjaro (based on Arch Linux)
> - Mobian (based on Debian)
> - postmarketOS (based on Alpine Linux)
>
> Is anyone else interested in the possibility of putting together a blind-accessible cell phone OS, based on one or more of these?  Of course, I'd love to hear about any existing work in this area!
>
> -r
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


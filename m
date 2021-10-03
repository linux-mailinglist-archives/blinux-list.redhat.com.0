Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 68836420105
	for <lists+blinux-list@lfdr.de>; Sun,  3 Oct 2021 11:14:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1633252475;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=L6HHGqsqQyPT7WQe0MrTULfS6F2KmHdI01zUjfVI4wc=;
	b=Kpkr8N4MzJgxZ98RSe16jwnNz5k+/dIuRd2Gnnyfb8R5ZnFeiOa6I0xVkROiSpTKr8h9EA
	nryKqdw0joJCblEkAnA0CTH5CuDli3fGk6X32ESb62/UbqU126tTk7MEl2KkOLsFpiDLjP
	bzMLscIuvlCEwahvqyfHksuQNefn4PI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-484-bQo8PKy8OiGt6M4d-UfchQ-1; Sun, 03 Oct 2021 05:14:24 -0400
X-MC-Unique: bQo8PKy8OiGt6M4d-UfchQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7EBE4824FA7;
	Sun,  3 Oct 2021 09:14:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0AE4519C59;
	Sun,  3 Oct 2021 09:14:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 706AD4E58F;
	Sun,  3 Oct 2021 09:14:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1939E9ve012733 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 3 Oct 2021 05:14:09 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AE7A3DEED7; Sun,  3 Oct 2021 09:14:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A9F19C6128
	for <blinux-list@redhat.com>; Sun,  3 Oct 2021 09:14:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E765F801E8D
	for <blinux-list@redhat.com>; Sun,  3 Oct 2021 09:14:06 +0000 (UTC)
Received: from pb-smtp20.pobox.com (pb-smtp20.pobox.com [173.228.157.52])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-405-oH6qZiKfMPqVs4Ubegrckw-1; Sun, 03 Oct 2021 05:14:05 -0400
X-MC-Unique: oH6qZiKfMPqVs4Ubegrckw-1
Received: from pb-smtp20.pobox.com (unknown [127.0.0.1])
	by pb-smtp20.pobox.com (Postfix) with ESMTP id DFD9C14F99A
	for <blinux-list@redhat.com>; Sun,  3 Oct 2021 05:09:00 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from pb-smtp20.sea.icgroup.com (unknown [127.0.0.1])
	by pb-smtp20.pobox.com (Postfix) with ESMTP id D8E6714F999
	for <blinux-list@redhat.com>; Sun,  3 Oct 2021 05:09:00 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from sprite (unknown [172.5.152.253])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp20.pobox.com (Postfix) with ESMTPSA id 8769C14F998
	for <blinux-list@redhat.com>; Sun,  3 Oct 2021 05:08:58 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from jroth by sprite with local (Exim 4.94.2)
	(envelope-from <joelz@pobox.com>) id 1mWxTG-0002Uc-AF
	for blinux-list@redhat.com; Sat, 02 Oct 2021 23:07:46 -1000
Date: Sat, 2 Oct 2021 23:07:46 -1000
To: blinux-list@redhat.com
Subject: Re: Crawling/downloading a website to test permissions.
Message-ID: <20211003090746.2n6j6xoblfdd4nop@sprite>
References: <CAO2sX301FwZ+Zs3nfktkAKdeA=W-08eb7E54Twh-mRjt8Hp9tg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAO2sX301FwZ+Zs3nfktkAKdeA=W-08eb7E54Twh-mRjt8Hp9tg@mail.gmail.com>
X-Pobox-Relay-ID: 8AFC56E6-2429-11EC-8D76-F327CE9DA9D6-04347428!pb-smtp20.pobox.com
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I found that there are lots of services that will check a
website for broken links.

https://www.softwaretestinghelp.com/tools/30-top-website-link-verification-testing-tools/

It would also be relatively simple to write a script for the
purpose in python or perl if you're at all inclined in 
a programming direction. 

Joel

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


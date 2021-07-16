Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 44BE93CBDCA
	for <lists+blinux-list@lfdr.de>; Fri, 16 Jul 2021 22:29:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626467369;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kzzNeqbnWLYrpzI/6b5J0WAl6BM4F+slCanY5vct+l8=;
	b=NRGgQ0MN1B/Du2bqDhkDkFMaRvsl+0jIha+o1qctcPryObzgZ4XuCZg0CpTXDmpdaqkcL6
	G18W5UflSmYRdIEG++PvdFc310LsRfi44B6g+kFX26L/D6nZ82oOHpPdmFutOpson6mvdK
	SSRWL9PONEQJXqnw0R70oz3iTJVNLLU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-575-MDtbA_TzMbSEJYcIdO0qJg-1; Fri, 16 Jul 2021 16:29:27 -0400
X-MC-Unique: MDtbA_TzMbSEJYcIdO0qJg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1EC2F801107;
	Fri, 16 Jul 2021 20:29:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2C14360862;
	Fri, 16 Jul 2021 20:29:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5B32C4EA2F;
	Fri, 16 Jul 2021 20:29:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16GKT9qk026580 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Jul 2021 16:29:10 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D25AD10F03B; Fri, 16 Jul 2021 20:29:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CB72311E5B2
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 20:29:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BC77B89C7DC
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 20:29:06 +0000 (UTC)
Received: from pb-smtp21.pobox.com (pb-smtp21.pobox.com [173.228.157.53])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-268-wjc6zQCfPKKLbfoT0u_bsw-1; Fri, 16 Jul 2021 16:29:04 -0400
X-MC-Unique: wjc6zQCfPKKLbfoT0u_bsw-1
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
	by pb-smtp21.pobox.com (Postfix) with ESMTP id 0A39D1455AC
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 16:25:45 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
	by pb-smtp21.pobox.com (Postfix) with ESMTP id 03C8B1455AB
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 16:25:45 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from sprite (unknown [148.72.174.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp21.pobox.com (Postfix) with ESMTPSA id 78B211455A9
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 16:25:42 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from jroth by sprite with local (Exim 4.92)
	(envelope-from <joelz@pobox.com>) id 1m4UOW-0004Qs-I9
	for blinux-list@redhat.com; Fri, 16 Jul 2021 10:25:12 -1000
Date: Fri, 16 Jul 2021 10:25:12 -1000
To: blinux-list@redhat.com
Subject: Re: audio cutting and exporting
Message-ID: <20210716202512.fe4q67usizyocbag@sprite>
References: <ddddb6cd-5f17-c0ab-1b56-e5ee9281c84b@gmail.com>
MIME-Version: 1.0
In-Reply-To: <ddddb6cd-5f17-c0ab-1b56-e5ee9281c84b@gmail.com>
User-Agent: NeoMutt/20180716
X-Pobox-Relay-ID: FE2FAC92-E673-11EB-9A59-FA9E2DDBB1FC-04347428!pb-smtp21.pobox.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Pavel,

Nama is another audio editor you might try.  It was written
for music production and like DAE, uses Ecasound to peform
the audio processing. You can issue commands in a terminal,
and also search for commands, plugins, etc. 

Nama works with WAV files. You define a region by a pair of
marks. For editing down a lecture, there is a compose
command that joins several regions together.

The mixdown command exports to multiple formats. 

A fairly recent version is available as a debian package.

Nama tries to make everything as easy as possible.
There is a mailing list for questions.

I'm the author, and happy to help :-)

Joel


On Fri, Jul 16, 2021 at 04:27:51PM +0200, Linux for blind general discussion wrote:
> Hi,
> 
> I am looking for accessible and easy to use audio application, which allows
> me to:
> 
> - select sound from point a to point b
> 
> - delete, move or export selected section
> 
> - export the result in multiple formats.
> 
> I know about Audacity, but maybe you know some more accessible and more easy
> to use editor.
> 
> My environment is Fedora 34 with Mate desktop and with all a11y variables
> enabled.
> 
> Thanks,
> 
> Pavel
> 
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


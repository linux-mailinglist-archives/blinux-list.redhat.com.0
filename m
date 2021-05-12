Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 78D7F37CC68
	for <lists+blinux-list@lfdr.de>; Wed, 12 May 2021 19:04:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1620839058;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0LQA2fwcHhIIld9PJhTpkK6H/sIugqiwZrnEiQ2Bwqs=;
	b=iowv1PE2VSVyozvZ/TVQA5TcvD4f9lz5N5pw5JXvTtD2CRuBxMOAAVBj49G6rHcaL52umo
	I8TbcqtUsKFHrdYX87S2nJbMrQCI9wUVISQpu0ll1Hxt3R5hthS7BmlMjlwOBQUl1oPDIM
	6Tp2nE22n5tlsjENkA/cDJZJP/aGrt8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-321--pDrujwwP6ul7s_2SRSnFQ-1; Wed, 12 May 2021 13:04:16 -0400
X-MC-Unique: -pDrujwwP6ul7s_2SRSnFQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A6E24107ACCA;
	Wed, 12 May 2021 17:04:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 71A93100164C;
	Wed, 12 May 2021 17:04:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D6F4E1800BB0;
	Wed, 12 May 2021 17:04:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14CH3uuZ023176 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 12 May 2021 13:03:56 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 157112102C4D; Wed, 12 May 2021 17:03:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 110A0210FE0C
	for <blinux-list@redhat.com>; Wed, 12 May 2021 17:03:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C5A0583395A
	for <blinux-list@redhat.com>; Wed, 12 May 2021 17:03:52 +0000 (UTC)
Received: from pb-smtp20.pobox.com (pb-smtp20.pobox.com [173.228.157.52])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-578-0nOsoWkVOJ-1NyKBHhnIow-1; Wed, 12 May 2021 13:03:50 -0400
X-MC-Unique: 0nOsoWkVOJ-1NyKBHhnIow-1
Received: from pb-smtp20.pobox.com (unknown [127.0.0.1])
	by pb-smtp20.pobox.com (Postfix) with ESMTP id A2165128891
	for <blinux-list@redhat.com>; Wed, 12 May 2021 12:59:49 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from pb-smtp20.sea.icgroup.com (unknown [127.0.0.1])
	by pb-smtp20.pobox.com (Postfix) with ESMTP id 9BFE7128890
	for <blinux-list@redhat.com>; Wed, 12 May 2021 12:59:49 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from sprite (unknown [76.88.160.87])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp20.pobox.com (Postfix) with ESMTPSA id 25BAA12888F
	for <blinux-list@redhat.com>; Wed, 12 May 2021 12:59:47 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from jroth by sprite with local (Exim 4.92)
	(envelope-from <joelz@pobox.com>) id 1lgsCr-0003H9-7q
	for blinux-list@redhat.com; Wed, 12 May 2021 06:59:33 -1000
Date: Wed, 12 May 2021 06:59:33 -1000
To: blinux-list@redhat.com
Subject: Re: Speech help
Message-ID: <20210512165933.fj6x4r2n7mf6l6sn@sprite>
References: <20210511061337.js4myeivpfo6tqtj@sprite>
	<78837294-c04d-496c-766c-342f982c07e8@gmail.com>
MIME-Version: 1.0
In-Reply-To: <78837294-c04d-496c-766c-342f982c07e8@gmail.com>
User-Agent: NeoMutt/20180716
X-Pobox-Relay-ID: 74FA48FA-B343-11EB-9088-E43E2BB96649-04347428!pb-smtp20.pobox.com
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Kyle,

Thank you for the recommendations. 

Kyle wrote:
> I would recommend speech-dispatcher and Orca. You can install the MATE
> desktop and the lightdm gtk greeter, drop in a config file that I can send
> and run a couple of gsettings commands, and his system will speak. There is
> a repository I believe for RHVoice, which ships with a speech-dispatcher
> module. RHVoice, especially the bdl voice, tends to be easier to understand
> than espeak. The MATE desktop I mention does ship with the menu that will
> help in selecting applications to run and also configuring and shutting down
> the system.
> 
> 
> The best mail client is either Thunderbird or Seamonkey mail. I haven't been
> able to get sylpheed working with Orca, and evolution, which I rather like,
> does have some webkit-gtk problems that keep it from working 100%. I would
> stay away from Mutt personally. I gave up on configuring it to work with
> existing mailbox configurations that were not stored on the local machine.
> It really is a bear to set up if you have a regular IMAP mailbox. Orca just
> reads Thunderbird and Seamonkey much better as well, since you have access
> to navigation keys, SayAll mode that will read a message continuously from
> the top or from where your cursor is all the way to the bottom, and of
> course simple arrow navigation that will read your message line by line
> similar to reading it in a text editor or web browser. These clients also
> handle links without issues.
> 
> 
> For browsing, Firefox works out of the box, and Chromium works as well, but
> does need some startup flags to be set in order to make Orca read it. That
> said, modifying Chromium's startup flags seems to work the best here. It
> seems much faster and less sluggish, and I have been able to get it working
> with more websites, especially conferencing and phone types of things.
> Online banking does seem to work slightly better using Firefox, but pages
> seem to load much more slowly. I do tend to keep both around just in case
> one works better than the other for a specific task. I hope some of this
> helps.
> 
> ~Kyle
> 
> Sent from my quiet place
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


Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4BA902B9CE4
	for <lists+blinux-list@lfdr.de>; Thu, 19 Nov 2020 22:28:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605821303;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WwvRnCp/uClmvu8XB5ZFsyTYY6hptJNg3R+df59eaeM=;
	b=Sl7krE6woMBtoe8himuIv9QWa8HLs0wQLYMcQCCF0OrxoKC/IVteTXLTp54n5JEJIlvsvJ
	dUATfuVqLDSkx+whQGa8HxqcHZw615qOe5ju7NJzJ4Pu1NlnKmyNhxytaS35CwWUouOWwZ
	pAXF42jI0cTC8JKk//YitYZzfp84E1c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-466-LyKh6WroMIGcDlxqRJMUVA-1; Thu, 19 Nov 2020 16:28:21 -0500
X-MC-Unique: LyKh6WroMIGcDlxqRJMUVA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9214081A285;
	Thu, 19 Nov 2020 21:28:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 780315D9C2;
	Thu, 19 Nov 2020 21:28:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AA48F180954D;
	Thu, 19 Nov 2020 21:28:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AJLSARO028673 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 19 Nov 2020 16:28:10 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 167DD2026D47; Thu, 19 Nov 2020 21:28:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0EEC02026D76
	for <blinux-list@redhat.com>; Thu, 19 Nov 2020 21:28:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CB75C811E87
	for <blinux-list@redhat.com>; Thu, 19 Nov 2020 21:28:04 +0000 (UTC)
Received: from mailbox.supranet.net (mailbox.supranet.net [66.170.1.9])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-252-uDC86OH3MMi3xZOf68fvNA-1; Thu, 19 Nov 2020 16:28:01 -0500
X-MC-Unique: uDC86OH3MMi3xZOf68fvNA-1
Received: from [141.126.133.160] (port=40500 helo=localhost)
	by mailbox.supranet.net with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.82 (FreeBSD)) (envelope-from <john@godtouches.org>)
	id 1kfqxO-0006sg-OG
	for blinux-list@redhat.com; Thu, 19 Nov 2020 14:55:06 -0600
Date: Thu, 19 Nov 2020 14:55:05 -0600
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Producing Braille files on ZLinux
Message-ID: <20201119205505.GA144779@abilitiessoft>
References: <87wnyhf7zo.fsf.ref@yahoo.com> <87wnyhf7zo.fsf@yahoo.com>
	<CAGJxbF6ErHJAGmFEjFrdcXU3iyNaf6_-FwtDasmWKGJga49d1A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGJxbF6ErHJAGmFEjFrdcXU3iyNaf6_-FwtDasmWKGJga49d1A@mail.gmail.com>
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

Your distro probably has packages for liblouis and liblouisutdml. It would be best to use those.

John

-- 
John J. Boyer
Email: john.boyer@abilitiessoft.org
website: http://www.abilitiessoft.org
Status: Company dissolved but website and email addresses  live.
Location: Madison, Wisconsin, USA
Mission: developing assistive technology software and providing STEM services 
        that are available at no cost


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


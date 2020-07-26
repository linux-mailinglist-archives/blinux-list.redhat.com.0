Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 2ED5822E16E
	for <lists+blinux-list@lfdr.de>; Sun, 26 Jul 2020 18:46:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1595781961;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8p+zklOE6HclqNAlX3kT1e0RqYhFiWWBGO282xmHi1w=;
	b=Bhvv0zloBTs8MAot+zDXl+s5QTNWitH6Q+yqMWsn3rr09XWQbMK/nEfcFap5eKzA4VWZ41
	Cs9mWHS2Klf/cgVywxZPQO7DyRBiihmRItp51ON3SwSrwYXzZq515g+tfLjxVqyDT7EjGx
	sABZD4F77ImYWRh1gzjnXybC7Osbyyw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-44--5qcM0t7O5i4nTTTtzEH8Q-1; Sun, 26 Jul 2020 12:45:59 -0400
X-MC-Unique: -5qcM0t7O5i4nTTTtzEH8Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9C21E8015F4;
	Sun, 26 Jul 2020 16:45:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B9E5D5F218;
	Sun, 26 Jul 2020 16:45:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DC66895477;
	Sun, 26 Jul 2020 16:45:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06QGjQUg004647 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 26 Jul 2020 12:45:26 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id EB74C200E554; Sun, 26 Jul 2020 16:45:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DACF7217B436
	for <blinux-list@redhat.com>; Sun, 26 Jul 2020 16:45:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CA6391012443
	for <blinux-list@redhat.com>; Sun, 26 Jul 2020 16:45:22 +0000 (UTC)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-360-wUDpnjgPMTCUTGeol9exbw-1; Sun, 26 Jul 2020 12:45:20 -0400
X-MC-Unique: wUDpnjgPMTCUTGeol9exbw-1
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id 0C13C90E9
	for <blinux-list@redhat.com>; Sun, 26 Jul 2020 18:36:26 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 75ONX0Dw0tJS for <blinux-list@redhat.com>;
	Sun, 26 Jul 2020 18:36:25 +0200 (CEST)
Received: from function.home (unknown
	[IPv6:2a01:cb19:956:1b00:9eb6:d0ff:fe88:c3c7])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id 1210690E2
	for <blinux-list@redhat.com>; Sun, 26 Jul 2020 18:36:25 +0200 (CEST)
Received: from samy by function.home with local (Exim 4.94)
	(envelope-from <samuel.thibault@ens-lyon.org>) id 1jzjdQ-001svh-EG
	for blinux-list@redhat.com; Sun, 26 Jul 2020 18:36:24 +0200
Date: Sun, 26 Jul 2020 18:36:24 +0200
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: installing speakup on RHEL 7/8
Message-ID: <20200726163624.y7loskvf3jg4nw65@function>
Mail-Followup-To: Linux for blind general discussion <blinux-list@redhat.com>
References: <02d601d65bb9$cd357b80$67a07280$.ref@yahoo.com>
	<02d601d65bb9$cd357b80$67a07280$@yahoo.com>
	<20200718110724.GA2593@rednote.net>
	<015301d65fa8$16604280$4320c780$@yahoo.com>
	<20200723165930.GB2593@rednote.net>
	<00d901d6613a$4090d7c0$c1b28740$@yahoo.com>
	<daba66f6-da1e-a915-dd5d-9569e5d3dcaf@slint.fr>
MIME-Version: 1.0
In-Reply-To: <daba66f6-da1e-a915-dd5d-9569e5d3dcaf@slint.fr>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Mimecast-Bulk-Signature: yes
X-Mimecast-Spam-Signature: bulk
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Linux for blind general discussion, le ven. 24 juil. 2020 00:21:42 +0200, a ecrit:
> Maybe I will look pessimistic, but I can't find a recent commit here:
> https://github.com/torvalds/linux/commits/master/drivers/staging/speakup

Define "recent".

> Proposals have been made to enhance the documentation of the various
> hardware models but that doen't seem to have been merged either although
> this was requested to get out of the staging status if I remmeber well,
> so... 
> 
> Cf. the thread beginning with this message on the speakup ML:
> https://www.spinics.net/lists/linux-speakup/msg61856.html
> and the follow-up thread beginning here:
> https://www.spinics.net/lists/linux-speakup/msg62212.html

And the sysfs patch submitted by Okash did get committed in. Nobody
seems to have then taken the time to check what's left in the TODO list,
but I guess it's now empty and speakup can go to mainline.

Samuel

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


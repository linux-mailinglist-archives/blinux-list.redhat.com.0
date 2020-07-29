Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 1DD8D2321DC
	for <lists+blinux-list@lfdr.de>; Wed, 29 Jul 2020 17:47:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1596037674;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vsf6ZayYyxmejGGbhDEgnKrvgjo3c/X2xrAHUDFsI3s=;
	b=U5wsmyeMdtqsIMohPLAjNh9/lmYta9zn8RUsJhgCZ3triJTG3DkDeD+Smm8q7BtUo1AKqB
	yZsT8Rd63WFEAMtWjd0whJnbNsil56DseZiUH+zS+TCptVYo+lSnc2mJwUP5N8BtUp0jKY
	/bmEGpw+qxBjWvuof4HOhHYybuPgias=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-503-dC1frJmhN2mn7cQlTrxTNA-1; Wed, 29 Jul 2020 11:47:51 -0400
X-MC-Unique: dC1frJmhN2mn7cQlTrxTNA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BFAC518AAD24;
	Wed, 29 Jul 2020 15:47:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7CCFB60CD1;
	Wed, 29 Jul 2020 15:47:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 52877730DB;
	Wed, 29 Jul 2020 15:47:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06TFleMn003701 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 29 Jul 2020 11:47:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AC3AA2156A30; Wed, 29 Jul 2020 15:47:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A08112156A2D
	for <blinux-list@redhat.com>; Wed, 29 Jul 2020 15:47:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ECD0F83B821
	for <blinux-list@redhat.com>; Wed, 29 Jul 2020 15:47:22 +0000 (UTC)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-348--zC2gPwVNDKNT-CVxpAEyA-1; Wed, 29 Jul 2020 11:47:20 -0400
X-MC-Unique: -zC2gPwVNDKNT-CVxpAEyA-1
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id 1B32913F0
	for <blinux-list@redhat.com>; Wed, 29 Jul 2020 17:47:17 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iX3n9Z3FVfrn for <blinux-list@redhat.com>;
	Wed, 29 Jul 2020 17:47:16 +0200 (CEST)
Received: from function.home (unknown
	[IPv6:2a01:cb19:956:1b00:9eb6:d0ff:fe88:c3c7])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id 475B5F11
	for <blinux-list@redhat.com>; Wed, 29 Jul 2020 17:47:16 +0200 (CEST)
Received: from samy by function.home with local (Exim 4.94)
	(envelope-from <samuel.thibault@ens-lyon.org>) id 1k0oIV-005fWR-5v
	for blinux-list@redhat.com; Wed, 29 Jul 2020 17:47:15 +0200
Date: Wed, 29 Jul 2020 17:47:15 +0200
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: installing speakup on RHEL 7/8
Message-ID: <20200729154715.66njgipo7l3jxbdv@function>
Mail-Followup-To: Linux for blind general discussion <blinux-list@redhat.com>
References: <02d601d65bb9$cd357b80$67a07280$.ref@yahoo.com>
	<02d601d65bb9$cd357b80$67a07280$@yahoo.com>
	<20200718110724.GA2593@rednote.net>
	<015301d65fa8$16604280$4320c780$@yahoo.com>
	<20200723165930.GB2593@rednote.net>
	<00d901d6613a$4090d7c0$c1b28740$@yahoo.com>
	<daba66f6-da1e-a915-dd5d-9569e5d3dcaf@slint.fr>
	<20200726163624.y7loskvf3jg4nw65@function>
	<54181004-f8ea-344a-29e7-ab437c03f22f@slint.fr>
MIME-Version: 1.0
In-Reply-To: <54181004-f8ea-344a-29e7-ab437c03f22f@slint.fr>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Linux for blind general discussion, le mer. 29 juil. 2020 17:24:15 +0200, a ecrit:
> Not that it matters much for Slackware and derivatives as speakup drivers
> have been provided in Slackware since version 8.0 released on 2001-06-27,
> in kernel version 2.2.19...

Yes, Debian as well. Just one thing: remember to enable
CONFIG_ACCESSIBILITY if it's not already.

Samuel

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


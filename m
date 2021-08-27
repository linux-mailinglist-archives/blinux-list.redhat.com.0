Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id C43D63F9F1C
	for <lists+blinux-list@lfdr.de>; Fri, 27 Aug 2021 20:46:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630089971;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lEojOd26B5CegLRq0ozEKRo/9mjKplkBmRRHxa70t4I=;
	b=YIcL2WpqTYo9UbbmXaxlfYB+05olfIrnG6dGS6+15dL8vn+a0k/NOVQsDeV/MQLptikYqU
	1cfWzCHXfgn9ug4Vvk58KawJ/BZEXomiE4HESUC0SawPAw4peUTTyi30w7Ax0CgMONGq2f
	L5bFqecNP4PMwEAtRyhc+CLdCxv18KE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-571-7oa-BynwPRe8nnnC1QbKRg-1; Fri, 27 Aug 2021 14:46:10 -0400
X-MC-Unique: 7oa-BynwPRe8nnnC1QbKRg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F194B101C8B1;
	Fri, 27 Aug 2021 18:46:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 91E618658E;
	Fri, 27 Aug 2021 18:46:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1CD5B4BB7C;
	Fri, 27 Aug 2021 18:46:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17RIibAZ015578 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Aug 2021 14:44:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 452DD1A91F0; Fri, 27 Aug 2021 18:44:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3FA962D44B
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 18:44:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8EE7E101A529
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 18:44:34 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-383-YnNYtMwQPz2sOp2YsyUuVw-1; Fri, 27 Aug 2021 14:44:32 -0400
X-MC-Unique: YnNYtMwQPz2sOp2YsyUuVw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Gx7t775KMz41vW
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 14:44:31 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Gx7t767Q0zcbc; Fri, 27 Aug 2021 14:44:31 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Gx7t75pFlzcbP
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 14:44:31 -0400 (EDT)
Date: Fri, 27 Aug 2021 14:44:31 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: unable to install from aur
In-Reply-To: <20210827.181429.958.4@[192.168.1.100]>
Message-ID: <alpine.NEB.2.23.451.2108271436310.3280@panix1.panix.com>
References: <20210827.181429.958.4@[192.168.1.100]>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Did you modify gpg.conf or is that the archlinux-supplied version?
I don't have the problems you do with archlinux and that's because early
in the install I run:
pacman-key --populate.
Then I might run:
pacman -Syu archlinux-keyring.
Lots of keys get updated that way.
Now I also install the surfraw package and lynx and set the browser
surfraw uses as lynx.
Then I search the aur repository for pikaur and download the source for
that package and run makepkg on it to build it.
After that, I usually have no trouble installing stuff from the aur
repository.
You probably also ought to download ntp and then as root run
ntpd -qg
and hwclock --systohc --utc
Then set your timezone by updating /etc/localtime.
Finally run as root
sysctl enable timesyncd ntp true
All of that makes sure your clock is current and keeps the repositories
happy.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


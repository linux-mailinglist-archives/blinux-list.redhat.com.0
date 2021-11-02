Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EE74429AF
	for <lists+blinux-list@lfdr.de>; Tue,  2 Nov 2021 09:41:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635842480;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=EaVSRvzB7poc9mx3wy5Us6j4QT7cXMmlK6DlSikxcPg=;
	b=ceqOQXUsOQ31Bn/fLvtu//F/GyowW4YCIPfJEBnMI4yqKaC0UoDm0SMoUyjrzKEsqPmO3A
	P6+6OLjCXMsSAlHnE2gSooSpy+ygRLC99bsjBnGz2V6p2IOWjwTfsDsxSGh1FW3veUPzjd
	KDx0bxhAy/1AARMpWvKoq2ORWHpnhPg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-253-AJUhZLEgPIWWXE1gwF1_6A-1; Tue, 02 Nov 2021 04:41:16 -0400
X-MC-Unique: AJUhZLEgPIWWXE1gwF1_6A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 426741808318;
	Tue,  2 Nov 2021 08:41:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E10885D705;
	Tue,  2 Nov 2021 08:41:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 55E871806D03;
	Tue,  2 Nov 2021 08:41:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A28e1QN015762 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 2 Nov 2021 04:40:02 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A4B282166B3F; Tue,  2 Nov 2021 08:40:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 98EF22166B25
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 08:39:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1AE938011AF
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 08:39:58 +0000 (UTC)
Received: from hera.aquilenet.fr (hera.aquilenet.fr [185.233.100.1]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-265-x-WaRGAmNimwudUgZPj1mA-1; Tue, 02 Nov 2021 04:39:56 -0400
X-MC-Unique: x-WaRGAmNimwudUgZPj1mA-1
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id E3E051AD
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 09:32:36 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T0gMGYPnF71K for <blinux-list@redhat.com>;
	Tue,  2 Nov 2021 09:32:36 +0100 (CET)
Received: from begin (unknown [IPv6:2a01:cb19:956:1b00:de41:a9ff:fe47:ec49])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id 6B8C39B
	for <blinux-list@redhat.com>; Tue,  2 Nov 2021 09:32:36 +0100 (CET)
Received: from samy by begin with local (Exim 4.95)
	(envelope-from <samuel.thibault@ens-lyon.org>) id 1mhpDf-00EutF-FU
	for blinux-list@redhat.com; Tue, 02 Nov 2021 09:32:35 +0100
Date: Tue, 2 Nov 2021 09:32:35 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: FYI - The Yggdrasil Screen Reader Project
Message-ID: <20211102083235.nuzcsnnrrr2kxyno@begin>
Mail-Followup-To: Linux for blind general discussion <blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <CAGJxbF5-L+XZrVgE1-=zVo+0OMGYN8MyQbpb4dzog-fkQenRyQ@mail.gmail.com>
	<e69acb20-0467-35b1-3d40-eafae4543b48@gmail.com>
	<CAM+Q2c7O_0eLXVWMnmUEU7BTHkf4P=5dX20+hGc9yqpnOrr6dQ@mail.gmail.com>
	<1C66A443-A56F-4B20-895C-DD5B7FB80918@cfcl.com>
	<f222c105-e027-b6bf-df00-f2bc3733719d@gmail.com>
	<C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Spamd-Bar: /
X-Rspamd-Server: hera
X-Rspamd-Queue-Id: E3E051AD
X-Spamd-Result: default: False [0.40 / 15.00]; ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]; FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_ALL(0.00)[]; MIME_GOOD(-0.10)[text/plain];
	PREVIOUSLY_DELIVERED(0.00)[blinux-list@redhat.com];
	RCPT_COUNT_ONE(0.00)[1]; HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[3]; TO_DN_ALL(0.00)[];
	FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[]; MID_RHS_NOT_FQDN(0.50)[]
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

> Accessibility on Linux has historically been under-developed, under-maintained,

And thus let's split the effort instead of joining? Ew.

> Members of the Rust community are reimplementing a number of C-based programs, making the argument that they can improve on the current state of the art.

That is right for various C-based programs that are a pain to maintain
because of C. Orca is not a pain to maintain because of Python, it's a
pain to develop because the problem itself is complex. Rewriting in Rust
won't change that.

> On the other hand, choices are good.

Choices are good when there are enough people to work on the various
choices. Split the community, and instead of having one good software,
you have two poor software.

> not a tremendous amount of development occurring on either.

That's just a matter of people joining in.

> Does Orca have object navigation? No flat review is not the same thing.

Where is the feature request for object navigation?  Where is the pull
request to propose an implementation?

> Also, I can't remember which, but other the Orca dev or someone on Mastodon
> reviewing Orca's code said that, I believe the Terminal-access code is
> "black magic".

For terminal access, it'll be much more interesting to run brltty, which
has decades of experience.

brltty -b ba -x a2 -N

Note that the "black magic" inserted in Orca is most often because it's
the application itself which exposes bogus information.

Samuel

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


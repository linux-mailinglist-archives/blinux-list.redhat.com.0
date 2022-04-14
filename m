Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7099150044E
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 04:32:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649903529;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VOhMk+dLBPzd0ToKbaBAlfuI1uPMvjGBqadtjph4Zy0=;
	b=Ff6rz4s6oMlIlmOH/3ubj31Ip1hARG3Fx4gXxLNySnW7KT8/ovNWnBc010Z098gMAnJcao
	VLE/UVSKMfQIJ6pinoLyJVJcUY6BFYYClgYaPUll5KzTUNKkAwXFsGEun0vlxX92xYUdrh
	9pgsZGFfZkYOaz2Z55R59aXn+QR3tS0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-272-TUha7lmpNkqTO8VAqw_yRw-1; Wed, 13 Apr 2022 22:32:04 -0400
X-MC-Unique: TUha7lmpNkqTO8VAqw_yRw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 448FE811E78;
	Thu, 14 Apr 2022 02:32:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 30113C28138;
	Thu, 14 Apr 2022 02:32:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9C6EC1940353;
	Thu, 14 Apr 2022 02:32:02 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <CAO2sX33Pf=GEvGggGYy25irP6hM72QvVvsk3fGtFBnc8CT09yQ@mail.gmail.com>
References: <mailman.7836.1649830111.111205.blinux-list@redhat.com>
 <mailman.8034.1649840185.111204.blinux-list@redhat.com>
 <mailman.8235.1649845924.111201.blinux-list@redhat.com>
 <mailman.8235.1649853207.111206.blinux-list@redhat.com>
 <mailman.8153.1649856275.111209.blinux-list@redhat.com>
 <mailman.8268.1649857705.111206.blinux-list@redhat.com>
 <mailman.8242.1649858545.111203.blinux-list@redhat.com>
 <mailman.8365.1649876915.111204.blinux-list@redhat.com>
 <mailman.8363.1649886716.111208.blinux-list@redhat.com>
 <mailman.8415.1649894526.111202.blinux-list@redhat.com>
 <mailman.8348.1649895614.111209.blinux-list@redhat.com>
 <mailman.8418.1649896178.111202.blinux-list@redhat.com>
 <CAO2sX33Pf=GEvGggGYy25irP6hM72QvVvsk3fGtFBnc8CT09yQ@mail.gmail.com>
Date: Thu, 14 Apr 2022 02:31:58 +0000
Subject: Re: FYI - Command Line Programs for the Blind
To: blinux-list@redhat.com
Message-ID: <mailman.8511.1649903521.111206.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I don't have anything against projects specifically targetting blind
end users, or any other niche for that matter, but I do think its
better to have accessibility seamlessly integrated into mainstream
products instead of trying to maintain a separate ecosystem of goods
and services that cater only to a tiny minority... Sadly, many vendors
only care about satisfying the lowest common denominator and little
short of government sanctions will convince them accessibility is even
worth considering, and even when vendors pay lip service to caring
about accessibility, it can be hard to even find how to give them
feedback, so even with the downsides(small development teams,
extremely low bus factors, small user base to spread development costs
across, etc.), it's easy to feel like "make our own" is the only
option.

Of course, one nice thing about the FOSS model is that one can
simultaneously be building their own version of something while trying
to push their contributions upstream... no idea how well any of the
mentioned projects made any head way in that regard, and I'm sure
there was some push back for those that tried, but there's at least
the option to do both... I like the Adriane accessibility suite that
comes as part of Knoppix, even if I only really use the console screen
reader it comes with and its script for launching Fiefox+Orca without
launching a full desktop, and those are the two main reasons my
installed system is customized from a Knoppix install and not a Debian
install... Shame Adriane never got upstreamed to Debian, or that when
Knoppix had its own repository, I couldn't just add it to my
sources.list and do a sudo apt-get install adriane on a vanilla Debian
to get the benefits withou the baggage of Knoppix being primarily a
live distro.

And to some extent, I do think something needs to be mainstream to
actually be viable for the disabled. I mean, the Orbit Graffiti sounds
totally awesome and I'd order one immediately if I had the funds...
but unless someone develops a tactile-visual display that would appeal
to the mainstream and could make it's way into a flagship Android or
iOS device, I think its going to be a very long time before a tactile
display the average blind person can actually afford becomes a
reality.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


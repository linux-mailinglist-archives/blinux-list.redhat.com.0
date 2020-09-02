Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 9C77B25A2B9
	for <lists+blinux-list@lfdr.de>; Wed,  2 Sep 2020 03:47:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1599011227;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jm70FeFYhr+GQf0nGk5peCMpueIbCmBrGEZJnw3zAXA=;
	b=YWA3cdIsrsR+dt3bXGDTtdt3iSVRkZ4huXDTrSHT56xDrb3MCuQ/yqrtv+uz3VXpDW44na
	JX/uOrYHy2CKwRlnwy6iCKK8ZuNgNta5gFMHaFcf+/nPT9w+P+MewZ/V4KcSKIL9odSbd/
	ZrN+TLAkDwZtne5353acNOUPY5wXvWA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-375-8tn4bTYdP5SkXbV0YVlEgQ-1; Tue, 01 Sep 2020 21:47:05 -0400
X-MC-Unique: 8tn4bTYdP5SkXbV0YVlEgQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0A26510ABDBA;
	Wed,  2 Sep 2020 01:47:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2C619756A6;
	Wed,  2 Sep 2020 01:46:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3706D183D021;
	Wed,  2 Sep 2020 01:46:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0821knAQ026523 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 1 Sep 2020 21:46:49 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5A6AF114F260; Wed,  2 Sep 2020 01:46:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1F87A114F262
	for <blinux-list@redhat.com>; Wed,  2 Sep 2020 01:46:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 16367101A568
	for <blinux-list@redhat.com>; Wed,  2 Sep 2020 01:46:47 +0000 (UTC)
Received: from cfcl.com (cpepool4cmts2-144.sanbrunocable.com
	[24.143.248.144]) by relay.mimecast.com with ESMTP id
	us-mta-155-G_cXgm1NMLG53CODmglR1w-1; Tue, 01 Sep 2020 21:46:44 -0400
X-MC-Unique: G_cXgm1NMLG53CODmglR1w-1
Received: from spot.local (spot.local [IPv6:fe80::108f:61b6:e9ea:e7ae])
	by cfcl.com (Postfix) with ESMTP id 2459214115C0
	for <blinux-list@redhat.com>; Tue,  1 Sep 2020 18:46:44 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: FYI: PinePhone community edition for Manjaro
Date: Tue, 1 Sep 2020 18:46:43 -0700
References: <51090E19-5D47-4439-B62C-1CF068A75451@cfcl.com>
	<6ac837df-d42f-02dc-9e60-cc14d3c552c6@gmail.com>
	<BE741911-CF77-4532-9486-242ED63B578D@cfcl.com>
	<5ef5c3c0-17a7-11c2-4800-0179dadbbfde@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <5ef5c3c0-17a7-11c2-4800-0179dadbbfde@gmail.com>
Message-Id: <33F31867-31AB-4E73-996F-9A7706E50353@cfcl.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0821knAQ026523
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.502
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> Somebody wrote:
> 
> Would be good to know when you get the device.

My phone is in transit (somewhere between Los Angeles and San Bruno, California) as I
write this.  In theory, I should receive it some time on Thursday.

> I was wanting to get one myself, but wasn't sure of the options for accessibility.

I don't expect the device to have any particular options for accessibility.  I can try
to evaluate and report on the physical hardware (e.g., how hard it would be for blind
users to replace the microSD card), but this is only a small part of the story.

As I detailed in my (rather long winded) note the other day, most of the accessibility
options for a mobile phone depend on the installed software: operating system, window
manager, applications, etc.  So, I'd expect the default behavior under postmarketOS to
differ quite a bit from that of Manjaro or any of the dozen or so other Linux variants
that claim to support this device.

In any case, none of these variants seems to have blind accessibility on their radar.
The closest I've found so far is Mobian, which (as a Debian derivative) may benefit
from the efforts of the Debian accessibility community.

<whine>
The Linux community is famously Balkanized, with hundreds of distributions.  The blind-
friendly subset is much smaller, but still has several current variants (along with
several more that are "pining for the fjords").  These variants are distinguished by
their base distributions (e.g., Arch, Slackware), hardware platforms (e.g., ARM, Intel),
package complements (e.g., Fenrir, Orca, Speakup), etc.  

Please understand that I'm not dissing these variants, let alone their developers.  It
just makes me sad that none of them seems to have acquired any substantial user base.
Given the relatively small percentage of blind folks in the general population and the
even smaller percentage of Linux users, this seems all too predictable.  But still, the
result is that there isn't a large enough community of users to support the kind of
development and support that I'd like.  More to the point, I worry that my pipe dreams
of "cell phone Linux for the blind" could easily go in the same direction.

My _hope_ is that I can find a solid Linux variant for mobile phones, based on a popular
flavor of Linux.  Then, I can try to fold in a working set of accessibility packages,
based on the existing work of assorted current and historic distributions.  If this can
run on a large number of repurposed Android phones, it might provide a good start on a
system that blind users around the world can afford.  But, it's all SciFi at this point.
</whine>

- Rich Morin, rdm@cfcl.com


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


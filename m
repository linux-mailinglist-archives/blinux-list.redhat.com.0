Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 5430C233990
	for <lists+blinux-list@lfdr.de>; Thu, 30 Jul 2020 22:05:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1596139533;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=k/Pz9R/wllpG/qKzRBYdFDtICtRquHlfoVeBYEe4J60=;
	b=hNBE8cTyreJHqR6uFxlS0lv1McqxAkVQ5r3pJitpsWAwfDMkyuZpzQ2XJJ+rF2Kk/3UJ9h
	Optweg4pF3zbUJuKkcW0bHmlh37USLmzRrVd61ZDfET2M/ilZwpJPU8FjF90ANRvMdl//5
	6zP2r8LqMTap3VAZmmWDO7jDJx5fQ3w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-92-iNcxAsMYOg6ij3CRjDgVNA-1; Thu, 30 Jul 2020 16:05:18 -0400
X-MC-Unique: iNcxAsMYOg6ij3CRjDgVNA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E9FCD107BEF7;
	Thu, 30 Jul 2020 20:05:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A9F1D1B47B;
	Thu, 30 Jul 2020 20:05:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2E6E49A0EF;
	Thu, 30 Jul 2020 20:05:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 06UK2FcM004588 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 30 Jul 2020 16:02:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A810C10CD2C6; Thu, 30 Jul 2020 20:02:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A363B10CD2C8
	for <blinux-list@redhat.com>; Thu, 30 Jul 2020 20:02:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 55FA1101A525
	for <blinux-list@redhat.com>; Thu, 30 Jul 2020 20:02:12 +0000 (UTC)
Received: from opera.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-88-Nnnzc2g7MM6VPpZyf8nXOg-1; Thu, 30 Jul 2020 16:02:05 -0400
X-MC-Unique: Nnnzc2g7MM6VPpZyf8nXOg-1
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
	by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 06UK241F294973
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <blinux-list@redhat.com>; Thu, 30 Jul 2020 20:02:04 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 opera.rednote.net 06UK241F294973
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 06UK241F294973
Received: (from janina@localhost)
	by rednote.net (8.15.2/8.15.2/Submit) id 06UK249H294972
	for blinux-list@redhat.com; Thu, 30 Jul 2020 16:02:04 -0400
Date: Thu, 30 Jul 2020 16:02:04 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: installing speakup on RHEL 7/8
Message-ID: <20200730200204.GE2791@rednote.net>
References: <20200718110724.GA2593@rednote.net>
	<015301d65fa8$16604280$4320c780$@yahoo.com>
	<20200723165930.GB2593@rednote.net>
	<00d901d6613a$4090d7c0$c1b28740$@yahoo.com>
	<daba66f6-da1e-a915-dd5d-9569e5d3dcaf@slint.fr>
	<20200726163624.y7loskvf3jg4nw65@function>
	<54181004-f8ea-344a-29e7-ab437c03f22f@slint.fr>
	<20200729154715.66njgipo7l3jxbdv@function>
	<20200730134209.GA2791@rednote.net>
	<026701d66694$87db2f90$97918eb0$@yahoo.com>
MIME-Version: 1.0
In-Reply-To: <026701d66694$87db2f90$97918eb0$@yahoo.com>
X-Operating-System: Linux opera.rednote.net 5.7.9-100.fc31.x86_64
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hi, David:

As Samuel posted to the Speakup list, the soonest we should expect
Speakup in the main kernel modules group would be version 5.9. Thus, the
earliest RHEL that would possibly include Speakup by default would be
whatever RHEL version is shipped following the release of the kernels
that incorporate Speakup.

Of course, if a new RHEL comes out within a month or two of the kernels
with Speakup, we likely won't have Speakup in that RHEL--but that RHEL
version will likely be based on a slightly older kernel.

None of this spells soon, as you correctly note.

I'm glad you pinged IBM. Please don't hesitate to be a bit of a bother
to them over this. They need to understand that people's jobs are
depending on this.

Best,

Janina

Linux for blind general discussion writes:
> 
> This is definitely great news!!  So what's next from here?
> 
> As you said Janina it's probably not going to help me in the short run, but
> at least we know it's coming [I hope]
> 
> I have contacted IBM Accessibility and awaiting their response, let's hope
> someone over there knows something about speakup and RHEL
> 
> --David
> 
> 
> -----Original Message-----
> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
> Behalf Of Linux for blind general discussion
> Sent: Thursday, July 30, 2020 6:42 AM
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: installing speakup on RHEL 7/8
> 
> Indeed, but this conversation started over the question of Speakup in a RHEL
> kernel.
> 
> So, now that we've established the technical objections are all cleared, it
> will be interesting whether Speakup is promoted to main or not. If it goes
> into main, RHEL would seemingly need to include it at long last. Or am I
> wrong about that?
> 
> I'm watching to see whether we still have political opposition as we have in
> the past, by my memory of events. One would hope not, but it's deeds that
> count.
> 
> Best,
> 
> Janina
> 
> Linux for blind general discussion writes:
> > Linux for blind general discussion, le mer. 29 juil. 2020 17:24:15 +0200,
> a ecrit:
> > > Not that it matters much for Slackware and derivatives as speakup 
> > > drivers have been provided in Slackware since version 8.0 released 
> > > on 2001-06-27, in kernel version 2.2.19...
> > 
> > Yes, Debian as well. Just one thing: remember to enable 
> > CONFIG_ACCESSIBILITY if it's not already.
> > 
> > Samuel
> > 
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> 
> -- 
> 
> Janina Sajka
> https://linkedin.com/in/jsajka
> 
> Linux Foundation Fellow
> Executive Chair, Accessibility Workgroup:	http://a11y.org
> 
> The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
> Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


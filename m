Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id D7DBA3EBF53
	for <lists+blinux-list@lfdr.de>; Sat, 14 Aug 2021 03:24:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628904294;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uJK2vU0jmoTyXZG1CifqnqMasLDn/koKyYRPfUzUW0M=;
	b=hgZWdH88pO8owAlGskDL6xQMcsxB9u/npctxCusBNIAZf71pTNL0WMkD2Tb/baxBdKWO/d
	0PIncbM8PGq47JdZmx7/NPHopp4rrXrA13QcDBgRODUOUlCDtZZvfQFlWSD5J5HFpU2Zo5
	TKPvRi3OCXnJ48j4QfNs74ZOE5+byeY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-233-75OhSETVPXyD7JiGGZoiYw-1; Fri, 13 Aug 2021 21:24:53 -0400
X-MC-Unique: 75OhSETVPXyD7JiGGZoiYw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AABF41853028;
	Sat, 14 Aug 2021 01:24:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 39CEA69322;
	Sat, 14 Aug 2021 01:24:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D243A4A7C8;
	Sat, 14 Aug 2021 01:24:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17E1OWji004202 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Aug 2021 21:24:32 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 72BEAFED27; Sat, 14 Aug 2021 01:24:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6E15BFDCEC
	for <blinux-list@redhat.com>; Sat, 14 Aug 2021 01:24:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CA2EB89B841
	for <blinux-list@redhat.com>; Sat, 14 Aug 2021 01:24:29 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-509-08rWk7g5M6KEFQcGnZgucQ-1; Fri, 13 Aug 2021 21:24:24 -0400
X-MC-Unique: 08rWk7g5M6KEFQcGnZgucQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GmjQ02KDsz4FZY;
	Fri, 13 Aug 2021 21:24:24 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GmjQ01FRQzcbc; Fri, 13 Aug 2021 21:24:24 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GmjQ00sMwzcbP;
	Fri, 13 Aug 2021 21:24:24 -0400 (EDT)
Date: Fri, 13 Aug 2021 21:24:23 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Installing using a service like "Be My Eyes"
In-Reply-To: <4818e950-83e7-466f-a3b9-8648aca7a695@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2108132118120.4507@panix1.panix.com>
References: <f350ad42-2eff-9ca8-429d-59c13e839627@gmail.com>
	<alpine.NEB.2.23.451.2108121252530.9633@panix1.panix.com>
	<4818e950-83e7-466f-a3b9-8648aca7a695@gmail.com>
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
Cc: Daniel Nash <dnl.nash@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

It's unknown when daniel nash is working on the site but the package
install looping probably happened for that reason.  Jenux install needs a
notification capability feature that would let a user know to try
installing later after a certain time.  If that were in the install an
installer could wait until work had stopped on the website and then do the
install.  One additional thing that installer would need to do is to run
wipefs -af /dev/sda if /dev/sda was the disk picked to install Jenux.
This would make the hard drive like a jenux install never happened and
allow jenux install to start with a clean slate. I've had looping like
that in the past too.

On Fri, 13 Aug 2021, Linux for blind general discussion wrote:

> Ok,
>
>
> I tried installing Jenux again, this time it looped after installing packages
> at "checking package integrity". I decided, screw it, and am for now running
> Fedora Workstation 34 with the default Gnome desktop.
>
>
> Warm regards,
>
>
> Brandt Steenkamp
>
>
> Sent from my Fedora powered coal chest freezer
>
> On 8/12/21 6:54 PM, Linux for blind general discussion wrote:
> > You could run Jenux and not need services like be my eyes.
> > #mailto:dnl.nash@gmail.com
> > wget -bc
> > https://nashcentral.duckdns.org/projects/Jenux-2021.04.20-dual.iso.sha512
> > #wget -bc https://nashcentral.duckdns.org/projects/Jenux-2021.04.20-dual.iso
> > #sha512sum -c Jenux-2021.04.20-dual.iso.sha512
> >
> > On Thu, 12 Aug 2021, Linux for blind general discussion wrote:
> >
> >> Hi all,
> >>
> >>
> >> I know that Distro-hopping really sucks, but we do it anyway.
> >>
> >>
> >> I am asking about installing with aid from a service such as be-my-eyes,
> >> because, as we all know, distros like Manjaro uses the Calamaris installer,
> >> which, last I checked, is totally inaccessible with Orca, and in many
> >> cases,
> >> Orca is not even included in the live environments.
> >>
> >>
> >> I would really like to run either Arch, which I always fail to install
> >> correctly for some or other reason, or an Arch derivative, but, Calamaris,
> >> enough said.
> >>
> >>
> >> If anyone knows whether you can install using Calamaris with the keyboard
> >> only, or if there is any Arch derivatives with an accessible installer, I
> >> would be really grateful.
> >>
> >>
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


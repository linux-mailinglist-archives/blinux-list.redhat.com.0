Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0500D45AEF2
	for <lists+blinux-list@lfdr.de>; Tue, 23 Nov 2021 23:21:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637706065;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MPxm+Hj+ephylL+6SaGfQOBZWcZO98eoLhaTNrSy068=;
	b=jE2EZ1aoziudoyNQpDaUaGqdfNExCfr8HLicr69RDhO8w28A0568T0Y4Ua0OxYVmS19ZpM
	z7gSn0pshBC4jBhtD4dF5q0DI1HZ8B0uuHoc6IYyZZDGI/6mKp9uPRlCZ+g/gJbQgtkOEz
	XvxqWT1z3wQ5Mndo8PXx2rtaEAwmJnc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-531-apZ8uJXdP4u7jZ-nKkMyfg-1; Tue, 23 Nov 2021 17:21:01 -0500
X-MC-Unique: apZ8uJXdP4u7jZ-nKkMyfg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 45F2F8799EB;
	Tue, 23 Nov 2021 22:20:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 302FF5D6CF;
	Tue, 23 Nov 2021 22:20:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D496E4A703;
	Tue, 23 Nov 2021 22:20:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ANMHsOx022448 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 17:17:54 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 77E484047279; Tue, 23 Nov 2021 22:17:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 739F14047272
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 22:17:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 589D28007B1
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 22:17:54 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-457-5aWnc2w8MMGcoiYn5msYfg-1; Tue, 23 Nov 2021 17:17:52 -0500
X-MC-Unique: 5aWnc2w8MMGcoiYn5msYfg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4HzJRh0nb7zPP2
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 17:17:52 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4HzJRh0KQ9zcbc; Tue, 23 Nov 2021 17:17:51 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4HzJRg723mzcbP
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 17:17:51 -0500 (EST)
Date: Tue, 23 Nov 2021 17:17:51 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Can I upgrade Coconut to Mint?
In-Reply-To: <baaffc90-b378-fac2-6f71-595d57783f41@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2111231715590.29239@panix1.panix.com>
References: <993f996a-d2ca-1ed0-e23c-3357d5a2f146@icloud.com>
	<5ca73560-e7d4-56f7-c875-8677d4ea9d65@gmail.com>
	<CAO2sX31T8cTcUHZL08o0Tr-oaqZr-=ZhNZCjUvpLo0jz3dyWeg@mail.gmail.com>
	<baaffc90-b378-fac2-6f71-595d57783f41@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

No accessible gentoo install podcast exists so far as I know.  I have
installed many different distributions and versions of linux over the
years and gentoo has been the most difficult of all of them.


On Tue, 23 Nov 2021, Linux for blind general discussion wrote:

> Also remember, you would have to somehow configure Mint to work like Coconut,
> there's a bunch of stuff you'll need from /etc/ to pull this off, and I would
> say, rather install Gentoo than do this. It's not worth it! By the way,
> neither is installing Gentoo.
>
>
> Warm regards,
>
> Brandt Steenkamp
>
> Sent from my Fedora Install using Thunderbird
>
> On 2021/11/23 22:28, Linux for blind general discussion wrote:
> > In theory, since both are Debian based systems using dpkg and apt, you
> > could add the mint repositories to your /etc/apt/sources.list and then
> > run:
> >
> > sudo apt-get update
> > sudo apt-get upgrade
> >
> > and all of your installed packages would be upgraded to the newest
> > version provided by Mint.
> >
> > In practice, you'd likely end up with a mix of packages sourced from
> > both, even if you also removed the Coconut repositories since the Mint
> > version of a package would only be installed if it's version number
> > parses as higher to apt... but worse, you might run into conflicts
> > where a package sourced from Coconut depends on one version of a
> > Library and a Package from Mint depends on a different version of the
> > same library, you can't have both versions of the library installed at
> > the same time, and you end up with a tangled mess that in order to
> > upgrade some packages you must downgrade or remove other packages or
> > swap a package that was installed as a dependency for an alternative
> > package that meets the same dependency... Granted, such problems can
> > come up when  upgrading from one release to another of the same
> > distro, especially if there's an intermediate release(say, trying to
> > go from Ubuntu 20.10 directly to 21.10 instead of upgrading to 21.04
> > first), or even within the same release of a distro if the release
> > gets frequent upgrades to individual packages and you go a long time
> > without upgrading, but competent package maintenance can keep this to
> > a minimum as long as you stick to one distro...
> >
> > As such, it's generally recommended that one does a clean install if
> > they want to switch distros, even for distros that are very closely
> > related.
> >
> > That said, if you have a separate /home partition, you might be able
> > to migrate user setting simply by leaving the /home partition alone
> > and creating a user with the same username as the old distro, and
> > while it won't give you afull list of installed packages(which might
> > not be all that useful, since some will be libraries that might not
> > exist in the distro you're switching to, if you install the deborphan
> > package and run
> >
> > deborphan -a
> >
> > It'll give you a list of installed packages that aren't depended on by
> > other packages. They'll be prefixed with their section and one per
> > line, but strip away the former and put them all on one line, and
> > you've got the argument list to feed to apt-get install on the new
> > distro to restore most of your installed software.
> >
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

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


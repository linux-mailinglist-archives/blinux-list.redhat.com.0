Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 2307B3F9FB2
	for <lists+blinux-list@lfdr.de>; Fri, 27 Aug 2021 21:14:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630091646;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ivxVPVvQzRm+JFy/wR1le/F2ah53XexYtY+hM0jJxVM=;
	b=RIGzVMsgrQMt8ElcCpoHkMlHioD30P7H4dCnuDILa48YXr8nd3CHa3p7tFe83RwE5ornps
	uFnxR40ZgHteWxQA+Kiu2SqXULL9HmlzrP83HCOZWMQ0HrRtN+C8kluEtv/hM9bE9n2qK5
	rRmPrB9WeW/Dudm+Xbx4f2vGHq4LOoM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-280-h69CbzWhMMCDDRF_y15KRg-1; Fri, 27 Aug 2021 15:14:04 -0400
X-MC-Unique: h69CbzWhMMCDDRF_y15KRg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3BE6D87D542;
	Fri, 27 Aug 2021 19:14:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A492960938;
	Fri, 27 Aug 2021 19:13:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 88EA9181A0F1;
	Fri, 27 Aug 2021 19:13:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17RJCqDc017509 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Aug 2021 15:12:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4238420B6657; Fri, 27 Aug 2021 19:12:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0902020C15BA
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 19:12:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3D776185A7A4
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 19:12:49 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-434-gR026Og-OQmDGdU9_o4umA-1; Fri, 27 Aug 2021 15:12:47 -0400
X-MC-Unique: gR026Og-OQmDGdU9_o4umA-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4Gx8Vk1FF0z8tQY
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 19:12:46 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id YBBnQE2sk8k4 for <blinux-list@redhat.com>;
	Fri, 27 Aug 2021 19:12:45 +0000 (UTC)
Received: from [192.168.1.100] (208-107-97-40-dynamic.midco.net
	[208.107.97.40])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4Gx8Vj1hm4z8tQW
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 19:12:45 +0000 (UTC)
Message-ID: <20210827.191250.234.7@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: Re: unable to install from aur
Date: Fri, 27 Aug 2021 14:12:50 -0500
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2108271436310.3280@panix1.panix.com>
References: <20210827.181429.958.4@[192.168.1.100]>
	<alpine.NEB.2.23.451.2108271436310.3280@panix1.panix.com>
User-Agent: POP Peeper Pro (5.1.2.0)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17RJCqDc017509
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

This is ~/.gnupg/gpg.conf that I made.
I repopulated the arch-keyring and ran ntpd. Time zone has always been set correctly. This did not fix the problem.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Fri, 27 Aug 2021 14:44:31 -0400
Subject: Re: unable to install from aur

> Did you modify gpg.conf or is that the archlinux-supplied version?
> I don't have the problems you do with archlinux and that's because early
> in the install I run:
> pacman-key --populate.
> Then I might run:
> pacman -Syu archlinux-keyring.
> Lots of keys get updated that way.
> Now I also install the surfraw package and lynx and set the browser
> surfraw uses as lynx.
> Then I search the aur repository for pikaur and download the source for
> that package and run makepkg on it to build it.
> After that, I usually have no trouble installing stuff from the aur
> repository.
> You probably also ought to download ntp and then as root run
> ntpd -qg
> and hwclock --systohc --utc
> Then set your timezone by updating /etc/localtime.
> Finally run as root
> sysctl enable timesyncd ntp true
> All of that makes sure your clock is current and keeps the repositories
> happy.
> 
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


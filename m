Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 455511652D4
	for <lists+blinux-list@lfdr.de>; Wed, 19 Feb 2020 23:56:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582152965;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6GEEycoj/IR32yQWU5mOxRY8PvWCeE1G75bX2MsO+gc=;
	b=GUuULkG0rPr6dKEpORl9Cib0XoppWrBblhwJ4BkapTpSIWvvHfQkP1Pyk98MkgDfVJu2Ew
	DiipaYzhcQwQvCM2wGYorFugd4kol9/N8vO3sMJWPKwrtLzcAZbAnE+y4D1YT7pNVJ+0kf
	FtgL5h30/jwHtY6yJSHJBW1eWAoUkwc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-227-C1Q2AB1xO6CZPio-bOAszQ-1; Wed, 19 Feb 2020 17:56:02 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5C7018017CC;
	Wed, 19 Feb 2020 22:55:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 168311001920;
	Wed, 19 Feb 2020 22:55:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 994CA1803C37;
	Wed, 19 Feb 2020 22:55:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01JMrsnn007833 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Feb 2020 17:53:55 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B5C2510ABCAD; Wed, 19 Feb 2020 22:53:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B1CF2101B553
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 22:53:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A226185A312
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 22:53:52 +0000 (UTC)
Received: from pb-smtp1.pobox.com (pb-smtp1.pobox.com [64.147.108.70])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-132-bUG5VwwrOpeg1KmAw9wWNQ-1; Wed, 19 Feb 2020 17:53:50 -0500
Received: from pb-smtp1.pobox.com (unknown [127.0.0.1])
	by pb-smtp1.pobox.com (Postfix) with ESMTP id 7A32B49545
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 17:53:49 -0500 (EST)
	(envelope-from joelz@pobox.com)
DomainKey-Signature: a=rsa-sha1; c=nofws; d=pobox.com; h=date:from:to
	:subject:message-id:reply-to:references:mime-version
	:content-type:in-reply-to; q=dns; s=sasl; b=QfdE8JtUWSngpP42qJVV
	lK9PGm4Ocn/EJsexXvlCyqWlo6xZPMxyfmnpv0gta9j9EWkocoOveA6VzQaZYY8j
	R1RjQGo1mvLwl94pavWqKISjyHJ8rsGIEm6iGTENCDp0tpCPPcQmDrqqHnomjcns
	x4qNYpgbrZUobhrSayOpkb8=
Received: from pb-smtp1.nyi.icgroup.com (unknown [127.0.0.1])
	by pb-smtp1.pobox.com (Postfix) with ESMTP id 7322C49544
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 17:53:49 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from sprite (unknown [66.8.174.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp1.pobox.com (Postfix) with ESMTPSA id D2F7449542
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 17:53:48 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from jroth by sprite with local (Exim 4.89)
	(envelope-from <joelz@pobox.com>) id 1j4YDd-0000P7-3w
	for blinux-list@redhat.com; Wed, 19 Feb 2020 12:53:25 -1000
Date: Wed, 19 Feb 2020 12:53:25 -1000
To: blinux-list@redhat.com
Subject: Re: Dbus issues when running Fedora 31 for ARM64 Bit platform
Message-ID: <20200219225325.lavd3verxwi476az@sprite>
References: <B99ECC0C5B4C4DA9A0EBA3735E38BF98@DESKTOPN6LG1HQ>
MIME-Version: 1.0
In-Reply-To: <B99ECC0C5B4C4DA9A0EBA3735E38BF98@DESKTOPN6LG1HQ>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Pobox-Relay-ID: B0F653BA-536A-11EA-82FC-C28CBED8090B-04347428!pb-smtp1.pobox.com
X-MC-Unique: bUG5VwwrOpeg1KmAw9wWNQ-1
X-MC-Unique: C1Q2AB1xO6CZPio-bOAszQ-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 01JMrsnn007833
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hello Janusz,

Do you have any error message or logfile entry?

It appears dbus won't run without the file /etc/machine-id.
dbus-launch also fails if the user is in too many groups,
which was reported with macOS. 

The best and possibly only place for support 
would be freedesktop.org, either the dbus mailing list
dbus@lists.freedesktop.org or 
https://gitlab.freedesktop.org/dbus/dbus/issues

btw dBus is a heavy-weight RPC framework with all of the
complexities and vulnerabilities that necessarily entails.
Not all linux distributions depend on dBus 
but the main ones, including Fedora, do. 

good luck,

Joel

On Wed, Feb 19, 2020 at 07:41:29PM +0100, Linux for blind general discussion wrote:
> Dear suers and developers,
> 	My name is Janusz Chmiel. I Am new mailing list member from Czech
> Republic. I do not see at all. Fedora distribution is fascinating Me for
> several years. And because I have been very satisfied with this distribution
> when I have used it with my Toshiba Satellite L650 D laptop, I have decided
> to try it out on my Huavei !) mate lite mobile phone. This mobile phone run
> Android 8.0 and I Am running Fedora by using Termux, Proot and special
> script.
> Unfortunately for Me, I have got in to very complex issues with Dbus.
> dbus-launch app name &
> simply do not work at all.
> 
> Please does somebody of you know, if there is some technique, article which
> would describe how to setup Dbus and dbus-x11 so it would run even on chroot
> environment by using Termux, Proot and Android device?
> Or unfortunately, Dbus version which is The part of Fedora 31 ARM64 Bit
> contain Dbus binarz which have been compiled by The way that it will never
> support this software environment?
> I can install manz applications but Dbus do not work and it is verz
> important to use inter process communication.
> Thank zou verz much for zours help.
> With kindness regards.
> Janusz Chmiel
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 

-- 
Joel Roth


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


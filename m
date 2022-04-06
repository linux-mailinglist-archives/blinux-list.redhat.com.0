Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9724F69AD
	for <lists+blinux-list@lfdr.de>; Wed,  6 Apr 2022 21:17:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649272667;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kxfeOo/zwl5jmtg1NWeZwQG3/K35YCq+UAz1achAtU4=;
	b=ZxpJ0JRLeRJ/9oK4tLuguu/4ZL0ctspzRiwKIH4lqBdKbjjfq6/PgRxH4mJxu8rZsBaFCR
	/cK2DMJGckwoMysFl4OJUgz4TEpYROrQuqGUHsxFxinDXosny/i+JXXSTmBiF74GE5PPeG
	EbGO1o9Gh/oNjYcoF1OH9gyY6GaibJI=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-277-UFXpnRZTMjKNmxhsA-SLkQ-1; Wed, 06 Apr 2022 15:17:46 -0400
X-MC-Unique: UFXpnRZTMjKNmxhsA-SLkQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9447A1C01E8E;
	Wed,  6 Apr 2022 19:17:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7F8B97AC3;
	Wed,  6 Apr 2022 19:17:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 474E1193F6E1;
	Wed,  6 Apr 2022 19:17:44 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 6 Apr 2022 15:17:39 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: different desktops
In-Reply-To: <mailman.6620.1649250650.111205.blinux-list@redhat.com>
References: <mailman.6893.1649230241.111206.blinux-list@redhat.com>
 <mailman.6722.1649237413.111209.blinux-list@redhat.com>
 <mailman.6967.1649240845.111210.blinux-list@redhat.com>
 <mailman.6938.1649249456.111201.blinux-list@redhat.com>
 <mailman.6620.1649250650.111205.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.7064.1649272663.111202.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Cinnamon would qualify as a desktop and is supposed to be similar to mate
in operation.


On Wed, 6 Apr 2022, Linux for blind general discussion wrote:

> Just pointing out that Ratpoison+Strychnine, IceWm, Openbox and others aren't
> exactly full desktops, but are pretty much just the window manager side of
> things. A full desktop would include at least one panel with system
> tray/notification area, app indicators such as the battery monitor and clock,
> most of the time a file manager that doubles as a root window desktop that can
> include launchers and mount points and an application menu or some other type
> of launcher that allows you to see the applications on the system and launch
> them, usually grouped into various categories. Strychnine does do some of this
> for Ratpoison, but it's pretty much just a launcher menu and run window type
> of thing. Many components that would make it a full desktop are still missing,
> although it is possible to run Caja or Nautilus and possibly either mate-panel
> or gnome-panel along with it for a more full desktop experience if desired.
>
>
> About the best full desktop experience I've used is GNOME 2.x, which is
> continued as the MATE desktop. Some panel applets don't necessarily speak as
> much as they should, for example, nm-applet, which is the network manager,
> only says "panel," but for the most part, everything just works and is
> navigable with only a keyboard, although I find Orca's "speak object under
> mouse" to be fairly useful at times as well. GNOME 3.x and 40+ is another
> option, but some things seem to be a little less usable than the MATE desktop
> overall. KDE is coming along, but is still in the early stages of a11y
> development, so although many things are starting to work pretty well, others
> are still not quite usable at this stage. For full desktops, the only other
> partially usable options are xfce, lxde and lxqt, and all of those seem to be
> getting a bit long in the tooth, and some of these are even starting to lose
> some of the accessibility they once had. So as full desktops go, my three best
> recommendations would be MATE, then GNOME, then KDE. And then there are the
> window managers that include keyboard navigation, Ratpoison+Strychnine
> probably being the best of those options, although I have heard that IceWM,
> Fluxbox and Openbox, as well as possibly i3, can also be made more usable with
> either helper applications or hand-edited configuration files.
>
> ~Kyle
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


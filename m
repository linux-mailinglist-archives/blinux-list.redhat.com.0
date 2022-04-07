Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5302D4F7DAD
	for <lists+blinux-list@lfdr.de>; Thu,  7 Apr 2022 13:13:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649330009;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PSxqBOUM9zbBNW5LsbJgazSOYGuKfMFmsjyjspuiK6M=;
	b=RzxFZSOTp13zfYllfK7seqTGd4NVbINZRLc3wGRddVSKgoIoqNTSgYSEG6Ft61EUF6cmE6
	ZhJQ1Xw4tpShY41XpUMJ9LLQACZAV8OBCp6NTGLqSf18HeKZk3mV07AFYsOYQsPJrdAOff
	QvG8hmyx/WWHBXg0FmDhvI0ZWeiNCVY=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-590-t1Ci5RCrO6GlP2399Kb4nw-1; Thu, 07 Apr 2022 07:13:24 -0400
X-MC-Unique: t1Ci5RCrO6GlP2399Kb4nw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D863B28019FD;
	Thu,  7 Apr 2022 11:13:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 42FB21468975;
	Thu,  7 Apr 2022 11:13:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 2CB051940342;
	Thu,  7 Apr 2022 11:13:01 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: different desktops
Date: Thu, 7 Apr 2022 06:12:53 -0500
References: <mailman.6893.1649230241.111206.blinux-list@redhat.com>
 <mailman.6722.1649237413.111209.blinux-list@redhat.com>
 <mailman.6967.1649240845.111210.blinux-list@redhat.com>
 <mailman.6938.1649249456.111201.blinux-list@redhat.com>
 <mailman.6620.1649250650.111205.blinux-list@redhat.com>
 <mailman.7064.1649272663.111202.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.7064.1649272663.111202.blinux-list@redhat.com>
Message-ID: <mailman.7193.1649329980.111206.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

How accessible at installing and beyond is cinnamon?

> On Apr 6, 2022, at 2:17 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Cinnamon would qualify as a desktop and is supposed to be similar to mate
> in operation.
> 
> 
> On Wed, 6 Apr 2022, Linux for blind general discussion wrote:
> 
>> Just pointing out that Ratpoison+Strychnine, IceWm, Openbox and others aren't
>> exactly full desktops, but are pretty much just the window manager side of
>> things. A full desktop would include at least one panel with system
>> tray/notification area, app indicators such as the battery monitor and clock,
>> most of the time a file manager that doubles as a root window desktop that can
>> include launchers and mount points and an application menu or some other type
>> of launcher that allows you to see the applications on the system and launch
>> them, usually grouped into various categories. Strychnine does do some of this
>> for Ratpoison, but it's pretty much just a launcher menu and run window type
>> of thing. Many components that would make it a full desktop are still missing,
>> although it is possible to run Caja or Nautilus and possibly either mate-panel
>> or gnome-panel along with it for a more full desktop experience if desired.
>> 
>> 
>> About the best full desktop experience I've used is GNOME 2.x, which is
>> continued as the MATE desktop. Some panel applets don't necessarily speak as
>> much as they should, for example, nm-applet, which is the network manager,
>> only says "panel," but for the most part, everything just works and is
>> navigable with only a keyboard, although I find Orca's "speak object under
>> mouse" to be fairly useful at times as well. GNOME 3.x and 40+ is another
>> option, but some things seem to be a little less usable than the MATE desktop
>> overall. KDE is coming along, but is still in the early stages of a11y
>> development, so although many things are starting to work pretty well, others
>> are still not quite usable at this stage. For full desktops, the only other
>> partially usable options are xfce, lxde and lxqt, and all of those seem to be
>> getting a bit long in the tooth, and some of these are even starting to lose
>> some of the accessibility they once had. So as full desktops go, my three best
>> recommendations would be MATE, then GNOME, then KDE. And then there are the
>> window managers that include keyboard navigation, Ratpoison+Strychnine
>> probably being the best of those options, although I have heard that IceWM,
>> Fluxbox and Openbox, as well as possibly i3, can also be made more usable with
>> either helper applications or hand-edited configuration files.
>> 
>> ~Kyle
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
>> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


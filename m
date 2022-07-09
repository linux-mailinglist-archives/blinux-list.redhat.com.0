Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BE48B56CB9E
	for <lists+blinux-list@lfdr.de>; Sat,  9 Jul 2022 23:43:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1657402995;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EPKVJ2C20S+NroG8zOCWJlJJEc7vQoNu2WnPglBOo8Y=;
	b=JirLalQyRaK0upainEZj7/PKKkLlwRV+7DA4DzyGwSu3b9UpsgtfOrs83LduD0pER2gMOw
	VAMrEUw62GIHf3Kx2+NHZGDbQ2o/SbfbUxdikoRLtGtsmD2RT8fvu3/ydGjIKA5aDLuGRS
	Q2KS7pA5QImYwGwE12Dgbaxj+KPqt68=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-277-ccaX3ihPMX6N6RJ_yHHi5A-1; Sat, 09 Jul 2022 17:43:11 -0400
X-MC-Unique: ccaX3ihPMX6N6RJ_yHHi5A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0BCA41C0513C;
	Sat,  9 Jul 2022 21:43:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D8E1B2026D64;
	Sat,  9 Jul 2022 21:43:09 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 74D84194707F;
	Sat,  9 Jul 2022 21:43:09 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.3721.1657389350.3475251.blinux-list@redhat.com>
References: <mailman.32420.1657364089.111201.blinux-list@redhat.com>
 <mailman.32225.1657370151.111208.blinux-list@redhat.com>
 <mailman.3721.1657389350.3475251.blinux-list@redhat.com>
Date: Sat, 9 Jul 2022 21:42:57 +0000
Subject: Re: I3wm, any progress?
To: blinux-list@redhat.com
Message-ID: <mailman.32566.1657402989.111209.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

i3wm is a Window Manager. That is, it's the part of a Desktop
Environment that creates application windows, determines how they look
and behave, and lets the user switch between open Windows and adjust
how much of the screen they take up.

Every Desktop Environment includes a window manager, but a window
manager alone doesn't provide all the functionality of a Desktop
environment. However, for some people, a Window manager is all they
need, so there are dozens of stand-alone window managers that aren't
part of a complete Desktop Environment, and even when using a full DE,
there's some room for switching out the DE's default window manager
for another.

Other common Desktop Environment components include panels(which
provide taskbar and system tray like functionality), launchers/menu
systems, and common system utilities such as a control panel or file
manager, and sometimes even common application software, such as a
default text editor, media player, etc.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


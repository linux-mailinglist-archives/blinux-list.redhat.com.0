Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D1C4F7F2C
	for <lists+blinux-list@lfdr.de>; Thu,  7 Apr 2022 14:35:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649334957;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+uIPPID8QMfg0WkFs/tIP+H0FQgXfW4Y5P+9pZNMQRM=;
	b=dWa59E9R4inTyn7XVeCRi1bJDySQt/ilnlr2ggOhiHD2bYeHQJV5goSDz3nIm1ajJ+XSBX
	kyP6BtBXt2mB1arP/aCakX4ifY3ZQrSeNexig/nq9DQYLk/iLA23BMgrFWm3Bl2lCc3DFS
	ZJplikBHSVS3HccDlqK7WSkL8fo/jAo=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-288--l4JrLY1NXKY_ooVn2MXvQ-1; Thu, 07 Apr 2022 08:35:54 -0400
X-MC-Unique: -l4JrLY1NXKY_ooVn2MXvQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 126731C01535;
	Thu,  7 Apr 2022 12:35:53 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DE62440CFD02;
	Thu,  7 Apr 2022 12:35:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 777541940342;
	Thu,  7 Apr 2022 12:35:49 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 7 Apr 2022 08:35:22 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: different desktops
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.6893.1649230241.111206.blinux-list@redhat.com>
 <mailman.6722.1649237413.111209.blinux-list@redhat.com>
 <mailman.6967.1649240845.111210.blinux-list@redhat.com>
 <mailman.6938.1649249456.111201.blinux-list@redhat.com>
 <mailman.6620.1649250650.111205.blinux-list@redhat.com>
 <mailman.7064.1649272663.111202.blinux-list@redhat.com>
 <mailman.7193.1649329980.111206.blinux-list@redhat.com>
In-Reply-To: <mailman.7193.1649329980.111206.blinux-list@redhat.com>
Message-ID: <mailman.7243.1649334949.111202.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

How accessible at installing and beyond is cinnamon?


I didn't try the Cinnamon Fedora spin, but it's ... OK. It plays sounds 
for windows opening and closing, maximizing and unmaximizing, switching 
workspaces, at startup, many more places than I hear sounds in MATE. 
This is good, but lots of flat review has to be used in the super key 
menu as well as in the window and workspace selectors. I can interact 
with notifications using super+n, and that even shows me a clock. But I 
can't find things like NetworkManager, my DNF Dragora applet, a system 
tray or anything else like this, with the exception of the clock that is 
present on the notification list and the calendar that opens up with a 
clock when I press super+c. Most things if not accessible with standard 
keyboard functions like tabs, arrows, etc. are accessible via flat 
review. Bottom line, if you don't like using flat review or if you need 
a system tray, steer clear ... unless I missed something. Otherwise, it 
seems like it has come a long way, although much work is still needed to 
bring it up to par with MATE or probably even with GNOME.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 991756D2967
	for <lists+blinux-list@lfdr.de>; Fri, 31 Mar 2023 22:26:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680294397;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0WV5MAYWDykXHcf0VVBR3II2iDVibFy68kLFHlwKwZc=;
	b=STmV+/KEdhyxlAa0A6HVL9ikmXoKdvXYVcagBpuj+eSUvphJSXaHxWNcurGlM7Pzv3YTH5
	GBZgsuUkQpwu0wIOUW3U2mHMM6q3gHnLLwDYPCTHzy4FNCfrR7NBthC6wRbmMzQcFMmlIf
	/HyjkODYqYuRVY9DszvkL5HLfw0gUI4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-228-OXEztLwLMniExSOJno3TDA-1; Fri, 31 Mar 2023 16:26:33 -0400
X-MC-Unique: OXEztLwLMniExSOJno3TDA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 77C2685A588;
	Fri, 31 Mar 2023 20:26:31 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C3A204020C82;
	Fri, 31 Mar 2023 20:26:22 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C59B51946A43;
	Fri, 31 Mar 2023 20:26:21 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
Date: Fri, 31 Mar 2023 16:26:15 -0400
Subject: Orca not speaking on new Debian install.
To: Linux for blind general discussion <blinux-list@redhat.com>,
 orca@freelists.org
Message-ID: <mailman.1920.1680294381.2676480.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Okay, so I did a clean install of Debian Bulls Eye last night,
starting from just the base system with the standard system utils(12
was my only input at the install additional software step).

Everything is working fine in the console with espeakup, but I'm
having trouble getting Orca up and running. I installed orca, my
window manager of choice(flwm), xinit, xserver-xorg-core and the core
xorg input and video drivers, and made sure they were all upgraded to
the Bulls Eye Backports versions where available.

I tried running the script I've previously used for launching a stand
alone GUI application with Orca, using Firefox-ESR 102 to test.
Firefox starts as it creates a new Firefox profile in my home
directory and issuing a close window keyboard command spits me back to
the console, but if orca starts, it doesn't talk.

Redirecting stderr to a text file and cutting out the stuff that
always gets printed to stderr even when the script runs properly, I
have the following errors:

Missing chrome or resource URL: resource://gre/modules/UpdateListener.jsm
Missing chrome or resource URL: resource://gre/modules/UpdateListener.sys.mjs
Missing chrome or resource URL: resource://gre/modules/UpdateListener.jsm
Missing chrome or resource URL: resource://gre/modules/UpdateListener.sys.mjs

Anyone have any idea what went wrong?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


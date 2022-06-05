Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 827DF53DC4D
	for <lists+blinux-list@lfdr.de>; Sun,  5 Jun 2022 16:41:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1654440102;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qdnLBgEbmnr8/hl+hFKkcCjL9VZ09Q9UUbG9ymLpMjM=;
	b=SosAsgBxF35lOJsvg0+nK112vBsNi7OpEb87IKu9jFid5i7lVcaGOWTyCZqJq6vzlTrqAD
	aUGXD8AyXbNvd+O+0CYec87R2GPqS/Pd5fWwK/UCh8nWyFKe36F2k+CJa6KqobxyhAfwSx
	ZspgvXXlDW2Sq/h/ExAbpsHYeeREDEI=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-321-08eOImc6MwabcUcnRhBseg-1; Sun, 05 Jun 2022 10:41:38 -0400
X-MC-Unique: 08eOImc6MwabcUcnRhBseg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D75DE29AB3E5;
	Sun,  5 Jun 2022 14:41:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A932640CFD0B;
	Sun,  5 Jun 2022 14:41:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E0380194706F;
	Sun,  5 Jun 2022 14:41:26 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 05 Jun 2022 14:41:12 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>,
 speechd-discuss@nongnu.org
Subject: nvda2speechd, let Windows programs talk through Speech dispatcher
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.21931.1654440086.111204.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello everyone,

I've been dealing a bit recently with Windows games, through various
means - running them using Wine, VM etc. And I've got a bit... unpleased
by the state of speech synthesis in Wine. I'm not criticizing it, it's a
big enough drag to implement a sapi voice in Windows itself, speak of
getting sapi itself to run on a completely different system, so this is
completely understandable.

But that doesn't change anything on the factual usability, where you
need to deal with a whole speech system in an inaccessible way, which
doesn't even work in my VM btw, has some noticeable delais (at least
with the default voices) and is there a way to actually configure it?

No sarcasm, I don't know.


Anyway, the usability is inconvenient at best, what is slightly
disturbing when playing games (especially those where you need quick
feedback e.g. Swamp).


But yesterday, I've came up with an idea. On Windows, there is a library
called nvdaControllerClient32.dll (or 64 for 64-bit programs, likely
more used by now), which is used by programs and various speech output
libraries to talk through NVDA.


The good thing about this library is its absolute simplicity, at least
in terms of the interface, just 4 functions with elementary datatypes.


So, what I did, was that I created my own library with exactly the same
interface in Rust, except that instead of talking to NVDA, it opens a
connection to a server on Linux, which translates all requests aimed for
NVDA to Speech dispatcher.


This way, an app in Wine can use Speech dispatcher!


All your voices, all your configuration preserved just like you'd be
running a native app.


I've tried it and it really works.

I can't tell right now how good is it, it's just an experiment, the app
I've tested with worked quite well, but that was just a simple binary
editor I made long time ago.

The real test will come, when I manage to download Swamp. I tried about
5 times and the download has always failed, I guess there is either high
traffic on Aprone's servers, or perhaps he has some issues with internet
connection.


And for some reason, agarchive.net doesn't seem to have the latest
version (anyone knows why is that?)


Anyway, if you feel like playing some Windows game compatible with NVDA,
and would like the native speech, feel free to try it out:

https://github.com/RastislavKish/nvda2speechd


Best regards


Rastislav



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list


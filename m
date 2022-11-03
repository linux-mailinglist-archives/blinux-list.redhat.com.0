Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1916A61841B
	for <lists+blinux-list@lfdr.de>; Thu,  3 Nov 2022 17:19:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667492396;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Bmg7X8/4Zqb6P8rOH8/7ERFyxeU4nJ1hZkncuSwJTHc=;
	b=S6at0IivBwn7r57PlF9LO+6GMkExg91ThdaOgwTQZvpf2nxjX5tQqmnRdxeVa93kf+Egx2
	n5DOCzF+H0SSwXis10lxlQCTk5qGyLEdU4BXqaUfCW/F+5wOHP6R7MUVcYQvM5kMBtAIbm
	O3KlJdshoJOQ7HvY/wxLeMT25GDdsqg=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-561-i0vdLSX7OWiN2EsAEF5y8A-1; Thu, 03 Nov 2022 12:19:55 -0400
X-MC-Unique: i0vdLSX7OWiN2EsAEF5y8A-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5A1D72823801;
	Thu,  3 Nov 2022 16:19:53 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1EBB14A9254;
	Thu,  3 Nov 2022 16:19:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id AFED71946A42;
	Thu,  3 Nov 2022 16:19:49 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.4523.1667486520.3006.blinux-list@redhat.com>
References: <mailman.4326.1667439822.3008.blinux-list@redhat.com>
 <mailman.4292.1667467115.3005.blinux-list@redhat.com>
 <mailman.4321.1667468317.3007.blinux-list@redhat.com>
 <mailman.4503.1667475991.3004.blinux-list@redhat.com>
 <mailman.4358.1667481898.3007.blinux-list@redhat.com>
 <mailman.4328.1667483150.3005.blinux-list@redhat.com>
 <mailman.4400.1667483225.3008.blinux-list@redhat.com>
 <mailman.4510.1667484422.3003.blinux-list@redhat.com>
 <mailman.4513.1667485195.3003.blinux-list@redhat.com>
 <mailman.4523.1667486520.3006.blinux-list@redhat.com>
Date: Thu, 3 Nov 2022 16:19:45 +0000
Subject: Re: Javascript for text mode (fwd)
To: blinux-list@redhat.com
Message-ID: <mailman.4439.1667492388.3008.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Whether or not Python, HTML5, or any other newer rich web standard
eventually supersedes JavaScript completely, it doesn't change the
fact that as long as a significant fraction of web pages make heavy
use of client-side scripting in one form or another and do so in a way
that renders the page unusable in browsers that lack support for
client-side scripting, such browsers are going to feel very limiting.

And to be honest, I tend to parse "JavaScript" as a catch all for
client-side scripting on web pages. Besides, I remember hearing that
console browsers are also trailing in support for HTML5 and since this
is the first I'm hearing of Python being used on web pages, I have to
question whether the python is running on the server or the client,
and if the client, how browser support for such is.

And while its true there are things Orca can do a console screen
reader never could without a major overhaul to how the console works,
in my mind, the biggest thing Orca brings to the web you don't get
with a console screen reader are the navigational hotkeys, which to be
blunt are so damn useful I don't know how I got by without them back
when I had a working eye and have no idea why they or something
similar isn't a standard feature in web browsers. Seriously, if I woke
up tomorrow and could miraculously see again, even if I permanently
muted Orca, I'd probably keep it around just for the navigational
hotkeys unless I could find a Firefox extension that did the same. And
in theory, I would think it easier for navigational hotkeys to get
baked into Links the chain, Lynx the cat, elinks, etc. than to
overhaul the console to let console screen readers talk to console
applications on the backend like GUI Screen Readers do with GUI
applications. After all, the browser knows where the html tag
corresponding to the various types of html elements Orca uses for
structural navigation are and persumably where the corresponding text
on the displayed page is.

Give me a console browser with an acceptable level of support for
client-side scripting and built-in navigational hotkeys, and I could
probably live with console screen readers not knowing how to read
multi-column text and having to learn a different set of
keybindings(after all, despite originally learning how to make text
documents with the desktop standard keybindings, I've gotten so use to
nano's keybindings I sometimes try doing something the nano way when
typing in Firefox).

And for what it's worth, I probably wouldn't be half as bothered by
the state of console browsers If I made heavy use of GUI applications,
but the thing is, Firefox is the only GUI application I use for its
own sake, Orca, my window manager, and everything else GUI on my
system is to let me use Firefox. If I ever found a console alternative
to Firefox that provided a comfortable browsing experience, I could
ditch the GUI entirely.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

